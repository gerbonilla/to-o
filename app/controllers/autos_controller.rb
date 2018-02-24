class AutosController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @auto = Auto.new()
  end

  def new
    @auto = Auto.new()
  end

  def create
    @auto = Auto.new(firstName: "NA", lastName: "NA", email:"na@na.com", autoBrand: "NA", autoModel:"NA", autoFeatures: "NA")
    # @auto = Auto.new(auto_params)
    # @auto.autoFeatures << params[:autoFeatures] unless params[:autoFeatures].blank?
    if @auto.save!
      redirect_to auto_contracts_path(@auto)
    else
      render :new
    end
  end

  private

  def auto_params
    params.permit(:firstName,
                   :lastName,
                   :email,
                   :autoBrand,
                   :autoModel,
                   :autoFeatures
                   )
  end

end
