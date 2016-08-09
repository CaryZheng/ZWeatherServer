import Vapor
import HTTP

class ErrorResponseUtility {

    static func getErrorResponse(errorType: ErrorResponseType) -> Response {
        do {
            var errorData: JSON? = nil
            let status = Status.ok
            
            switch errorType {
            case ErrorResponseType.ERROR_PARAM:
                errorData = try JSON(node: [
                    "error": try JSON([
                        "code": 4,
                        "desc": "request rejected",
                        "sub_error": try JSON([
                            "code": 4001,
                            "desc": "param error"
                            ])
                        ])
                    ])
            case ErrorResponseType.ERROR_INTERNAL:
                errorData = try JSON(node: [
                    "error": JSON([
                        "code": 5,
                        "desc": "internal error",
                        "sub_error": JSON([
                            "code": 5001,
                            "desc": "internal database error"
                            ])
                        ])
                    ])
            default:
                errorData = try JSON(node: [
                    "error": JSON([
                        "code": 5,
                        "desc": "internal error",
                        "sub_error": JSON([
                            "code": 5000,
                            "desc": "internal unknown error"
                            ])
                        ])
                    ])
            }
            
            return try Response(status: status, json: errorData!)
        } catch {
        
        }

        return Response()
    }
    
}
