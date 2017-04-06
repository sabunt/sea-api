class Api::V1::NearestController < ApplicationController
  

  def position
     position = Position.find(params[:id]).near
      if position
        render json: position, serializer: PositionSerializer
      else
        render json: {error: 'not found'}
      end
  end
end
