class AccidentContractsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @accidentContract = AccidentContract.new()
  end

  def create
    @selectedPlan = params[:accident_id]
    @accidentContract = AccidentContract.new(accident_contract_params)
    @accidentContract.accident = Accident.find(@selectedPlan) unless @selectedPlan.blank?

    if @accidentContract && @accidentContract.accident.nil?
      contract_type = @accidentContract.contract_type
      @accidents = Accident.where(contract_type: contract_type)
      respond_to do |format|
        format.js {render "create"}
      end

    elsif @accidentContract.accident && @accidentContract.email.nil?
      respond_to do |format|
        format.js {render "userinfo.js.erb"}
      end

    elsif @accidentContract.email
      @accidentContract.save!
      redirect_to root_path
    end
  end

  # def filterContracts

  # end

  # def createProspect

  # end

  private

  def accident_contract_params
    params.require(:accident_contract).permit(:accident, :first_name, :last_name, :contract_type, :age, :gender, :email, :phone_number)
  end

end
