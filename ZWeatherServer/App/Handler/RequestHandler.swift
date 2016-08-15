import Vapor
import HTTP

class RequestHandler {
    static func handleGetCityList(request: Request) throws -> ResponseRepresentable {
        let cityListData = CityListDataManager.getInstance().getCityListData()
        
        return Response(status: .ok, body: .data(cityListData))
	}
    
    static func handleGetCurrentWeather(request: Request) throws -> ResponseRepresentable {
        let cityID = request.data["id"]?.string
        if let cityID = cityID {
            let response = try app.client.get(StaticConfigure.getOriginalDataURL()+"/weather", query: ["id": cityID, "appid": OpenWeatherMapAPIKey])
            
            return response
        }
        
        let lat = request.data["lat"]?.double
        let lon = request.data["lon"]?.double
        if let lat = lat, let lon = lon {
            let response = try app.client.get(StaticConfigure.getOriginalDataURL()+"/weather", query: ["lat": lat, "lon": lon, "appid": OpenWeatherMapAPIKey])
            
            return response
        }
        
        return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
    }
    
    static func handleGetForecastDataWith5Day3Hour(request: Request) throws -> ResponseRepresentable {
        let cityID = request.data["id"]?.string
        if let cityID = cityID {
            let response = try app.client.get(StaticConfigure.getOriginalDataURL()+"/forecast", query: ["id": cityID, "appid": OpenWeatherMapAPIKey])
            
            return response
        }
        
        return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
    }
    
    static func isAccountExisted(request: Request) throws -> ResponseRepresentable {
        
        let name = request.data["name"]?.string
        if let name = name {
            let result = try DBManager.getInstance().isAccountExisted(name: name)
            if result.isOK {
                // account existed
                let responseData = try JSON(node: [
                    "uid": result.userID!
                    ])
                
                return try Response(status: .ok, json: responseData)
            } else {
                // account not existed
                return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_ACCOUNT_NO_EXISTED)
            }
        }
        
        return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
    }
}
