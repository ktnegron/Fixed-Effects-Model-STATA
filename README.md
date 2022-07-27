# Criminals or Victims? Evidence on Forced Migration and Crime from the Colombia–Venezuela Border

## Fixed-Effects-Model 

To estimate the impact of the migrant inflow from Venezuela into Colombian border provinces on crime outcomes,
we first use a fixed effects model and identify the municipality-level response from variations along the treatment
between the pre-treatment period (2014) and the post-treatment one (2018).

Specifically, we study Colombia’s 7 border provinces (departamentos) with Venezuela: Arauca, Boyaca,
Cesar, Guainia, La Guajira, Norte de Santander and Vichada. We find no significant effect of baseline values of our time-variant socioeconomic variables (including
socioeconomic and mechanism indicators) on this settlement decision. These results strongly support our claim
that migrants did not target areas with specific characteristics but just settled in the closest center to get food,
medicine and essential services, and provides evidence in favor of interpreting this variable as exogenous. This
settlement decision strictly based on closeness to border is also illustrated by the Figure below: not only is the
highest share of foreign-born population in the Colombian regions concentrated in our area of study (the 7 border
provinces), but within these border provinces there is also a clear concentration in municipalities on the physical

<img src = "https://github.com/ktnegron/Fixed-Effects-Model-STATA/blob/main/Variation_border.PNG?raw=true" style="width:200px, height: 100px"/>

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

# Robustness checks
## Placebo Tests
First placebo test: In our first placebo test, we replicate the baseline IV specification in the same municipalities
in border provinces but studying the period between 2005 and 2014. Migrant inflows from Venezuela were almost
non-existent in this time period, and therefore we would expect migration not to have a significant effect on crime
rates - if it does, there may be some confounding factors in our instrument or in our setting.

Second placebo test: In order to provide further evidence in favor of our empirical strategy and results, we
run a second placebo test, this time replicating the baseline IV specification in our same time period (2014-18)
but in other Colombian municipalities not on the Colombia-Venezuela border.
First, we need to find comparable municipalities for our placebo test - in order to do this, we use propensity score
matching with our base socioeconomic control variables (total population, urban population, population density,
GDP per capita and educational level) to find comparable municipalities across Colombia. This resulted in a list
of 179 municipalities, scattered all across the country and located in 24 of the 25 Colombian "departamentos" not
on the border with Venezuela. Table A3 in the Appendix presents the balance check between our border province
municipalities and comparable municipalities selected through propensity score matching, and illustrates that
there were no significant differences between both groups of municipalities in terms of socioeconomic indicators.
Having found comparable municipalities, we compile the same data points for all new municipalities and run our
baseline IV specification on them.

# Logit Model
Can we rule out any type of discrimination? We ran a Logit model on the probability of being a personal theft
victim taking into account the nationality and socioeconomic characteristics (gender, age, civil status, educational
attainment and employment status) on the full dataset of 4.3 million people in our border regions - the specification
can be found below:
### P r(V ictimim = 1) = Φ[β0 + β1V enezuelanim + β2Xim + eim]
