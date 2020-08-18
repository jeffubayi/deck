//create a deck of cards
main(){
  var deck = new Deck();
  print(deck);
}

class Deck {
  List cards = [];
  
  Deck(){
    var suits = ['Ace','Two','Three','Four','Five'];
    var ranks = ['Diamonds','Hearts','Clubs','Spades'];
    
    for(var rank in ranks){
      for(var suit in suits){
        var card = new Card(rank,suit);
        cards.add(card);
      }
    }
  }
}