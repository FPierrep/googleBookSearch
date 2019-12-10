require "sinatra"
require "googlebooks"


get '/' do
  erb :index
end

post "/" do
  puts params
  @input = params["query"]
  @books = GoogleBooks.search(@input)
  erb :results
end
