require "test_helper"

class DeleteMailerTest < ActionMailer::TestCase
  test "delete_mailer" do
    mail = DeleteMailer.delete_mailer
    assert_equal "Delete mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
