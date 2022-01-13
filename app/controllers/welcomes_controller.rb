class WelcomesController < ApplicationController
  def index
    @product=Product.all

  end
end
