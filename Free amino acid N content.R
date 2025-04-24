# 加载必要的库
library(ggplot2)

# 创建数据框
data <- data.frame(
  Indicator = c("Free amino acid N content (ug/g FW)", "Free amino acid N content (ug/g FW)", 
                "Free amino acid N content (ug/g FW)", "Free amino acid N content (ug/g FW)", 
                "Free amino acid N content (ug/g FW)", "Free amino acid N content (ug/g FW)", 
                "Free amino acid N content (ug/g FW)", "Free amino acid N content (ug/g FW)", 
                "Free amino acid N content (ug/g FW)"),
  Treatment1 = c("Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.15 mg/kg", 
                 "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", "Mo 0.30 mg/kg", "Mo 0.30 mg/kg", 
                 "Mo 0.30 mg/kg"),
  Treatment2 = c("N0.06", "N0.24", "N0.42", "N0.06", "N0.24", "N0.42", "N0.06", "N0.24", 
                 "N0.42"),
  Average = c(106.01, 189.6, 420.45, 82.03, 188.67, 429.42584, 105.65, 170.49, 674.61505),
  SD = c(2.62, 28.71, 16.41, 8.06, 34.1, 8.52, 11.79, 7.06, 27.34056),
  Variance = c(d, c, , b, d, c, b, d, c, a) 
)

# 绘制柱状图
ggplot(data, aes(x = Treatment2, y = Average, fill = Treatment1)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7)) +
  geom_errorbar(aes(ymin = Average - SD, ymax = Average + SD), width = 0.25, position = position_dodge(width = 0.7)) +
  labs(title = "Free amino acid N content (ug/g FW) by Treatment", 
       x = "Treatment2", 
       y = "Average Free amino acid N content (ug/g FW)", 
       fill = "Treatment1") +
  theme_minimal()
