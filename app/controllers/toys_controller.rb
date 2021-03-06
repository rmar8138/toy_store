class ToysController < ApplicationController
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

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(params.require(:toy).permit(:name, :description))
    p params[:toy]

    redirect_to toy_url(@toy)
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to :action => "index"
  end
end