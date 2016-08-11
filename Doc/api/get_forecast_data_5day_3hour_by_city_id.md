# get forecast data 5day 3hour (by city id)

Get forecast data of 5day with 3hour by city id.

## Request


* URL： `api/v1/get_forecast_data_5day_3hour?id=<city_id>`
* Action： `GET`

	
## Response


### Success

* 200

```
{
  "city": {
    "id": 1796236,
    "name": "Shanghai",
    "coord": {
      "lon": 121.458061,
      "lat": 31.222219
    },
    "country": "CN",
    "population": 0,
    "sys": {
      "population": 0
    }
  },
  "cod": "200",
  "message": 0.0096,
  "cnt": 39,
  "list": [
    {
      "dt": 1470884400,
      "main": {
        "temp": 309.03,
        "temp_min": 307.223,
        "temp_max": 309.03,
        "pressure": 1020.64,
        "sea_level": 1021.54,
        "grnd_level": 1020.64,
        "humidity": 61,
        "temp_kf": 1.8
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 12
      },
      "wind": {
        "speed": 6.17,
        "deg": 98.507
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-11 03:00:00"
    },
    {
      "dt": 1470895200,
      "main": {
        "temp": 309.46,
        "temp_min": 308.107,
        "temp_max": 309.46,
        "pressure": 1019.76,
        "sea_level": 1020.68,
        "grnd_level": 1019.76,
        "humidity": 54,
        "temp_kf": 1.35
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 6.45,
        "deg": 98.5019
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-11 06:00:00"
    },
    {
      "dt": 1470906000,
      "main": {
        "temp": 307.41,
        "temp_min": 306.51,
        "temp_max": 307.41,
        "pressure": 1018.89,
        "sea_level": 1019.85,
        "grnd_level": 1018.89,
        "humidity": 55,
        "temp_kf": 0.9
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 6.36,
        "deg": 102.506
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-11 09:00:00"
    },
    {
      "dt": 1470916800,
      "main": {
        "temp": 302.98,
        "temp_min": 302.527,
        "temp_max": 302.98,
        "pressure": 1020.29,
        "sea_level": 1021.08,
        "grnd_level": 1020.29,
        "humidity": 74,
        "temp_kf": 0.45
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 5.36,
        "deg": 110.509
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-11 12:00:00"
    },
    {
      "dt": 1470927600,
      "main": {
        "temp": 300.817,
        "temp_min": 300.817,
        "temp_max": 300.817,
        "pressure": 1020.48,
        "sea_level": 1021.26,
        "grnd_level": 1020.48,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 3.77,
        "deg": 107.503
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-11 15:00:00"
    },
    {
      "dt": 1470938400,
      "main": {
        "temp": 300.37,
        "temp_min": 300.37,
        "temp_max": 300.37,
        "pressure": 1019.52,
        "sea_level": 1020.26,
        "grnd_level": 1019.52,
        "humidity": 92,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 36
      },
      "wind": {
        "speed": 3.66,
        "deg": 99.0009
      },
      "rain": {
        "3h": 0.003
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-11 18:00:00"
    },
    {
      "dt": 1470949200,
      "main": {
        "temp": 300.585,
        "temp_min": 300.585,
        "temp_max": 300.585,
        "pressure": 1019.21,
        "sea_level": 1020.04,
        "grnd_level": 1019.21,
        "humidity": 91,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 80
      },
      "wind": {
        "speed": 3.57,
        "deg": 93.503
      },
      "rain": {
        "3h": 0.005
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-11 21:00:00"
    },
    {
      "dt": 1470960000,
      "main": {
        "temp": 302.391,
        "temp_min": 302.391,
        "temp_max": 302.391,
        "pressure": 1019.96,
        "sea_level": 1020.7,
        "grnd_level": 1019.96,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 4.14,
        "deg": 87.0009
      },
      "rain": {
        "3h": 0.075
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-12 00:00:00"
    },
    {
      "dt": 1470970800,
      "main": {
        "temp": 302.212,
        "temp_min": 302.212,
        "temp_max": 302.212,
        "pressure": 1019.53,
        "sea_level": 1020.23,
        "grnd_level": 1019.53,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 56
      },
      "wind": {
        "speed": 4.92,
        "deg": 102.501
      },
      "rain": {
        "3h": 1.44
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-12 03:00:00"
    },
    {
      "dt": 1470981600,
      "main": {
        "temp": 307.499,
        "temp_min": 307.499,
        "temp_max": 307.499,
        "pressure": 1018.15,
        "sea_level": 1019.05,
        "grnd_level": 1018.15,
        "humidity": 64,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 12
      },
      "wind": {
        "speed": 5.56,
        "deg": 103
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-12 06:00:00"
    },
    {
      "dt": 1470992400,
      "main": {
        "temp": 306.065,
        "temp_min": 306.065,
        "temp_max": 306.065,
        "pressure": 1017.45,
        "sea_level": 1018.32,
        "grnd_level": 1017.45,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 5.73,
        "deg": 102.011
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-12 09:00:00"
    },
    {
      "dt": 1471003200,
      "main": {
        "temp": 302.238,
        "temp_min": 302.238,
        "temp_max": 302.238,
        "pressure": 1018.2,
        "sea_level": 1019,
        "grnd_level": 1018.2,
        "humidity": 73,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.76,
        "deg": 104.508
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-12 12:00:00"
    },
    {
      "dt": 1471014000,
      "main": {
        "temp": 300.103,
        "temp_min": 300.103,
        "temp_max": 300.103,
        "pressure": 1018.82,
        "sea_level": 1019.55,
        "grnd_level": 1018.82,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 3.55,
        "deg": 109.503
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-12 15:00:00"
    },
    {
      "dt": 1471024800,
      "main": {
        "temp": 298.894,
        "temp_min": 298.894,
        "temp_max": 298.894,
        "pressure": 1017.91,
        "sea_level": 1018.75,
        "grnd_level": 1017.91,
        "humidity": 97,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.62,
        "deg": 102.504
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-12 18:00:00"
    },
    {
      "dt": 1471035600,
      "main": {
        "temp": 298.308,
        "temp_min": 298.308,
        "temp_max": 298.308,
        "pressure": 1017.82,
        "sea_level": 1018.55,
        "grnd_level": 1017.82,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "02n"
        }
      ],
      "clouds": {
        "all": 8
      },
      "wind": {
        "speed": 2.66,
        "deg": 92.5008
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-12 21:00:00"
    },
    {
      "dt": 1471046400,
      "main": {
        "temp": 303.419,
        "temp_min": 303.419,
        "temp_max": 303.419,
        "pressure": 1018.62,
        "sea_level": 1019.46,
        "grnd_level": 1018.62,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 3.11,
        "deg": 102
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-13 00:00:00"
    },
    {
      "dt": 1471057200,
      "main": {
        "temp": 306.473,
        "temp_min": 306.473,
        "temp_max": 306.473,
        "pressure": 1018.24,
        "sea_level": 1019.16,
        "grnd_level": 1018.24,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 64
      },
      "wind": {
        "speed": 4.16,
        "deg": 103.502
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-13 03:00:00"
    },
    {
      "dt": 1471068000,
      "main": {
        "temp": 306.175,
        "temp_min": 306.175,
        "temp_max": 306.175,
        "pressure": 1017.17,
        "sea_level": 1018.03,
        "grnd_level": 1017.17,
        "humidity": 63,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 56
      },
      "wind": {
        "speed": 4.8,
        "deg": 92.0054
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-13 06:00:00"
    },
    {
      "dt": 1471078800,
      "main": {
        "temp": 305.803,
        "temp_min": 305.803,
        "temp_max": 305.803,
        "pressure": 1016.42,
        "sea_level": 1017.33,
        "grnd_level": 1016.42,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 5.02,
        "deg": 86.5007
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-13 09:00:00"
    },
    {
      "dt": 1471089600,
      "main": {
        "temp": 302.071,
        "temp_min": 302.071,
        "temp_max": 302.071,
        "pressure": 1017.25,
        "sea_level": 1018.1,
        "grnd_level": 1017.25,
        "humidity": 74,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.42,
        "deg": 86.5005
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-13 12:00:00"
    },
    {
      "dt": 1471100400,
      "main": {
        "temp": 300.235,
        "temp_min": 300.235,
        "temp_max": 300.235,
        "pressure": 1017.8,
        "sea_level": 1018.47,
        "grnd_level": 1017.8,
        "humidity": 86,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 2.63,
        "deg": 87.5004
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-13 15:00:00"
    },
    {
      "dt": 1471111200,
      "main": {
        "temp": 300.356,
        "temp_min": 300.356,
        "temp_max": 300.356,
        "pressure": 1017.21,
        "sea_level": 1017.98,
        "grnd_level": 1017.21,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 1.91,
        "deg": 73.0023
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-13 18:00:00"
    },
    {
      "dt": 1471122000,
      "main": {
        "temp": 300.121,
        "temp_min": 300.121,
        "temp_max": 300.121,
        "pressure": 1017.05,
        "sea_level": 1017.88,
        "grnd_level": 1017.05,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03n"
        }
      ],
      "clouds": {
        "all": 44
      },
      "wind": {
        "speed": 1.91,
        "deg": 57.0023
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-13 21:00:00"
    },
    {
      "dt": 1471132800,
      "main": {
        "temp": 303.495,
        "temp_min": 303.495,
        "temp_max": 303.495,
        "pressure": 1017.81,
        "sea_level": 1018.68,
        "grnd_level": 1017.81,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 12
      },
      "wind": {
        "speed": 3.02,
        "deg": 67.5023
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-14 00:00:00"
    },
    {
      "dt": 1471143600,
      "main": {
        "temp": 305.592,
        "temp_min": 305.592,
        "temp_max": 305.592,
        "pressure": 1017.28,
        "sea_level": 1018.16,
        "grnd_level": 1017.28,
        "humidity": 65,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 56
      },
      "wind": {
        "speed": 4.46,
        "deg": 73.5029
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-14 03:00:00"
    },
    {
      "dt": 1471154400,
      "main": {
        "temp": 307.142,
        "temp_min": 307.142,
        "temp_max": 307.142,
        "pressure": 1015.88,
        "sea_level": 1016.84,
        "grnd_level": 1015.88,
        "humidity": 59,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.36,
        "deg": 73.5012
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-14 06:00:00"
    },
    {
      "dt": 1471165200,
      "main": {
        "temp": 306.001,
        "temp_min": 306.001,
        "temp_max": 306.001,
        "pressure": 1015.22,
        "sea_level": 1016.1,
        "grnd_level": 1015.22,
        "humidity": 55,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.81,
        "deg": 67.5031
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-14 09:00:00"
    },
    {
      "dt": 1471176000,
      "main": {
        "temp": 301.712,
        "temp_min": 301.712,
        "temp_max": 301.712,
        "pressure": 1016.42,
        "sea_level": 1017.29,
        "grnd_level": 1016.42,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.12,
        "deg": 70.5
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-14 12:00:00"
    },
    {
      "dt": 1471186800,
      "main": {
        "temp": 299.006,
        "temp_min": 299.006,
        "temp_max": 299.006,
        "pressure": 1016.89,
        "sea_level": 1017.69,
        "grnd_level": 1016.89,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.76,
        "deg": 58.0131
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-14 15:00:00"
    },
    {
      "dt": 1471197600,
      "main": {
        "temp": 297.858,
        "temp_min": 297.858,
        "temp_max": 297.858,
        "pressure": 1015.82,
        "sea_level": 1016.63,
        "grnd_level": 1015.82,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.11,
        "deg": 32.0047
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-14 18:00:00"
    },
    {
      "dt": 1471208400,
      "main": {
        "temp": 296.892,
        "temp_min": 296.892,
        "temp_max": 296.892,
        "pressure": 1015.44,
        "sea_level": 1016.16,
        "grnd_level": 1015.44,
        "humidity": 98,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.42,
        "deg": 358.002
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-14 21:00:00"
    },
    {
      "dt": 1471219200,
      "main": {
        "temp": 302.046,
        "temp_min": 302.046,
        "temp_max": 302.046,
        "pressure": 1015.82,
        "sea_level": 1016.54,
        "grnd_level": 1015.82,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01d"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.22,
        "deg": 359.502
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-15 00:00:00"
    },
    {
      "dt": 1471230000,
      "main": {
        "temp": 305.809,
        "temp_min": 305.809,
        "temp_max": 305.809,
        "pressure": 1014.88,
        "sea_level": 1015.77,
        "grnd_level": 1014.88,
        "humidity": 67,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 3.52,
        "deg": 7.00879
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-15 03:00:00"
    },
    {
      "dt": 1471240800,
      "main": {
        "temp": 304.754,
        "temp_min": 304.754,
        "temp_max": 304.754,
        "pressure": 1013.55,
        "sea_level": 1014.44,
        "grnd_level": 1013.55,
        "humidity": 68,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 56
      },
      "wind": {
        "speed": 4.41,
        "deg": 34.5011
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-15 06:00:00"
    },
    {
      "dt": 1471251600,
      "main": {
        "temp": 305.767,
        "temp_min": 305.767,
        "temp_max": 305.767,
        "pressure": 1012.96,
        "sea_level": 1013.91,
        "grnd_level": 1012.96,
        "humidity": 54,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 48
      },
      "wind": {
        "speed": 4.77,
        "deg": 32
      },
      "rain": {},
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2016-08-15 09:00:00"
    },
    {
      "dt": 1471262400,
      "main": {
        "temp": 301.784,
        "temp_min": 301.784,
        "temp_max": 301.784,
        "pressure": 1014.55,
        "sea_level": 1015.27,
        "grnd_level": 1014.55,
        "humidity": 60,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.75,
        "deg": 38.004
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-15 12:00:00"
    },
    {
      "dt": 1471273200,
      "main": {
        "temp": 298.681,
        "temp_min": 298.681,
        "temp_max": 298.681,
        "pressure": 1014.76,
        "sea_level": 1015.52,
        "grnd_level": 1014.76,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.56,
        "deg": 38.5005
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-15 15:00:00"
    },
    {
      "dt": 1471284000,
      "main": {
        "temp": 296.601,
        "temp_min": 296.601,
        "temp_max": 296.601,
        "pressure": 1013.97,
        "sea_level": 1014.72,
        "grnd_level": 1013.97,
        "humidity": 97,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.28,
        "deg": 359
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-15 18:00:00"
    },
    {
      "dt": 1471294800,
      "main": {
        "temp": 295.915,
        "temp_min": 295.915,
        "temp_max": 295.915,
        "pressure": 1013.89,
        "sea_level": 1014.75,
        "grnd_level": 1013.89,
        "humidity": 97,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 1.36,
        "deg": 324.506
      },
      "rain": {},
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2016-08-15 21:00:00"
    }
  ]
}
```

### Failure

