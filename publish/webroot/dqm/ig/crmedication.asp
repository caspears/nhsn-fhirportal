<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication-"+id+".xml");
  else if (id == "medication-example-ach-daily-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-ach-daily-negativepcr.html");
  else if (id == "medication-example-metronidazole")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-metronidazole.html");
  else if (id == "medication-example-enoxaparin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-enoxaparin.html");
  else if (id == "medication-example-cipro-500")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-cipro-500.html");
  else if (id == "medication-example-dex4-tablet")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-dex4-tablet.html");
  else if (id == "medication-example-heparin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-heparin.html");
  else if (id == "medication-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-ach-daily-initialpopulationpass.html");
  else if (id == "medication-example-insulin-lispro")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-insulin-lispro.html");
  else if (id == "medication-example-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-ach-daily-influenzatherapeutic.html");
  else if (id == "medication-example-vancomycin-15")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-vancomycin-15.html");
  else if (id == "medication-example-metformin-1000")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-metformin-1000.html");
  else if (id == "medication-example-ach-daily-rsvlabbtg-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-ach-daily-rsvlabbtg-2.html");
  else if (id == "medication-example-ach-daily-rsvlabbtg-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Medication-medication-example-ach-daily-rsvlabbtg-1.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Medication.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crmedication.asp) .
</body>
</html>
