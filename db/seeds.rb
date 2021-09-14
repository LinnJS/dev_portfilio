# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "3 sample topics created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
  

puts "10 Sample posts created"

10.times do |blog|
    Blog.create!(
      title: "Sample post ##{blog}",
      body: "We don’t serve their kind here! What? Your droids. They’ll have to wait outside. We don’t want them here. Listen, why don’t you wait out by the speeder. We don’t want any trouble. I heartily agree with you sir. Negola dewaghi wooldugger?!? He doesn’t like you. I’m sorry. I don’t like you either You just watch yourself. We’re wanted men. I have the death sentence in twelve systems. I’ll be careful than. You’ll be dead. This little one isn’t worth the effort. Come let me buy you something…",
      topic_id: Topic.last.id
    )
end

puts "5 Sample skills created"

5.times do |skill|
    Skill.create!(
      title: "Rails/React #{skill}",
      percent_utilized: 15
    )
end

puts "9 Sample projects created"

9.times do |project|
    Project.create!(
      title: "Sample project #{project}",
      subtitle: "The approach will not be easy. #{project}",
      body: "You are required to maneuver straight down this trench and skim the surface to this point. The target area is only two meters wide. It’s a small thermal exhaust port, right below the main port. The shaft leads directly to the reactor system. A precise hit will start a chain reaction which should destroy the station. Only a precise hit will set up a chain reaction. The shaft is ray-shielded, so you’ll have to use proton torpedoes. That’s impossible, even for a computer. It’s not impossible. I used to bull’s-eye womp rats in my T-sixteen back home. They’re not much bigger than two meters. Man your ships! And may the Force be with you!",
      main_image: 'https://images.unsplash.com/photo-1620002093398-8f16081af5ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
      thumb_image: 'https://images.unsplash.com/photo-1579935110378-81262796945f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    )
end

1.times do |project|
  Project.create!(
    title: "React sample project",
    subtitle: "The approach will not be easy. #{project}",
    body: "You are required to maneuver straight down this trench and skim the surface to this point. The target area is only two meters wide. It’s a small thermal exhaust port, right below the main port. The shaft leads directly to the reactor system. A precise hit will start a chain reaction which should destroy the station. Only a precise hit will set up a chain reaction. The shaft is ray-shielded, so you’ll have to use proton torpedoes. That’s impossible, even for a computer. It’s not impossible. I used to bull’s-eye womp rats in my T-sixteen back home. They’re not much bigger than two meters. Man your ships! And may the Force be with you!",
    main_image: 'https://images.unsplash.com/photo-1620002093398-8f16081af5ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    thumb_image: 'https://images.unsplash.com/photo-1579935110378-81262796945f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
  )
end

puts "3 technologies created"

3.times do |technology|
  Project.last.technologies.create!(
    name: "Technology #{technology}"
  )
end