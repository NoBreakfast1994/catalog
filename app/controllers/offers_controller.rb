# frozen_string_literal: true

# Controller for managing offers.
class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  # GET `/offers`.
  def index
    @offers = current_business.offers
  end

  # GET `/offers/1`.
  def show; end

  # GET `/offers/new`.
  def new
    @offer = current_business.offers.build
  end

  # GET `/offers/1/edit`.
  def edit; end

  # POST `/offers`.
  def create
    @offer = current_business.offers.build(offer_params)

    if @offer.save
      redirect_to @offer, notice: t('controllers.offers.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT `/offers/1`.
  def update
    if @offer.update(offer_params)
      redirect_to @offer, notice: t('controllers.offers.update.success'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE `/offers/1`.
  def destroy
    @offer.destroy!

    redirect_to offers_url, notice: t('controllers.offers.destroy.success'), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_offer
    @offer = current_business.offers.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def offer_params
    params.require(:offer).permit(
      :description,
      :discounted_price,
      :name,
      :original_price,
      :visible,
      :category_id
    )
  end
end
