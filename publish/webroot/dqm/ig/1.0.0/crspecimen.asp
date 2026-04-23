<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen-"+id+".xml");
  else if (id == "specimen-example-ach-daily-negativepcr-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-daily-negativepcr-2.html");
  else if (id == "specimen-example-ach-daily-negativepcr-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-daily-negativepcr-1.html");
  else if (id == "specimen-example-ach-monthly-pass3-stool")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-monthly-pass3-stool.html");
  else if (id == "specimen-example-ach-monthly-pass1-blood")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-monthly-pass1-blood.html");
  else if (id == "specimen-example-ach-daily-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-daily-rsvlabbtg.html");
  else if (id == "specimen-example-ach-monthly-pass2-blood-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-monthly-pass2-blood-2.html");
  else if (id == "specimen-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-daily-initialpopulationpass.html");
  else if (id == "specimen-example-ach-monthly-pass2-blood-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-monthly-pass2-blood-1.html");
  else if (id == "specimen-example-ach-monthly-pass1-csf")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Specimen-specimen-example-ach-monthly-pass1-csf.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Specimen.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crspecimen.asp) .
</body>
</html>
