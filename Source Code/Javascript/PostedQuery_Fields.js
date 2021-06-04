function validate(formCheck) //Function with a parameter representing a form name.
{
var e=/^[0-9]*$/;	
var na=/^[a-zA-Z_( )]*[a-zA-Z0-9_]*$/;

if (formCheck.pquery.value =="")
    {
        alert("Please provide any QUERY"); 
        formCheck.pquery.focus();
        return false;
    }  
	else  if (na.test(formCheck.pquery.value) == false)
    {
        alert("Please provide valid Query (starts with charecters"); 
        formCheck.pquery.focus();
        return false;
    }else                                                       
if (formCheck.eid.value =="")
    {
        alert("Please provide any Doctor Id"); 
        formCheck.eid.focus();
        return false;
    }  
	else  if (e.test(formCheck.eid.value) == false)
    {
        alert("Please provide valid Doctor ....Only digits"); 
        formCheck.eid.focus();
        return false;
    }               
    return true;
}

function verifyUsername(txtUsername)
{
var x = txtUsername;

window.open('verify_disease.jsp?dise='+x,null,"height=300,width=400,status=yes,toolbar=no");


}