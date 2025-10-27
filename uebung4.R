# Herunterladen der Daten um sie lokal verfügbar zu machen
# url <- "https://unilu-vpf-statistik.github.io/uebung_statistik1/semester_data2.csv"
# download.file(url, "semester_data2.csv")

# Laden des Datensatzes
semester_data2 <- read.csv("semester_data2.csv")

# Anzeigen der ersten Zeilen des Datensatzes
head(semester_data2)

# Aufgabe 4.1 ----
N <- nrow(semester_data2)
gross <- semester_data2$grösse > 170
h_g <- sum(gross)
wahrscheinlichkeit_mensch <- h_g / N

gross_w <- semester_data2$grösse > 170 & semester_data2$geschlecht == "weiblich"
h_g_w <- sum(gross_w)
gross_m <- semester_data2$grösse > 170 & semester_data2$geschlecht == "männlich"
h_g_m <- sum(gross_m)

wahr_g_w <- h_g_w / sum(semester_data2$geschlecht == "weiblich")

wahr_g_m <- h_g_m / sum(semester_data2$geschlecht == "männlich")

wahr_g_m
wahr_g_w
wahrscheinlichkeit_mensch

# Aufgabe 4.2

ja <- c(26700,14900,9700,8900)
nein <- c(9900,6400,9100,14400)
sum(ja)+sum(nein)

# Aufgabe 4.3 
p_schweizer <- sum(semester_data2$nationalität == "Schweiz")/nrow(semester_data2) #Anzahl Personen im Datenset
p_schweizer

# Bedignung aus en Frauen-menge die nationalität schweiz
p_CH_W <- sum(semester_data2$nationalität == "Schweiz" & semester_data2$geschlecht == "weiblich")/sum(semester_data2$geschlecht == "weiblich")

p_CH_m <- sum(semester_data2$nationalität == "Schweiz" & semester_data2$geschlecht == "männlich")/sum(semester_data2$geschlecht == "männlich")
