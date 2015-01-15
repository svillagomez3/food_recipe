class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show 
    @recipe = Recipe.find_by_id(params['id'])
    render 'show'
    end
  
  def new 
  end

  def create
    g = Recipe.new
    g.name = params['name']
    g.url = params['url']
    g.description = params['description']
    g.instructions = params['instructions']
    g.save
    redirect_to"/recipe/#{g.id}"
  end
  
  def edit
    @recipe= Recipe.find_by_id(params['id'])
end
  
  def update
    g = Recipe.find_by_id(params['id'])
     g.name = params['name']
     g.url = params['url']
    g.description  = params['description']
     g.instructions = params['instructions']
  g.save
    redirect_to "/food_recipe/#{ g.id }"
end
  
  def destroy 
    g = Recipe.find_by_id(params['id'])
    g.destroy
  end
end


