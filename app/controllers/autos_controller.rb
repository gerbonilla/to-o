class AutosController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @auto = Auto.new()
  end

  def create
  end

  def show
    @auto = Auto.new()
  end
end
