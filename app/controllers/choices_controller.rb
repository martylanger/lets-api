class ChoicesController < OpenReadController
  before_action :set_choice, only: [:show, :update, :destroy]

  # GET /choices
  def index
    @choices = Choice.all

    render json: @choices
  end

  # GET /choices/1
  def show
    render json: @choice
  end

  # POST /choices
  def create
    @choice = current_user.choices.build(choice_params)

    if @choice.save
      render json: @choice, status: :created, location: @choice
    else
      render json: @choice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /choices/1
  # def update
  #   if @choice.update(choice_params)
  #     render json: @choice
  #   else
  #     render json: @choice.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /choices/1
  def destroy
    @choice.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choice
      @choice = Choice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def choice_params
      params.require(:choice).permit(:title, :description, :link, :election_id)
    end
end
