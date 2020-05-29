# frozen_string_literal: true

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end



10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
     Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of
     (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,
      comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 25
  )
end
puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on rails",
    body: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of
     the printing and typesetting industry Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s 
    when an unknown printer took a galley of type and 
    scrambled it to make a type specimen book it has?",
    main_image: "https://i.picsum.photos/id/875/600/400.jpg",
    thumb_image: "https://i.picsum.photos/id/875/350/200.jpg"
  )
end


8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of
     the printing and typesetting industry Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s 
    when an unknown printer took a galley of type and 
    scrambled it to make a type specimen book it has?",
    main_image: "https://i.picsum.photos/id/875/600/400.jpg",
    thumb_image: "https://i.picsum.photos/id/875/350/200.jpg"
  )
end



puts "3 prtifolio created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 prtifolio created"
