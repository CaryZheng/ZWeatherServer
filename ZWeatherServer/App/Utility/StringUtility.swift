import Foundation

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
    
}
