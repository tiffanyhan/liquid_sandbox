require 'liquid'
require 'launchy'

f = open('./content.liquid')
content = f.read

@template = Liquid::Template.parse(content) # Parses and compiles the template

html = @template.render('data' => '')
f = File.new('./index.html', 'w')
f.write(html)

Launchy.open('./index.html')
