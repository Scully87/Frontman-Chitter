require 'bundler'
require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require 'json'

require './greet'
require './user'

require './app/helpers/application'
require './app/data_mapper_setup'

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash 
set :partial_template_engine, :erb

set :public_folder, Proc.new{ File.join(root, '..', 'public')}

get '/' do
  send_file './index.html'
end

