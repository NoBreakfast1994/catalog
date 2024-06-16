# frozen_string_literal: true

# Controller for managing businesses.
class BusinessesController < ApplicationController
  before_action :redirect_if_business_exists, only: %i[new create]
  before_action :set_business, only: %i[show edit update destroy]

  # GET `/business`.
  def show; end

  # GET `/business`.
  def new
    @business = current_user.build_business
  end

  # GET `/business`.
  def edit; end

  # POST `/business`.
  def create
    @business = current_user.build_business(business_params)

    if @business.save
      redirect_to business_path, notice: t('controllers.businesses.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT `/business`.
  def update
    if @business.update(business_params)
      redirect_to business_path, notice: t('controllers.businesses.update.success'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE `/business`.
  def destroy
    @business.destroy!

    redirect_to new_business_path, notice: t('controllers.businesses.destroy.success'), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_business
    @business = current_business
  end

  # Only allow a list of trusted parameters through.
  def business_params
    params.require(:business).permit(:name)
  end

  def redirect_if_business_exists
    return if current_user.business.blank?

    redirect_to business_path, alert: t('controllers.businesses.alerts.business_exists')
  end
end
