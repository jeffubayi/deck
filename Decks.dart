//execute the app and display a deck of cards
void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck.cardsWithSuit('Clubs'));
}

//create a list/deck of cards
class Deck {
  List <Card> cards = [];
  
  Deck(){
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];
//loop through the cards with for in    
    for(var rank in ranks){
      for(var suit in suits){
        var card = new Card(rank,suit);
        cards.add(card);
      }
    }
  }
//convert the deck of cards to string
  toString(){
    return cards.toString();
  }

//shuffle the cards in the deck
  shuffle(){
    cards.shuffle();
  }

  cardsWithSuit(String suit){
    return cards.where((card) =>card.suit == suit);
  }

//Returns a new list containing the objects from start inclusive to end exclusive.
  deal(int handSize){
    var hand = cards.sublist(0,handSize);
    cards = cards.sublist(handSize);
    return hand;
  }

//removes both cards from a deck
  removeCard(String suit, String rank){
    cards.removeWhere((card)=>(card.suit == suit) && (card.rank == rank));
    }
  }

//replace both cards as strings
class Card {
  String suit;
  String rank;

  Card(this.rank, this.suit);

  toString(){
    return '$rank of $suit';
  }
}