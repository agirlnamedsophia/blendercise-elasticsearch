class CookbooksController < ApplicationController
  before_action :set_cookbook, only: [:show, :edit, :update, :destroy]

  # GET /cookbooks
  def index
    @cookbooks = Cookbook.all
  end

  # GET /cookbooks/1
  def show
  end

  # GET /cookbooks/new
  def new
    @cookbook = Cookbook.new

  end

  # GET /cookbooks/1/edit
  def edit
  end

  # POST /cookbooks
  def create
    @cookbook = Cookbook.new(cookbook_params)

    if @cookbook.save

      redirect_to @cookbook, notice: 'Cookbook was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /cookbooks/1
  def update
    if @cookbook.update(cookbook_params)
      redirect_to @cookbook, notice: 'Cookbook was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /cookbooks/1
  def destroy
    @cookbook.destroy
    redirect_to cookbooks_url, notice: 'Cookbook was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookbook
      @cookbook = Cookbook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cookbook_params
      params.require(:cookbook).permit(
        :title,
        :author,
        :publication_date,
        :category_id,
        category_id_attributes: [
          :id,
          :name,
          :cookbook_id,
          :recipe_id
        ],
      )
    end
end
