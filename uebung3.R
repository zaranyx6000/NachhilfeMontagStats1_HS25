url <- "https://unilu-vpf-statistik.github.io/uebung_statistik1/semester_data2.csv"
download.file(url, "semester_data2.csv")

# Laden des Datensatzes
semester_data2 <- read.csv("semester_data2.csv")

# Anzeigen der ersten Zeilen des Datensatzes
head(semester_data2)

# Schreiben Sie hier ihren Code um die Aufgaben zu lösen

Aufgabe 3.3
index_deutsch <- semester_data2$nationalität == "Deutsch"
range(semester_data2$alter[index_deutsch])
