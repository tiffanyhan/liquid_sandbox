# liquid_sandbox
Just a liquid sandbox for testing our Groove webhook consumption

- Paste liquid template for custom profile into `content.liquid`
- Paste json response from `https://api.lyte.com/webhooks/groove/` into `response.json`
- From project directory, run `ruby ./launcher.rb` to see the html that will populate the right sidebar of custom profile in Groove.
