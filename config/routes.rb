Rails.application.routes.draw do
  root 'items#top'

  #devise上でusersコントローラ管理
  devise_for :users#, :controllers => {
  #  :sessions => 'users/sessions',
  #  :registrations => 'users/registrations',
  #  :passwords => 'users/passwords'
  #}

  #商品の購入
  #商品の管理
  #開発で必要時に足す.items>index
  #後で足す.通知の作成
  resources :items, only: [:new, :create, :show, :edit, :update] do
    resources :orders, only: [:create]# do
    #  resources :informations, only: [:create]
    #end
  end

  #イラスト投稿
  #イラストの管理
  resources :alone_illusts, only: [:new, :create, :show, :edit, :update]

  #サンクス
  get '/thanks' => 'users#thanks'

   #マイページ
  resources :users, only: [:show, :edit, :update]

  #添削イラストの詳細
  resources :active_illusts, only: [:show, :edit]

  #後で足す.通知の削除
  #resources :informations, only: [:destroy]

  #商品の検索
  get '/ransack' => 'items#ransack'
  get '/ransack_result' => 'items#ransack_result'

  #後で足す.イラストの検索

  #注文画面で出品者から注文の成否
  #注文画面で出品者から添削イラストの投稿
  #注文画面で購入者から評価
  #後で足す.通知の作成
  resources :orders, only: [:show, :edit, :update, :destroy] do
    resources :active_illusts, only: [:create, :update]
  #  resources :informations, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
