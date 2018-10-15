pragma solidity ^0.4.23;

contract Voting {
    //후보자 생성 및 촉초깋초기화초기화 
    
    bytes32[] public candidateList;
    mapping(bytes32 => uint8)public votesRecevied;
   
     constructor(bytes32[] candidateNames){
         candidateList = candidateNames;
     
    }
    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesRecevied[candidate] += 1;
    }
    function totalVotesFor(bytes32 candidate)public returns(uint8){
         require(validCandidate(candidate));
        return votesRecevied[candidate]; 
    }
    function validCandidate(bytes32 candidate) view public returns(bool){
        for(uint i=0; i<candidateList.length;i++){
            return true;
            
        }
        return false; 
    }
}
