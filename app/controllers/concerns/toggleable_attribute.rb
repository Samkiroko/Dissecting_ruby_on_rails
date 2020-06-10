module ToggleableAttribute
  extend ActiveSupport::Concern

  def status
    if @blog.draft?
      @blog.published!
      redirect_to blogs_path, notice: 'Post has now been published.'
    elsif @blog.published? && @blog.not_featured?
      @blog.draft!
      redirect_to blogs_path, notice: 'Post is now in draft mode'
    elsif @blog.published? && @blog.featured?
      redirect_to blogs_path, notice: 'Post cannot be drafted whilst a featured post'
    end
  end

  def featured
    if @blog.not_featured? && @blog.published? && @blogs.featured.blank?
      @blog.featured!
      redirect_to blogs_path, notice: 'Post is now featured.'
    elsif @blog.featured?
      @blog.not_featured!
      redirect_to blogs_path, notice: 'Post is no long featured.'
    elsif @blog.draft?
      redirect_to blogs_path, notice: 'Post must be published first.'
    elsif @blog.published? && @blogs.featured.exists?
      redirect_to blogs_path, notice: 'Only one Post can be featured at a time'
    else
    end
  end

end
