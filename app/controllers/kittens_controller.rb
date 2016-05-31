class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def new
    @kitten = Kitten.new
  end

  def create
    if @kitten.save
      flash[:notice] = "A new kitten was born"
    else
      render :new
      flash[:error] = @kitten.errors.full_messages.join(", ")
    end
  end

  def show
  end

  def index
    @kittens = Kitten.all
  end

  def edit
    render :edit
  end

  def update
    if @kitten.update(kitten_params)
      flash[:notice] = "Kitten has been updated"
    else
      flash[:error] = @kitten.errors.full_messages.join(", ")
    end
  end

  def destroy
    @kitten.destroy
    flash[:notice] = "Kitten has been deleted"
    redirect_to kittens_path
  end

  private
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end

    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness, :image_url)
    end
end
