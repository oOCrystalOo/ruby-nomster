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

3. Generate a Google Maps API key.
Go to `https://console.developers.google.com` and create a new project. Create a new API key under Credentials. Under Libraries, search for Maps Javascript API and enable it.
When launching your project, create a new environmental variable called `GEOCODER_API_KEY` and set it as your Google API key.

4. Set up an Amazon S3 storage
Set up a S3 bucket with Amazon Web Services. You will need to set up an IAM user with the `AmazonS3FullAccess` permissions. 
When launching your project, you will need to set the environment variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`, which will be provided in the credentials.cvs that was downloaded when the IAM user was created.
You will also need to enter the enviroment variables `AWS_BUCKET` and `AWS_REGION`.
	
### Notes
This project uses postresql, and was created with ruby 2.5.3 and Rails 5.2.3. 