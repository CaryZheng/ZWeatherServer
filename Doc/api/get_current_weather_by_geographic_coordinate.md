# get current weather (by geographic coordinate)

Get current weather by geographic coordinate.

## Request


* URL： `api/v1/get_current_weather?lat=<lat>&lon=<lon>`
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
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "base": "cmc stations",
  "main": {
    "temp": 309.62,
    "pressure": 1006,
    "humidity": 56,
    "temp_min": 301.48,
    "temp_max": 317.04
  },
  "wind": {
    "speed": 2,
    "deg": 300
  },
  "clouds": {
    "all": 0
  },
  "dt": 1469671739,
  "sys": {
    "type": 1,
    "id": 7452,
    "message": 0.0031,
    "country": "CN",
    "sunrise": 1469653707,
    "sunset": 1469703149
  },
  "id": 1796236,
  "name": "Shanghai",
  "cod": 200
}
```

### Failure

