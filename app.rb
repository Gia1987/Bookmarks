require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello World'
  end

  get '/users/new' do
    erb :'users/registration'
  end
  post '/users' do
    @email = params[:email]
    @password = params[:password]

  end

  run! if app_file == $0
end
