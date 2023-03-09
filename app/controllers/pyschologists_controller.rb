class PyschologistsController < ApplicationController
  def new
  end

  def index
    @pyschologists = Pyschologist.all
  end

  def show
  end

  def edit
  end
end
