# Nomster

A Yelp clone that integrates with the Google Maps API and includes features like user comments, star ratings, image uploading, and user authentication.

## Setup
1. Clone the repository:
``` 
git clone https://github.com/oOCrystalOo/ruby-nomster.git
cd ruby-nomster
```
	
2. Install bundle, create a database, and run migration
``` 
bundle install
rake db:create
rake db:migrate
```
	
### Notes
This project uses postresql, and was created with ruby 2.5.3 and Rails 5.2.3. 