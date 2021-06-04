  // JavaScript Document


function validate(formCheck) //Function with a parameter representing a form name.
{
var p=/^[a-zA-Z0-9_.( )]{3,10}(\s)*$/;
var d=/^[0-9]{2}[/][0-9]{2}[/][0-9]{4}$/;
var na=/^[a-zA-Z_][a-zA-Z0-9_.( )]*(\s)*$/;
var e=/^[0-9]{1,3}$/;
var eid=/^[a-zA-Z0-9_]*@[a-zA-Z0-9]{1,10}[.a-zA-Z0-9]{1,8}[.a-zA-Z0-9]{1,5}[.a-zA-Z0-9]{1,5}$/;
var mob=/^[0-9-]{3,12}$/;
var pin=/^[0-9]{6}$/;
var hrage=/^[0-9]{2}$/;
    if(formCheck.fname.value =="")
    {
        alert("Please provide firstName"); 
        formCheck.fname.focus();
        return false;
    } 
	 if(na.test(formCheck.fname.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in First Name.."); 
        formCheck.fname.focus();
        return false;
    } 

	 
	if(formCheck.lname.value =="")
    {
        alert("Please provide last Name"); 
        formCheck.lname.focus();
        return false;
    }
	  if(na.test(formCheck.lname.value) == false)
    {
        alert("Please provide valid last name (Don't type spcial symbols)"); 
        formCheck.lname.focus();
        return false;
    } 
	 
	 if(formCheck.desg.value =="")
    {
        alert("Please provide desgnation"); 
        formCheck.desg.focus();
        return false;
    } 
	 if(na.test(formCheck.desg.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in Designation.."); 
        formCheck.desg.focus();
        return false;
    } 

 if(formCheck.qual.value =="")
    {
        alert("Please provide qualification"); 
        formCheck.qual.focus();
        return false;
    } 
	 if(na.test(formCheck.qual.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in qualification.."); 
        formCheck.qual.focus();
        return false;
    } 
	
 if(formCheck.spelz.value =="")
    {
        alert("Please provide Specilization"); 
        formCheck.spelz.focus();
        return false;
    } 
	 if(na.test(formCheck.spelz.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in specialization.."); 
        formCheck.spelz.focus();
        return false;
    }
if(formCheck.exp.value =="")
    {
        alert("Please provide experience"); 
        formCheck.exp.focus();
        return false;
    } 
	 if(e.test(formCheck.exp.value) ==false)
    {
        alert("not a valid experience.."); 
        formCheck.exp.focus();
        return false;
    }
 if(formCheck.foe.value =="")
    {
        alert("Please provide field of experience"); 
        formCheck.foe.focus();
        return false;
    } 
	 if(na.test(formCheck.foe.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in field of experience.."); 
        formCheck.foe.focus();
        return false;
    }
 if(formCheck.university.value =="")
    {
        alert("Please provide university"); 
        formCheck.university.focus();
        return false;
    } 
	 if(na.test(formCheck.university.value) ==false)
    {
        alert("Start with charecters and Don't type spcial symbols in university.."); 
        formCheck.university.focus();
        return false;
    }
if(formCheck.mobile.value =="")
    {
        alert("Please provide mobile"); 
        formCheck.mobile.focus();
        return false;
    } 
	 if(mob.test(formCheck.mobile.value) ==false)
    {
        alert("not a valid mobile.."); 
        formCheck.mobile.focus();
        return false;
    }
if(formCheck.email.value =="")
    {
        alert("Please provide email"); 
        formCheck.email.focus();
        return false;
    } 
 
	 if(eid.test(formCheck.email.value) ==false)
    {
        alert("not a valid email.."); 
        formCheck.email.focus();
        return false;
    }
if(formCheck.sex.value =="")
    {
        alert("Please select sex"); 
        formCheck.sex.focus();
        return false;
    }

     if(formCheck.dob.value =="")
    {
        alert("Please provide date of birth"); 
        formCheck.dob.focus();
        return false;
    } 
	 if(d.test(formCheck.dob.value) ==false)
    {
        alert("not a valid date of birth.."); 
        formCheck.dob.focus();
        return false;
    }
 if(formCheck.doj.value =="")
    {
        alert("Please provide date of join"); 
        formCheck.doj.focus();
        return false;
    } 
	 if(d.test(formCheck.doj.value) ==false)
    {
        alert("not a valid date of join.."); 
        formCheck.doj.focus();
        return false;
    }
if(formCheck.type.value =="")
    {
        alert("Please select type"); 
        formCheck.type.focus();
        return false;
    }
 if(formCheck.pass.value =="")
    {
        alert("Please provide password"); 
        formCheck.pass.focus();
        return false;
    } 
	 if(p.test(formCheck.pass.value) ==false)
    {
        alert("not a valid password in between 2 to 6 charecters.."); 
        formCheck.pass.focus();
        return false;
    }
}
