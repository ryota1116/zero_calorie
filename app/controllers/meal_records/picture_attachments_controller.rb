class MealRecords::PictureAttachmentsController < ApplicationController
  def destroy
    @picture = ActiveStorage::Attachment.find(params[:id])
    @picture.purge
  end
end
