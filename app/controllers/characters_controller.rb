class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
  end
  
  def create
    # puts params
    character = Character.new(first_name: params[:first_name], last_name: params[:last_name], workplace: params[:workplace])
    if character.valid?
      character.save
      redirect_to "/"
    else
      flash[:errors] = character.errors.full_messages
      redirect_to "/characters/new"
    end
  end
  
  def show 
    @character = Character.find(params[:id])
  end
end
