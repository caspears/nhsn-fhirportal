<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition-"+id+".xml");
  else if (id == "link-original-resource-id-extension")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-link-original-resource-id-extension.html");
  else if (id == "ach-monthly-device")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-device.html");
  else if (id == "link-original-mapped-concept-extension")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-link-original-mapped-concept-extension.html");
  else if (id == "ach-monthly-observation-lab")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-observation-lab.html");
  else if (id == "ach-monthly-observation")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-observation.html");
  else if (id == "nhsn-submission-header-bundle")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-nhsn-submission-header-bundle.html");
  else if (id == "subjectlist-measurereport")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-subjectlist-measurereport.html");
  else if (id == "link-received-date-extension")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-link-received-date-extension.html");
  else if (id == "ach-monthly-diagnosticreport-lab")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-diagnosticreport-lab.html");
  else if (id == "ach-daily-procedure")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-procedure.html");
  else if (id == "ach-monthly-diagnosticreport-note")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-diagnosticreport-note.html");
  else if (id == "ach-monthly-location")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-location.html");
  else if (id == "extension-MeasureReport.supplementalDataElement.reference")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-extension-MeasureReport.supplementalDataElement.reference.html");
  else if (id == "ach-monthly-coverage")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-coverage.html");
  else if (id == "ach-daily-observation-lab")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-observation-lab.html");
  else if (id == "nhsn-subject-bundle")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-nhsn-subject-bundle.html");
  else if (id == "ach-monthly-medication")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-medication.html");
  else if (id == "ach-monthly-medicationadministration")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-medicationadministration.html");
  else if (id == "ach-monthly-observation-vitals")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-observation-vitals.html");
  else if (id == "nhsn-submitting-organization")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-nhsn-submitting-organization.html");
  else if (id == "ach-daily-specimen")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-specimen.html");
  else if (id == "ach-monthly-procedure")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-procedure.html");
  else if (id == "link-original-element-value-extension")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-link-original-element-value-extension.html");
  else if (id == "ach-monthly-specimen")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-specimen.html");
  else if (id == "ach-daily-observation")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-observation.html");
  else if (id == "ach-daily-medication")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-medication.html");
  else if (id == "extension-criteriaReference")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-extension-criteriaReference.html");
  else if (id == "ach-daily-medicationadministration")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-medicationadministration.html");
  else if (id == "ach-daily-servicerequest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-servicerequest.html");
  else if (id == "ach-monthly-servicerequest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-servicerequest.html");
  else if (id == "nhsn-measurereport-bundle")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-nhsn-measurereport-bundle.html");
  else if (id == "link-patient-list-applicable-period-extension")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-link-patient-list-applicable-period-extension.html");
  else if (id == "cross-measure-patient")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-cross-measure-patient.html");
  else if (id == "ach-daily-diagnosticreport-lab")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-diagnosticreport-lab.html");
  else if (id == "ach-daily-encounter")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-encounter.html");
  else if (id == "ach-monthly-condition")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-condition.html");
  else if (id == "ach-monthly-medicationrequest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-medicationrequest.html");
  else if (id == "ach-monthly-encounter")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-encounter.html");
  else if (id == "ach-monthly-diagnosticreport")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-monthly-diagnosticreport.html");
  else if (id == "ach-daily-location")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-location.html");
  else if (id == "poi-list")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-poi-list.html");
  else if (id == "ip-measurereport-list")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ip-measurereport-list.html");
  else if (id == "ach-daily-medicationrequest")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-ach-daily-medicationrequest.html");
  else if (id == "nhsn-submitting-device")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/1.0.0/StructureDefinition-nhsn-submitting-device.html");
  else if (id == "index")
    Response.Redirect("http://www.cdc.gov/nhsn/fhirportal/dqm/ig/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \ig\1.0.0\crstructuredefinition.asp) .
</body>
</html>
