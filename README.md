# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
# Crypto-tracker

A simple CRUD web application that allows a user to add/update/destroy cryptocurrencies belonging to a portfolio.

A RESTful API is consumed to give better detail about the cryptos in the portfolio. e.g. current BTC price; value in BTC; value in USD; % change over time.

## Deployment instructions

1. Fork and clone this repository to your local machine.

2. Run
* `bundle install`
* `bin/rake db:reset`
* `bin/rails db:migrate`
* `bin/rails server`

3. Served up at [https://localhost:3000](https://localhost:3000)
