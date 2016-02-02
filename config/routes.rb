Rails.application.routes.draw do
  root 'draw#index'

  # Due to the fact that every url besides root and show is a room
  # this route must come first to take higher precedence
  mount ActionCable.server => '/cable'

  get ':picture_id' => 'draw#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
end
