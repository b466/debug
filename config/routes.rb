Rails.application.routes.draw do
	root  'home#top'
	get 'about' => 'home#about'


	      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }


	resources :users,only: [:show,:index,:edit,:update]
	resources :books

end
