class MailersController < ApplicationController

  def index
  end

  def thirty_minutes

    Pony.mail ({
      to: params[:mail][:email],
      subject: I18n.t('email.title'),
      body: I18n.t('email.message'),
      via: :smtp,
      via_options: {
        address: 'smtp.gmail.com',
        port: 587,
        enable_starttls_auto: true,
        user_name: 'admass100',
        password: 'lakys100',
        authentication: :plain
      }
    })

    render json: {status: :ok}
  end

end