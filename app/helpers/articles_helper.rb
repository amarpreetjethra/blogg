module ArticlesHelper

 def article_params
  params.require(:article).permit(:title, :body, :tag_list, :image, :username, :email, :password, :password_confirmation)
end
   def tag_links(tags)
    links = tags.collect{|tag| link_to tag.name, tag_path(tag)}
    return links.join(", ").html_safe
  end

end