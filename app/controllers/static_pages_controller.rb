class StaticPagesController < ApplicationController
  def home
    @page_title = "ePortfolio"
    @about_me = about_me
    @contact_me = contact_me
    @featured_projects = Project.featured.recent
  end

  def about
    @page_title = "About"
    @about_me = about_me
  end

  def education
    @page_title = "Education"
  end

  def experience
    @page_title = "Experience"
  end

  def contact
    @page_title = "Contact"
    @contact_me = contact_me
  end

  private

    def about_me
      "A driven professional with a broad technical skill set.  An excellent communicator experienced in interpreting and implementing business requirements.  Known for effectively multi-tasking and balancing multiple pressing projects simultaneously while meeting all deadlines.  An avid learner who thrives in environments that consistently embrace new technologies and shift business priorities."
    end

    def contact_me
      "I would love the opportunity to discuss potential projects or my qualifications with you. Let's talk!"
    end
end
