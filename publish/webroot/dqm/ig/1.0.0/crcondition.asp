<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition-"+id+".xml");
  else if (id == "condition-example-diagnosis-ach-monthly-pass3-problem")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-monthly-pass3-problem.html");
  else if (id == "condition-example-diagnosis-ach-daily-rsvlabbtg")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-daily-rsvlabbtg.html");
  else if (id == "condition-example-diagnosis-ach-daily-negativepcr")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-daily-negativepcr.html");
  else if (id == "condition-example-diagnosis-ach-monthly-pass3")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-monthly-pass3.html");
  else if (id == "condition-example-diagnosis-ach-monthly-pass2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-monthly-pass2.html");
  else if (id == "condition-example-diagnosis-ach-monthly-pass1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-monthly-pass1.html");
  else if (id == "condition-example-diagnosis-ach-daily-initialpopulationpass")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-daily-initialpopulationpass.html");
  else if (id == "condition-example-diagnosis-ach-monthly-pass2-problem")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-monthly-pass2-problem.html");
  else if (id == "condition-example-diagnosis-ach-daily-influenzatherapeutic")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/Condition-condition-example-diagnosis-ach-daily-influenzatherapeutic.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/Condition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crcondition.asp) .
</body>
</html>
