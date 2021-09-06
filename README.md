
# Backpack backend
 Backend server for backpack App, developed with ruby and rails, use active storage for image upload, bycrypt for password digest, JWT Token for user access, action cable for WebSocket connection, and PostgreSQL for the database.

> Front end app Link:https://github.com/carlosmpr/backpack-frontend

# Diagram
![Backpack Welcome Screen](https://menukomedemomenu.s3.amazonaws.com/diagram.png)

## Config
To install all app dependencies.

    bundle install
  


### Enabling cors
Go to /config/initializers/cors.rb and paste or uncommented out this

    Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '*'

        resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
    end

### Allow local url for images
Go to /config/environments/development.rb for development

    config.consider_all_requests_local = true
    config.action_mailer.default_url_options = { host: 'localhost:5000' } # for absolute urls in email
    config.action_mailer.asset_host = "http://localhost:5000" 
    Rails.application.routes.default_url_options[:host] = 'localhost:5000'  

### Run the server on Port 5000

    rails server -p 5000

# Other Information

## Important Routes
### `post '/login', to: 'users#login'`<br>
### `get '/me', to: 'users#me'`<br>
### `get '/my_activities', to: 'users#my_activities'`<br>
### `get '/my_friends_goings/:id', to: 'users#friends_goings' `<br>
### `get '/my_friends', to: 'users#my_friends'`<br>
### `post '/invitation_response', to: 'friends_goings#going'` <br>
### `post '/activity/detail', to: 'activities#details'` <br>
### `post '/accept_friend', to: 'firend_requests#add_friend'` <br>
<br>

## Route for WebSocket
###  `mount ActionCable.server => "/cable"`

>All of these routes will need a token to work.

# Helper functions

## Validates user Token:

     def self.validateUser(token)
        begin
        hmac_secret = 'my$ecretK3y'
        decoded_token = JWT.decode token, hmac_secret, true, { algorithm: 'HS256' }
        user = decoded_token[0]
       database = User.find_by(email: user["email"])
        database
        rescue => exception
            false
        end

    end

## Render user information and image blob url:
    def user
            image =  if self.featured_image.attached?
                {
                url: rails_blob_url(self.featured_image)
                } else 
                ""
            end
            
            {
                id: self.id,
            name: self.name,
            last_name: self.last_name,
            avatar: self.avatar,
            featured_image: image,
            hiking: self.hiking,
            walking: self.walking,
            eating: self.eating,
            camping: self.camping,
            touring: self.touring,
            swimming: self.swimming,
            phone: self.phone,
            email: self.email
            }
            end

# Author
>Develop by: Carlos Polanco<br>
Linkedin: https://www.linkedin.com/in/carlosmpr/<br>
Github: https://github.com/carlosmpr<br>
Medium: https://cmpr.medium.com<br>
Portfolio: https://carlosmpr.github.io/portfoliosite2/

# License
MIT License

Copyright (c) [2021] [Carlos Polanco]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.