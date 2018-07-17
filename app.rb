require 'sinatra/base'
require_relative'./lib/user'
require_relative'./lib/database'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/users/new' do
    erb :'users/registration'
  end
  post '/users' do
    User.create(params[:email], params[:password])
    erb :'users/registration'

  end

  run! if app_file == $0
end
