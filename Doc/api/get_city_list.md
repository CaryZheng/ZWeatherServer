# get city list

Get supported city list.

## Request


* URL： `api/v1/get_city_list`
* Action： `GET`

	
## Response


### Success

* 200

```
[
    {
        "_id": 1796236, 
        "name": "Shanghai", 
        "country": "CN", 
        "coord": {
            "lon": 121.458061, 
            "lat": 31.222219
        }
    }, 
    {
        "_id": 2038349, 
        "name": "Beijing Shi", 
        "country": "CN", 
        "coord": {
            "lon": 116.397057, 
            "lat": 39.916908
        }
    }, 
    {
        "_id": 1809858, 
        "name": "Guangzhou", 
        "country": "CN", 
        "coord": {
            "lon": 113.25, 
            "lat": 23.116671
        }
    }, 
    {
        "_id": 1795565, 
        "name": "Shenzhen", 
        "country": "CN", 
        "coord": {
            "lon": 114.068298, 
            "lat": 22.54554
        }
    }
]
```

### Failure

