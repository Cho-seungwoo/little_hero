class CategoriesController < ApplicationController
  
  def new_first

  end

  def create_first
    category = Category.new
    category.first_class = params[:first_class]
    category.save
    
    redirect_to categories_path(fallback_location: root_path)
    
  end

  def new_second
    @first_classes= Category.pluck(:first_class).uniq
    
  end

  def create_second
    category = Category.new
    category.first_class = params[:first_class]
    category.second_class = params[:second_class]
    category.save
    
    redirect_to categories_path(fallback_location: root_path)
    
  end

  def new_third

    @first_classes= Category.pluck(:first_class).uniq
    @second_classes= Category.pluck(:second_class).uniq

       
  end

  def create_third
    category = Category.new
    category.first_class = params[:first_class]
    category.second_class = params[:second_class]
    category.third_class = params[:third_class]
    category.save
    
    redirect_to categories_path(fallback_location: root_path)
    

  end

  def index
    @categories = Category.all

  end

  def edit
  end

  def destroy
  end

  def update
  end
end
