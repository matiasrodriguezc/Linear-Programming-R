library(lpSolve)
#Coeficientes de la funcion objetivo
f.obj <- c(2,1)

#Matriz con valores de los coeficientes de las restricciones
#tomados por fila, sin considerar restriccion de valores no negativos
f.con <- matrix(c(1,1,1,-1,1,0), ncol=2, byrow = TRUE)
#Desigualdades
f.dir <- c("<=","<=","<=")
#Coeficientes de las restricciones del lado derecho de la igualdad
f.rhs <- c(10,0,4)

lp.solution <- lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)

cat("La solucion optima es: ",lp.solution$solution,
    "\nY el valor maximo de la funcion objetivo es: ",lp.solution$objval)

#Rectas que forman la region factible
x_axis<-seq(f.rhs[2],f.rhs[1],by=1)
rest1<-seq(f.rhs[1],f.rhs[2],by=-1)
rest2<-seq(f.rhs[2],f.rhs[1],by=1)
rest3<-rep(c(f.rhs[3]),each=11)

plot(x_axis,rest1,type='l',col='blue',xlab = "X",ylab = "Y")
lines(x_axis,rest2,col='blue')
lines(rest3,x_axis,col='blue')
text(f.rhs[2]+1,f.rhs[1]/2,labels = "Region\nFactible",col='black')

arrows(0,0,f.obj[1],f.obj[2],col='black',length=0.15)
text(f.obj[1]+0.5,f.obj[2]+0.5,labels = "Gradiente",col='black')

fun_obj<-seq(from=14,by=-2,length.out=11)
lines(x_axis,fun_obj,col='red')
points(lp.solution$solution[1],lp.solution$solution[2],pch=19,col='red',bg='red')
text(lp.solution$solution[1]+1.5,lp.solution$solution[2]+0.5,
     labels = "Solucion optima",col='red')
