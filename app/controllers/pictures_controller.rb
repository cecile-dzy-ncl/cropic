class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
    @sentences = pictures.sentences
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
