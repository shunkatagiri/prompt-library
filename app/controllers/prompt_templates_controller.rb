class PromptTemplatesController < ApplicationController
  def index
    @prompt_templates = PromptTemplate.all
  end
  
  def new
    @prompt_template = PromptTemplate.new
  end
  
  def create
    @prompt_template = current_user.prompt_templates.build(prompt_template_params)
  
    if @prompt_template.save
      redirect_to @prompt_template, notice: 'Prompt template was successfully created.'
    else
      render :new
    end
  end
  
  def show
    @prompt_template = PromptTemplate.find(params[:id])
  end
  
  def edit
    @prompt_template = PromptTemplate.find(params[:id])
  end
  
  def update
    @prompt_template = PromptTemplate.find(params[:id])
  
    if @prompt_template.update(prompt_template_params)
      redirect_to prompt_templates_path, notice: 'Prompt template was successfully updated.'
    else
      render :edit
    end
  end
  
  def destroy
    @prompt_template = PromptTemplate.find(params[:id])
    @prompt_template.likes.destroy_all
    @prompt_template.comments.destroy_all
    @prompt_template.destroy
  
    redirect_to prompt_templates_path, notice: 'Prompt template was successfully deleted.'
  end
  
  private
  
  def prompt_template_params
    params.require(:prompt_template).permit(:title, :content, :category_id)
  end  
end