library(dplyr)
library(readr)
library(ggplot2)


epl_data <- read_csv("2023 Spring/Stats 100/project/premier_league_2013-2022.csv")

epl_data$relative_payroll = epl_data$payroll_GBP/epl_data$season_avg

epl_data$win_percent = (epl_data$W+(0.5 * epl_data$D))/(epl_data$L+epl_data$W+epl_data$D)

lm_goals <- lm(F ~ relative_payroll, data = epl_data)
summary(lm_goals)

ggplot(data = epl_data, aes(x= relative_payroll, y= F)) + geom_point() + geom_abline(slope = lm_goals$coef[2], intercept = lm_goals$coef[1], color = 'blue')


lm_rank <- lm(rank ~ relative_payroll, data = epl_data)
summary(lm_rank)

ggplot(data = epl_data, aes(x= relative_payroll, y= rank)) + geom_point() + geom_abline(slope = lm_rank$coef[2], intercept = lm_rank$coef[1], color = 'blue')


lm_win_percent <- lm(win_percent ~ relative_payroll, data = epl_data)
summary(lm_rank)

ggplot(data = epl_data, aes(x= relative_payroll, y= win_percent)) + geom_point() + geom_abline(slope = lm_win_percent$coef[2], intercept = lm_win_percent$coef[1], color = 'blue')
