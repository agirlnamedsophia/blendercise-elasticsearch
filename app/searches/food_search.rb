class FoodSearch
  include ActiveData::Model

  SORT = {
    title: {
      'title.sorted' => :asc
      }
    }

  attribute :query, type: String
  attribute :sort, type: String, enum: %w(title)
  attribute :category_id, type: Integer

  def index
    FoodIndex
  end

  def search
    [query_string, category_id_filter].compact.reduce(:merge)
  end

  def sorting
    index.order(SORT[sort.to_sym])
  end

  def query_string
    index.query(query_string: {fields: [:title, :instructions, :ingredients, :category], query: query, default_operator: 'and'}) if query?
  end

  def category_id_filter
    index.filter(term: {category_id: category_id}) if category_id?
  end

end
