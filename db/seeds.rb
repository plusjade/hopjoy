# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Environment.create(
  [
    { slug: 'web-browser' }, 
    { slug: 'web-server' }, 
    { slug: 'android' }, 
    { slug: 'ios' }, 
  ]
)

Language.create(
  [
    { name: 'javascript' }, 
    { name: 'html' }, 
    { name: 'css' }, 
    { name: 'mysql' }, 
    { name: 'ruby' }, 
    { name: 'python' }, 
  ]
)

p = Project.create({:slug => 'tic-tac-toe', :environment_id => 1})
p.languages << Language.find_by_slug("javascript")
p.languages << Language.find_by_slug("html")
p.languages << Language.find_by_slug("css")

browser = Environment.find_by_slug("web-browser")
browser.languages << Language.find_by_slug("javascript")
browser.languages << Language.find_by_slug("html")
browser.languages << Language.find_by_slug("css")
