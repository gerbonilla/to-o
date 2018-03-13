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
      @accidents = Accident.where("contract_type = ? AND min_age <= ? AND max_age >= ? ", contract_type, @accidentContract.age, @accidentContract.age)
      @min_coverage = {}
      @max_coverage = {}
      @accidents = @accidents.sort { |a,b| b.plans[0].annual_amount_cents <=> a.plans[0].annual_amount_cents }

      @accidents.each do |a|
        a.coverages.each do |c|
          # max
          if @max_coverage[c.coverage_type].nil?
            @max_coverage[c.coverage_type] = c.amount
          elsif c.amount > @max_coverage[c.coverage_type]
            @max_coverage[c.coverage_type] = c.amount
          end
        end
      end

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
