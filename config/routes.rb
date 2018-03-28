Rails.application.routes.draw do
  get '/pillows' => 'pillows#index'
  get '/pillows/:id' => 'pillows#show'
  post '/pillows' => 'pillows#create'
end
