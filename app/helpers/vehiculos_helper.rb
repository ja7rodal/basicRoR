module VehiculosHelper
    def form_title_v
        @vehiculo.new_record? ? "Nueva Vehiculo" : "Editar Vehiculo"
    end  
end
