# frozen_string_literal: true

class RestaurantsController < ApplicationController
  before_action :find_restautant, only: [:edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @restaurant&.destroy
    redirect_to restaurants_path, notice: 'Reataurant was successfully deleted.'
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end

  def find_restautant
    @restaurant = Restaurant.find_by(id: params[:id])
  end
end
