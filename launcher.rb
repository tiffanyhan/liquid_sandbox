require 'liquid'
require 'launchy'
require 'json'

f = open('./content.liquid')
content = f.read

@template = Liquid::Template.parse(content) # Parses and compiles the template

f = open('./response.json')
json = f.read
dict = JSON.parse(json)

html = @template.render(dict)
f = File.new('./index.html', 'w')
f.write(html)

Launchy.open('./index.html')
