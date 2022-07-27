# Fixed-Effects-Model-STATA
Fixed effects model to identify the municipality-level response from variations along the treatment between the pre-treatment period (2014) and the post-treatment one (2018) --> To estimate the impact of the migrant inflow from Venezuela into Colombian border provinces on crime outcomes.


We control for several socioeconomic time-variant effects (income, education, total
population, urban population, total / migrant population density and political ideology of the party in power),
and use a fixed effects model to address the issue of time-invariant effects. The following panel regression on all municipalities is estimated:
# ln(Ymt) = β0 + β1ln(Tmt) + γln(Xmt) + δm + φt + mt
