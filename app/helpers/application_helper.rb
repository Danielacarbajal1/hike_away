module ApplicationHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : APPLICATION_META["meta_title"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : APPLICATION_META["meta_description"]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : APPLICATION_META["meta_image"])
    meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end
end
