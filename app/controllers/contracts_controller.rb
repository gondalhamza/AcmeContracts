class ContractsController < ApplicationController

  before_action :find_contract, only: [:show, :update]

  def index
    json_response(success: true, message: "successfull", contracts: Contract.all)
  end

  def show
    json_response(success: true, message: "successfull", contract: @contract)
  end

  def update
    if @contract.update(contract_params)
      response = {success: true, message: "updated", contract: @contract}
    else

    end
    json_response(response)
  end
  # END BLOCK

  private
  def find_contract
    @contract = Contract.find_by(id: params[:id])
  end

  def contract_params
    params.permit(:company,:contractId,:periodEnd,:periodStart,:scheduledForRenewal,:negotiationRenewalDate)
  end
end


