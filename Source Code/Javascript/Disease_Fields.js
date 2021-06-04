function validate(formCheck) //Function with a parameter representing a form name.
{
var na=/^[a-zA-Z_( )]*[a-zA-Z0-9_]*$/;
alert("oooOO!....Please enter any Data");
if (formCheck.dise.value =="")
    {
        alert("Please provide Disease name"); 
        formCheck.dise.focus();
        return false;
    }  
	else  if (na.test(formCheck.dise.value) == false)
    {
        alert("Please provide valid Disease name(starts with charecters"); 
        formCheck.dise.focus();
        return false;
    }                                                       

    return true;
}

function verifyUsername(txtUsername)
{
var x = txtUsername;

window.open('verify_disease.jsp?dise='+x,null,"height=300,width=400,status=yes,toolbar=no");


}