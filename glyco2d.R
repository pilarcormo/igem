
library(ggplot2)
library(RColorBrewer)
glyco2d <- read.table("~/Downloads/1-5.txt", header=TRUE, quote="\"")
glyco2d_2 <- read.table("~/Downloads/myfile-2.txt", header=TRUE, quote="\"")

lm_eqn <- function(df){
  m <- lm(y ~ x, df);
  eq <- substitute(y == a + b %.% x*","~~italic(r)^2~"="~r2, 
                   list(a = format(coef(m)[1], digits = 2), 
                        b = format(coef(m)[2], digits = 2), 
                        r2 = format(summary(m)$r.squared, digits = 3)))
  as.character(as.expression(eq));                 
}

dat<-data.frame(x=glyco2d$X.lost,y=glyco2d$X.Acyl)
plot <- ggplot(glyco2d, aes(X.lost, X.Acyl)) + geom_jitter() + xlab("% of glucose units lost") + ylab("% of glucose acylated")  + theme_bw() + theme(text = element_text(size=20))
plot <- plot + geom_smooth(method="lm", se=FALSE, size = 2)
plot + annotate("text", x = 21, y = 13, label = lm_eqn(dat), colour = "blue",parse = TRUE, size = 7)


dat<-data.frame(x=glyco2d_2$X.lost,y=glyco2d_2$X.Acyl)
plot <- ggplot(glyco2d_2, aes(X.lost, X.Acyl)) + geom_jitter(size = 3) + xlab("% of glucose units lost") + ylab("% of glucose acylated")  + theme_bw() + theme(text = element_text(size=20))
plot <- plot + geom_smooth(colour = "red", size = 1)
plot
plot + annotate("text", x=1200, y=18, label = lm_eqn(dat), parse = TRUE, colour = "red")


dat2<-data.frame(x=glyco2d$TotalAcyl.mod.,y=glyco2d$Chance.)
plot2 <- ggplot(glyco2d, aes(TotalAcyl.mod., glyco2d$Chance.)) + geom_jitter() + xlab("Absolute number of acylated glucoses") + ylab("Initial chance of a glucose getting acylated") + theme_bw() +theme(text = element_text(size=20))
plot2 <- plot2 + geom_smooth(method="lm", se=FALSE, colour = "darkgreen", size = 2) 
plot2 + annotate("text", x=1500, y=18, label = lm_eqn(dat2), parse = TRUE, colour = "darkgreen", size = 7)




