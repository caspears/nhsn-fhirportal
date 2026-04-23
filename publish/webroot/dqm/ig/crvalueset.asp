<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet-"+id+".xml");
  else if (id == "ach-daily-diagnostic-report-status")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ValueSet-ach-daily-diagnostic-report-status.html");
  else if (id == "ach-monthly-encounter-class")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ValueSet-ach-monthly-encounter-class.html");
  else if (id == "ach-daily-encounter-status")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ValueSet-ach-daily-encounter-status.html");
  else if (id == "ach-monthly-encounter-status")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ValueSet-ach-monthly-encounter-status.html");
  else if (id == "ach-daily-encounter-class")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ValueSet-ach-daily-encounter-class.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crvalueset.asp) .
</body>
</html>
