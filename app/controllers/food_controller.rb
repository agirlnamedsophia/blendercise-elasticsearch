class FoodController < ApplicationController

  def index

    @search = params[:search].blank? ? FoodSearch.new(query: 'eggs') : FoodSearch.new(params[:search])

    @food = @search.search.only(:id).load(
      recipe: {scope: Recipe.includes(:categories) },
      category: {scope: Category },
    )
  rescue Elasticsearch::Transport::Transport::Errors::BadRequest => e
    @food = []
    @error = e.message.match(/QueryParsingException\[([^;]+)\]/).try(:[], 1)
  end
end
