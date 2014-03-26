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

  define_type Recipe.includes(:categories) do
    field :title, analyzer: 'title'
    field :ingredients
    field :instructions, analyzer: 'title'

    field :category_id, type: 'integer'
  end
end
