# weather_reporter
This application calls the `API Web Service` from `weather.gov` (https://www.weather.gov/documentation/services-web-api). 

Currently, it only roughly built so that it gathers the Time, Temperature, Wind speed, and Precipitation percentage predicted for the 3pm, 4pm, and 5pm hour. To get the correct data, this needs to be run during the `12noon` hour.

### Run the application
Clone the repository and `cd` in it. To run: 
```
$ ruby weather_reporter.rb
```
This utilitizes the `httparty` gem. If you get an error stating this cannot be found, you can resolve this by creating a `Gemfile` in the root directory and adding `gem "httparty"`, saving, and running `bundle install`.

### Other notes
This was "roughly" created because my wife, who is a tennis coach, wanted to be informed of what the weather would be after school (hence, 3-5pm time range). 

I thought this would be a good opportunity to explore playing with APIs in Ruby. 

I am hoping, as I get more time, to clean this up a bit and add a few more features. Some features include:

- Add tests
- Refactor
- Email the data
- Specifying the time range to get the data for
- Specifying which data to get
- Being able to run at any time and get the data for the correct time range
