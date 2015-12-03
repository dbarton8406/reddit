class: PostMailer < ActionMailer:: Base

  def post_created(user)
  	mail(to: user.email,
  		 from:,
  		 subject:"Post Created"
  		 body:
  		 )
  end
end
