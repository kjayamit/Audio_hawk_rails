class CategoryController < ApplicationController
  def list
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
  end
  def new
    @category = Category.new
  end


  def create
    @category = Category.new(params[:category])
    if @category.save
      redirect_to :action => 'list'
    else
      puts @category.errors.inspect
      render :action => 'new'
    end
  end
  def edit
    @category = Category.find(params[:id])
  end
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      redirect_to :action => 'show', :id => @category
    else
      render :action => 'edit'
    end
  end
  def delete
    Category.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  def show_subjects
    @category = Category.find(params[:id])
  end
end
