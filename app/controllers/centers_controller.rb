class CentersController < ApplicationController
  def new
    @center = Center.new
  end

  def create 
    @centers_params = params.require(:center).permit(:name, :location)
    @center = Center.create(@centers_params)
    if @center.save
      redirect_to centers_index_path
    else
      redirect_to centers_index_path
    end
  end
  

  def index
    @centers = Center.all
  end

  def show
    @center = Center.find(params[:id])
  end

  def edit
    @center = Center.find(params[:id])
  end

  def update
    @center = Center.find(params[:id])
    @centers_new_params = params.require(:center).permit(:name, :location)

    if @center.update(@centers_new_params)
      redirect_to centers_index_path
    else
      redirect_to centers_index_path
    end
  end

  def delete
    @center = Center.find(params[:id])
    @center.destroy
    redirect_to centers_index_path, status: :see_other
  end
end
