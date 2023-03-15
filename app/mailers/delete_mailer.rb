class DeleteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.delete_mailer.delete_mailer.subject
  #
  def delete_mailer
    @greeting = "¡Puedes volver a agendar otra hora con nosotros que te acomode!"
    @user = params[:user]
    @center = params[:center]
    @terapist = params[:terapist]
    @date = params[:date]
    @hour = params[:hour]

    mail( 
      from: "support@sicoapp.com",
      to: @user.email, 
      subject: "Hora anulada"
    )
  end
end
