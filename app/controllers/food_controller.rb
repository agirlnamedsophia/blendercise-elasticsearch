class FoodController < ApplicationController

  def index

    @search = params[:search].blank? ? FoodSearch.new(query: 'breakfast') : FoodSearch.new(params[:search])

    @food = @search.search.only(:id).page(params[:page]).load(
      recipe: {scope: Recipe },
    )
  rescue Elasticsearch::Transport::Transport::Errors::BadRequest => e
    @food = []
    @error = e.message.match(/QueryParsingException\[([^;]+)\]/).try(:[], 1)
  end
end
