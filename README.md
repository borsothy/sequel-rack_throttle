# Sequel rack-throttle

A tiny gem for using any [Sequel](https://github.com/jeremyevans/sequel)-supported database as a [rack-throttle](https://github.com/bendiken/rack-throttle) counter cache.

## Installation

Run the following command from your command line:

`gem install 'sequel-rack_throttle'`

or add this line to your `Gemfile`:

`gem install 'sequel-rack_throttle'`

## Usage

```
require '<adapter>'
require 'sequel/rack_throttle'

use Rack::Throttle::Interval, :cache => ThrottleAdapter.new(<sequel db object>, <optional table name>)
```

Please provide an **existing** database in your connection string. The gem will automatically create a designated table in the given database if it does not exist already (with name `throttle_cache` if you do not define otherwise explicitly). Make sure you require the desired database driver as well!

For further information about throttling your API, check [rack-throttle examples](https://github.com/bendiken/rack-throttle/blob/master/README.md).

