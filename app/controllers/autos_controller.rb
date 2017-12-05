class AutosController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @auto = Auto.new()
  end

  def new
    @auto = Auto.new()
  end

  def create
    @auto = Auto.new(auto_params)
    if @auto.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def auto_params
    params.require(:auto).permit(:firstName,
                                 :lastName,
                                 :email,
                                 :autoBrand,
                                 :autoModel,
                                 :ownerDUI,
                                 :ownerDOB,
                                 :ownerPhone)
  end

end
