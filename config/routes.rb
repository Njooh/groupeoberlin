Rails.application.routes.draw do
  get 'emploi' => 'emploi#index'

  get 'faq' => 'contact#faq'

  get 'contact' => 'contact#index'

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
