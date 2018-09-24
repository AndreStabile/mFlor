class PecasController < ApplicationController
  def index
    @peca = Peca.all
  end
  
  def new
    @peca = Peca.new
  end

  def edit
    @peca = Peca.find(params[:id])
  end

  def create
    @peca = Peca.new(peca_params)
 
    if @peca.save
      redirect_to @peca
    else
      render 'new'
    end
  end

  def update
    @peca = Peca.find(params[:id])
   
    if @peca.update(peca_params)
      redirect_to @peca
    else
      render 'edit'
    end
  end

  def show
    @peca = Peca.find(params[:id])
  end

  def destroy
    @peca = Peca.find(params[:id])
    @peca.destroy
   
    redirect_to pecas_path
  end

  private
    def peca_params
      params.require(:peca).permit(:title, :text)
    end
end