# Herunterladen der Daten um sie lokal verfügbar zu machen
url <- "https://unilu-vpf-statistik.github.io/uebung_statistik1/semester_data2.csv"
download.file(url, "semester_data2.csv")

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
