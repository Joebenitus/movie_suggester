# *Movie Suggester API*

### This project was an independant project to practice creating a custom API, 10/30/2020

By **Joseph Karnafel**


## Description

The Movie Suggester API contains a database of several, randomly-generated movie titles. The API allows the user to either search for a specific movie by title, or choose a movie for them at random.

## Setup/Installation Requirements

* _open terminal_
* _enter the command `cd desktop`_
* _enter the command `git clone https://github.com/Joebenitus/movie_suggester`_
* _enter the command `cd movie_suggester`_
* _enter the command `rake db:create`_
* _enter the command `rake db:migrate`_
* _enter the command `rake db:seed`_ (you may ignore this step if you would like to use the API without sample data)
* _enter the command `rails s`_
* _now, you can successfully make API calls!_

## Endpoints

### ***Return all movies in the database:***
    GET http://localhost:3000/movies
### ***Search for a movie by title:***
    GET http://localhost:3000/movies?title={search parameters}
* search is case insensitive and returns exact and partial matches
### ***Return a randomly-selected movie***
    GET http://localhost:3000/movies/random
### ***Add a movie***
    POST http://localhost:3000/movies?title={your_movie_title}
### ***Delete a movie***
    DELETE http://localhost:3000/movies/{movie_id}
### ***Change an existing movie's title***
    PUT http://localhost:3000/movies/{movie_id}?title={new_movie_title}


## Support and contact details

Feel free to reach out to me on github or make a pull request!

## Additional notes
This API is rate-limited to 5 calls per minute by default. You can change this by either adjusting the value of the `limit` key or by commenting/deleting the following code block entirely.

```
  #movie_suggester/config/application.rb

  config.middleware.use RateLimiting do |r|
    r.define_rule( :match => '/movies', :type => :fixed, :metric => :rpm, :limit => 5 )
  end
```

## Technologies Used

* _PostgreSQL_
* _VS Code_
* _Ruby on Rails_
* _dotenv_
* _rspec_
* _FactoryBot_

### License

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files the Software, to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2020 ***Joseph Karnafel***
