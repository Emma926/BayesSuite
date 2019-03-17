echo "Generating run scripts..."
echo "0_12cities"
cd ../BayesSuite/0_12cities

#rstan_options(auto_write = TRUE)

sed -n '11,14 p' twelve_cities.Rmd > run.R
sed -n '16,20 p' twelve_cities.Rmd > run.R
sed -n '190,208 p' twelve_cities.Rmd >> run.R
sed -n '369,413 p' twelve_cities.Rmd >> run.R

echo "1_ad"
cd ../1_ad
sed -n '332,377 p' ad_attribution.Rmd > run.R
sed -n '381,388 p' ad_attribution.Rmd >> run.R

echo "2_ode"
cd ../2_ode
sed -n '18,18 p' ODEStan.Rmd > run.R
sed -n '20,21 p' ODEStan.Rmd >> run.R
sed -n '692,697 p' ODEStan.Rmd >> run.R
sed -n '705,720 p' ODEStan.Rmd >> run.R
sed -n '726,760 p' ODEStan.Rmd >> run.R

echo "3_memory"
cd ../3_memory
sed -n '350,350 p' retrieval_models.Rmd > run.R
sed -n '353,361 p' retrieval_models.Rmd >> run.R
sed -n '834,848 p' retrieval_models.Rmd >> run.R
sed -n '859,860 p' retrieval_models.Rmd >> run.R

echo "4_votes"
cd ../4_votes
sed -n '1,10 p' stan_models/gp_pres_forecast_hier.stan > hierarchical_gp.stan
sed -n '12,152 p' stan_models/gp_pres_forecast_hier.stan >> hierarchical_gp.stan
sed -n '11,11 p' hierarchical_GPs_in_stan.Rmd > run.R
sed -n '13,13 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '16,16 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '781,782 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '793,793 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '810,832 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '843,853 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '944,945 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '949,949 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '955,967 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '1147,1147 p' hierarchical_GPs_in_stan.Rmd >> run.R
sed -n '1151,1152 p' hierarchical_GPs_in_stan.Rmd >> run.R

echo "5_tickets"
cd ../5_tickets
sed -n '104,124 p' auerbach_jonathan.Rmd > run.R
sed -n '128,143 p' auerbach_jonathan.Rmd >> run.R
sed -n '162,240 p' auerbach_jonathan.Rmd >> run.R
sed -n '257,274 p' auerbach_jonathan.Rmd >> run.R
sed -n '283,304 p' auerbach_jonathan.Rmd >> run.R
sed -n '314,352 p' auerbach_jonathan.Rmd >> run.R
sed -n '380,389 p' auerbach_jonathan.Rmd >> run.R
sed -n '415,351 p' auerbach_jonathan.Rmd >> run.R
sed -n '633,640 p' auerbach_jonathan.Rmd >> run.R

echo "6_disease"
cd ../6_disease
sed -n '24,29 p' ad_progression.Rmd > run.R
sed -n '46,50 p' ad_progression.Rmd >> run.R
sed -n '55,62 p' ad_progression.Rmd >> run.R
sed -n '106,114 p' ad_progression.Rmd >> run.R
sed -n '321,322 p' ad_progression.Rmd >> run.R

echo "7_racial"
cd ../7_racial
sed -n '10,23 p' threshold-test.Rmd > run.R
sed -n '155,163 p' threshold-test.Rmd >> run.R
sed -n '369,389 p' threshold-test.Rmd >> run.R

echo "8_butterfly"
cd ../8_butterfly
sed -n '42,53 p' dorazio-et-al-knitr.Rmd > run.R
sed -n '213,310 p' dorazio-et-al-knitr.Rmd >> run.R
sed -n '354,357 p' dorazio-et-al-knitr.Rmd >> run.R

echo "9_survival"
cd ../9_survival
cp 7.4.2_Random_time_effects.R run.R 
