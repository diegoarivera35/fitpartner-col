class DatosController < ApplicationController
  def index
    @datos = Dato.all
  end


  def show
    @dato = Dato.find(params[:id])
  end


  def new
    @dato = Dato.new
  end

  def edit
    @dato = Dato.find(params[:id])
  end


def create
  @dato = Dato.new(dato_params)

  if @dato.save
    format.html { redirect_to @dato, notice: 'la informaciòn se guardò correctamente'}
    format.html { redirect_to @dato }
  else
    format.html { render :new }
  end
end



def update
  dato = Dato.find(params[:id])
  dato.update(dato_params)
  redirect_to dato
end


def destroy
  Dato.find(params[:id]).destroy
  redirect_to "/datos"
end





private

def dato_params
  params.require(:dato).permit(:genero,:sedentario,:moderado,:activo,:altura,:peso,:cintura,:cuello,:cadera,:user_id)
end




















end
  