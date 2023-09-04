class DoctorCategoriesController < ApplicationController
  def index
    @category = DoctorCategory.all
  end

  def show
    @category = DoctorCategory.find(params[:id])
  end
end
