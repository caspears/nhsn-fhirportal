<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration-"+id+".xml");
  else if (id == "medadmin-example-ach-daily-rsvlabbtg-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-rsvlabbtg-2.html");
  else if (id == "medadmin-example-ach-daily-rsvlabbtg-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-rsvlabbtg-1.html");
  else if (id == "medadmin-example-ach-monthly-pass2-dex4")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-dex4.html");
  else if (id == "medadmin-example-ach-monthly-pass3-enoxaparin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass3-enoxaparin.html");
  else if (id == "medadmin-example-ach-daily-initialpopulationpass-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-initialpopulationpass-1.html");
  else if (id == "medadmin-example-ach-daily-initialpopulationpass-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-initialpopulationpass-2.html");
  else if (id == "medadmin-example-ach-monthly-pass1-vancomycin")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass1-vancomycin.html");
  else if (id == "medadmin-example-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-influenzatherapeutic.html");
  else if (id == "medadmin-example-ach-monthly-pass2-heparin-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-heparin-1.html");
  else if (id == "medadmin-example-ach-monthly-pass2-insulin-lispro-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-insulin-lispro-2.html");
  else if (id == "medadmin-example-ach-monthly-pass2-insulin-lispro-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-insulin-lispro-1.html");
  else if (id == "medadmin-example-ach-monthly-pass2-insulin-lispro-4")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-insulin-lispro-4.html");
  else if (id == "medadmin-example-ach-monthly-pass2-heparin-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-heparin-2.html");
  else if (id == "medadmin-example-ach-monthly-pass2-insulin-lispro-3")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass2-insulin-lispro-3.html");
  else if (id == "medadmin-example-ach-daily-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-daily-negativepcr.html");
  else if (id == "medadmin-example-ach-monthly-pass3-metronidazole-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass3-metronidazole-2.html");
  else if (id == "medadmin-example-ach-monthly-pass3-metronidazole-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass3-metronidazole-1.html");
  else if (id == "medadmin-example-ach-monthly-pass3-metronidazole-3")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MedicationAdministration-medadmin-example-ach-monthly-pass3-metronidazole-3.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MedicationAdministration.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crmedicationadministration.asp) .
</body>
</html>
