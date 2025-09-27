ppks <- function(x, y, R = 999) {
  n <- length(x)
  xy <- Rfast::Sort( c(x, y) )

  xsort <- Rfast::Sort(x)  ;   ysort <- Rfast::Sort(y)
  Fx <- findInterval(xy, xsort) 
  Fy <- findInterval(xy, ysort)  
  obs <- max( abs(Fx - Fy) ) 
   
  pstat <- numeric(R)
  for ( i in 1:R ) {
    x_perm <- x  ;  y_perm <- y
    swap <- rbinom(n, 1, 0.5)
    temp <- x_perm[swap == 1]
    x_perm[swap == 1] <- y_perm[swap == 1]
    y_perm[swap == 1] <- temp

    x_perm <- Rfast::Sort(x_perm)  ;   y_perm <- Rfast::Sort(y_perm)
    Fx <- findInterval(xy, x_perm) 
    Fy <- findInterval(xy, y_perm) 
    pstat[i] <- max( abs(Fx - Fy) ) 
  }
  ( sum(pstat >= obs) + 1 ) / (R + 1)
}