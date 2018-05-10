class HealthRequestsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @health_request = HealthRequest.new()
  end

  def create
    @selectedPlan = params[:health_contract_id]
    @health_request = HealthRequest.new(health_request_params)
    @health_request.health_contract = HealthContract.find(@selectedPlan) unless @selectedPlan.blank?

    if @health_request && @health_request.health_contract.nil?
      gender = @health_request.gender
      @health_contracts = HealthContract.where("gender = ? AND min_age <= ? AND max_age >= ? ", gender, @health_request.age, @health_request.age)
      @min_coverage = {}
      @max_coverage = {}
      @health_contracts = @health_contracts.sort { |a,b| b.plans[0].annual_amount_cents <=> a.plans[0].annual_amount_cents }

      @health_contracts.each do |a|
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

    elsif @health_request.health_contract && @health_request.email.nil?
      respond_to do |format|
        format.js {render "userinfo.js.erb"}
      end

    elsif @health_request.email
      @health_request.save!
      redirect_to root_path
    end
  end

  private

  def health_request_params
    params.require(:health_request).permit(:health_contract, :first_name, :last_name, :age, :gender, :email, :phone_number)
  end
end
