# get current weather (by city id)

Get current weather by city id.

## Request


* URL： `api/v1/get_current_weather?id=<city_id>`
* Action： `GET`

	
## Response


### Success

* 200

```
{
    "coord": {
        "lon": 121.46, 
        "lat": 31.22
    }, 
    "weather": [
        {
            "id": 701, 
            "main": "Mist", 
            "description": "mist", 
            "icon": "50d"
        }
    ], 
    "base": "cmc stations", 
    "main": {
        "temp": 306.28, 
        "pressure": 999, 
        "humidity": 63, 
        "temp_min": 300.37, 
        "temp_max": 309.82
    }, 
    "wind": {
        "speed": 4, 
        "deg": 260
    }, 
    "clouds": {
        "all": 20
    }, 
    "dt": 1468311715, 
    "sys": {
        "type": 1, 
        "id": 7452, 
        "message": 0.0137, 
        "country": "CN", 
        "sunrise": 1468270744, 
        "sunset": 1468321224
    }, 
    "id": 1796236, 
    "name": "Shanghai", 
    "cod": 200
}
```

### Failure

