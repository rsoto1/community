require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "post_notifier" do
    mail = Notification.post_notifier
    assert_equal "Post notifier", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "comment_notifier" do
    mail = Notification.comment_notifier
    assert_equal "Comment notifier", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
