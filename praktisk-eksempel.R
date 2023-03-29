# For å laste inn SPSS-filer trenger vi en pakke som gjør det. Haven er bra.
# Dersom du ikke har haven fra før må den installeres. En pakke trenger bare 
# installeres  én gang. Siden jeg har pakka fra før har
# jeg kommentert vekk neste kode for. Skal du installere koden, fjern 
# emneknaggen.

# install.packages("haven")

# Så må vi laste inn pakka for å kunne ta dens funksjoner i bruk. Dette må vi
# gjøre hver gang vi starter en ny sesjon.

library(haven)

# Vi laster inn den første SPSS-fila. Vi gir den navnet atferd. Siden den 
# ligger på mappa data må vi spesifisere dette når vi oppgir hvor den ligger og
# hva den heter. Husk også filendelsen. Noen operativsystem er glad i skjule 
# fil-endelsen, men den er en viktig del av alle filers navn.
atferd <- read_sav(file = "data/behavior.sav")

# Den andre fila ligger langt vekk på C. For å gjøre det litt enklere for meg
# sjøl vil jeg lagre filstien (og navnet) i en vektor. Jeg gjør ofte dette om 
# filstien er lang, for å ikke gjøre import-funksjonen så lang.
# Husk dette med skråstreker: Vi må enten bruke \\ eller /, ikke en enkelt \
filsti <- "C:\\Program Files\\IBM\\SPSS\\Statistics\\26\\Samples\\English\\accidents.sav"

# Så laster vi inn den andre fila. 
ulykker <- read_sav(file = filsti)

# Dette er altså det samme som å skrive 
# ulykker <- read_sav(file = "C:\\Program Files\\IBM\\SPSS\\Statistics\\26\\Samples\\English\\accidents.sav")
# Siden vi definerte filsti tidligere. 

# Nå har vi fått de to datasetta våre. Hvordan ser de ut?

summary(atferd)

summary(ulykker)

# Datasetta er forøvrig lånt fra SPSS
# (https://www.ibm.com/docs/en/spss-statistics/saas?topic=tutorial-sample-files). 
# Du trenger ikke bruke disse datasetta i din egen gjennomgang, bare finn to 
# andre. Putt dem gjerne på forskjellige plasser for å øve på å laste dem inn 
# fra ulik lokasjon. Hvis du putter filstien i en vektor slik jeg gjorde i det 
# ene eksemplet, husk at du enten må putte begge filstiene i ulike objekter, 
# eller at du må laste inn den *første* fila før du overskriver filstia med 
# den *andre* filas filsti.


# Dette funker
filsti_atferd <- "data/behavior.sav"
filsti_ulykker <- "C:\\Program Files\\IBM\\SPSS\\Statistics\\26\\Samples\\English\\accidents.sav"

atferd <- read_sav(file = filsti_atferd)
atferd <- read_sav(file = filsti_ulykker)

# Dette funker også, men du må huske på å aldri endre rekkefølgen.
filsti <- "data/behavior.sav"
atferd <- read_sav(file = filsti)

filsti <- "C:\\Program Files\\IBM\\SPSS\\Statistics\\26\\Samples\\English\\accidents.sav"
ulykker <- read_sav(file = filsti)

# Dette vil laste inn det samme datasettet to ganger, og dem ulike navn.
# Begge vil være ulykker, hvis filsti blei definert sist.
filsti <- "data/behavior.sav"
filsti <- "C:\\Program Files\\IBM\\SPSS\\Statistics\\26\\Samples\\English\\accidents.sav"

atferd <- read_sav(file = filsti)
ulykker <- read_sav(file = filsti)
