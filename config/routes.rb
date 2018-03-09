Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'welcome#index'
  get 'home',      to: 'welcome#index',      as: :home
  get 'about',     to: 'welcome#about',      as: :about
  get 'services',  to: 'welcome#services',   as: :services
  get 'portfolio', to: 'welcome#portfolio',  as: :portfolio
  get 'contact',   to: 'welcome#contact',    as: :contact

  post 'contact_form', to: 'welcome#contact_form', as: :contact_form

end
