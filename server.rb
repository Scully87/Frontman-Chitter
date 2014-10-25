require 'sinatra/base'

class Frontman_Chitter < Sinatra::Base
  get '/' do
    'Hello Frontman_Chitter!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
