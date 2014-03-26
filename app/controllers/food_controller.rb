class FoodController < ApplicationController

  def index

    @search = params[:query].blank? ? FoodSearch.new(query: 'cookies') : FoodSearch.new(params[:query])

    @food = @search.search.only(:id).page(params[:page]).load(
      recipe: {scope: Recipe.joins(:category)},
    )
  rescue Elasticsearch::Transport::Transport::Errors::BadRequest => e
    @food = []
    @error = e.message.match(/QueryParsingException\[([^;]+)\]/).try(:[], 1)
  end
end
