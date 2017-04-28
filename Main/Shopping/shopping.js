function remove_liked_disliked(offering_id){
    document.getElementById(offering_id).classList.remove("offer_like");
    document.getElementById(offering_id).classList.remove("offer_dislike");
};

function mark_disliked(offering_id){
    document.getElementById(offering_id).classList.add("offer_dislike");
    document.getElementById(offering_id).classList.remove("offer_like");
    }

function mark_liked(offering_id){
    document.getElementById(offering_id).classList.add("offer_like");
    document.getElementById(offering_id).classList.remove("offer_dislike");
    }   

