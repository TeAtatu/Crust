function LoadDetails(){
    //Heading update
    document.getElementById("heading").style.background = "gold";
    
    //Add logo
    logo.src = "images/icon.png";

    //Add organisation name
    document.getElementById("organisationName").innerHTML = document.title;
    document.getElementById("organisationName").style.color = "black";

    //Add location details
    var str = "572 Te Atatu Road, Te Atatu Peninsula Waitakere 0610"
    var result = str.link("https://www.bing.com/maps?osid=8307a9fd-1615-4868-97bd-4a1172df57dc&cp=-36.840515~174.650671&lvl=18&v=2&sV=2&form=S00027")
    
    var locationDiv = document.createElement('DIV');
    locationDiv.id = "location";
    locationDiv.innerHTML = result;
    document.getElementById('contactDetails').appendChild(locationDiv);
    //Add contact details
    var contactDiv = document.createElement('DIV');
    contactDiv.id = "contact"
    document.getElementById('contactDetails').appendChild(contactDiv);
    var phone = "09 834 6210"
    var fax = "09 834 9546"
    var email = "teatatu@hammerhardware.co.nz"
    var emailLink = email.link("mailto:"+email)
    document.getElementById("contact").innerHTML = "Phone: " + phone + " | Fax: " + fax + " | Email: " + emailLink;
    
    //Add about us text
    a = "Hammer Hardware is a New Zealand cooperative business group that has been in operation for more than 30 years. There are over 50 stores throughout New Zealand and each store is locally owned and operated. Hammer stores are a part of the local community and as such we are dedicated to providing personal, friendly service and great advice to you, our customer."
    b = "Our store owners and staff members have extensive experience in the hardware industry which enables us to offer you reliable advice from product knowledge through to step-by-step suggestions to complete your specific project."
    document.getElementById("aboutus").innerHTML = a + "</br></br>" + b

    //Add hours
    hours = "Mon: 9am - 5:30pm </br>" 
    hours = hours + "Tues: 9am - 5:30pm </br>"
    hours = hours + "Wed: 9am - 5:30pm </br>"
    hours = hours + "Thur: 9am - 6:00pm </br>"
    hours = hours + "Fri: 9am - 5:30pm </br>"
    hours = hours + "Sat: 9am - 5:30pm </br>"
    hours = hours + "Sun: 9am - 4:30pm"
    document.getElementById("hours").innerHTML = hours
}

