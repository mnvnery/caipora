class BookingsController < ApplicationController
    skip_before_action :authenticate_user!
    
    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def new
        @booking = Booking.new
        @trip = Trip.find(params[:trip_id])
        @bookings = @trip.bookings
    end 

    def create
        @trip = Trip.find(params[:trip_id])
        @booking = Booking.new(booking_params)
        @booking.trip = @trip
        @booking.status = nil
        if @booking.save
            redirect_to bookings_path
        else
            redirect_to trips_path
        end
    end

    def booking_params
        params.require(:booking).permit(:total_price)
    end
end
