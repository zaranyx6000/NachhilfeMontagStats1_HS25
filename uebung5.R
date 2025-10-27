prob_wuerfel <- c(0.1,0.1,0.1,0.1,0.1,0.5)
names(prob_wuerfel) <- as.character(1:6)
erwartungswert <- sum(prob_wuerfel * 1:6)
erwartungswert
varianz <- sum( prob_wuerfel *(1:6 - erwartungswert)^2)
varianz
sqrt(varianz)
