CREATE OR REPLACE VIEW V_TURKEYCOVIDDATA(CONTINENTNAME, COUNTRY_ID, COUNTRYNAME, NEW_TESTS, DATE_, NEW_DEATHS, TOTAL_DEATHS, NEW_CASES, TOTAL_CASES) AS 
  select cn.continentname, cs.country_id, co.countryname, cs.new_tests, date_, new_deaths, cs.total_deaths, cs.new_cases, cs.total_cases
    from countrycases cs
    inner join country co on cs.country_id=co.countryid
    inner join continent cn on cn.id=co.continentid
    where cs.country_id=202
    group by cn.continentname, cs.country_id, co.countryname, cs.new_tests, date_, new_deaths, cs.total_deaths, cs.new_cases, cs.total_cases
    order by date_ desc;


--EXECUTE
SELECT * FROM V_TURKEYCOVIDDATA;
