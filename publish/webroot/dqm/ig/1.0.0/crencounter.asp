<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter-"+id+".xml");
  else if (id == "encounter-example-ach-daily-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-rsvlabbtg.html");
  else if (id == "encounter-example-ach-daily-initialpopulationpass-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-initialpopulationpass-2.html");
  else if (id == "encounter-example-ach-daily-initialpopulationpass-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-initialpopulationpass-1.html");
  else if (id == "encounter-example-ach-monthly-pass2-inpatient")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-monthly-pass2-inpatient.html");
  else if (id == "encounter-example-ach-monthly-pass2-emergency")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-monthly-pass2-emergency.html");
  else if (id == "encounter-example-ach-monthly-pass3-short-stay")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-monthly-pass3-short-stay.html");
  else if (id == "encounter-example-ach-monthly-pass3-acute")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-monthly-pass3-acute.html");
  else if (id == "encounter-example-ach-daily-negativepcr-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-negativepcr-1.html");
  else if (id == "encounter-example-ach-daily-negativepcr-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-negativepcr-2.html");
  else if (id == "encounter-example-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-daily-influenzatherapeutic.html");
  else if (id == "encounter-example-ach-monthly-pass1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Encounter-encounter-example-ach-monthly-pass1.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Encounter.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crencounter.asp) .
</body>
</html>
