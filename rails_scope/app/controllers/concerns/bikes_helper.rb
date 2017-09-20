module BikesHelper
    #Get bike json data. To store the latitude and longitude with the ID in one object.
    def get_bike_data()
        response = HTTParty.get('https://gbfs.citibikenyc.com/gbfs/en/station_information.json')
        #Get all of the station data
        stations = response["data"]["stations"]
        distance = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=40.76727216,-73.99392888&destinations=40.71911552,-74.00666661&mode=bicycling&language=fr-FR&key=AIzaSyBnEzKVOAdc21giB4XsOB-AbfA7ktLp-fY
')

        #Store lat, lon and station_id
        bike_locations = {}
        for element in stations do
            latitude = element["lat"]
            longitude = element["lon"]
            bike_locations[element["station_id"]] = [latitude, longitude]
        end
        return distance
    end

end
