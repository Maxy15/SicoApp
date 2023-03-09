class CentersController < ApplicationController
  def new
    @center = Center.new
  end

  def create 
    @centers_params = params.require(:center).permit(:name, :location)
    @center = Center.create(@centers_params)
    if @center.save
      redirect_to centers_index_path, notice: 'Centro médico creado con éxito' 
    else
      redirect_to centers_index_path, notice: 'Error en la creación del centro'
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
      redirect_to centers_index_path, notice: 'Centro médico actualizado con éxito'
    else
      redirect_to centers_index_path, notice: 'Error en la actualización del centro'
    end
  end

  def delete
    @center = Center.find(params[:id])
    @center.destroy
    redirect_to centers_index_path, status: :see_other
  end
end
