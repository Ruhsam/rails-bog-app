#
# app/controllers/creatures_controller.rb
#

class CreaturesController < ApplicationController

   def index
      @creatures = Creature.all
      render :index
   end

   def new
      @creature = Creature.new
      render :new
   end

   def create
      creature_params = params.require(:creature).permit(:name, :description)
      creature = Creature.new(creature_params)
      if creature.Save
         redirect_to creature_path
      end
   end
end
