import Vapor
import HTTP

let OpenWeatherMapAPIKey = app.config["servers", "default", "open_weather_map_api_key"].string!

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
                    "is_existed": true,
                    "uid": result.userID!
                    ])
                
                return try Response(status: .ok, json: responseData)
            } else {
                // account not existed
                let responseData = try JSON(node: [
                    "is_existed": false
                    ])
                
                return try Response(status: .ok, json: responseData)
            }
        }
        
        return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
    }
    
    static func signUp(request: Request) throws -> ResponseRepresentable {
        let name = request.data["name"].string
        let pwd = request.data["pwd"].string
        
        if !StringUtility.isEmpty(name) && !StringUtility.isEmpty(pwd) {
            let result = try DBManager.getInstance().signUp(name: name!, pwd: pwd!)
            if result.isOK {
                // sign up success
                let responseData = try JSON(node: [
                    "uid": result.userID!
                    ])
                
                return try Response(status: .ok, json: responseData)
            } else {
                // account has existed
                return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_ACCOUNT_EXISTED)
            }
        }
        
        return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
    }
}
