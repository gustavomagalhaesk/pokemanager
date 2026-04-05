class PagesController < ApplicationController
  def home
  end

  def pokeshop
    @items = Item.all
    # Exemplo: pegando o primeiro treinador ou um vindo por parâmetro
    @trainer = Trainer.find(params[:trainer_id]) if params[:trainer_id].present?
    @trainer ||= Trainer.first 
  end

end
