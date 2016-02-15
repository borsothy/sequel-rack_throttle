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

use Rack::Throttle::Interval, :cache => Sequel.connect('<adapter>://<user>:<password>@<host>:<port>/<database>')
```

Please provide an **existing** database in your connection string. The gem will automatically create a designated table with the name `throttle_cache` in the given database. Make sure you require the desired database driver as well!

For further information about throttling your API, check [rack-throttle examples](https://github.com/bendiken/rack-throttle/blob/master/README.md).

