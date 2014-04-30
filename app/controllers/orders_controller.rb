class OrdersController < ApplicationController

  def create

    message = "#{params[:order][:username]} - #{params[:order][:phone]}"

    Pony.mail ({
        to: 'admass100@gmail.com, abardacha@gmail.com',
        subject: I18n.t('email.special_offer_title'),
        body: message,
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