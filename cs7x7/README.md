IDEA
Clone del'app Android 7x7 (che non esiste più).
Gameplay: https://www.youtube.com/watch?v=Eh5baiga2Ig

MOKUP AREA DI GIOCO
- header con livello e punteggio
- row con le prossime 3 tiles casuali
- griglia 7x7

GAMEPLAY
- parte con 3 tiles casuali in posizione casuale
- mostra le prossime 3 tiles che saranno posizionate
- si muove una sola tile 
    - lo scopo è avvicinare quelle dello stesso colore
    - si muove in una casella libera a piacere
    - ma solo se esiste un percorso non occupato da altre tile
- allineando almeno 4 tile queste spariscono
- vengono posizionale le prossime 3 tiles
- si continua finchè il giocatore non può più muovere

DIFFICOLTÀ
- stabilire se si possono eliminare delle tiles
- stabilire se esiste un percorso possibile
- eventualmente marcare le caselle su cui non si può muovere
- drag and drop o frecce per muovere

IMPLEMENTAZIONE
Ci sono più strade:
1. table con 7x7 elementi contrassegnati da un colore
2. classe tile con x,y,colore
    - in questo caso quale lib per la classe?

FUNZIONI
- getFreeTiles per sapere dove è possibile piazzare nuove tile
    - si fa uno scan di tutte le tile e si riempie una table con tutte le posizioni disponibili
- canMove per sapre se esiste un percorso libero per il movimento
    - quale strada scegliere? usare il mouse o la tastiera?
    - la cosa più semplice è usare la tastiera in modo che il giocatore scelga il percorso
- fourOrMore controlla se ci sono 4 caselle allineate e le elimina 
