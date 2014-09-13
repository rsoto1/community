# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/post_notifier
  def post_notifier
    Notification.post_notifier
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification/comment_notifier
  def comment_notifier
    Notification.comment_notifier
  end

end
