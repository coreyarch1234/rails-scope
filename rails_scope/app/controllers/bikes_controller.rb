class BikesController < ApplicationController
    include BikesHelper
    def index()
        @bike_info = get_bike_data()
    end
    def show()
    end
end
