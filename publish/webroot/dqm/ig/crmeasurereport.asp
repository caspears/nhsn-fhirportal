<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport-"+id+".xml");
  else if (id == "measurereport-example-ach-daily-subjectlist")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-daily-subjectlist.html");
  else if (id == "measurereport-example-ach-monthly-subjectlist1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-monthly-subjectlist1.html");
  else if (id == "measurereport-example-ach-daily-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-daily-negativepcr.html");
  else if (id == "measurereport-example-individual-ach-monthly-pass3")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-individual-ach-monthly-pass3.html");
  else if (id == "measurereport-example-individual-ach-monthly-pass1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-individual-ach-monthly-pass1.html");
  else if (id == "measurereport-example-individual-ach-monthly-pass2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-individual-ach-monthly-pass2.html");
  else if (id == "measurereport-example-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-daily-influenzatherapeutic.html");
  else if (id == "measurereport-example-ach-daily-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-daily-rsvlabbtg.html");
  else if (id == "measurereport-example-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/MeasureReport-measurereport-example-ach-daily-initialpopulationpass.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/MeasureReport.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crmeasurereport.asp) .
</body>
</html>
