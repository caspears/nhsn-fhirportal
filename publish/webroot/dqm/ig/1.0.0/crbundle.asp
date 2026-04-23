<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle-"+id+".xml");
  else if (id == "bundle-example-ach-monthly-subject-ach-pass1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-monthly-subject-ach-pass1.html");
  else if (id == "bundle-example-ach-monthly-subject-ach-pass2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-monthly-subject-ach-pass2.html");
  else if (id == "bundle-example-ach-monthly-subject-ach-pass3")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-monthly-subject-ach-pass3.html");
  else if (id == "bundle-example-ach-daily-subject-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-subject-rsvlabbtg.html");
  else if (id == "bundle-example-ach-daily-subject-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-subject-initialpopulationpass.html");
  else if (id == "bundle-example-ach-daily-subject-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-subject-influenzatherapeutic.html");
  else if (id == "bundle-example-ach-daily-subject-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-subject-negativepcr.html");
  else if (id == "bundle-example-ach-monthly-header")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-monthly-header.html");
  else if (id == "bundle-example-ach-daily-full")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-full.html");
  else if (id == "bundle-example-ach-daily-header")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-bundle-example-ach-daily-header.html");
  else if (id == "submission-full-example1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Bundle-submission-full-example1.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crbundle.asp) .
</body>
</html>
