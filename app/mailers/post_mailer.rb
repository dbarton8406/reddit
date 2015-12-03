class PostMailer < ActionMailer::Base

  def post_created(user)
  	mail(to: user.email,
  		 from: "dbarton8406@gmail.com",
  		 subject:"Post Created",
  		 body:"Dan needs a body"
  		 )
  end
end
