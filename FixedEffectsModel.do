*** SET UP PANEL: 

global id ID
 
global t Year

sort $id $t

xtset $id $t

xtdescribe

xtsum $id $t


*** First - baseline specification (only non-mechanism controls)

* Income
* Education
* Total Population
* Urban Population
* Population Density
* Migrant Population Density
* Political Ideology

* Municipality fixed effects
* Province fixed effects
* Year fixed effects

* NOT province-year fixed effects because it's never used in the relevant 
* literature

reghdfe Log_TotalCrimeRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PersonalTheftRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PersonalInjuryRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_HomicideRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_SexCrimeRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_HouseBurglaryRate Log_MigrantPct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)


  
*** FULL SPECIFICATION - add mechanisms: 

* Wages (DONE)
* Formal employment (DONE)
* Male1529 (DONE)
* Police (MISSING)

* Deterrence variables capture instead the expected costs of crime, as 
* determined for example by the probability of apprehension. As a proxy for 
* such probability, we use the clear-up rate (CLEAR), defined as the ratio of 
* the number of crimes cleared up by police over the total number of reported 
* crimes (Ehrlich 1996) (DONE)

reghdfe Log_TotalCrimeRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PersonalTheftRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PersonalInjuryRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_HomicideRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_SexCrimeRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_HouseBurglaryRate Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)



* Venezuelan victims vs Colombian victims (significant for both, diff mechanisms)

reghdfe Log_PTVV_p100mil Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PTCV_p100mil Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)



* Venezuelan criminals vs Colombian criminals (only significant for Venezuelan criminals)

reghdfe Log_PTVP_p100mil Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)

reghdfe Log_PTCP_p100mil Log_MigrantPct Log_Wages Log_FormalWorkersPctPop Log_Clear Log_Male1529Pct Log_GDP Log_Education Log_PopTot Log_PopUrban Log_PopDensity Log_MigPopDensity PoliticalIdeology, absorb(ID Departamento Year)




*** IV/2SLS estimation

import excel "C:\Users\Andre de Oliveira Va\Desktop\Masters\Courses\Q3\Master Project\FORSTATA_IV_vNew.xlsx", sheet("FORSTATA_IV_vNew") firstrow clear
 
 
*** BASIC SPECIFICATION

 ivreg2 Change_TotalCrimeRate Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 
 ivreg2 Change_PT Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 
 ivreg2 Change_PI Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_Homi Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_SC Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_HB Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 

 
 *** FULL SPECIFICATION - add mechanisms: 
 
 ivreg2 Change_TotalCrimeRate Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 
 ivreg2 Change_PT Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 
 ivreg2 Change_PI Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_Homi Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_SC Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

 ivreg2 Change_HB Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)
 
 
 
* Comparison w/ OLS

 reg Change_TotalCrimeRate Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
 
 reg Change_PT Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
 
 reg Change_PI Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
 
 reg Change_Homi Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
 
 reg Change_SC Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
 
 reg Change_HB Change_MigrantPct Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo, cluster(ID)
  
 
 
* Venezuelan victims vs Colombian victims (significant for both, diff mechanisms)

ivreg2 Change_Log_PTVV_p100mil Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

ivreg2 Change_Log_PTCV_p100mil Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)


* Venezuelan criminals vs Colombian criminals (only significant for Venezuelan criminals)

ivreg2 Change_Log_PTVP_p100mil Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)

ivreg2 Change_Log_PTCP_p100mil Change_Wages Change_FormalWorkPct Change_Clear Change_Male1529 Change_GDP Change_Educ Change_PopTot Change_PopUrban Change_PopDensity Change_MigPopDensity Change_PolIdeo (Change_MigrantPct = Log_DistanceBorder), cluster(ID)



*** Significance stars:

estimates table, star(.05 .01 .001)


*** Endogeneity tests (after IV estimation, NO cluster ID)

ivendog




*** TABLES:

est sto m1

est sto m2

est sto m3


esttab m1 m2 m3 using Test.rtf, se obslast r2
