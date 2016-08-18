import HTTP

class RequestHandlerUtility {
    static func handleAuthToken(userID: Int, token: String?) throws -> (isOK: Bool, response: ResponseRepresentable?) {
        if StringUtility.isEmpty(token) {
            return (false, ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_AUTH_TOKEN_INVALID))
        }
        let isTokenValid = try DBManager.getInstance().isSignInTokenValid(userID: userID, token: token!)
        if !isTokenValid {
            return (false, ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_AUTH_TOKEN_INVALID))
        }
        
        return (true, nil)
    }
}
