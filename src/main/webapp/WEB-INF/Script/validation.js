
 let userNameCheck = function() {
		 let nameRegex = /^[a-zA-z\s]+$/;
		 if(!document.form.userName.value.match(nameRegex)){
				if(alert("Name can't be empty or must contain only alphabets")){ 
					 document.form.userName.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 let emailCheck = function() {
		 let nameRegex = /^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$/;
		 if(!document.form.eMail.value.match(nameRegex)){
				if(alert("Email not in the correct format")){ 
					 document.form.eMail.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 
	 let passwordCheck = function() {
		 let nameRegex = /^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$/;
		 if(!document.form.userPassword.value.match(nameRegex)){
				if(alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")){ 
					 document.form.userPassword.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}
	 let phoneNoCheck = function() {
		 let nameRegex = /\d{10}/;
		 if(!document.form.phoneNumber.value.match(nameRegex)){
				if(alert("Phone number must have 10 digits")){ 
					 document.form.phoneNumber.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	 }
	 let addressCheck = function() {
		 if(document.form.address.value == ""){
				if(alert("Address cannot be blank")){ 
					 document.form.address.focus();
			    }
				else
					document.activeElement.blur();
			}
		 else{
		    	return false;
		    }
		 
	 }
	function checkDateOfBirth() {
           let date = document.getElementById('dateOfBirth').value;
           let now = new Date();
           let dt1 = Date.parse(now),
           dt2 = Date.parse(date);
           if (dt2 >= dt1) {
                alert("Date must be in the past");
           }
     }