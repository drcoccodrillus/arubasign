ArubaPEC S.p.A. 2016

Instruzioni installazione ArubaSign
-----------------------------------

Installazione lettore e smartcard
---------------------------------
Installazione prerequisiti da linea di comando:
	sudo apt-get install pcscd libpcsclite1 pcsc-tools libccid

Scaricare l'ultimo pacchetto disponibile su https://www.pec.it/Download.aspx per 
	- lettore smartcard (es. MINILECTOR30_LINUX.zip)
	- smartcard (es. MU_INCARD_LINUX.zip)

Applicare le istruzioni del fornitore, contenute nei pacchetti scaricati.

Installazione Python3
---------------------
Nel caso non sia già presente sul sistema è necessario installare Python3:
	sudo apt-get install python3

Installazione applicativo
-------------------------
- scompattare il pacchetto .tar.bz2 scaricato
- copiare il contenuto del pacchetto in una cartella locale con privilegi di scrittura (es. /home/<nome utente> = <path installazione>)
- dentro la cartella <path installazione>/users/ è presente il file install.sh. Se install.sh non fosse eseguibile eseguire "chmod +x install.sh" all'interno di una console terminale
- eseguire lo script install.sh (apertura da gestore dei file oppure avvio da terminale con "sh install.sh")
- alla fine della procedura sul desktop si dispone dell'icona ArubaSign per l'avvio del software
- il software può essere avviato anche da terminale tramite lo script <path installazione>/users/arubasign.bat

Note:
* ArubaSign utilizza la JRE inclusa nel pacchetto .tar.gz, a prescindere da quella eventualmente già installata nel sistema.
* il software esegue all'avvio una verifica online degli aggiornamenti software eventualmente presenti. Configurare correttamente le impostazioni del proxy, se in uso.

Qualora dopo un aggiornamento fallito il software non si avviasse o continuasse a chiedere nuovi aggiornamenti, si consiglia di scaricare ed installare dal sito pec.it l'ultimo pacchetto completo disponibile

Versioni OS supportate 
----------------------
- Ubuntu: 16.04
