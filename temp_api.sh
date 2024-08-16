#!/bin/bash

#Gets the API_KEY from my .env file:
if [ -f .env ]; then
  export $(cat .env | xargs)
fi

#All the required user inputs:
echo "Enter Latitude: "
read lat
echo "Enter Longitude: "
read lon

#The data required for fetching the data :
unit="metric"
api_key="$API_KEY"

#Fetching the data from API (Making an API Request):
response=$(curl -s "https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&units=${unit}&appid=${api_key}")

#Extracting the required data from the JSON file recieved from the API Call
temp=$(echo $response | jq -r '.main.temp')

#Printing the temperature in the given Latitude and Longitude.
echo "The temperature is: $temp °C"