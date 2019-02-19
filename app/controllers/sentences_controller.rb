class SentencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @sentences = Sentence.all
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
