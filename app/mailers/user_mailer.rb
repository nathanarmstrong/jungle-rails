class UserMailer < ApplicationMailer

    default from: 'no-reply@jungle.com'

    def order_confirmation_email(order)
        @order = order
        mail(to: order.email, subject: "Your order number is #<%= @order.id %>")
    end
end
