class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def welcome_email
      @user = User.last
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end

    def moderator
        @email = params[:email]
        @name = params[:name]
        @secret_list =params[:secret_list]
        mail(:to => @email, :subject => "Secret Santa list from Wyncode C30")
    end

    def secret_email
        @email = params[:email]
        @secret = params[:secret]
        @name = params[:name]
        mail(:to => @email, :subject => "Your secret santa is...")
    end
  end
