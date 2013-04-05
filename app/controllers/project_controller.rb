class ProjectController < ApplicationController
  def list
    @projects = Project.all
    #Project.find(:all)
  end
  def show
    @project = Project.find(params[:id])
  end
  def new
    @project = Project.new
    @categories = Category.all
    #@categories = Category.find(:all)
  end
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to :action => 'list'
    else
      @categories = Category.all
      #@categories = Category.find(:all)
      puts @project.errors.inspect
      render :action => 'new'
    end
  end
  def edit
    @project = Project.find(params[:id])
    @categories = Category.all
    #@categories = Category.find(:all)
  end
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to :action => 'show', :id => @project
    else
      @categories = Category.all
      #@categories = Category.find(:all)
      render :action => 'edit'
    end
  end
  def delete
    Project.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  def show_subjects
    @category = Category.find(params[:id])
  end
end
