# frozen_string_literal: true

# Controller Static
class StaticController < ApplicationController
  def home
    flash.now[:danger] = 'Conecta Aí'
  end
end
