# DailyCents

Daily Cents is an app built on top of the [Atrium API](atrium.mx.com) to show spending habits on a daily basis.

This app will help people answer questions like:

- How much money do I make per day on average?
- How much is does it cost me in rent per day?
- How much is my car insurance per day?
- How much are my average medical expenses per day?

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Requirements

- Ruby 2.4.0
- Postgres


## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
