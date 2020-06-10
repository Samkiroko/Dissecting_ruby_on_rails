class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :set_sidebar_topics, except: [:create, :update, :destroy]

  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end

  def new
    @topic = Topic.new
  end

  def edit; end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic, notice: 'Topic was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy!

    redirect_to topics_path, notice: 'Topic was successfully deleted'
  end

  private

  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title)
  end
end
