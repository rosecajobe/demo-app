class SavingsController < ApplicationController

  def index
    @savings = Saving.all
  end

  def new
    @saving = Saving.new
  end

  def create
    @saving = Saving.new(user_params)
    @saving.save
    redirect_to savings_path
  end

  def show
    @saving = Saving.find(params[:id])
  end

  def edit
    @saving = Saving.find(params[:id])

  end


  private
  def user_params
    params.require(:saving).permit(:name, :value)
  end
end
