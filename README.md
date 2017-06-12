# Jungle

A mini e-commerce application built with Rails 4.2.

![Home page with login and signup](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/home_with_login_signup.png)

![SOLD OUT badge and removed add cart when no products left](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/soldout.png)

![product review when not loged in](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/product_review_not_loged_in.png)

![product review when loged in](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/review_loged_in.png)

![product review when posted](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/review_posted.png)

![cart with no items](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/cart_no_items.png)

![Admin prompt to login](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/admin.png)

![order when not loged in](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/order_not_loged_in.png)

![order after it is sent through](https://github.com/nathanarmstrong/jungle-rails/blob/master/img/order_sent.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
