class V1::GreetingsController < ApplicationController

  def ping
    result = Greeting::Operation::Ping.call(params: params)

    if result.success?
      render json: { message: result[:message] }
    else
      render json: { error: { message: result[:message] } }
    end
  end
end

