class WelcomeController < ApplicationController
  def index
    @posts = Post.all.limit(3).order("created_at desc")
    @projects = Project.all.limit(3).order("created_at desc")
  end

  def readpdf
    send_file(Rails.root.join("public", "assets", "resume.pdf").to_s, :disposition => "inline", :type => "application/pdf")
 end
end
