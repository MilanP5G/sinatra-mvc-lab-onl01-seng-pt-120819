require_relative 'config/environment'
# require_relative "models/piglatinize.rb"

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    newpl = PigLatinizer.new
    @piglatin = newpl.piglatinize(params[:user_phrase])
  end

end
