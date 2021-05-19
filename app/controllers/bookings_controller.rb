class BookingsController < ApplicationController

    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def new
        @booking = Booking.new
    end 

    def create
        @booking = Booking.new(booking_params)
        @booking.save
    end

    def booking_params
        params.require(:booking).permit(:total_price)
    end
end
