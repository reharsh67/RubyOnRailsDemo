class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def edit 
        
    end
    def update
        @article =  Article.find(params[:id])
       
        if  @article.update(params.require(:article).permit(:title, :desc))
            flash[:notice] ="Article updated sucessfuly"
            redirect_to @article
        else
            render 'edit'
        end
    end
    def create
        @article =  Article.new(params.require(:article).permit(:title, :desc))
        #render plain: @article.inspect
        if  @article.save
            flash[:notice] ="Article created sucessfuly"
            redirect_to @article
        else
            render 'new'
        end
    end
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

end