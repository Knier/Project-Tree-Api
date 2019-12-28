class TemplateCodesController < ApplicationController

  def index
    json_response(@template_code)
  end

  def show
    @asdf = 1
  end

  def create
    @template_code = TemplateCode.create!(template_code_params)
    json_response(@template_code, :created)
  end

  private

  def template_code_params
    params.permit(:language, :content)
  end
end