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
