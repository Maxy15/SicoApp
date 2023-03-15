class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post_mailer.subject
  #
  def post_mailer
    @appointment = params[:appointment]
    @greeting = "Gracias por preferir SicoApp"

    mail( 
      from: "support@sicoapp.com",
      to: @appointment.user.email, 
      subject: "Hora agendada"
    )
  end
end
