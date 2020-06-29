class Greeting::Operation::Ping < Trailblazer::Operation
  step :hello_world

  def hello_world(ctx, **)
    ctx[:message] = "Hello World!"
  end
end
