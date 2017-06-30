function mark_disliked(offering_id){
    document.getElementById(offering_id).classList.add("offer_dislike");
    document.getElementById(offering_id).classList.remove("offer_like");
    }

function mark_liked(offering_id){
    document.getElementById(offering_id).classList.add("offer_like");
    document.getElementById(offering_id).classList.remove("offer_dislike");
}  

function view_main(){
    document.getElementsByClassName("offer_dislike").display = "none";
    document.getElementsByClassName("offer_like").display = "inline";
} 
function view_dislike(){
    document.getElementsByClassName("offer_dislike").display = "inline";
    document.getElementsByClassName("offer_like").display = "none";
} 
