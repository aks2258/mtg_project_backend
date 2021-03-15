# Imperfect Gathering
A site where you can build decks for the card game Magic the Gathering.


## Demo: https://www.youtube.com/watch?v=VhLmw2lHMnc&feature=youtu.be

## Table of Contents ##
### Inspiration
### Technologies Used
### How to Use

## Inspiration
After I got back into the popular card game Magic the Gathering, I saw that my deck build needed upgrading and searched for recommended deck builds by other people that used the cards I wanted to use. A lot of search results led me to forums where other players would list cards and their deck builds and often ask for reviews or recommendations of cards to use. This led me to want to build a site where people can build their decks and serve as an all-in-one deck builder and review/recommendation. This current version is only the first part of what I hope to build.

## Technologies Used
- Ruby
- Rails
- PostgreSQL
- Bcrypt

## How to Use
1. Clone this repository.
2. Using your terminal, navigate to the root folder of your cloned repository and run "bundle install."
4. Create and migrate the database by typing "rails db:create" and "rails db:migrate" in the terminal.
5. Run the server by typing "rails s" in the terminal.

## Future Implementations
One future implementaion is creating a model and controller for posts that users can create for reviews of decks and recommended cards. Also adding an attribute for Decks model to hold "text," for descriptions of how a users deck is supposed to be played.

