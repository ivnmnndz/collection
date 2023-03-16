class CommentsController < ApplicationController
  def create
    @custom_card = CustomCard.find(params[:custom_card_id])
    @comment = @custom_card.comments.create(comment_params)
    redirect_to custom_card_path(@custom_card)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
