class ContractsController < ApplicationController

  # respond_to :json

  def index
    json_response(success: true, message: "successfull", contracts: Contract.all)
  end
  # END BLOCK

  private
end