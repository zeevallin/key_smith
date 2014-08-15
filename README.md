# KeySmith
Convenient when some keys just aren't the way you want them to.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'key_smith'
```

And then execute

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install key_smith
```

## Usage
Get started by requiring the library.

```
require "key_smith"
```

### Translate
Translate key names using a map.

```ruby
hash = { :mid => "56632", manDate => "2011-01-01" }
map = { mid: :machine_id, manDate: :manufactured_at }

data.translate map
# => { machine_id: "56632", manufactured_at: "2011-01-01" }
```

Translate on the same object

```ruby
hash = { firstName: "Philip", lastName: "Vieira" }
map = { firstName: :first_name, lastName: :last_name }
hash.translate! map

hash
# => { first_name: "Philip", last_name: "Vieira" }
```