class PredictionsController < InheritedResources::Base
  before_filter :authenticate_user!
  before_action :set_Prediction, only: [:show, :edit, :update, :destroy]

  # GET /predictions
  # GET /predictions.json
  def index
    @predictions = current_user.predictions
  end

  # GET /predictions/1
  # GET /predictions/1.json
  def show
  end

  # GET /predictions/new
  def new
    @prediction = Prediction.new
  end

  # GET /predictions/1/edit
  def edit
  end

  # POST /predictions
  # POST /predictions.json
  def create
    @prediction = current_user.predictions.new(prediction_params)
    respond_to do |format|
      if @prediction.save
        format.html { redirect_to @prediction, notice: 'Prediction was successfully created.' }
        format.json { render :show, status: :created, location: @prediction }
        format.js
      else
        format.html { render :new }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /predictions/1
  # PATCH/PUT /predictions/1.json
  def update
    respond_to do |format|
      if @prediction.update(prediction_params)
        format.html { redirect_to @prediction, notice: 'Prediction was successfully updated.' }
        format.json { render :show, status: :ok, location: @prediction }
      else
        format.html { render :edit }
        format.json { render json: @prediction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predictions/1
  # DELETE /predictions/1.json
  def destroy
    @prediction.destroy
    respond_to do |format|
      format.html { redirect_to predictions_url, notice: 'Prediction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_Prediction
      @prediction = Prediction.find(params[:id])
    end

    def prediction_params
      params.require(:prediction).permit(:first, :second, :third, :user_id, :race_id)
    end
end
