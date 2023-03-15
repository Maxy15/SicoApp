# Preview all emails at http://localhost:3000/rails/mailers/delete_mailer
class DeleteMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/delete_mailer/delete_mailer
  def delete_mailer
    DeleteMailer.with(
      user: User.first, 
      terapist: Terapist.first, 
      center: Center.first,
      date: '25/03/2023',
      hour: '14:00').delete_mailer
  end

end
