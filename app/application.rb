class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time = Time.now
    if Time.now < 12
      resp.write "Good Morning!"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end