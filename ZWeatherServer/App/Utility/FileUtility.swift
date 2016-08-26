import Foundation

class FileUtility {
    
    static func getCityListFullPath() -> String {
        let parts = #file.components(separatedBy: "/App/Utility/")
        let path = parts.first! + "/Config/city_list.json"
        
        return path
    }
    
}
