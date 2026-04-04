Class {
	#name : 'AXPLReflector',
	#superclass : 'Object',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'properties' }
AXPLReflector class >> levelOf: aDescription [
    ^ aDescription propertyAt: #level ifAbsent: [ #simple ]
]

{ #category : 'initialization' }
AXPLReflector class >> setComment: aNewComment of: aDescription [
    aDescription comment: aNewComment
]

{ #category : 'initialization' }
AXPLReflector class >> setLevel: aNewLevel of: aDescription [
    aDescription propertyAt: #level put: aNewLevel
]
