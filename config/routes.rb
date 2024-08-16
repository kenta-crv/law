Rails.application.routes.draw do
  devise_for :admins

  root to: 'top#index' #トップランディングページ
  get 'traffic' => 'top#traffic'

  resources :scripts, only: [:index]

  resources :contracts do
    resource :comments
    resource :script #1:1
    collection do
      post :confirm
      post :thanks
    end
    member do
      post :send_mail
      post :send_mail_start #開始日の送信
      get "info" #案内
      get "conclusion"
      get "payment" 
      get "calendar"
      get "start"
    end
  end

  get '*path', controller: 'application', action: 'render_404'
end
