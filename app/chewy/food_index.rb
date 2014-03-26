class FoodIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      title: {
        tokenizer: 'standard',
        filter: ['lowercase', 'asciifolding']
      },
      sorted: {
        tokenizer: 'keyword',
        filter: ['lowercase', 'asciifolding']
      }
    }
  }

  define_type Recipe.joins(:category) do
    field :title

    field :ingredients
    field :instructions

    field :category_id, type: 'integer'
  end
end
