
setwd("D:/1.SHTU/1.大三上/数学建模/project/第2组 航空公司客户价值分析/01-任务程序")
bc <- read.csv('./tmp/bc.csv', header = TRUE)  # 数据读取# 画出客户群特征分析雷达图

library(fmsb)

max <- apply(bc, 2, max)
min <- apply(bc, 2, min)
df <- data.frame(rbind(max, min, bc))
radarchart(df = df, seg = 5, plty = c(1:5), vlcex = 1, plwd = 2)   

# 给雷达图加图例
L <- 1
for(i in 1:5){
  legend(1.3, L, legend = paste("客户群", i), lty = i, lwd = 3, col = i, bty = "n")
  L <- L - 0.2
}