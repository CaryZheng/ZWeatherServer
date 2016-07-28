import Vapor

class RequestHandler {
    static func handleGetCityList(request: Vapor.Request) throws -> ResponseRepresentable {
        let cityListData = CityListDataManager.getInstance().getCityListData()
        
        return Response(status: .ok, body: .data(cityListData))
	}
    
    static func handleGetCurrentWeather(request: Vapor.Request) throws -> ResponseRepresentable {
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
}
