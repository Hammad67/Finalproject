class ProductsController < ApplicationController
  def index
    @product=Product.all
  end
  def new
    @product=Product.new
  end
  def create

    @product=Product.new
    @product.name=params[:product][:name]
    @product.product_desc=params[:product][:product_desc]
    @product.size=params[:product][:size]
    @product.colour=params[:product][:colour]
    @product.price=params[:product][:price]
    @product.image=params[:product][:image]

    if @product.save
      flash[:notice]="Product added Successfully"
      redirect_to @product

    else
      render :new
    end


  end
  def show
    @product=Product.find(params[:id])
  end

  def edit
    @product=Product.find(params[:id])
  end
  def update
    @product=Product.find(params[:id])
    @product.name=params[:name]
    @product.product_desc=params[:product][:product_desc]
    @product.size=params[:product][:size]
    @product.colour=params[:product][:colour]
    @product.price=params[:product][:price]
    @product.image=params[:product][:image]
    if @product.save
      redirect_to @product
    end
  end

  def destroy
    @product=Product.find(params[:id])
    @product.destroy
    redirect_to @product
  end
end
