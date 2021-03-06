class Admin::CategoriesController < ApplicationController
    http_basic_authenticate_with :name => ENV['AUTHENTICATION_USERNAME'], :password => ENV['AUTHENTICATION_PASSWORD']

    def index
        @categories = Category.order(id: :desc).all
    end

    def new
        @category = Category.new
    end

    def edit
        @category = Category.find(params[:id])
    end
    
    def create
        @category = Category.new(category_params)

        if @category.save
            redirect_to [:admin, :categories], notice: 'Caregory created!'
        else
            render :new
        end
    end
    
    def update
        @category = Category.find(params[:id])

        if @category.update(category_params)
            redirect_to @category
        else
            render 'edit'
        end
    end
    
    def destroy
        @category = Category.find(params[:id])
        @category.destroy

        redirect_to catefory_path
    end
    
    private
    def category_params
        params.require(:category).permit(:name)
    end
    

    
    
end
