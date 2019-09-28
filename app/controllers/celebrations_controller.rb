class CelebrationsController < ApplicationController
  # before_action :private_access, except: [:index, :show]
  before_action :set_celebration, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @celebrations = Celebration.all.order('created_at DESC')
  end

  def new
    @celebration = Celebration.new
  end

  def show
  end

  def edit
  end

  def create
    @celebration = Celebration.new(celebration_params)
    @celebration.user = current_user
    if @celebration.save
      flash[:success] = 'Celebration successfully created'
      redirect_to @celebration
    else
      render :new
    end
  end

  def update
    @celebration.update(celebration_params)
  end

  private

  def set_celebration
    @celebration = Celebration.find(params[:id])
  end

  def celebration_params
    params.require(:celebration).permit(:image, :name, :description, :date, :ubication)  
  end
end
