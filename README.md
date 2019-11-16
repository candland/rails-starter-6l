# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

## System dependencies

* Postgres
* Redis

## Gems

* Slim: <https://github.com/slim-template/slim>
* Devise: <>
* Cancancan: <>
* Simple_form: <https://github.com/plataformatec/simple_form>
* Pagy: <https://ddnexus.github.io/pagy/how-to>
* exception_notification: <https://github.com/smartinez87/exception_notification>
* http
* whenever

### Pagy

In controller

    @pagy, @records = pagy(Product.some_scope)

In View

    <%== pagy_nav(@pagy) %>

### JavaScript/CSS

* TailwindCSS
* StimulusJS

## Functionality

* User roles


* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Setup

* Change database names in database.yml
