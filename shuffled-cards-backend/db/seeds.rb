# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Deck.destroy_all
Collection.destroy_all
Card.destroy_all

def make_users_and_decks
    5.times do
        @new_user = User.create(username: "Katana", avatar_picture:"yee",coins: 100)
        Deck.create(user_id:@new_user.id)
    end
end

def make_cards
    50.times do
        Card.create(name: "bob", mana_cost: 2, health_points: 3, attack: 1, card_effect:"cool", card_description: "awesome",card_img: "coo")
    end
end

def make_collections
    100.times do 
        Collection.create(deck_id:rand(1..5), card_id: rand(1..50))
    end
    puts "created collections"
end

make_users_and_decks
make_cards
make_collections
