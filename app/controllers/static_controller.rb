# frozen_string_literal: true

# Controller Static
class StaticController < ApplicationController
  def home
    flash.now[:success] = 'Fala meu amigo'
  end
end
