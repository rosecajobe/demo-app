class SavingsController < ApplicationController

  def index
    @savings = Saving.all
  end

  def new
    @saving = Saving.new
  end

end
