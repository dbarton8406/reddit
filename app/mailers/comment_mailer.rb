class CommentMailer < ActionMailer::Base

  def comment_created(current_user, post_user, content)
    @current_user = current_user,
      @post_user = post_user,
      @content = content

    mail(to: post_user.,
         from: "dbarton8406@gmail.com",
         subject:"Comment Created",
         )
  end
end
