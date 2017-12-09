class ContractsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @contracts = Contract.all
  end

  def show
  end
end
