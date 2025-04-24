# 加载必要的库
library(ggplot2)

# 创建数据框
data <- data.frame(
  Indicator = rep("Nitrate reductase activity (μg/(g‧h))", 9),
  Treatment1 = c("Mo 0.00 mg/kg", "Mo 0.00 mg/kg", "Mo 0.00 mg/kg",
                 "Mo 0.15 mg/kg", "Mo 0.15 mg/kg", "Mo 0.15 mg/kg",
                 "Mo 0.30 mg/kg", "Mo 0.30 mg/kg", "Mo 0.30 mg/kg"),
  Treatment2 = c("N0.06", "N0.24", "N0.42",
                 "N0.06", "N0.24", "N0.42",
                 "N0.06", "N0.24", "N0.42"),
  Mean = c(0.44, 9.96, 9.15, 0.76, 24.16, 33.9, 1.83, 47.24, 49.27),
  SD = c(0.01, 1.19, 0.77, 0.09, 0.6, 4.32, 0.12, 0.61, 2.04),
  Variance = c(NA, NA, NA, NA, NA, NA, NA, NA, NA)  # 方差列暂不使用
)

# 绘制柱状图
ggplot(data, aes(x = Treatment1, y = Mean, fill = Treatment2)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7), width = 0.7) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), position = position_dodge(width = 0.7), width = 0.2) +
  labs(title = "Nitrate Reductase Activity by Treatment",
       x = "Molybdenum Concentration (mg/kg)",
       y = "Nitrate Reductase Activity (μg/(g‧h))",
       fill = "Nitrogen Concentration (mg/kg)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# 保存图形
ggsave("nitrate_reductase_activity_plot.png", width = 10, height = 6)
