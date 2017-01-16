import Foundation
import Hash

class StringUtility {
    
    static func isEmpty(_ param: String?) -> Bool {
        if let string = param {
            return string.isEmpty
        } else {
            return true
        }
    }
    
    static func convertToString(param: Float) -> String {
        return String(stringInterpolationSegment: param)
    }
    
    static func convertToString(param: Double) -> String {
        return String(stringInterpolationSegment: param)
    }
    
    static func convertToString(param: Int) -> String {
        return String(param)
    }
    
    static func generateSignInToken(userID: Int) -> String {
        let timestamp = Date().timeIntervalSince1970
        let tokenFormat = "\(userID)" + "_" + "\(timestamp)"
        
        do {
            return try Hash.make(.sha512, tokenFormat.makeBytes()).base64String
        } catch let error {
            print("generateSignInToken error = \(error) ")
        }
        
        return ""
    }
}
