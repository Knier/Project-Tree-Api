class CodesController < ApplicationController
  def index
    @asdf = 1
    json_response(@asdf)
  end

  def run
    @code = Code.create!(code_params)
    json = CodeExecutionService.run_code(code: @code)
    json_response(json)
  end

  private

  def code_params
    params.permit(:language, :content, :template_code_id)
  end
end
