class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_list, only: [:edit, :update, :destroy]

  def index
    @lists = List.where(user_id: current_user).order("created_at ASC")
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to :root
  end

  private
  def list_params
    params.require(:list).permit(:name).merge(user_id: current_user.id)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
