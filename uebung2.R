# Herunterladen der Daten um sie lokal verfügbar zu machen
url <- "https://unilu-vpf-statistik.github.io/uebung_statistik1/semester_data.csv"
download.file(url, "semester_data.csv")

# Laden des Datensatzes
semester_data <- read.csv("semester_data.csv")

# Anzeigen der ersten Zeilen des Datensatzes
head(semester_data)

# Schreiben Sie hier ihren Code um die Aufgaben zu lösen

# Aufgabe 2.1
## Zwei Data Frames erzeugen
maenner <- semester_data[semester_data$geschlecht == "männlich", ] #Dei Eingabe in der [zeile, spalten] muss immer zwei dimension angebeben werden, [3,] bedeutet dritte zeile nach dem komma leer bedeutet alle Spalten
frauen  <- semester_data[semester_data$geschlecht == "weiblich", ]

mean(frauen$alter)
mean(maenner$alter)

# Aufgabe 2.2 ----
hist(semester_data$alter)

# Aufgabe 2.3 ----
## Gruppengrössen explizit
nrow(frauen)
nrow(maenner)
nrow(semester_data)

nrow(frauen)/nrow(semester_data)

nrow(maenner)/nrow(semester_data)

# Aufgabe 2.4
rating4andMore <- semester_data[semester_data$wissen_statistik >= 4, ]
round(nrow(rating4andMore)/nrow(semester_data)*100,1)

# Aufgabe 2.5

table(semester_data$wohnort)

