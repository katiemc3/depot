class Notifier < ActionMailer::Base
  default :from => "k.mcmanamon4@nuigalway.ie"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received
    @greeting = "Hi"

    mail :to => "to@example.org"

    def order_received(order)
    @order = order

    mail :to => order.email, :subject => 'Pragmatic Store Order Confirmation'
  end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped
    @greeting = "Hi"

    mail :to => "to@example.org"

    def order_shipped(order)
    @order = order

    mail :to => order.email, :subject => "This is just to let you know that we've shipped your recent order: "
  end
  end
end
