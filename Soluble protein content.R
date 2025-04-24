# 加载必要的库
library(ggplot2)

# 数据
data <- data.frame(
  Treatment1 = c("Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.00 mg/kg", 
                 "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", 
                 "Mo 0.30 mg/kg", "Mo 0.30 mg/kg", "Mo 0.30 mg/kg"),
  Treatment2 = c("N0.06", "N0.24", "N0.42", "N0.06", "N0.24", "N0.42", 
                 "N0.06", "N0.24", "N0.42"),
  Mean = c(2.23, 1.44, 1.66, 2.51, 1.55, 1.78, 2.07, 1.63, 1.4),
  SD = c(0.25, 0.03, 0.1, 0.16, 0.06, 0.04, 0.04, 0.14, 0.12),
  Variance = c("b", "d", "cd", "a", "cd", "c", "b", "d", "d")
)

# 绘制柱状图
ggplot(data, aes(x = Treatment1, y = Mean, fill = Treatment2)) +
  geom_bar(stat = "identity", position = "dodge") +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.2, position = position_dodge(width = 0.9)) +
  labs(title = "Soluble Protein Content (mg/g FW)",
       x = "Treatment 1",
       y = "Mean Soluble Protein Content (mg/g FW)",
       fill = "Treatment 2") +
  theme_minimal()
