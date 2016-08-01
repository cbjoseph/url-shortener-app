class LinksController < ApplicationController
  def index
    @link = Link.new(slug: "slug", target_url: "/links")
    @links = Link.all
    render 'index.html.erb'
  end

  def new
    @link = Link.new
    render 'new.html.erb'
  end

  def create
    @link = Link.new(
      slug: params[:slug]
      )
    @link.target_url = params[:slug] + "abcde"
    @link.save
    redirect_to '/links'
  end
end
