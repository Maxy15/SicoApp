# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/post_mailer
  def post_mailer
    UserMailer.with(appointment: Appointment.first).post_mailer
  end

end
