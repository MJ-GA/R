vec1 = seq(0.1,1,by=0.1)
vec1
length_1=length(vec1)
length_1

vec.rowname = c("row1","row2","row3","row4","row5")
vec.colname = c("col1","col2")

mat <- matrix(vec1, ncol = 2)

rownames(mat)<-c(vec.rowname)
colnames(mat)<-c(vec.colname)
mat

mat[3,2]=10
mat[3,]
mat[3,2]