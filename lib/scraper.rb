require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
Nokogiri::HTML(html) 
doc = Nokogiri::HTML(html) 
doc.css(".site-header__hero__headline")
doc.css(".site-header__hero__headline").text.strip
doc.css(".tout__label.heading.heading--level-4") 
courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end 

p doc.css(".tout__label.heading.heading--level-4")[0]
