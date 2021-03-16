# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
              {
                image: 'null',
                name: 'Daniel',
                username: 'dc',
                location: 'LA',
                bio: 'Bio here',
                create_date: 'March 13',
                followers: 3,
                following: 3
              },
              {
                image: 'null',
                name: 'Rosa',
                username: 'rb',
                location: 'TX',
                bio: 'Bio here',
                create_date: 'March 10',
                followers: 3,
                following: 3
              }
            ])

Tweet.create([
               {
                 content: 'the square of the hypotenuse is equal to the sum of the squares of the other two sides',
                 media_image: 'null',
                 likes: 3,
                 retweets: 3,
                 user_id: 2
               },
               {
                 content: "Hey, I'm walkin here!",
                 media_image: 'null',
                 likes: 3,
                 retweets: 3,
                 user_id: 1
               }
             ])

Comment.create([
                 {
                   username: 'dc',
                   content: 'Math!',
                   tweet_id: 1
                 },
                 {
                   username: 'rb',
                   content: 'So am I!',
                   tweet_id: 2
                 }
               ])

