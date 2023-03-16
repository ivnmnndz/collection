class CustomCardsController < ApplicationController
  def index
  end
end
class CustomCardsController < ApplicationController
  def index
    @custom_cards = CustomCard.all
  end
  def show
    @custom_card = CustomCard.find(params[:id])
  end
  def new
    @custom_card = CustomCard.new
  end

  def create
    @custom_card = CustomCard.new(custom_card_params)

    if @custom_card.save
      redirect_to @custom_card
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @custom_card = CustomCard.find(params[:id])
  end

  def update
    @custom_card = CustomCard.find(params[:id])

    if @custom_card.update(custom_card_params)
      redirect_to @custom_card
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @custom_card = CustomCard.find(params[:id])
    @custom_card.destroy

    #when the homepage is updated change redirect to custom_card_path
    redirect_to root_path, status: :see_other
  end

  private

  def custom_card_params
    params.require(:custom_card).permit(:card_name, :card_text, :card_image)
  end
end
