import Vapor

class RequestHandler {
    static func handleGetCityList(request: Vapor.Request) throws -> ResponseRepresentable{
        let cityListData = CityListDataManager.getInstance().getCityListData()
        
        return Response(status: .ok, body: .data(cityListData))
	}
    
    static func handleGetCurrentWeather(request: Vapor.Request) throws -> ResponseRepresentable{
        guard let cityID = request.data["id"]?.string else {
            return ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
        }
        
        let response = try app.client.get("http://api.openweathermap.org/data/2.5/weather", query: ["id": cityID, "appid": OpenWeatherMapAPIKey])
        
        return response
    }
}
