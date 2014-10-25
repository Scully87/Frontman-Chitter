require 'bundler'
require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require 'json'

require_relative 'models/greet'
require_relative 'models/user'
require_relative 'models/hashtags'

require_relative 'helpers/application'
require_relative 'data_mapper_setup'

enable :sessions
set :session_secret, 'super secret'
use Rack::Flash 
set :partial_template_engine, :erb

set :public_folder, Proc.new{ File.join(root, "public") }
set :views, Proc.new { File.join(root, "public") }

get '/' do
  erb :index
end

