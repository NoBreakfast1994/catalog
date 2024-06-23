# frozen_string_literal: true

# Controller for managing categories.
class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  # GET `/categories`.
  def index
    @categories = current_business.categories
  end

  # GET `/categories/1`.
  def show; end

  # GET `/categories/new`.
  def new
    @category = current_business.categories.build
  end

  # GET `/categories/1/edit`.
  def edit; end

  # POST `/categories`.
  def create
    @category = current_business.categories.build(category_params)

    if @category.save
      redirect_to @category, notice: t('controllers.categories.create.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT `/categories/1`.
  def update
    if @category.update(category_params)
      redirect_to @category, notice: t('controllers.categories.update.success'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE `/categories/1`.
  def destroy
    @category.destroy!

    redirect_to categories_url, notice: t('controllers.categories.destroy.success'), status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = current_business.categories.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :visible)
  end
end
