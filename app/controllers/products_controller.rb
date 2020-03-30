class ProductsController < ApplicationController
  def index
    @products = Product.all
  end


  def create
  product = Product.new(name: params[:name], desc: params[:desc], image: params[:image])

    if product.save
      flash[:alert] = "성공적으로 저장했습니다."
      redirect_to product_path(product)
    else
      flash[:error] = "저장을 실패했습니다."
      redirect_back(fallback_location: root_path)
    end
   
  end

  def show
    @product = Product.find(params[:id])

    @grades= [1,2,3,4,5]

    @grade_average = Review.where(product: params[:id]).average(:grade)

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
  
    if @product.update(name: params[:name], desc: params[:desc])
      flash[:alert] = "수정을 성공했습니다."
      redirect_to product_path(@product)
    else
      flash[:error] = "수정을 실패했습니다."
      redirect_back(fallback_location: root_path)
    end

  end

  def destroy
    product = Product.find(params[:id])
    product.destroy

    redirect_to products_path
  end
end
