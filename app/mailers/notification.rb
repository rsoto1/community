class Notification < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.post_notifier.subject
  #
  def post_notifier
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.comment_notifier.subject
  #
  def comment_notifier
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
