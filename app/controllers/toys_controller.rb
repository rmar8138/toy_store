class ToysController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
  end
  
  def new
    
  end

  def create
    Toy.create(
      name: params[:toy][:name],
      description: params[:toy][:description],
      post_date: Date.today
    )

    redirect_to :action => "index"
  end
end