# frozen_string_literal: true

module Greeting::Operation
  class Ping < Trailblazer::Operation
    step :hello_world

    def hello_world(ctx, **)
      ctx[:message] = "Hello World!"
    end
  end
end
