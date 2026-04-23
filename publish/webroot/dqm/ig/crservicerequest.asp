<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest-"+id+".xml");
  else if (id == "servicerequest-example-ach-monthly-pass2-aptt")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass2-aptt.html");
  else if (id == "servicerequest-example-ach-monthly-pass2-hemo")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass2-hemo.html");
  else if (id == "servicerequest-example-ach-monthly-pass2-glucose")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass2-glucose.html");
  else if (id == "servicerequest-example-ach-monthly-pass1-csf")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass1-csf.html");
  else if (id == "servicerequest-example-ach-monthly-pass2-hemo-a1c")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass2-hemo-a1c.html");
  else if (id == "servicerequest-example-ach-monthly-pass3-cdiff")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass3-cdiff.html");
  else if (id == "servicerequest-example-ach-daily-negativepcr-covid-1")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-daily-negativepcr-covid-1.html");
  else if (id == "servicerequest-example-ach-daily-negativepcr-covid-2")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-daily-negativepcr-covid-2.html");
  else if (id == "servicerequest-example-ach-monthly-pass1-blood")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-monthly-pass1-blood.html");
  else if (id == "servicerequest-example-ach-daily-rsvlabbtg-rsv")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-daily-rsvlabbtg-rsv.html");
  else if (id == "servicerequest-example-ach-daily-initialpopulationpass-covid")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/ServiceRequest-servicerequest-example-ach-daily-initialpopulationpass-covid.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/ServiceRequest.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crservicerequest.asp) .
</body>
</html>
