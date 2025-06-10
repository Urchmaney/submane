# Submane
A rails engine for subscription management.


## Installation
Add this line to your application's Gemfile:

```ruby
gem "submane"
```

And then execute:
```bash
$ bundle
```

Or install it with bundle install:
```bash
$ bundle install submane
```

We then run the following command to add migrations and config yml file
```bash
$ bin/rails generate submane:install
```

Finally, we can add the class that subscriptions will be attached to.
Assuming "Account" class will hold the subscriptions, then we set is as the following string in `config/submane.yml`
```ruby
account_class: Account
```

## Usage
With the "Account" instance, let assume it is "account"
```ruby
account = Account.new(...)
```
### Active plan
Get the active plan

```ruby
account.active_plan
```

Check if account has active plan

```ruby
account.has_active_plan?
```
Create Plans
```ruby
  Submane.create_plan(name: "", price: "", visual_order: 1)
```

### Subscription
Get all subscriptions
```ruby
account.subscriptions
```
Get all active Subscriptions for a plan
```ruby
Submane.plan_active_subscriptions({plan_id})
```
Get active subscription
```ruby
account.active_subscription
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
