# README

This is a backend api for Trackerio.

1. Clone this repository.

2. If you don't have ruby installed (Check with `ruby -v`) follow rbenv installation guide at https://github.com/rbenv/rbenv#readme (start from subtitle Installation). It is important that you install ruby with rbenv.

3. If you also installed the optional ruby-build you can just install ruby with `rbenv install ruby 2.3.1`. We are using version 2.3.1. If installer whines about missing packages just install them as it suggests or google for help.

4. Run `gem install rails` to install rails.

2. Run `bundle install` to install dependencies.

3. Run `rails db:migrate` to init database with correct tables. 

4. Run `rails db:seed` to get some testdata.

5. Run api locally with `rails server`.