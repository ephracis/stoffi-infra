[![Build Status](https://travis-ci.org/simplare/stoffi-infra.svg?branch=master)](https://travis-ci.org/simplare/stoffi-infra)

Overview
========
This is the infrastructure code for stoffi.io. It uses Chef to provision the [stoffi-web](https://github.com/simplare/stoffi-web) Rails app on AWS.

Continuous integration is performed on Travis CI which runs rubocop, FoodCritic, ChefSpec and TestKitchen. TestKitchen is configured to run directly on the host (the Travis build runner) on thus only a single TestKitchen run is possible.

Set up a throw-away environment with Vagrant
============================================
Perform the following before running Vagrant:

- Install Vagrant
- Install awscli
- Set up a Chef server, get the Starter Kit and extract and replace the .chef folder.
- `bundle install`
- `aws configure`
- `knife cookbook upload -a`

You can now run `vagrant up` and spin up a dev/test machine.