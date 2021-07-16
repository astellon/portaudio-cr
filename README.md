# portaudio-cr

[PortAudio](http://www.portaudio.com/) bindings in Crystal. This was previously managed in the astellon/quartz project but has been separated.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     portaudio-cr:
       github: astellon/portaudio-cr
   ```

2. Run `shards install`

## Usage

The library can be loaded in the usual manner, but the name is `portaudio`.

```crystal
require "portaudio"
```

For more information, See the [portaudio.h File Reference](http://files.portaudio.com/docs/v19-doxydocs/portaudio_8h.html). Only the function names are represented by the snake case, removing the `PA_` prefix.

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/astellon/portaudio-cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [astellon](https://github.com/astellon) - creator and maintainer
