class OutputsController < ApplicationController
  def index
    
  end

  def new
    @output = Output.new
  end

  def create
    @output = Output.new(params_output)
  end

  def show
    
  end

  private
  def params_output
    params.require(:output).permit(:title, :description).merge(user_id: current_user.id)
  end
end
