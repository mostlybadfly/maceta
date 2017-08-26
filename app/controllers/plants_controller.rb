class PlantsController < ApplicationController
  def index
    @plants = current_user.plants
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def edit
  end

  def create
    @plant = current_user.plants.build(plant_params)

    @plant.save
    redirect_to @plant
  end

  def update
  end

  def destroy
  end

  private
  def plant_params
    params.require(:plant).permit(:common_name, :scientific_name,
                                  :nickname, :origin, :watering_schedule,
                                  :light_requirement, :image
                                 )
  end
end
