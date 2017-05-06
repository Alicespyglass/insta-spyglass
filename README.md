# insta-spyglass
# README

This README would normally document whatever steps are necessary to get the
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

* ...

## User Stories
- Posts can be created by providing a title and attaching an image
- The homepage lists all the uploaded thumbnails - users can click through to see full-sized images
- Users must be signed in to create a new posts
- Users can register/sign up (implemented with Devise)

The image should be processed using Paperclip, to generate thumbnail-sized images
Images are hosted on S3. Stub calls to S3 for your test environment
Ensure your S3 secret key is not stored on Github
