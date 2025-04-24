# 加载必要的库
library(ggplot2)

# 创建数据框
data <- data.frame(
  Treatment1 = c("Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.00 mg/kg",
                 "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", "Mo 0.15 mg/kg",
                 "Mo 0.30 mg/kg", "Mo 0.30 mg/kg", "Mo 0.30 mg/kg"),
  Treatment2 = c("N0.06", "N0.24", "N0.42", "N0.06", "N0.24", "N0.42",
                 "N0.06", "N0.24", "N0.42"),
  Mean = c(284.14537, 656.01092, 1809.16597, 344.4517, 513.54516,
           1685.91484, 267.62793, 286.52413, 1266.24878),
  SD = c(24.20888, 30.66481, 99.20343, 14.55664, 34.33297, 226.79908,
         43.53029, 26.76564, 170.90268),
  stringsAsFactors = FALSE
)

# 绘制柱状图
ggplot(data, aes(x = Treatment1, y = Mean, fill = Treatment2)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7)) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.25,
                position = position_dodge(width = 0.7)) +
  labs(title = "NO3--N Content (mg/kg FW)",
       x = "Mo Treatment",
       y = "Mean NO3--N Content (mg/kg FW)",
       fill = "N Treatment") +
  theme_minimal()
