Class {
	#name : 'MTRemoveCaretOperator',
	#superclass : 'MTMutantOperator',
	#category : 'MuTalk-Model-Operators',
	#package : 'MuTalk-Model',
	#tag : 'Operators'
}

{ #category : 'printing' }
MTRemoveCaretOperator >> description [
	^'Remove ^'
]

{ #category : 'applying' }
MTRemoveCaretOperator >> expressionToReplace [ 
	^'^``@object'

]

{ #category : 'applying' }
MTRemoveCaretOperator >> newExpression [ 
	^'``@object'

]

{ #category : 'suggestions' }
MTRemoveCaretOperator >> suggestionFor: aMutation using: aMutantKillingSuggestionGenerator [
	^aMutantKillingSuggestionGenerator suggestionForMutationProducedByARemoveCaretOperator: aMutation.
]

{ #category : 'applying' }
MTRemoveCaretOperator >> timesToApplyIn: aCompiledMethod with: aParseTree [ 

	"ignore methods that contain only ^self"
	(aParseTree statements asArray = { RBParseTreeSearcher treeMatching: '^ self' in: aParseTree })
		ifTrue: [ ^ 0 ].
	
	^ super timesToApplyIn: aCompiledMethod with: aParseTree 
]
