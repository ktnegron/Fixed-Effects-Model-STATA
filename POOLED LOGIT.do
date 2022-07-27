**Variables Definition***
***VICTIM***
gen newvariable=1
rename newvariable ven_victim
replace ven_victim=0 if Paísdenacimiento=="COLOMBIA"
replace ven_victim=1 if Paísdenacimiento=="VENEZUELA"
***SEX***
gen newvariable=1
rename newvariable sex
replace sex=0 if Sexo=="MASCULINO"
replace sex=1 if Sexo=="FEMENINO"
label define sex 0"MALE" 1"FEMALE"
****ZONE OF THE CRIME***
gen newvariable=0
rename newvariable Public_street
replace Public_street=1 if Clasedesitio=="VIAS PUBLICAS"
***CRIME IN MUNICIPALITY****
gen newvariable=0
rename newvariable crime
replace crime=1 if Municipio=="TUNJA"| Municipio=="VALLEDUPAR"| Municipio=="SOGAMOSO"| Municipio=="RONDON"| Municipio=="RIOCHACA"| Municipio=="OCAÑA "|Municipio=="MAICAO"| Municipio=="DUITAMA"| Municipio==" CÚCUTA (CT)"| Municipio=="CHIQUINQUIRÁ"| Municipio=="ARAUCA"| Municipio=="AGUACHICA"
label define crime 0"LOW INTENSITY" 1"HIGH INTENSITY"
***CIVIL STATUS***
gen newvariable=1
rename newvariable c_status
replace c_status=0 if Estadocivil=="SOLTERO"
replace c_status=1 if Estadocivil=="CASADO"|Estadocivil=="UNION LIBRE"|Estadocivil=="SEPARADO"|Estadocivil=="DIVORCIADO"|Estadocivil=="VIUDO"
label define c_status 0"SINGLE" 1"WITH A PARTNER" 2"WITH A FORMER PARTNER"
replace c_status=2 if Estadocivil=="SEPARADO"|Estadocivil=="DIVORCIADO"|Estadocivil=="VIUDO"
***EDUCATION***
gen newvariable=1
rename newvariable educ
replace educ=0 if Escolaridad=="PRIMARIA"|Escolaridad=="ANALFABETA"
replace educ=1 if Escolaridad=="SECUNDARIA"|Escolaridad=="TECNICO"
replace educ=2 if Escolaridad=="SUPERIOR"|Escolaridad=="TECNOLOGO"
replace educ=. if Escolaridad=="NO REPORTADO"
label define educ 0"NO EDUCATION" 1"LOW LEVEL EDUCATION" 2"MIDDLE LEVEL EDUCATION" 3"HIGH EDUCATION"
***ZONE***
gen newvariable=1
rename newvariable zone
replace zone=0 if Zona=="URBANA"
replace zone=1 if Zona=="RURAL"
***EMPLOYMENT***
gen newvariable=1
rename newvariable employ
replace employ=0 if Clasedeempleado=="EMPLEADO EJERCITO"|Clasedeempleado=="EMPLEADO PARTICULAR"|Clasedeempleado=="EMPLEADO INPEC"|Clasedeempleado=="EMPLEADO POLICIAL"|Clasedeempleado=="EMPLEADO PUBLICO"|Clasedeempleado=="FUERZA AEREA"|Clasedeempleado=="EMPLEADO ARMADA/MARINA"|Clasedeempleado=="COMERCIANTE"|Clasedeempleado=="AGRICULTOR"|Clasedeempleado=="EDUCADOR"|Clasedeempleado=="INDEPENDIENTE"|Clasedeempleado=="GANADERO"|Clasedeempleado=="ARTISTA"|Clasedeempleado=="SECTOR FINANCIERO"|Clasedeempleado=="SECTOR IND"|Clasedeempleado=="DEPORTISTA"|Clasedeempleado=="EMPLEADO SALUD"|Clasedeempleado=="EMPLEADO CTI"|Clasedeempleado=="EMPLEADO DAS"|Clasedeempleado=="RAMA JUDICIAL"|Clasedeempleado=="AMA DE CASA"|Clasedeempleado=="ESTUDIANTE"| Clasedeempleado=="PENSIONADO" |Clasedeempleado=="ETNIA INDIGENA"|Clasedeempleado=="LIDER CIVICO"| Clasedeempleado=="DELINCUENCIA"|Clasedeempleado=="GRUPOS ILEGALES"|Clasedeempleado=="MIEMBRO ONG" |Clasedeempleado=="POLITICO"|Clasedeempleado=="SINDICALISTA"|Clasedeempleado=="RELIGIOSO"|Clasedeempleado=="CANDIDATOS"
replace employ=1 if Clasedeempleado=="DESEMPLEADO"
replace employ=. if Clasedeempleado=="NO REPORTA"
label define employ 0"CIVIL SERVANT" 1"UNEMPLOYED" 2"PRIVATE" 3"OTHER"
replace employ=2 if Clasedeempleado=="AMA DE CASA"|Clasedeempleado=="ESTUDIANTE"| Clasedeempleado=="PENSIONADO" |Clasedeempleado=="ETNIA INDIGENA"|Clasedeempleado=="LIDER CIVICO"| Clasedeempleado=="DELINCUENCIA"|Clasedeempleado=="GRUPOS ILEGALES"|Clasedeempleado=="MIEMBRO ONG" |Clasedeempleado=="POLITICO"|Clasedeempleado=="SINDICALISTA"|Clasedeempleado=="RELIGIOSO"|Clasedeempleado=="CANDIDATOS"
***MEANS OF TRANSPORT VICTIM***
gen newvariable=1
rename newvariable trans_vict
replace trans_vict=0 if MóvilVictima=="BICICLETA" |MóvilVictima=="CONDUCTOR BUS "||MóvilVictima=="CONDUCTOR MOTOCICLETA"|MóvilVictima=="CONDUCTOR TAXI" |MóvilVictima=="CONDUCTOR VEHICULO" |MóvilVictima=="PASAJERO AERONAVE"|MóvilVictima== "PASAJERO BARCO"|MóvilVictima=="PASAJERO BUS "|MóvilVictima=="PASAJERO METRO"|MóvilVictima== "PASAJERO MOTOCICLETA"| MóvilVictima==" PASAJERO TAXI "|MóvilVictima==" PASAJERO VEHICULO "|MóvilVictima=="TRIPULANTE AERONAVE"
replace trans_vict=1 if MóvilVictima==" A PIE"
***GDP PER CAPITA***
gen newvariable=1
rename newvariable gdp_pc
replace gdp_pc =0 if Departamento=="ARAUCA"|Departamento=="BOYACÁ"|Departamento=="CESAR"
replace gdp_pc=1 if Departamento=="NORTE DE SANTANDER"|Departamento=="GUAJIRA"|Departamento=="GUAINÍA"|Departamento=="VICHADA"
label define gdp_pc 0"HIGH GDP_PC" 1"LOW GDP_PC"
***WEAPON***
gen newvariable=1
rename newvariable weapon
replace weapon=0 if Armaempleada==" SIN EMPLEO DE ARMAS"
replace weapon=1 if Armaempleada=="ARMA BLANCA / CORTOPUNZANTE"|Armaempleada=="CONTUNDENTES"|Armaempleada==" ARMA DE FUEGO"|Armaempleada==" JERINGA"|Armaempleada=="ESCOPOLAMINA"|Armaempleada=="PERRO"|Armaempleada=="LLAVE MAESTRA"|Armaempleada=="VEHICULO"|Armaempleada=="CORTANTES"
replace weapon=. if Armaempleada== "NO REPORTADO"
label define weapon 0"NO WEAPONS" 1"LIGHT WEAPONS"2"HEAVY WEAPONS" 3"OTHER"
***POPULATION***
gen newvariable=1
rename newvariable pop 
replace pop=0 if Departamento=="ARAUCA"|Departamento=="VICHADA"|Departamento=="GUAINÍA"
replace pop=1 if Departamento=="BOYACÁ"|Departamento=="CESAR"|Departamento=="NORTE DE SANTANDER"|Departamento=="GUAJIRA"
label define pop 0"LOW DENSITY" 1"HIGH DENSITY"
***MIGRATION FLOWS***
gen newvariable=1
rename newvariable mig_flow 
replace mig_flow =0 if Departamento=="BOYACÁ"
replace mig_flow =1 if Departamento=="CESAR"|Departamento=="VICHADA"|Departamento=="GUAINÍA"
replace mig_flow =2 if Departamento=="GUAJIRA"| Departamento=="ARAUCA"|Departamento=="NORTE DE SANTANDER"
label define mig_flow 0"LOW DENSITY" 1"MIDDLE INTENSITY" 2"HIGH DENSITY"
***TERRORISM***
gen newvariable=1
rename newvariable terr 
replace terr=0 if Departamento=="VICHADA"|Departamento=="GUAINÍA"
replace terr=1 if Departamento=="BOYACÁ"|Departamento=="CESAR"|Departamento=="NORTE DE SANTANDER"
replace terr=2 if Departamento=="GUAJIRA"
label define terr 0"AGC" 1"ELN" 2"FARC"
***AGE***
destring Edad, generate(age) force
 ***Logit model***
logit ven_victim age i.sex i.c_status i.trans_vict i.educ i.employ i.mig_flow, cluster (Municipio) robust
probit ven_victim age i.sex i.c_status i.trans_vict i.educ i.employ i.mig_flow, cluster (Municipio) robust
margins, dydx(*)
logit ven_victim c.age##c.age i.Public_street i.crime i.sex i.c_status i.trans_vict i.educ i.employ i.mig_flow, cluster (Municipio) robust
margins, dydx(*)
reg ven_victim c.age##c.age i.sex i.c_status i.trans_vict i.educ i.employ i.mig_flow, cluster (Municipio) robust
