import Vapor

let OpenWeatherMapAPIKey = "5bdc6dd8b4634b5090f6a832bd4054c7"

let app = Application()

app.get("/") { request in
    return "ZWeather Server"
}

app.grouped("api/v1") { api in
    
    // get city list
    api.get("get_city_list") { request in
        let path = "./Config/city_list.json"
        let fileBody = try FileUtility.readBytesFromFile(path)
        
        return Response(status: .ok, body: .data(fileBody))
    }
    
    // get current weather
    api.get("get_current_weather") { request in
        guard let cityID = request.data["id"]?.string else {
            return try ErrorResponseUtility.getErrorResponse(errorType: ErrorResponseType.ERROR_PARAM)
        }
        
        let response = try app.client.get("http://api.openweathermap.org/data/2.5/weather", query: ["id": cityID, "appid": OpenWeatherMapAPIKey])
        
        return response
    }
    
}

app.globalMiddleware.append(SampleMiddleware())

let port = app.config["app", "port"].int ?? 80

print("Visit http://localhost:\(port)")
app.serve()
