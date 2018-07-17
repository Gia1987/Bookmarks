require 'pg'
require 'sinatra/base'
require 'sinatra/flash'
require_relative'./lib/user'
require_relative'./lib/database'

class BookmarkManager < Sinatra::Base
  enable :sessions
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
  get 'sessions/new' do
    erb :'users/login'
  end
  post 'sessions' do
    id = User.find(params[:email], params[:password])
    if id.any?
      session[:id] = id
      redirect '/'
    else flash[:notice] = 'Please check your email or password'
      redirect '/sessions/new'
    end
  end

  run! if app_file == $0
end
