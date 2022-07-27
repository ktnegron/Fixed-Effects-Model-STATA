# Fixed-Effects-Model 

To estimate the impact of the migrant inflow from Venezuela into Colombian border provinces on crime outcomes,
we first use a fixed effects model and identify the municipality-level response from variations along the treatment
between the pre-treatment period (2014) and the post-treatment one (2018).

Despite we show that migration settlement patterns were only explained by time invariant
characteristics, we allow for the fact that migration may still be correlated with some omitted variables, e.g.
socioeconomic and geographic characteristics, and that municipalities that differ on those dimensions may follow
different trends. We control for several socioeconomic time-variant effects (income, education, total
population, urban population, total / migrant population density and political ideology of the party in power),
and use a fixed effects model to address the issue of time-invariant effects. The following panel regression on all municipalities is estimated:
### ln(Ymt) = β0 + β1ln(Tmt) + γln(Xmt) + δm + φt + mt

## Instrumental variable approach
In order to provide further empirical evidence on this effect, and taking into consideration the potential omitted
variable bias and endogeneity concerns with the previous approach, we will also use IV estimation. We will now
instrument the change (∆) in migrant population per municipality with the exogenous variable distance to border.
As we argued earlier in this paper, most of the forced migration in this period was driven by non-economic
reasons, and therefore closeness to border was one of the key factors for migrant settlement. Taking advantage of
this, we will use 2SLS to estimate the following base model:

## 1ststage : ∆ln(Tm) = π0 + π1ln(DistanceBorderm) + π2∆ln(Wm) + ∆um
## 2ndstage : ∆ln(Ym) = α0 + α1∆\ln(Tm) + α2∆ln(Wm) + ∆m

Once again m indexes the municipality and t indexes time (t = 2014 or 2018). ∆Tm stands for the change in
proportion of Venezuelan migrants in the total municipality population between 2014 and 2018. DistanceBorderm
represents our instrument, which is the average distance to the nearest border crossing by road in kilometers.
∆Ym will represent the changes between 2014 and 2018 in our different variables of interest. Finally, the vector
∆Wm now includes the changes in our time-varying socioeconomic characteristics of each municipality (income,
education, total population, urban population, total / migrant population density and political ideology of the
party in power), and for our preferred specification, indicators measuring the change in our three main mechanisms
of interest: the percentage of male population with ages between 15 and 29 (composition effects), average monthly
wages in 2014 real Colombian pesos (labor market effects) and clear rates, defined as number of convictions divided
by the number of crimes committed per type of crime (economic incentives).
