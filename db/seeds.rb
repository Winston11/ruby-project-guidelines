Owner.destroy_all
Review.destroy_all
StreamingService.destroy_all

#owners
win = Owner.create(name: "win", password: "some")
abc = Owner.create(name: "abc", password: "123")
taurus = Owner.create(name: "Taurus", password: "april")
stream = Owner.create(name: "stream", password: "line")


#streaming services
hbo_max = StreamingService.create(title: "HBO Max", tv_selection_rating: "5", movie_selection_rating: "5", )
disney_plus = StreamingService.create(title: "Disney Plus", tv_selection_rating: "4", movie_selection_rating: "5")
starz = StreamingService.create(title: "Starz", tv_selection_rating: "4", movie_selection_rating: "4")

#join tables - reviews
r1 = Review.create(owner_id: win.id, streaming_id: hbo_max.id, overall_score: 5, comment: "Classic series and great movie selection")
r2 = Review.create(owner_id: abc.id, streaming_id: hbo_max.id, overall_score: 5, comment: " Family love's it!")
r3 = Review.create(owner_id: taurus.id, streaming_id: hbo_max.id, overall_score: 5, comment: "it's great!")

r4 = Review.create(owner_id: taurus.id, streaming_id: disney_plus.id, overall_score: 4, comment: "Kids Enjoy It")
r5 = Review.create(owner_id: win.id, streaming_id: starz.id, overall_score: 4, comment: "top 3 but not 1")
r6 = Review.create(owner_id: abc.id, streaming_id: disney_plus.id, overall_score: 5, comment: "MCU and STAR WARS !!")


puts "Seeds Planted"