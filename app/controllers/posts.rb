get '/posts/new' do
  @post = Post.new
  erb :'posts/new'
end

post '/posts' do
@post = Post.new(params[:post])

  if @post.save
    redirect to "/posts/#{@post.id}"
  else
    erb :'posts/new'
  end
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  
  erb :'posts/show'
end

# get '/posts/:id/edit' do
#   @post = Post.find(params[:id])
#   erb :'posts/edit'
# end

# get '/posts/show/all' do
#   @post = Post.all
#   erb :'posts/showall'
# end

# put '/posts/:id' do
#   @post = Post.find(params[:id])
#   @post.update(params[:post])
#   if @post.save
#     redirect to "/posts/#{@post.id}"
#   else
#     erb :"posts/edit"
#   end
# end

# delete '/posts/:id' do
#   @post = Post.find(params[:id])
#   @post.destroy
#   redirect to '/posts/show/all'
# end

# get '/tag/:id' do
#   @tag = Tag.find(params[:id])
#   erb :"posts/tag"
# end