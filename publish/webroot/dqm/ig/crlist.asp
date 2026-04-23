<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List-"+id+".xml");
  else if (id == "list-example-ach-daily-individual-measurereport-list")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/List-list-example-ach-daily-individual-measurereport-list.html");
  else if (id == "list-example-ach-monthly-patients-of-interest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/List-list-example-ach-monthly-patients-of-interest.html");
  else if (id == "list-example-ach-daily-patients-of-interest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/List-list-example-ach-daily-patients-of-interest.html");
  else if (id == "list-example-ach-monthly-individual-measurereport-list")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/List-list-example-ach-monthly-individual-measurereport-list.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/List.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crlist.asp) .
</body>
</html>
