# Juju.Rocks

### Getting Started

Fork & Clone the repo

    git clone git@github.com:<username>/jujurocks.git

Make sure you've got ruby 2.x installed, and bundler.

    rbenv install 2.1.1
    gem install bundler
    cd jujurocks
    bundle

### Additional Components

The project relies on a few external dependencies:

 - [MongoDB](http://mongodb.org)
 - [Juju](http://jujucharms.com)

### Running the Tests

To run the test suite:

    bundle exec rake test

To run tests on file save, you can use Guard:

    guard


### To Deploy the project:

Edit the charm_deploy.yaml file, and update it with your SECRET_KEY_SEED
then Juju Deploy the rails charm, pointed at your github repository

    juju deploy cs:precise/rails --config charm_deploy.yaml
    juju deploy mongodb
    juju add-relation rails mongodb
