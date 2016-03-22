<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>Contact Manager - Struts2 Hibernate Example</title>
</head>
<body>
 
<h1>Contact Manager</h1>
<s:actionerror/>

<s:iterator value="econtact" var="contac">
 </s:iterator>

 
<s:form action="add" method="post">
    <s:hidden name="contact.id" value="%{#contac.id}" type="hidden" />
    <s:textfield name="contact.firstName" label="Firstname" value="%{#contac.firstName}"/>
    <s:textfield name="contact.lastName"  label="Lastname" value="%{#contac.lastName}"/>
    <s:textfield name="contact.emailId"   label="Email" value="%{#contac.emailId}"/>
    <s:textfield name="contact.cellNo" label="Cell No." value="%{#contac.cellNo}"/>
    <s:textfield name="contact.website" label="Homepage" value="%{#contac.website}"/>
    <s:textfield name="contact.birthDate" label="Birthdate" value="%{#contac.birthDate}"/>
    <s:submit value="Add Contact" align="center"/>
    
</s:form>


  
<h2>Contacts</h2>
<table>
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Cell No.</th>
    <th>Birthdate</th>
    <th>Homepage</th>
    <th>Delete</th>
    <th>Edit</th>
</tr>
<s:iterator value="contactList" var="contact">
    <tr>
        <td><s:property value="lastName"/>, <s:property value="firstName"/> </td>
        <td><s:property value="emailId"/></td>
        <td><s:property value="cellNo"/></td>
        <td><s:property value="birthDate"/></td>
        <td><a href="<s:property value="website"/>">link</a></td>
        <td><a href="delete?id=<s:property value="id"/>">delete</a></td>
        <td><a href="edit?id=<s:property value="id"/>">edit</a></td>
    </tr> 
</s:iterator>
</table>
</body>
</html>