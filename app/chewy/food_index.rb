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
    field :title, type: 'multi_field' do
      field :title, index: 'analyzed', analyzer: 'title'
      field :sorted, index: 'analyzed', analyzer: 'sorted'
    end

    field :ingredients
    field :instructions

    field :category_id, type: 'integer'
  end
end
