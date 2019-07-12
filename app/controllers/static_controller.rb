class StaticController < ApplicationController

  def home
    flash.now[:danger] = "Teste"
  end

end
