#!/Usr/bin/env ruby
def shuffle_deck(cards)
  count = cards.length

  #The shuffle
  3.times {
    card_above = 0
    card_below = count / 2
    temp = []

    while temp.length < count #While there are fewer cards in the temp then the total number of cards in the deck
      if temp.length % 2 == 0 #Testing to see if even or odd number of cards
        temp.push(cards[card_below]) #When even the card below the middle will be taken
        card_below = card_below + 1
      else
        temp.push(cards[card_above]) #When odd the card from the top of the deck will be taken
        card_above = card_above + 1
      end
    end

    cards = temp
  }

  #The cut
  result = []
  cut = rand(count) #Randomley decided where the cut will take place in the deck
  split_control = 0 #To make sure we dont keep pushing in the same cards

  while split_control < count
    result.push(cards[(cut + split_control) % count])
    split_control += 1
  end
  puts result
end
cards = ["ace spades", "spades 2", "spades 3", "spades 4", "spades 5", "spades 6", "spades 7", "spades 8", "spades 9", "spades 10", "spades jack", "spades queen", "spades king",
         "ace hearts", "hearts 2", "hearts 3", "hearts 4", "hearts 5", "hearts 6", "hearts 7", "hearts 8", "hearts 9", "hearts 10", "hearts jack", "hearts queen", "hearts king",
         "ace clubs", "clubs 2", "clubs 3", "clubs 4", "clubs 5", "clubs 6", "clubs 7", "clubs 8", "clubs 9", "clubs 10", "clubs jack", "clubs queen", "clubs king",
         "ace diamonds", "diamonds 2", "diamonds 3", "diamonds 4", "diamonds 5", "diamonds 6", "diamonds 7", "diamonds 8", "diamonds 9", "diamonds 10", "diamonds jack", "diamonds queen", "diamonds king"]
shuffle_deck(cards)
