function LoadDetails(){
    //Add organisation name
    document.getElementById("organisationName").innerHTML = document.title;

    //Add location details
    var str = "458 Old Te Atatu Road, Te Atatu Paninsula, Auckland"
    var result = str.link("https://www.bing.com/maps?osid=8307a9fd-1615-4868-97bd-4a1172df57dc&cp=-36.840515~174.650671&lvl=18&v=2&sV=2&form=S00027")
    
    var locationDiv = document.createElement('DIV');
    locationDiv.id = "location";
    locationDiv.innerHTML = result;
    document.getElementById('contactDetails').appendChild(locationDiv);
    //Add contact details
    var contactDiv = document.createElement('DIV');
    contactDiv.id = "contact"
    document.getElementById('contactDetails').appendChild(contactDiv);
    var phone = "09 834 0222"
    var fax = "09 843 0225"
    var email = "teatatu@hammerhardware.co.nz"
    /*var emailLink = email.link("mailto:+email)*/
    document.getElementById("contact").innerHTML = "Phone: " + phone + " | Fax: " + fax /*+ " | Email: " + emailLink;*/
    
    //Add about us text
    a = "Set in a 1950s gas station, The Servo Cafe overlooks the harbour, the bridge and Auckland City. Servo just 10 mins West of Auckland City centre with hassle free parking."
    //b = "Our store owners and staff members have extensive experience in the hardware industry which enables us to offer you reliable advice from product knowledge through to step-by-step suggestions to complete your specific project."
    document.getElementById("aboutus").innerHTML = a /*+ "</br></br>" + b*/

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

