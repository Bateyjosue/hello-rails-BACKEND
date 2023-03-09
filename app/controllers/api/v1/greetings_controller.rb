class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings, each_serializer: GreetingSerializer
  end

  def greet
    @greeting = Greeting.order('RANDOM()').first

    render json: @greeting, each_serializer: GreetingSerializer
  end
end
