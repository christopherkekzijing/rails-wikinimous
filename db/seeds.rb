10.times do
  Post.create(
  title: Faker::Coffee.blend_name,
  details: Faker::Commerce.department(max: 5) ,
  views: rand(1..200))
end
