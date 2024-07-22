class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
  end
  
  def create
    @Prototype.create(prototype_params)
    if @prototype.save
      redirect_to prototypes_path, notice: 'Prototype was successfully created.'
    else
      render :new
    end
  end
  
  private

  def prototype_params
    params.require(:prototype).permit(:name, :description, :user_id)
  end
end