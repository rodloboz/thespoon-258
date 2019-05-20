class RestaurantsController < ApplicationController
  # Let's fake a database records
  RESTAURANTS = {
    1 => {
      name: "Dishoom",
      address: "Shoreditch, London",
      category: "indian"
    },
    2 => {
      name: "Sushi Samba",
      address: "City, London",
      category: "japanese"
    }
  }

  def index
    @category = params[:food_type]

    if @category.nil?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category.downcase }
    end
  end

  def show
    byebug
  end
end
