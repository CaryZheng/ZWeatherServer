import Vapor

class ErrorResponseUtility {
    
    static func getErrorResponse(errorType: ErrorResponseType) -> Response? {
    
        var errorData: JSON? = nil
        let status = Status.ok
        
        switch errorType {
        case ErrorResponseType.ERROR_PARAM:
            errorData = JSON([
                "error": [
                    "code": 4,
                    "desc": "请求被拒绝",
                    "sub_error": [
                        "code": 4001,
                        "desc": "参数错误"
                    ]
                ]
                ])
        case ErrorResponseType.ERROR_INTERNAL:
            errorData = JSON([
                "error": [
                    "code": 5,
                    "desc": "内部错误",
                    "sub_error": [
                        "code": 5001,
                        "desc": "内部数据库服务错误"
                    ]
                ]
                ])
        default:
            errorData = JSON([
                "error": [
                    "code": 5,
                    "desc": "内部错误",
                    "sub_error": [
                        "code": 5000,
                        "desc": "内部未知错误"
                    ]
                ]
                ])
        }
        
        do {
            return try Response(status: status, json: errorData!)
        } catch {
        
        }
        
        return nil
    }
    
}
