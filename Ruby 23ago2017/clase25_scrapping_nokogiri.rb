require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'
5.times do |i|
  puts "Página #{i}"
  document = Nokogiri::HTML(open(url))
  div_main = document.css('div#main')
  div_main.css('div.post').each do |post|
    puts post.css('h2').text
    puts post.css('div.entry img').attr('src')
  end
  url = document.css('div.nav-entries div.nav-next a').attr('href')
end
