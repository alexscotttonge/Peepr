module PeepHelper

  def like_button(peep)
    if current_user.liked?(peep)
      link_to "Unlike", unlike_peep_path(peep), method: :delete
    else
      link_to "Like", like_peep_path(peep), method: :post
    end
  end

  def autolink(text)
    text.gsub(/@\w+/) { |mention| link_to mention, user_path(mention[1..-1]) }.html_safe
  end
end
