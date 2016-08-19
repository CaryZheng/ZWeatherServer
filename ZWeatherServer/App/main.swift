import Vapor

let app = Droplet()

// load city list
try CityListDataManager.getInstance().initData()

app.get("/") { request in
    return "ZWeather Server"
}

app.group("api/v1") { api in
    
    // get city list
    api.get("get_city_list") { request in
        return try RequestHandler.handleGetCityList(request: request)
    }
    
    // get current weather
    api.get("get_current_weather") { request in
        return try RequestHandler.handleGetCurrentWeather(request: request)
    }
    
    // get forecast data
    api.get("get_forecast_data_5day_3hour") { request in
        return try RequestHandler.handleGetForecastDataWith5Day3Hour(request: request)
    }
    
    // is account existed
    api.get("is_account_existed") { request in
        return try RequestHandler.isAccountExisted(request: request)
    }
    
    // sign up
    api.post("sign_up") { request in
        return try RequestHandler.signUp(request: request)
    }
    
    // sign in
    api.post("sign_in") { request in
        return try RequestHandler.signIn(request: request)
    }
    
    // get user info
    api.get("user_info") { request in
        return try RequestHandler.getUserInfo(request: request)
    }
}

let port = app.config["servers", "default", "port"].int
print("Visit http://localhost:\(port)")

let version = app.config["servers", "default", "version"].string
print("ZWeather version: \(version)")

app.serve()
