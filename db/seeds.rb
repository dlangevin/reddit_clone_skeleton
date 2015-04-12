# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

urls = [
  "https://www.youtube.com/watch?v=_yHl6a1KjAE",
  "https://www.youtube.com/watch?v=z_SQO3vv3p8&feature=share",
  "http://imgur.com/zJFKocf",
  "http://imgur.com/w04j7Dp",
  "http://imgur.com/caBGDu1",
  "http://i.imgur.com/kWV0bU7.jpg",
  "http://i.imgur.com/mB3L8YP.jpg",
  "http://en.wikipedia.org/wiki/Eugene_Merle_Shoemaker#Death",
  "http://i.imgur.com/wCUAYot.gifv",
  "http://i.imgur.com/x0pSHS2.gif",
  "http://www.nbcwashington.com/news/local/Police-Woman-Left-Quadriplegic-Son-in-Woods-Visited-Lover-299486591.html",
  "http://i.imgur.com/ewe8sgN.jpg",
  "http://www.vocativ.com/culture/science/early-earthquake-warnings-smartphones-gps/",
  "http://imgur.com/oAQroBi",
  "http://www.liveleak.com/view?i=bc7_1428732891",
  "http://imgur.com/a/aDh8p",
  "http://i.imgur.com/loKuUJb.jpg",
  "http://imgur.com/j4ylOCY",
  "http://www.esa.int/var/esa/storage/images/esa_multimedia/images/2011/03/yuri_gagarin5/10023593-2-eng-GB/Yuri_Gagarin.jpg",
  "http://weburbanist.com/2015/04/11/ikea-to-produce-ship-10000-flat-pack-emergency-shelters/",
  "http://i.imgur.com/e99s9U1.jpg",
  "http://www.wthr.com/story/28779936/police-shooting-suspect-wants-to-chill-this-weekend-will-turn-himself-next-week",
  "http://www.futurism.co/wp-content/uploads/2015/04/Science_Apr-12th_2015.jpg",
  "http://i.imgur.com/6jItPe7.jpg",
  "http://i.imgur.com/HVf6IuC.jpg",
  "http://imgur.com/SVauklO"
]

Post.delete_all

10.times do |i|
  Post.create(
    title: Forgery('lorem_ipsum').title,
    description: Forgery('lorem_ipsum').paragraph,
    created_at: Time.zone.now + i,
    updated_at: Time.zone.now + i,
    url: urls.sample
  )
end
