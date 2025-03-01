Class {
	#name : 'MTReplaceAndArgumentWithTrueOperatorTest',
	#superclass : 'MTMutantOperatorTest',
	#category : 'MuTalk-Tests',
	#package : 'MuTalk-Tests'
}

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithNoSenders [  
	 1 + 2.
	^ true ifTrue:[false].
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithOneSender [
	^1 = 2
		and: [2 = 2]
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithOneSenderModified [
	^1=2
		and: [true]
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithTwoSenders [
	^1 = 2
		and: [2 = 2 and: [3 = 3]]
	
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithTwoSendersModifiedFirst [
	^1=2
		and: [true]
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> methodWithTwoSendersModifiedSecond [
	^1 = 2
		and: [2 = 2 and: [true]]
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> operator [
	^ MTReplaceAndArgumentWithTrueOperator new.
]

{ #category : 'accessing' }
MTReplaceAndArgumentWithTrueOperatorTest >> operatorDescription [
	^'Replace #and: argument with [true]'
]
