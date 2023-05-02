class PromptTemplatesController < ApplicationController
  def index
    @prompt_templates = PromptTemplate.all
  end
end