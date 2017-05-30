module ApplicationHelper
include ActionView::Helpers::TextHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  def gravatar_url(email, size)
    gravatar = Digest::MD5::hexdigest(email).downcase
    url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
  end
end
