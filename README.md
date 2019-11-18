# README

## System dependencies

* Postgres
* -Redis-

## Gems

* Slim: <https://github.com/slim-template/slim>
* Devise: <https://github.com/plataformatec/devise>
* Cancancan: <https://github.com/CanCanCommunity/cancancan>
* Simple_form: <https://github.com/plataformatec/simple_form>
* Pagy: <https://ddnexus.github.io/pagy/how-to>
* exception_notification: <https://github.com/smartinez87/exception_notification>
* http: <https://github.com/httprb/http>
* VCR: <https://relishapp.com/vcr/vcr/v/5-0-0/docs/getting-started>
* whenever: <https://github.com/javan/whenever>
* factory_bot: <https://github.com/thoughtbot/factory_bot>
* guard: <https://github.com/guard/guard>
* solargraph
* standardrb: <https://github.com/testdouble/standard>
* inky-rb: <https://github.com/foundation/inky-rb>

## JavaScript/CSS

* TailwindCSS: <https://tailwindcss.com/docs/>
* Font Awesome: <https://fontawesome.com/how-to-use/on-the-web/referencing-icons/basic-use>
* StimulusJS: <https://stimulusjs.org/handbook/installing>

## Functionality

### Pagy

In controller

    @pagy, @records = pagy(Product.some_scope)

In View

    <%== pagy_nav(@pagy) %>

# Setup

* Change database names in database.yml
* Find and replace

    rg -il rails-starter-6 | xargs -n 1 sed -i'' -e 's/RailsStarter6/NewName/g' -e 's/RAILS_STARTER_6/NEW_NAME/g' -e 's
       │ /rails-starter-6/new-name/g' && rg -i rails-starter-6
