IMPORT hpccsystems.covid19.scrape.Files as Files;

world_cumConfirmed_cpr := JOIN(Files.dailyGlobal, Files.world_cumconfirmed_ds ,
                              LEFT.date = RIGHT.date, 
                              TRANSFORM({RECORDOF(RIGHT), UNSIGNED cumcases, INTEGER diff},
                              SELF := LEFT, SELF := RIGHT ,
                              SELF.diff := LEFT.cumcases - RIGHT.confirmed));
OUTPUT(SORT(world_cumconfirmed_cpr, -date) , NAMED('world_cumconfirmed_cpr'));

world_newCases_cpr := JOIN(Files.dailyGlobal, Files.world_newCases_ds ,
                                  LEFT.date = RIGHT.date, 
                                  TRANSFORM({RECORDOF(RIGHT), UNSIGNED lnnewcases, INTEGER diff},
                                  SELF.lnnewcases := LEFT.newcases,
                                  SELF.newCases := RIGHT.newcases ,
                                  SELF.diff := LEFT.newcases - RIGHT.newCases,
                                  SELF := LEFT));
OUTPUT(SORT(world_newCases_cpr, -date) , NAMED('world_newCases_cpr'));
 
country_cumdeaths_cpr      := JOIN(Files.dailyCountries_confirmed, Files.country_cumdeaths_ds,
                                    LEFT.location = RIGHT.country,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.deaths := RIGHT.deaths,
                                    SELF.lncases := LEFT.tot_death,
                                    SELF.diff := LEFT.tot_death - RIGHT.deaths,
                                    SELF := RIGHT));
OUTPUT(SORT(country_cumdeaths_cpr, -diff) , NAMED('country_cumdeaths_cpr'));       

country_cumconfirmed_cpr   := JOIN(Files.dailyCountries_confirmed, Files.country_cumconfirmed_ds,
                                    LEFT.location = RIGHT.country,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.confirmed := RIGHT.confirmed,
                                    SELF.lncases := LEFT.tot_cases,
                                    SELF.diff := LEFT.tot_cases - RIGHT.confirmed,
                                    SELF := RIGHT)); 
OUTPUT(SORT(country_cumconfirmed_cpr, -diff) , NAMED('country_cumconfirmed_cpr'));    

state_cumdeaths_cpr        := JOIN(Files.dailyStates_confirmed , Files.state_cumdeaths_ds,
                                    LEFT.location = RIGHT.state,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.deaths := RIGHT.deaths,
                                    SELF.lncases := LEFT.tot_death,
                                    SELF.diff := LEFT.tot_death - RIGHT.deaths,
                                    SELF := RIGHT));
OUTPUT(SORT(state_cumdeaths_cpr, -diff) , NAMED('state_cumdeaths_cpr') );      




us_cumdeaths_cpr           := JOIN(Files.dailyCountries(location = 'US') , Files.us_cumdeaths_ds,
                                    LEFT.date = RIGHT.date,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.deaths := RIGHT.deaths,
                                    SELF.lncases := LEFT.cumcases,
                                    SELF.diff := LEFT.cumcases - RIGHT.deaths,
                                    SELF := RIGHT));
// OUTPUT(SORT(us_cumdeaths_cpr, -date) , NAMED('us_cumdeaths_cpr'));   

us_cumconfirmed_cpr        := JOIN(Files.dailyCountries(location = 'US'),Files.us_cumconfirmed_ds,
                                    LEFT.date = RIGHT.date,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.confirmed := RIGHT.confirmed,
                                    SELF.lncases := LEFT.cumcases,
                                    SELF.diff := LEFT.cumcases - RIGHT.confirmed,
                                    SELF := RIGHT));
// OUTPUT(SORT(us_cumconfirmed_cpr, -date)  , NAMED('us_cumconfirmed_cpr'));    

us_county_cumdeaths_cpr           := JOIN(Files.dailyCounties_confirmed , Files.county_cumdeaths_ds,
                                    LEFT.county = RIGHT.county,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.deaths := RIGHT.deaths,
                                    SELF.lncases := LEFT.tot_death,
                                    SELF.diff := LEFT.tot_death - RIGHT.deaths,
                                    SELF := RIGHT), RIGHT ONLY);
// OUTPUT(SORT(us_county_cumdeaths_cpr , -diff)  , NAMED('us_county_cumdeaths_cpr'));   

us_county_cumConfirmed_cpr           := JOIN(Files.dailyCounties_confirmed , Files.county_cumConfirmed_ds,
                                    LEFT.county = RIGHT.county,
                                    TRANSFORM({RECORDOF(RIGHT), UNSIGNED lncases, INTEGER diff},
                                    SELF.confirmed := RIGHT.confirmed,
                                    SELF.lncases := LEFT.tot_cases,
                                    SELF.diff := LEFT.tot_cases - RIGHT.confirmed,
                                    SELF := RIGHT), RIGHT ONLY);
// OUTPUT(SORT(us_county_cumConfirmed_cpr, -diff)  , NAMED('us_county_cumConfirmed_cpr') );   

/**/