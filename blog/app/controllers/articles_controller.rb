#Controlador dos ArtigoS. 

class ArticlesController < ApplicationController
    http_basic_authenticate_with name: "babi", password: "babi", except: [:index, :show]

    def new
        @article = Article.new    
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
    
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def create
        @article = Article.new(article_params)
        
        if @article.save     
            redirect_to @article 
        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    
        redirect_to articles_path
    end


private
def article_params
  params.require(:article).permit(:title, :text) #só acc esses tipos de params. 
end

end













#Variavel de instância de classe -  cada objeto possui uma CÓPIA de cada variável de instância definida na classe de forma INDEPENDENTE dos outros objetos da mesma classe.
# @algo

#Variavel de classe - é compartilhada entre todos os objetos desta classe, se a variavel for chamada e modificada em uma subclasse, a variavel é alterada.
# @@algo







