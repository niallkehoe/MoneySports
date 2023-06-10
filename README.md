# Does Money Runs Sports?
## Effects of Payroll on Team Success

Niall Kehoe and Cass Kramer

**1\. Introduction**

Every sports franchise relies on competitive balance within the league to remain entertaining and relevant to fans.  During a sporting match or tournament, there must be at least some uncertainty regarding which team or player will win; otherwise, there would be no suspense or entertainment value in the competition.  This concept is critical in the design of sports league structures and has played a role in several antitrust lawsuits which allege that unequal distribution of resources among teams upsets competitive balance and thus harms all the teams in a league (Rascher 2019).  Szymanski (2003) summarizes the argument with three assumptions: (1) "Inequality of resources leads to unequal competition," (2) "fan interest declines when outcomes become less uncertain," and (3) "specific redistribution mechanisms produce more outcome uncertainty."  To address these concerns, leagues have instituted measures such as team salary caps or so-called "luxury taxes", which apply after a team exceeds a certain amount of salary spending.  The three foundational assumptions, however, are often taken for granted.  Our project focuses on understanding the first assumption---i.e., how does the distribution of resources within a league affect team performance?  Do teams that spend the most on players see the most success?  And to what degree does the money--success relationship vary across sports and leagues?

Specifically, we use linear regression to measure the effect of team spending, represented as the team's total payroll for that season, on team performance, measured as either the number of wins or the win percentages.  Such a linear model will enable us to determine, for a particular league, the degree to which spending impacts performance (higher coefficients would indicate that success can be "bought"), as well as the degree to which performance variation can be explained by a model that only considers spending.  The models can then be compared between leagues and sports, considering the context of the sport itself and the league's redistribution mechanisms.

**2\. Previous work**

Much previous quantitative work on salaries and sports performance has focused on the individual player, rather than the team.  This work addresses another bedrock assumption of professional sports (and labor economics more generally): players that perform better are paid better.

By and large, research on professional sports salaries supports this assumption.  In the realm of baseball, Schwering (2018) analyzes performance metrics of the 200 highest-paid players in the MLB and finds that better performance indeed correlates with higher pay, but pay is also influenced by factors such as the popularity of the player and the length of their experience.  More experienced players, who are eligible for free agency in the MLB, are paid in proportion with their skill, while younger players are more likely to be paid less (Hakes & Turner 2011).  Similarly, Sigler and Compton (2018) examined NBA player salaries and found that points, player experience, assists, rebounds, and fouls are all statistically significant factors in modeling salaries.

The evidence overall suggests that much of the variation in player salaries can be explained by individual performance metrics.  This makes intuitive sense, as team managers likely consider performance metrics to be extremely important when signing players and determining salaries.  However, professional athletes often sign multi-year contracts with a team, thus guaranteeing their salary for a period of time and opening the possibility of shirking, or failing to perform to the potential they demonstrated when they signed the contract.  However, Stankiewicz (2009) analyzes performance metrics of MLB players with four-year contracts and finds no evidence of declining performance that would indicate shirking.

Thus, prior work indicates that, in principle and in practice, sports teams can obtain more productive players by spending more money, and these players will continue to deliver their value through the duration of their contract.  However, this does not necessarily mean that a team can achieve more success simply by buying better players.  There are many other factors involved in the productivity of a whole team, in addition to the productivity of individual players.  Research on team salary spending and team success is scarcer and paints a more complicated picture than the salary-performance relationship for players.

One such analysis is performed by Szymanski (2003), who uses simple linear regression to model win percentage as a function of total team salary spending, expressed relative to the average salary spending for the league.  The analysis included data from the NFL, NBA, NHL, MLB National League, and MLB American League, and European soccer leagues Serie A, Bundesliga, Primera Liga, and Premier League.  The results suggest that there is a relationship between pay and success at the team level, which varies by league and by sport.  However, the model only explains 5%-26% of the variation for the American leagues and 28%-56% for the European leagues (the MLB American League shows a much higher correlation than the NL or other American sports---it is suggested that this is due to the New York Yankees, which are a significant outlier).  Berri et al. (2007) comment on these findings: "Unlike baseball, basketball, football, and hockey, soccer does not have an abundance of player statistics, yet pay is better connected to wins. Maybe player statistics just confuse decision makers in professional sports."  The findings highlight the fallacy in assuming that higher-performing, more expensive players will automatically translate to team success.  We undertake an analysis that is fundamentally similar to Szymanski (2003); we analyze many of the same leagues, and use the same independent variable: team payroll (standardized).  However, we explore models that predict different metrics, including wins, win percentage, goals for, and goals against, and we also extend this analysis over more seasons.  This gives a fuller picture of the relationship between spending and success in different sports leagues.

Berri and Jewell (2004) consider how some of these other, salary-related factors, may impact team performance.  Specifically, they are interested in how a team's unequal pay distribution may impact player performance.  With data from the NBA in the late 1990s, they use a multiple linear model to predict team wins with factors such as pay inequality, overall salary, and whether players got a pay raise.  However, they find that neither salary, pay inequality, nor pay changes are significant determiners of team success.  They conclude, in part, "the inability of payroll to explain much of team wins suggests that teams do not often get what they pay for".  We use similar methods to Berri and Jewell (2004)--i.e., a linear regression model.  However, our analysis will not incorporate factors such as pay inequality and pay changes over different seasons.

**3\. Data and methods**

Our data come from the regular seasons of the following sports leagues:

-   **Major League Baseball (MLB)** (2011-2022)

-   **Major League Soccer (MLS)** (2015-2022)

-   **National Basketball Association (NBA) **(2015-2022)

-   **Women's National Basketball Association (WNBA)** (2017-2022)

-   **National Hockey League** (2013-2022)

-   **English Premier League (EPL)** (2014-2022)

-   **Serie A** (2015-2022)

-   **Ligue 1 **(2014-2022)

These leagues were selected in order to examine a variety of sports, regions, and league structures.  Data were obtained from *sports-reference.com*, *sportrac.com*, and *capology.com*.  We use a team's total payroll spending, expressed relative to the average league spending for that year (z-score), as the independent variable.  Every team, for each season, is treated independently. 

 In designing this study, we explored the use of multivariate models, which incorporated other team finance metrics such as total revenue, coach salary, and player salary variance.  For the seasons and sports for which these data were obtained, we found that these factors were all correlated with total payroll spending; and because payroll spending is the most readily available of these financial metrics, we decided to use it as our only independent variable.

We also explored different ways to represent our dependent variable: team success.  Our initial plan involved ranking teams within a league using the Bradley-Terry model.  However, we found that the models generated using this method were very close to models generated using metrics such as total wins and win percentage, which are much easier to calculate.  Thus, we examine wins and win percentage as our main dependent variables. 

We generate a linear model for each league, which incorporates all the seasons of data listed above.  We validate these models by testing them on the latest season of data, predicting win percentage as a function of payroll spending.  We are then able to compare these models in the context of the sport and the league regulations, to see if there are any patterns in the different spending-success relationships.  We examine the distribution of payroll salaries within a league, to see how that may be related to the league's spending-success correlation.

**4\. Results**

**4.1. Linear models**

Below are listed the correlation coefficients for each of the models, predicting both wins and win percentage.  From the slope coefficient of the *salaries-wins* models, we also calculate the approximate amount of money (in USD) that a team would spend for each win.

**Table 1: Spending-success models for each league**

| **League** | **Z-Salaries vs Z-Wins R^2** | **Z-Salaries vs Z-Win% R^2** | **Dollars per win** |\
| MLS | -0.007779 | -0.007612 | - |\
| WNBA | 0.04287  | 0.04421 | - |\
| NHL | 0.1685 | 0.1352  | $289,250 |\
| NBA | 0.1704 | 0.1751 | $100,100 |\
| MLB | 0.2359 | 0.1971 | $90,000 |\
| Serie A | 0.3744 | 0.3518 | $93,021 |\
| Ligue 1 | 0.4273 | 0.4055  | $70,545 |\
| EPL | 0.4793 | 0.4785 | $114,773 |\

We also generated linear models with goals scored, and goals allowed as the dependent variable, and found the results to be generally consistent with those listed in Table 1.  Below we plot these models for the MLS, MLB, and EPL to give a sense of how the models capture the data for different leagues which are well correlated, weakly correlated, and not correlated at all.

**English Premier League (***strong correlation***) - Spending vs Goals For and Goals Against**

![](https://lh4.googleusercontent.com/GRw5OXr-uPUmOPgi-KpftUTDQJs0oZS4WH499s2OBmTL8p2ZddUtyuU8N6D9GrUjzvW30sflJ8DAAAjQCxTHv26-O2CIiHTdYq-aP-dhxBYxMPPf_v0qmLkbAWOr6_ZKPkoL08mtyr_U1DExKj-3y-g)

GF = 54.304 + 22.626(Z-Salary), R² =0.4517

![](https://lh6.googleusercontent.com/HW4Pb38aeAfL67mi5aTm3wt6CVsNOHtSc6vchyjCPLEgNezc6_J8TSKw5H6eRvCVra7-J_eIikiuQ-l1RfHPtie00hmVmK9WEiG-4L3IDvZ95AV_l0eln8ImHCXryaKANS3U4y7dv3ZuBokvIs35n7s)

GA = 50.784 - 13.947(Z-Salary), R² =0.3435 

**Major League Baseball** (*medium correlation*) **- Spending vs Runs Scored**

![](https://lh4.googleusercontent.com/hOQnQnCooMIHZbhrwrP6XE2HmTgQpnGlHPunuttPqYV8lM4Qi3FJvygAtmuvkx6ImdWM_RGFz244FgX63F9f_MZtJX4CGtxFiRxB6aAA4qa4jrglTKRUtvExb1wQiCgh2yY6N-WEG-8Ew816PuxxXn4)

RS = 734.72 + 93.56(Z-Salary), R² =0.1896

**Major League Soccer **(weak correlation) **- Spending vs Goals For and Goals Against**

![](https://lh6.googleusercontent.com/4S6WJ6F7uRlZTL-tUvhwiVUszqMIIk0bF4zOTC-CwC13gG28GKvR0uPARSZkadH-htB8eZK1yC_1QdkgTh3iMhU6bEPeFMVzOtBHAAhTDLTxq5xgP-7evXt-Q_hrdR6KkLzUMvjQ7rgdv7KifylFJlQ)

GF = 46.977 + 3.285(Z-Salary), R² =-0.0002478

![](https://lh6.googleusercontent.com/4v1WLRBo0K4x1UChEQxo9mWfASG7f_A779x1gjWYWjSaabwi_Bb8SQtjinsPZyhoRs77evGppncP5K8PQyg495ENFvTxlS9tUk848_y2o5nn8MwXFFd2H7gdumgatfYVXlCuH87VCW4MwMlfc6D9V9U)

GA = 46.977 + 3.404(Z-Salary), R² =-0.0007 

**4.2. Validating our models**

To confirm that our methods give reasonable results, we generated the same linear models from a training set of data for each league, which excluded the 2022 season.  We then used those models to predict the win percentage of each team in the 2022 season.  Below we report the mean squared error of these predictions for each league:

| **League** | **MSE** |\
| MLS | 0.009 |\
| WNBA | 0.039 |\
| NHL | 0.009 |\
| NBA | 0.010 |\
| MLB | 0.006 |\
| Serie A | 0.011 |\
| Ligue 1 | 0.018 |\
| EPL | 0.011 |\

**4.3. League salary distributions**

To better understand our predictor variables, we also examine the current or latest season (2022-2023) of team payrolls, and calculate the relative standard deviation (RSD) for each:

| **League** | **RSD** |\
| MLS | 0.23 |\
| WNBA | 0.04 |\
| NHL | 0.16 |\
| NBA | 0.14 |\
| MLB | 0.43 |\
| Serie A | 0.61 |\
| Ligue 1 | 1.96 |\
| EPL | 0.77 |\

The differences in league salary distribution are also represented graphically in the histograms below.  Note that the Paris Saint-Germain Football Club, the most successful club in Ligue 1, also presents a large payroll outlier, spending over 9 times the league average on player salaries.

![](https://lh3.googleusercontent.com/jPnPTzXOe489S6MyMpKi3kWepREO0h6Doe_umboA0FqSn6tgBX_Zi4NaQrVHkTCFeUzwB8VeotDx8R9luP5E-oTnbnRsXeN_1bIBgW5Ny8HyKUAnClU4g-fI_C1K-vOsmK9HQgFNc601eXs023jloT8)

![](https://lh4.googleusercontent.com/eHWiFSkjZ0pvcsvzgb3wQSD7FURchSQSC_jc0QjwsLIWiz3vD_X4ruq5tlY8WP23VaioRb51eOqIVf5CLlIdIT5Loh2BQJVXg-QKR-LjtJZSvsQ-fVO8OYVRXSfN-SZ3W0MQWdYFVjoUPuvG20gD1ik)

![](https://lh4.googleusercontent.com/LMQ9L7vt1a7uBqT91uOEzPMGJ_A46IJ8mYyvAQfnlTYUFzg2bBrom5G5gQ2qbit3BOGmtP823fd053urIyJbw7CKSXYBNT6mfz2O-zJ8IrinsOqPNDFh8xx9UFOPndWC7hDBRxmhuA-xy4xZ-rEGsqs)

![](https://lh6.googleusercontent.com/lZXan7tHYoTJ9suaLHWlI4y-2cEbKeRmdYRwPZF_E668-9CuJuUSRhorHiMdOuh38nqESYnxnp5sRjOgvQmMYlH9izfsp2Q2nEmXOdbN0zYqK7HeHtjzzO1QtWB4qZOelA1pFwKOnvvd-1ZyToEDZdg)

**5\. Discussion**

Clearly, the leagues we chose to examine vary widely in their spending-success relationships.  For European football leagues, it is possible to explain between 37 and 47 percent of a team's wins only by knowing how much that team spends on its players.  However, most American leagues show less correlation; spending and success in the MLS and WNBA are almost completely unrelated.  

One explanation for the variation in payroll-success correlations could involve the structure of the sport itself---perhaps baseball, for example, depends more on individual player performance than hockey, and thus salary spending will matter more.

However, we find that soccer leagues display both the highest (EPL) and lowest (MLS) correlations, indicating that there is some factor independent of the sport itself that drives this difference.  Payroll caps seem to be the most likely explanation---the American leagues MLS, WNBA, NBA, and the NHL have hard salary caps, meaning that all teams in the league must keep to a common budget, with few exceptions.  Uniquely, the MLB has a Competitive Balance Tax, otherwise known as a "luxury tax", in which teams can exceed the set amount, but in doing so they incur fines according to a tiered schedule based on how much they exceed the budget, and for how many seasons they have exceeded it.  Unlike the American leagues, the European football leagues we examined have no salary caps.  

These regulatory differences are reflected in the variance of the team payrolls themselves; all the European leagues show much more variation in their payrolls, and the MLB has by far the most variation of any American league.  Note that this ordering largely mirrors the order of linear model correlations from section 4.1.  Intuitively, salary caps greatly reduce the variance of team payrolls---our independent variable---but they do not affect the variance of team success---our dependent variable; thus in leagues with salary caps, the power of spending to explain success will be greatly reduced.  Money may still buy performance in these sports, but its influence has been limited by league regulations.  

It is also important to note that, while generally similar, there are differences in the team payroll variance ordering and the spending-success correlation ordering.  MLS stands out in particular, having the second highest payroll variance among American leagues, though completely lacking a spending-success relationship.  This indicates that in the MLS, money truly does not buy performance like it might in a league like the NBA, which has less variance among payrolls, but a higher correlation; we can infer that the lack of effect in the MLS is not due to a lack of payroll variance.

Thus we see that, in our data, the answers to the separate questions "can money buy performance?" and "does money determine success?" are difficult to disentangle, and depend greatly on the league structure.  It is also important to consider what type of performance money can buy.  We find that in the English Premier League, where money matters the most in determining success, spending is more closely related to goals for than goals against.  This could indicate that, when determining player salaries, teams put more emphasis on offensive performance metrics than defensive performance metrics. 

Aside from league regulations, we also note that the spending-success relationships generally reflect league profitability in their respective regions.  Among the American leagues, the NBA and MLB are larger franchises and earn more revenue than the NHL, which earns more than the smaller leagues MLS and WNBA.  Likewise, the EPL is by far the most profitable football league in Europe.

In section 4.2, we include the mean squared error of our training model predictions for 2022 season win percentages.  These figures do not seem to align with the league's spending-success correlations---that is, leagues with higher correlations do not have lower error in their predictions, and vice versa.  This result may call into question the validity of our methods; however, it must be noted that the overall errors in the predictions are low, and moreover, win percentage tends to be close to 0.5, so even for a league where spending and success does not correlate, such as the MLS, the model can achieve a fair accuracy by predicting values around 0.5, but for leagues with more variance in win percentage, the model may not predict as accurately, despite a higher correlation between spending and success.  We thus maintain that the differences in spending-success correlation that we observed do reflect reality, even though they did not appear to make a difference in predicting.

**6\. Conclusion**

Does money run sports?  Sometimes.  Previous research has shown that money does buy performance at the individual level.  In our research, however, we find that the spending-success relationship at the team level is more complicated.  Depending on the sport and the league, money can have anywhere from negligible to significant impact.  Factors we have identified which may cause the difference in the correlation between salaries and performance are salary cap systems, league size, and profitability.  Our results also reflect cultural differences in the structure of sports leagues, with fairness and competition being prioritized in the U.S. and legacy teams playing a larger role in Europe.

**7\. References**

Berri, D.J., Jewell, R.T. (2004) "Wage inequality and firm performance: Professional basketball's 

natural experiment." *Atlantic Economic Journal,* 32, 130--139.

Berri, D.J., Schmidt, M.B., & Brook, S.L. (2006) *The Wages of Wins*.  Stanford University Press.

Hakes, J. and Turner, C. (2009). "Pay, Productivity, and Aging in Major League Baseball". 

*Journal of Productivity Analysis*, 35, 61--74

Rascher, D. (2019). "Competitive Balance: On the Field and In the Courts".  *The Sports *

*Advisory Group*.  

https://www.thesportsadvisorygroup.com/resource-library/business-of-sports/competitive-balance-on-the-field-and-in-the-courts/

Schwering, D. (2018) "MLB Player Salaries and Performance" *Ball State University Honors *

*Thesis.*

Sigler, K. and Compton, W. (2018)  "NBA Players' Pay and Performance: What Counts?"  *The *

*Sport Journal*, Vol. 24

Stankiewicz, K. (2009). "Length of Contracts and the Effect on the Performance of MLB 

Players".  *Illinois Wesleyan University Honors Thesis*

Szymanski, Stefan (2003) "The Economic Design of Sporting Contests". *Journal of Economic *

*Literature*, Vol. 41, No. 4, pp. 1137-1187.

**8\. Appendix**

Github:

https://github.com/niallkehoe/MoneySports

Data sources:

[sports-reference.com](https://www.sports-reference.com/)

[sportrac.com](https://www.spotrac.com/)

[capology.com](https://www.capology.com/)
