

## Documentazione Funzionalità
data 09/04/2014
## Titolo: Data Collector Material Acceptance
## Ticket:  17790
## (0).SCOPO:
Funzionalità per l'acquisizione dei dati :
1.Materiale in ingresso “Material Acceptance”.
## (1).PREMESSE:
Acquisizione dei dati tramite stampa dei barcode.
Elenco report  :
1.Job Card Material Acceptance (Material Acceptance)
## (2).IMPATTO:
Creazione delle righe dei materiali in ingresso  (BEM).
Aggancio di un trac number generato esternamente sui materiali in ingresso.
Mod: Funz-Test.odt    Rev: 01  del 06-03-2013Pag. 1 / 5


## Documentazione Funzionalità
data 09/04/2014
## Titolo: Data Collector Material Acceptance
## Ticket:  17790
## (3).SPECIFICHE FUNZIONALI:

Tracciato accettato in ingresso per l'acquisizione dei dati sui materiali:
## Material Acceptance
## USERPO ITEMHEAT N°CONFORMSTOCKING AREA TRAC N°DIMPC N°DATETIME
USERNome utente
PO - ITEMCodice dell'ordine separato con il carattere “-” dal numero di riga.
Inizia con il carattere “P”.
## HEAT N°
## Heat Number
## CONFORM
1=Conforme “-”, 0=Non conforme “Hold”
## STOCKING AREA
Codice della stocking area.
Inizia con il carattere “K”.
## TRAC N°
Numero traceability.
Inizia con il carattere “G”.
## DIM
Accetta come unità di misura in (MM) millimetri:
1.Singolo inserimento. Es.: 200
•Nel caso di material code con gruppo tipo lineare, viene presa
come riferimento la lunghezza, con quantità sempre uguale a
uno.
•Nel caso di material code con gruppo espresso in pezzi, viene
presa come riferimento la quantità (Each).
2.Doppio inserimento Es.: 2000x1000, 2000 1000 2000.1000
•Nel caso di material code con gruppo tipo bidimensionale,
viene presa come riferimento la lunghezza e la larghezza, con
quantità sempre uguale a uno.
## PC N°
PC Number
## DATE
## Data
## TIME
## Ora
Mod: Funz-Test.odt    Rev: 01  del 06-03-2013Pag. 2 / 5


## Documentazione Funzionalità
data 09/04/2014
## Titolo: Data Collector Material Acceptance
## Ticket:  17790
1.Material Acceptance
(a)Acquisizione del tracciato record da file di scambio.
(b)Una volta selezionato il pulsante di “Upload”  compaiono le seguenti informazioni
che permettono una prima verifica dei dati acquisiti dal file.
Mod: Funz-Test.odt    Rev: 01  del 06-03-2013Pag. 3 / 5


## Documentazione Funzionalità
data 09/04/2014
## Titolo: Data Collector Material Acceptance
## Ticket:  17790
Nel caso di riscontro con le righe dell'ordine verrà mostrato il codice e la descrizione
corrispondente al materiale.
Nel dettaglio il colore dello stato del pallino sarà verde.
Nel riepilogo sarà mostrata anche la differenza della quantità acquisita e quella
aspettata.
In caso di non riscontro con la riga d'ordine il colore dello stato sarà rosso e la riga
verrà ignorata nella conferma di registrazione.
In caso di acquisizione di più elementi appartenenti ad una sola riga d'ordine si
creano  più righe di BEM con quantità 1.
(c)Per confermare l'acquisizione si dovrà premere il pulsante di “Confirm Material”.
Mod: Funz-Test.odt    Rev: 01  del 06-03-2013Pag. 4 / 5


## Documentazione Funzionalità
data 09/04/2014
## Titolo: Data Collector Material Acceptance
## Ticket:  17790
(d)Compare una dialog con la lista delle BEM create.
(e)Selezionando il numero di BEM compare la dialog della BEM sulla quale è possibile
modificare i dati.
Mod: Funz-Test.odt    Rev: 01  del 06-03-2013Pag. 5 / 5
