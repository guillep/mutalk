Class {
	#name : 'MTMessageSendArgumentsNullifierOperator',
	#superclass : 'MTBlockBasedMutantOperator',
	#category : 'MuTalk-Model-Operators',
	#package : 'MuTalk-Model',
	#tag : 'Operators'
}

{ #category : 'testing' }
MTMessageSendArgumentsNullifierOperator class >> isAbstract [

	^ self == MTMessageSendArgumentsNullifierOperator
]

{ #category : 'printing' }
MTMessageSendArgumentsNullifierOperator >> description [

	^ 'Nullify the arguments of message sends'
]

{ #category : 'applying' }
MTMessageSendArgumentsNullifierOperator >> expressionToReplace [

	^ [ :aNode | 
	  aNode isMessage and: [ aNode arguments size >= self whichArgument ] ]
]

{ #category : 'applying' }
MTMessageSendArgumentsNullifierOperator >> newExpression [

	| whichToReplace nodeCopy |
	^ [ :anOldNode | 
	  nodeCopy := anOldNode copy.
	  whichToReplace := nodeCopy arguments at: self whichArgument.
	  whichToReplace replaceWith: (RBLiteralValueNode value: nil).
	 nodeCopy]
]

{ #category : 'applying' }
MTMessageSendArgumentsNullifierOperator >> whichArgument [
	^ self subclassResponsibility 
]
