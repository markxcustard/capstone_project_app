class V1::YelpsController < ApplicationController
  def index
    input_address = params[:address] || "Chicago"
    response = Unirest.get(
      "https://api.yelp.com/v3/businesses/search?term=fitness+gym+&location=#{input_address}&limit=5",
      headers: {
        'X-User-Email' => ENV['markc1772@gmail.com'], 
        'Authorization' => "Bearer #{ENV['API_KEY']}"
      }
    )
    render json: response.body
  end
end
