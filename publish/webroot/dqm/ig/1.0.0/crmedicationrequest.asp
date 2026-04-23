<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest-"+id+".xml");
  else if (id == "medicationrequest-example-ach-daily-rsvlabbtg-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-daily-rsvlabbtg-2.html");
  else if (id == "medicationrequest-example-ach-daily-rsvlabbtg-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-daily-rsvlabbtg-1.html");
  else if (id == "medicationrequest-example-ach-daily-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-daily-negativepcr.html");
  else if (id == "medicationrequest-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-daily-initialpopulationpass.html");
  else if (id == "medicationrequest-example-ach-monthly-pass3-cipro")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass3-cipro.html");
  else if (id == "medicationrequest-example-ach-monthly-pass3-metronidazole")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass3-metronidazole.html");
  else if (id == "medicationrequest-example-ach-monthly-pass2-dex4-tablet")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass2-dex4-tablet.html");
  else if (id == "medicationrequest-example-ach-monthly-pass2-metformin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass2-metformin.html");
  else if (id == "medicationrequest-example-ach-monthly-pass2-heparin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass2-heparin.html");
  else if (id == "medicationrequest-example-ach-monthly-pass2-insulin-lispro")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass2-insulin-lispro.html");
  else if (id == "medicationrequest-example-ach-monthly-pass1-vancomycin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass1-vancomycin.html");
  else if (id == "medicationrequest-example-ach-monthly-pass3-enoxaparin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-monthly-pass3-enoxaparin.html");
  else if (id == "medicationrequest-example-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationRequest-medicationrequest-example-ach-daily-influenzatherapeutic.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationRequest.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crmedicationrequest.asp) .
</body>
</html>
