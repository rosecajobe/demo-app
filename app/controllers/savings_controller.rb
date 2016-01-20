class SavingsController < ApplicationController

  def index
    @lahat_ng_savings = Saving.all
  end
end
