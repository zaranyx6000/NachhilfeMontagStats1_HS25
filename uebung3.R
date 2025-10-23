# Herunterladen der Daten um sie lokal verfügbar zu machen
url <- "https://unilu-vpf-statistik.github.io/uebung_statistik1/semester_data2.csv"
download.file(url, "semester_data2.csv")

# Laden des Datensatzes
semester_data2 <- read.csv("semester_data2.csv")

# Anzeigen der ersten Zeilen des Datensatzes
head(semester_data2)

# Schreiben Sie hier ihren Code um die Aufgaben zu lösen
# Aufgabe 3.1 ----
weiblich <- semester_data2$geschlecht == "weiblich"
IQR(semester_data2$grösse[weiblich])
maenlich <- semester_data2$geschlecht == "männlich"
IQR(semester_data2$grösse[maenlich])

# Aufgabe 3.2 ----
df_fr_it  <- semester_data2$nationalität == "Frankreich" | semester_data2$nationalität == "Italien"
sum(weiblich & df_fr_it)
