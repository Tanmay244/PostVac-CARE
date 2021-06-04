function validate(formCheck) //Function with a parameter representing a form name.
{

var d=/^[0-9]{2}[/][0-9]{2}[/][0-9]{4}$/;
	if (formCheck.adates.value =="")
    {
        alert("Please provide any Doctor's available dates.. in dd/mm/yyyy"); 
        formCheck.adates.focus();
        return false;
    }  
	else  if (d.test(formCheck.adates.value) == false)
    {
        alert("Please provide valid Date 'dd/mm/yyyy' "); 
        formCheck.adates.focus();
        return false;
    }
    return true;
}
