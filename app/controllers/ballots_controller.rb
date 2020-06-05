class BallotsController < ApplicationController
  before_action :set_ballot, only: [:show, :update, :destroy]

  # GET /ballots
  def index
    @ballots = Ballot.all

    render json: @ballots
  end

  # GET /ballots/1
  def show
    render json: @ballot
  end

  # POST /ballots
  def create
    @ballot = Ballot.new(ballot_params)

    if @ballot.save
      render json: @ballot, status: :created, location: @ballot
    else
      render json: @ballot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ballots/1
  # def update
  #   if @ballot.update(ballot_params)
  #     render json: @ballot
  #   else
  #     render json: @ballot.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /ballots/1
  def destroy
    @ballot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot
      @ballot = Ballot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ballot_params
      params.require(:ballot).permit(:voter_name, :selections, :notes, :expiration, :election_id)
    end
end
