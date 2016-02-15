# Sequel rack-throttle

A tiny gem for using any [Sequel](https://github.com/jeremyevans/sequel)-supported database as a [rack-throttle](https://github.com/bendiken/rack-throttle) counter cache.

## Installation

`gem install 'sequel-rack_throttle'`

## Usage

```
require '<db_adapter>'
require 'sequel/rack_throttle'

use Rack::Throttle::Interval, :cache => Sequel.connect('<adapter>://<user>:<password>@<host>:<port>/<database>')
```

Please provide a database in your connection string. The gem will automatically create a designated table with name `throttle_cache` in the given database.

Make sure you require the proper database driver as well!