pragma solidity ^0.6.0;

contract LibWStep {

    event LogWorkflowStepStart(address indexed sender, uint256 indexed current, uint256 indexed actorId);
    event LogWorkflowStepCompleted(address indexed recipient, uint256 indexed next, uint256 indexed actorId, uint256  documentId);

    struct WStep {
        uint256 currentActor;
        uint256 current;
        uint256 next;
        uint256 forkId;
        uint256 mappingType;
        bytes recipientValidationsBytes;
        bytes senderValidationsBytes;
        bytes statusChecksBytes;
    }
}