get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users/' do
  @user = User.new(params[:user])
  if @user.save
    redirect to "/users/#{@user.id}"
  else
    erb :"users/new"
  end
end

#show profile
get '/users/:id' do
  @user = User.find(params[:id])
  
  erb :'users/profile'
end

#edit profile
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  @user.update(params[:user])
  if @user.save
    redirect to "/users/#{@user.id}"
  else
    erb :"users/edit"
  end
end

delete '/users/:id' do
  @user = User.find(params[:id])
  @user.destroy
  redirect to '/'
end


# get '/users/show/all' do
#   @user = User.all
#   erb :'user/showall'
# end