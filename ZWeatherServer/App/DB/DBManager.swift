import Foundation
import MySQL

class DBManager {
    
   private static var mInstance: DBManager!
   static func getInstance() -> DBManager {
       if nil == mInstance {
           mInstance = DBManager()
       }
       
       return mInstance
   }
   
   private var mysql: MySQL.Database!
   
   init() {
       setUp()
   }
   
   private func setUp() {

        do {
            mysql = try MySQL.Database(
                host: DBConfig.HOST,
                user: DBConfig.USER,
                password: DBConfig.PWD,
                database: DBConfig.DATABASE,
                port: 3306
            )
            print("MySQL connect success")
        } catch {
            print("MySQL connect failed")
        }
    }

    func isAccountExisted(name: String) throws -> (isOK: Bool, userID: Int?) {
        
        do {
            let results = try mysql.execute("SELECT user_id FROM user where name=\"\(name)\";")
            print("isAccountExisted results = \(results)")
            if results.count > 0 {
                
                guard let value = results[0]["user_id"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .number(.int(let userID)) = value else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                print("userID = \(userID)")
                
                return (true, userID)
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return (false, nil)
    }
    
    func signUp(name: String, pwd: String) throws -> (isOK: Bool, userID: Int?) {
        do {
            let accountResult = try isAccountExisted(name: name)
            if accountResult.isOK {
                return (false, nil)
            }
            
            var results = try mysql.execute("SELECT * FROM user ORDER BY user_id DESC LIMIT 1")
            print("signUp results = \(results)")
            if results.count > 0 {
                
                guard let value = results[0]["user_id"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .number(.int(let lastUserID)) = value else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                let userID = lastUserID + 1
                print("userID = \(userID)")
                
                results = try mysql.execute("INSERT INTO user(user_id, name, pwd) VALUES(\(userID), \"\(name)\", \"\(pwd)\")")
                
                if 0 == results.count {
                    // sign up success
                    return (true, userID)
                } else {
                    // sign up fail
                    return (false, nil)
                }
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return (false, nil)
    }
    
    func signIn(name: String, pwd: String) throws -> (isOK: Bool, userID: Int?) {
        do {
            let accountResult = try isAccountExisted(name: name)
            if !accountResult.isOK {
                return (false, nil)
            }
            
            var results = try mysql.execute("SELECT * FROM user WHERE name=\"\(name)\" AND pwd=\"\(pwd)\"")
            print("signIn results = \(results)")
            if results.count > 0 {
                guard let userIDValue = results[0]["user_id"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .number(.int(let userID)) = userIDValue else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                guard let nameValue = results[0]["name"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .string(let localName) = nameValue else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                guard let pwdValue = results[0]["pwd"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .string(let localPwd) = pwdValue else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                print("userID = \(userID)")
                
                if name == localName
                    && pwd == localPwd {
                    return (true, userID)
                } else {
                    return (false, nil)
                }
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return (false, nil)
    }
    
    func updateSignInToken(userID: Int, token: String) throws -> Bool {
        do {
            var results = try mysql.execute("SELECT * FROM sign_in WHERE user_id=\(userID);")
            if 0 == results.count {
                // insert
                results = try mysql.execute("INSERT INTO sign_in(user_id, token) VALUES(\(userID), \"\(token)\");")
                if 0 == results.count {
                    return true
                }
            } else {
                // update
                results = try mysql.execute("UPDATE sign_in SET token=\"\(token)\" WHERE user_id=\(userID);")
                if 0 == results.count {
                    return true
                }
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return false
    }
    
    func isSignInTokenValid(userID: Int, token: String) throws -> Bool {
        do {
            let results = try mysql.execute("SELECT token FROM sign_in where user_id=\"\(userID)\";")
            print("isSignInTokenValid results = \(results)")
            if results.count > 0 {
                
                guard let tokenValue = results[0]["token"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .string(let localToken) = tokenValue else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                if localToken == token {
                    return true
                } else {
                    return false
                }
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return false
    }
    
    func getUserInfo(userID: Int) throws -> (isOK: Bool, name: String?) {
        do {
            let results = try mysql.execute("SELECT name FROM user WHERE user_id=\"\(userID)\";")
            if results.count > 0 {
                guard let nameValue = results[0]["name"] else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                guard case .string(let localName) = nameValue else {
                    throw ZException.DB_DATA_EXCEPTION
                }
                
                return (true, localName)
            }
        } catch {
            throw ZException.DB_QUERY_EXCEPTION
        }
        
        return (false, nil)
    }
}
