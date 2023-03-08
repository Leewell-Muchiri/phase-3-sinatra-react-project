class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  before do
    response.headers['Access-Control-Allow-Origin']="*"
  end

  put '/memes' do
    #user creates a meme
    meme = Meme.create(params)
    #   title: params[:title],
    #   your_meme: params[:your_meme],
    #   meme_id: params[:meme_id]
    # )
    meme.to_json
    
  end

  put '/users' do
    #creating a user
    user = User.create(params)
    #   username: params[:username],
    #   password: params[:password]
    # )
    user.to_json
  end


  get '/memes' do
    #user views all the memes they made
    memes = Meme.all
    memes.to_json
  end


  get '/memes/:id' do
    meme = Meme.find(params[:id])
    meme.to_json
  end

  put '/memes/:id' do
    #update details of the meme
    meme = Meme.find(params[:id])
    meme.update(
      title: params[:title],
      your_meme: params[:your_meme]
    )
    meme.to_json
  end

  delete '/memes/:id' do
    #remove meme
    meme = Meme.find(params[:id])
    meme.destroy
    meme.to_json
    
  end

  post '/register' do
    user = User.new(username: params[:username], password: params[:password])

    if user.save
      session[:user_id] = user.id
      { message: 'Welcome to firePuttr. You registered successfully'}.to_json
    else
      { message: 'Error occured while registering'}.to_json
    end
  end

end
