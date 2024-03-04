require 'httparty'

response = HTTParty.get('https://api.weather.gov/gridpoints/LSX/88,74/forecast/hourly')
response_body = JSON.parse(response.body)

# TODO: need to refactor everything below this line
time_3pm = response_body.dig('properties', 'periods', 3, 'startTime')
temp_3pm = response_body.dig('properties', 'periods', 3, 'temperature')
wind_speed_3pm = response_body.dig('properties', 'periods', 3, 'windSpeed')
precip_prob_3pm = response_body.dig('properties', 'periods', 3, 'probabilityOfPrecipitation').dig('value')

puts "time_3pm = #{time_3pm}"
puts "temp_3pm = #{temp_3pm} degrees Fahrenheit"
puts "wind_speed_3pm = #{wind_speed_3pm}"
puts "precip_prob_3pm = #{precip_prob_3pm}%"

time_4pm = response_body.dig('properties', 'periods', 4, 'startTime')
temp_4pm = response_body.dig('properties', 'periods', 4, 'temperature')
wind_speed_4pm = response_body.dig('properties', 'periods', 4, 'windSpeed')
precip_prob_4pm = response_body.dig('properties', 'periods', 4, 'probabilityOfPrecipitation').dig('value')

puts "time_4pm = #{time_4pm}"
puts "temp_4pm = #{temp_4pm} degrees Fahrenheit"
puts "wind_speed_4pm = #{wind_speed_4pm}"
puts "precip_prob_4pm = #{precip_prob_4pm}%"

time_5pm = response_body.dig('properties', 'periods', 5, 'startTime')
temp_5pm = response_body.dig('properties', 'periods', 5, 'temperature')
wind_speed_5pm = response_body.dig('properties', 'periods', 5, 'windSpeed')
precip_prob_5pm = response_body.dig('properties', 'periods', 5, 'probabilityOfPrecipitation').dig('value')

puts "time_5pm = #{time_5pm}"
puts "temp_5pm = #{temp_5pm} degrees Fahrenheit"
puts "wind_speed_5pm = #{wind_speed_5pm}"
puts "precip_prob_5pm = #{precip_prob_5pm}%"
