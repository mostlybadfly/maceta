class StaticPagesController < ApplicationController
  def home
  end

  def about
    @seedling = ":seedling:"
    @sparkling_heart = ":sparkling_heart:"
  end
end
