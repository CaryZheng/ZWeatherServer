import Vapor

class ErrorResponseUtility {
    
    static func getErrorResponse(errorType: ErrorResponseType) -> Response {
    
        var errorData: JSON? = nil
        let status = Status.ok
        
        switch errorType {
        case ErrorResponseType.ERROR_PARAM:
            errorData = JSON([
                "error": [
                    "code": 4,
                    "desc": "request rejected",
                    "sub_error": [
                        "code": 4001,
                        "desc": "param error"
                    ]
                ]
                ])
        case ErrorResponseType.ERROR_INTERNAL:
            errorData = JSON([
                "error": [
                    "code": 5,
                    "desc": "internal error",
                    "sub_error": [
                        "code": 5001,
                        "desc": "internal database error"
                    ]
                ]
                ])
        default:
            errorData = JSON([
                "error": [
                    "code": 5,
                    "desc": "internal error",
                    "sub_error": [
                        "code": 5000,
                        "desc": "internal unknown error"
                    ]
                ]
                ])
        }
        
        do {
            return try Response(status: status, json: errorData!)
        } catch {
        
        }
        
        return Response()
    }
    
}
