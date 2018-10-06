module CommentsHelper
  def show_picture(idea_id)
    Idea.find(idea_id).picture.url
  end
end
