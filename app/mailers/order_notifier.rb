class OrderNotifier < ActionMailer::Base
  default from: "Admin <admin@example.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order
    #@greeting = "Hi"

    mail to: order.email, subject: 'Depot Store Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order
    #@greeting = "Hi"

    mail to: order.email, subject: 'Depot Store Order Shipped'
  end
end
