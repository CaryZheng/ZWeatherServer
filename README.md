# ZWeatherServer

![Logo](Logo.png)

[![Build Status](https://travis-ci.org/CaryZheng/ZWeatherServer.svg?branch=master)](https://travis-ci.org/CaryZheng/ZWeatherServer)

A weather server based on [Vapor](https://github.com/qutheory/vapor) written by [Swift](https://github.com/apple/swift)

## Current Environment

**OS**: macOS or Ubuntu

**Database**: [MySQL](https://www.mysql.com)

**Framework**: [Vapor v0.16](https://github.com/qutheory/vapor)

## Weather Data Source

[OpenWeatherMap](http://openweathermap.org/api)

## Begin

### Install MySQL

**macOS**

```
brew install mysql
brew link mysql
mysql.server start
```

**Linux**

```
sudo apt-get update
sudo apt-get install -y mysql-server libmysqlclient-dev
sudo mysql_install_db
sudo service mysql start
```

**MySQL Script**

```
source <project path>/Script/zweather_msql_script.sql
```


### Building

Enter ZWeatherServer project directory:
```
ZWeatherServer/ZWeatherServer
```

**macOS**

```
swift build -Xswiftc -I/usr/local/include/mysql -Xlinker -L/usr/local/lib
```

**Linux**

```
swift build -Xswiftc -DNOJSON
```


## API

[Doc](Doc/README.md)

## Online Demo

For example:

* **get city list**: [api/v1/get_city_list](http://120.24.195.198/api/v1/get_city_list)
