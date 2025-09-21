colppks <- function(x, y, R = 999) {
  n <- dim(x)[1]
  xy <- Rfast::colSort( rbind(x, y) )
  
  d <- dim(x)[2]
  pvalue <- numeric(d)
  pstat <- numeric(R)

  for ( j  in 1:d ) { 
 
    xsort <- Rfast::Sort(x[, j])  ;   ysort <- Rfast::Sort(y[, j])
    Fx <- findInterval(xy[, j], xsort) 
    Fy <- findInterval(xy[, j], ysort)  
    obs <- max( abs(Fx - Fy) ) 
   
    for ( i in 1:R ) {
      x_perm <- x[, j]  ;  y_perm <- y[, j]
      swap <- rbinom(n, 1, 0.5)
      temp <- x_perm[swap == 1]
      x_perm[swap == 1] <- y_perm[swap == 1]
      y_perm[swap == 1] <- temp

      x_perm <- Rfast::Sort(x_perm)  ;   y_perm <- Rfast::Sort(y_perm)
      Fx <- findInterval(xy[, j], x_perm) 
      Fy <- findInterval(xy[, j], y_perm) 
      pstat[i] <- max( abs(Fx - Fy) ) 
    }

    pvalue[j] <- ( sum(pstat >= obs) + 1 ) / (R + 1)
  }

  pvalue
}

 
