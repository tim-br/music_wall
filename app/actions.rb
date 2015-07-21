# Homepage (Root path)
get '/' do
  @tracks = Track.all
  erb :index
end

get '/' do
  @tracks = Track.all
  erb :index
end

get '/new' do
  erb :new
end

get '/register' do
  #hello wordl"
  erb :register
end
get '/failed_login' do
  erb :'failed_login'
end

post '/do_login' do
  user_name = params[:user_name]
  #puts user_name
  @user = User.find_by user_name: user_name
  session["user"] = @user
  if @user.password == params[:password]
    redirect '/'   # user_id to main page
    #redirect '/?@user=' + @user
  else
    redirect '/failed_login'
  end
end

get '/login' do
  erb :login
end

post '/register_user' do
  @user = User.new(
  user_name: params[:user_name],
  password: params[:password]
  )

  if @user.save
    redirect '/'
  else
    redirect '/register_user'
  end
end

post '/newtrack' do
  @track = Track.new(
  track_title: params[:track_title],
  author:  params[:author]
)

if @track.save
  redirect '/'
else
  redirect "/new"
end
end

get '/vote/:id' do
  @vote = Vote.new(
    user_id: session["user"].id,
    track_id: params[:id]
  )
  @vote.save
  redirect "/"
end
