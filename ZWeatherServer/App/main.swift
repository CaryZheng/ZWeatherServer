import Vapor

let OpenWeatherMapAPIKey = "5bdc6dd8b4634b5090f6a832bd4054c7"

let app = Application()

app.get("/") { request in
    return "ZWeather Server"
}

app.grouped("api/v1") { api in
    
    // get city list
    api.get("get_city_list") { request in
        return try RequestHandler.handleGetCityList(request: request)
    }
    
    // get current weather
    api.get("get_current_weather") { request in
        return try RequestHandler.handleGetCurrentWeather(request: request)
    }
    
}

app.globalMiddleware.append(SampleMiddleware())

let port = app.config["app", "port"].int ?? 80

print("Visit http://localhost:\(port)")
app.serve()
