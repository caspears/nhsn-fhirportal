<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport-"+id+".xml");
  else if (id == "diagnosticreport-example-ach-monthly-pass2-radiology")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/DiagnosticReport-diagnosticreport-example-ach-monthly-pass2-radiology.html");
  else if (id == "diagnosticreport-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/DiagnosticReport-diagnosticreport-example-ach-daily-initialpopulationpass.html");
  else if (id == "diagnosticreport-example-ach-monthly-pass2-lab-cbc")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/DiagnosticReport-diagnosticreport-example-ach-monthly-pass2-lab-cbc.html");
  else if (id == "diagnosticreport-example-ach-monthly-pass2-cardiopulmonary")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/DiagnosticReport-diagnosticreport-example-ach-monthly-pass2-cardiopulmonary.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/DiagnosticReport.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crdiagnosticreport.asp) .
</body>
</html>
