class PredictionsController < InheritedResources::Base

  private

    def prediction_params
      params.require(:prediction).permit(:first, :second, :third)
    end
end

