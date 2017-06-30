function LoadDetails(){
    var i;
    
    var ClassArray = document.getElementsByClassName("idea");
    for(i=0; i < ClassArray.length; i++){
        var ideaVote = document.createElement("img");
        ideaVote.src = "images/star.png";
        ideaVote.id = "IdeaVote" + (i + 1);
        ideaVote.classList.add("ideaVote");
        ideaVote.onclick = function() {func_showVote(ideaVote.id); };
        ClassArray[i].appendChild(ideaVote);

        var ideaInfo = document.createElement("img");
        ideaInfo.src = "images/i.png";
        ideaInfo.id = "IdeaInfo" + (i + 1);
        ideaInfo.classList.add("ideaInfo");
        ideaInfo.onclick = function() {func_showInfo(ideaInfo.id); };
        ClassArray[i].appendChild(ideaInfo);

        var ideaTitle = document.createElement("h");
        ideaTitle.classList.add("ideaTitle");
        ideaTitle.innerText = ClassArray[i].id.substring(0,4) + " " + ClassArray[i].id.substring(4,6)
        ClassArray[i].appendChild(ideaTitle);
        
        var ideaSummary = document.createElement("p");
        ideaSummary.classList.add("ideaSummary");
        ideaSummary.innerText = "This is the description for " + ClassArray[i].id.substring(0,4) + " " + ClassArray[i].id.substring(4,6) + ".";
        ClassArray[i].appendChild(ideaSummary);
        }
}

function func_showInfo(idea) {
    var ideaDetails = document.createElement("div");
    ideaDetails.id = "ideaDetails";
    ideaDetails.innerText = idea;
    document.getElementById("idea2").appendChild(ideaDetails);
    
    var ideaDetailsClose = document.createElement("input");
    ideaDetailsClose.id = "ideaDetailsClose";
    ideaDetailsClose.type = "button";
    ideaDetailsClose.onclick = function() {func_closeInfo(); };
    ideaDetailsClose.value = "X";
    document.getElementById("ideaDetails").appendChild(ideaDetailsClose);

}
function func_closeInfo() {
    document.getElementById("ideaDetails").remove()
}

function func_showVote(idea) {
    var ideaVoteDetails = document.createElement("div");
    ideaVoteDetails.id = "ideaVoteDetails";
    document.getElementById("idea2").appendChild(ideaVoteDetails);

    for(i=0; i < 5; i++){
        var voteOption = document.createElement("input");
        voteOption.classList.add("voteOption");
        voteOption.type = "button";
        voteOption.onclick = function() {func_vote(i); };
        voteOption.value = i;
        document.getElementById("ideaVoteDetails").appendChild(voteOption);
    }
}
function func_vote(vote) {
    //if(vote = 1) {document.getElementById("ideaDetails").style.backgroundColor = "yellow"}
    //else if(vote = 2) {document.getElementById("ideaDetails").style.backgroundColor = "green"}
    //else if(vote = 3) {document.getElementById("ideaDetails").style.backgroundColor = "darkgreen"}
    //else if(vote = 4) {document.getElementById("ideaDetails").style.backgroundColor = "orange"}
    //else if(vote = 5) {document.getElementById("ideaDetails").style.backgroundColor = "red"}
    
    document.getElementById("ideaVoteDetails").remove()
}
