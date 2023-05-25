class HomeController < ApplicationController

def index
  @blogs = Blog.all
end

def show
  @blog = Blog.find(params[:id])
end

def new
  @blog = Blog.new
end

def create
  @blog = Blog.create(form_params)
  if @blog.valid?
    redirect_to blogs_path
  end
end

def edit
  @blog = Blog.find(params[:id])
end

def update
  @blog = Blog.find(params[:id])
  @blog.update(form_params)
  if @blog.valid?
    redirect_to blogs_path
  end
end

def destroy
  @blog = Blog.find(params[:id])
  if @blog.destroy
    redirect_to blogs_path
  end
end

private
  def form_params
    params.require(:blog).permit(:title, :content)
  end
end
