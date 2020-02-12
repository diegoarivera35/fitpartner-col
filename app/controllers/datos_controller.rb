class DatosController < ApplicationController
  def index
    @datos = Dato.all
  end
end
  