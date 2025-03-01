Class {
	#name : 'MTLiteralIntegersToZeroOperator',
	#superclass : 'MTBlockBasedMutantOperator',
	#category : 'MuTalk-Model-Operators',
	#package : 'MuTalk-Model',
	#tag : 'Operators'
}

{ #category : 'printing' }
MTLiteralIntegersToZeroOperator >> description [

	^ 'Convert a literal integer to zero'
]

{ #category : 'applying' }
MTLiteralIntegersToZeroOperator >> expressionToReplace [

	^ [ :aNode | 
	  aNode isLiteralNode & aNode isLiteralArray not and: [ 
		  aNode value isInteger and: [aNode value isZero not] ] ]
]

{ #category : 'applying' }
MTLiteralIntegersToZeroOperator >> newExpression [

	^ [ :anOldNode | RBLiteralValueNode value: 0 ]
]
