Rails.application.routes.draw do
  namespace :admin do
    get 'Groupe-Oberlin/', to: 'users#show'
    get 'Groupe-Oberlin/new-article', to: 'users#new_article'
    post 'Groupe-Oberlin/new-article', to: 'users#create_article'
    get 'Groupe-Oberlin/article/:id', to: 'users#article', as: 'Groupe-Oberlin/article/'
    get 'Groupe-Oberlin/Messages', to: 'users#messages'
    get 'Groupe-Oberlin/Comments', to: 'users#comments'
  end

  get 'admin/login', to: 'sessions#new'
  post 'admin/login', to: 'sessions#create'
  delete 'admin/logout', to: 'sessions#destroy'

  get 'news-details/:id' => 'news#show', as: 'news-details'
  post 'news-details/:id' => 'news#comment'

  get 'emploi' => 'emploi#index'

  get 'faq' => 'contact#faq'

  get 'contact' => 'contact#index'
  post 'contact' => 'contact#send_message'

  get 'a-propos' => 'welcome#a-propos'

  get 'news' => 'news#index'

  get 'oberlin-transit' => 'filliales#transit'

  get 'oberlin-tourisme' => 'filliales#tourisme'

  get 'oberlin-services' => 'filliales#services'

  get 'oberlin-it' => 'filliales#it'

  get 'oberlin-ingenierie' => 'filliales#ingenierie'

  get 'oberlin-immo' => 'filliales#immo'

  get 'oberlin-construction' => 'filliales#construction'

  get 'oberlin-arts' => 'filliales#arts'

  get 'oberlin-agro' => 'filliales#agro'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
