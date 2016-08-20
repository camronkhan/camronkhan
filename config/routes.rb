Rails.application.routes.draw do
	
  get 'users/show'

  get 'users/edit'

  get 'sessions/new'

	root 'static_pages#home'
   
	get     'home',       	to: 'static_pages#home',        as: 'home'
	get     'about',      	to: 'static_pages#about',       as: 'about'
	get     'education',  	to: 'static_pages#education',   as: 'education'
	get     'experience',	to: 'static_pages#experience',  as: 'experience'
	get     'contact',    	to: 'static_pages#contact', 	as: 'contact'
	get		'login',		to: 'sessions#new',				as: 'login'
	post	'login',		to: 'sessions#create'
	delete	'logout',		to: 'sessions#destroy'

	resources :projects, only: [:index, :show]
end
