function validate(formCheck) //Function with a parameter representing a form name.
{
var e=/^[0-9]*$/;	
var na=/^[a-zA-Z_( )]*[a-zA-Z0-9_]*$/;
var d=/^[0-9]{2}[/][0-9]{2}[/][0-9]{4}$/;
if (formCheck.did.value =="")
    {
        alert("Please provide any Doctor Id...Check in the ''view available doctors List'' link"); 
        formCheck.did.focus();
        return false;
    }  
	else  if (e.test(formCheck.did.value) == false)
    {
        alert("Please provide valid Doctor Id ...Only digits"); 
        formCheck.did.focus();
        return false;
    }else                                                       
if (formCheck.dname.value =="")
    {
        alert("Please provide any Doctor name"); 
        formCheck.dname.focus();
        return false;
    }  
	else  if (na.test(formCheck.dname.value) == false)
    {
        alert("Please provide valid Doctor's Name starts with charectors...."); 
        formCheck.dname.focus();
        return false;
    } else
	if (formCheck.adate.value =="")
    {
        alert("Please provide any Doctor's available dates.. ''view available doctors List'' link"); 
        formCheck.adate.focus();
        return false;
    }  
	else  if (d.test(formCheck.adate.value) == false)
    {
        alert("Please provide valid Date 'dd/mm/yyyy' "); 
        formCheck.adate.focus();
        return false;
    }else 
	if (formCheck.ccno.value =="")
    {
        alert("Please provide any credit card number.."); 
        formCheck.ccno.focus();
        return false;
    }  
	else  if (e.test(formCheck.ccno.value) == false)
    {
        alert("Please provide valid creditcard number ...Only digits"); 
        formCheck.ccno.focus();
        return false;
    }
    return true;
}
