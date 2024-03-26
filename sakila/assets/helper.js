// BLANK INPUT BOX VALIDATION
function isBlank( obj, message = 'Field must contain string!') {
    const value = obj.value.trim();
    // const regexp = /0-9/;
    if(value === "") {
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true;
}
// EMAIL VALIDATION
function isEmail(obj, message = 'Field must contain string!') {
    const value = obj.value.trim();
    const validEmail = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
    if(!value.match(validEmail)){
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true
}

// PHONE NUMBER VALIDATION
function isNumber(obj, message ='Field must contain number!') {
    const value = obj.value.trim();
    const validPhone =  /^([+]\d{2})?\d{10}$/; 
    if(!value.match(validPhone)){
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true;  
}

// ZIP CODE VALIDATION
function isZipCode(obj, message ='Field must contain number!') {
    const value = obj.value.trim();
    const validZip =  /^([+]\d{2})?\d{6}$/; 
    if(!value.match(validZip)){
        alert(message);
        obj.value = "";
        obj.focus();
        return false;
    }
    return true;  
}

// MULTIPLE CHECKBOX VALIDATION 
function isCheck(obj, message = "At least one option should checked!") {
    const isChecked = Array.from(obj).some(element => element.checked);
    if(!isChecked){
        alert(message);        
        obj[0].focus();
        return false;
    }
    return true;
}

// ONE SINGLE CHECKBOX
function isChecked(obj, message = 'Please read term & condition') {
    if(!obj.checked){
        alert(message);
        obj.focus();
        return false;
    }
    return true
}

// NEXT PAGE OF PAGINATION
function nextPage() {
    const page = document.querySelector('input[name=page]').value;
    let pageCounter = page;
    pageCounter++;
    window.location.href = `${location.origin}${location.pathname}?page=${pageCounter}`;
}


// PREVIOUS PAGE OF PAGINATION
function previousPage() {
    const page = document.querySelector('input[name=page]').value;
    let pageCounter = page;
    pageCounter--;
    window.location.href = `${location.origin}${location.pathname}?page=${pageCounter}`;
}
