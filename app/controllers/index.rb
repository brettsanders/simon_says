get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  #Create and return a JSON object with the random cell and color given below.

  cell= rand(1..9)
  color = "#" + "%06x" % (rand * 0xffffff)

  if request.xhr?
    content_type :json
    {:color => color, :cell => cell}.to_json
  else
    color
  end
end
