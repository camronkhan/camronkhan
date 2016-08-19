Rails.application.routes.draw do
	
  get 'sessions/new'

  	resources :projects, only: [:index, :show]
	
	root 'static_pages#home'
  
	get     'home',       	to: 'static_pages#home',        as: 'home'
	get     'about',      	to: 'static_pages#about',       as: 'about'
	get     'education',  	to: 'static_pages#education',   as: 'education'
	get     'experience',	to: 'static_pages#experience',  as: 'experience'
	get     'contact',    	to: 'static_pages#contact', 	as: 'contact'

end
