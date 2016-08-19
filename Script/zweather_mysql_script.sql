# database: ZWeather
create database ZWeather;

use ZWeather;

# table: user
create table user(user_id INT NOT NULL AUTO_INCREMENT, name VARCHAR(20) NOT NULL, pwd VARCHAR(40) NOT NULL, PRIMARY KEY(user_id));

# table: sign_in
create table sign_in(user_id INT NOT NULL AUTO_INCREMENT, token VARCHAR(130) NOT NULL, PRIMARY KEY(user_id));