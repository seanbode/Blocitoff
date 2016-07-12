module ApplicationHelper
  def user_avatar(email, size=128)
    gravatar_id = Digest::MD5::hexdigest(email)
    image_tag("http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}")
  end
end
