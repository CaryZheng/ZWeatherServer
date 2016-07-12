import Vapor


let app = Application()

app.get("/") { request in
    return "ZWeather Server"
}

app.grouped("api/v1") { api in
    
    // get current
    api.get("get_city_list") { request in
        let path = "./Config/city_list.json"
        let fileBody = try FileUtility.readBytesFromFile(path)
        
        return Response(status: .ok, body: .data(fileBody))
    }
    
}

app.globalMiddleware.append(SampleMiddleware())

let port = app.config["app", "port"].int ?? 80

print("Visit http://localhost:\(port)")
app.serve()
