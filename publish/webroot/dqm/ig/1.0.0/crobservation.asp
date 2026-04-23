<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation-"+id+".xml");
  else if (id == "observation-example-ach-monthly-pass3-vitals-weight")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass3-vitals-weight.html");
  else if (id == "lab-observation-example-ach-daily-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-lab-observation-example-ach-daily-rsvlabbtg.html");
  else if (id == "observation-example-ach-monthly-pass3-vitals-height")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass3-vitals-height.html");
  else if (id == "observation-example-ach-monthly-pass1-csf")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass1-csf.html");
  else if (id == "observation-example-ach-monthly-pass2-hemo-a1c")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-hemo-a1c.html");
  else if (id == "observation-example-ach-monthly-pass3-cdiff")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass3-cdiff.html");
  else if (id == "observation-example-ach-monthly-pass2-vitals-weight")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-vitals-weight.html");
  else if (id == "observation-example-ach-monthly-pass1-gestational-age")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass1-gestational-age.html");
  else if (id == "lab-observation-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-lab-observation-example-ach-daily-initialpopulationpass.html");
  else if (id == "observation-example-ach-monthly-pass2-hemo")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-hemo.html");
  else if (id == "observation-example-ach-monthly-pass2-aptt")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-aptt.html");
  else if (id == "observation-example-ach-monthly-pass1-vitals-weight")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass1-vitals-weight.html");
  else if (id == "lab-observation-example-ach-daily-negativepcr-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-lab-observation-example-ach-daily-negativepcr-1.html");
  else if (id == "lab-observation-example-ach-daily-negativepcr-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-lab-observation-example-ach-daily-negativepcr-2.html");
  else if (id == "observation-example-ach-daily-initialpopulationpass-isolation")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-daily-initialpopulationpass-isolation.html");
  else if (id == "observation-example-ach-monthly-pass1-blood")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass1-blood.html");
  else if (id == "observation-example-ach-monthly-pass2-poc-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-poc-2.html");
  else if (id == "observation-example-ach-monthly-pass2-poc-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Observation-observation-example-ach-monthly-pass2-poc-1.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crobservation.asp) .
</body>
</html>
