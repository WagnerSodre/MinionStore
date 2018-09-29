class ApplicationMailer < ActionMailer::Base
  def order_email(order)
    @order = order
    mail(to: 'wagner.sodre@live.com', subject: 'Order at Minion Store',
    template_path: 'mail',
    template_name: 'order')
  end
end