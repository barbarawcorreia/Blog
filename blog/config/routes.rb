Rails.application.routes.draw do
  #get "[o nome que queremos para a URL]" => "[nome do Controller]#[nome da página]"

  get 'welcome/index' => 'welcome#index'

  #resources encapsula métodos HTTP - CRUD.

  #1 - get - articles/new => 'articles#new
  #2 - post - articles/create => 'articles#create
  #3 - get - articles/:id => 'articles#show' - id do artigo
  #4 - get - articles/  => 'articles#index'
  #5 - get - articles/:id/edit => 'articles#edit'
  #6 - path - articles/:id => 'articles#update'
  #7 - delete - articles/:id => 'articles#destroy'
  ################################################
  #8 - post - articles/articles_id/comments => 'comments#create'
  #9 - delete - articles/article_id/comments/id => 'comments#destroy'

  resources :articles do
    resources :comments
  end

  end
