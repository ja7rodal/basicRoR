class VehiculosController < ApplicationController
  def index
    @vehiculos = Vehiculo.all
  end
  
  def show
    @vehiculo = Vehiculo.find(params[:id])   
  end
  
  def new
    @vehiculo = Vehiculo.new
  end
  
  def create
    @vehiculo = Vehiculo.new(vehiculo_params)
    if @vehiculo.save
       redirect_to vehiculos_path
    else
       render :new
    end 
    
    
  end
  
  def destroy

    @vehiculo = Vehiculo.find(params[:id])
    @vehiculo.destroy 
    redirect_to vehiculos_path
  end
  
  
  def edit
    @vehiculo = Vehiculo.find(params[:id])
  end
  
  def update
    @vehiculo = Vehiculo.find(params[:id])
    if @vehiculo.update(vehiculo_params)
      redirect_to vehiculo_path(@vehiculo.id)
    else
      render :edit
    end
  end
  
  #strong params
  private
    def vehiculo_params
      params.require(:vehiculo).permit(:marca)
    end
end
