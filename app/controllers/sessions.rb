require_relative '../models/user'
enable :sessions

post '/login' do
  if User.authenticate(params[:email], params[:password]) != nil
    user = User.find_by(email: params[:email])
  byebug
    session[:id] = user.id
    session[:email] = user.email

    redirect to("/login/#{user.id}")
  else
    redirect to('/')
  end
end

get '/login/:id' do
  if session[:id] != nil
   
    erb :"/users/homepage"
  else
    redirect to('/')
  end
end

get '/logout' do
  session.clear
  redirect to('/')
end