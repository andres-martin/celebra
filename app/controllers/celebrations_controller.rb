class CelebrationsController < ApplicationController
  before_action :private_access, except: [:index, :show]

  def index
    @celebrations = Celebration.all
  end

  def new
  
  end
end
