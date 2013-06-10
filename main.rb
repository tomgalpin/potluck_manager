require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'tomgalpin',
  :password => '',
  :database => 'potluck_manager',
  :encoding => 'utf8'
)

require_relative "models/item"
require_relative "models/user"
require_relative "models/potluck"
require_relative "models/tag"


require_relative "controllers/items"
require_relative "controllers/users"
require_relative "controllers/potlucks"
require_relative "controllers/tags"

require_relative "helpers/form_helpers"

# require 'pry'
# require 'pry-debugger'

get "/" do
  @potlucks = Potluck.all

  erb :index
end

