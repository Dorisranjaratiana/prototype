Class {
	#name : 'MyForm',
	#superclass : 'SpPresenter',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
MyForm >> buildForm: allDescriptions [

	allDescriptions do: [ :each |
		
			(each isKindOf: SRStringDescription) ifTrue: [
				self layout add: (self newStringDescriptionInput: each) ] .
			
			
			(each isKindOf: SRNumberDescription ) ifTrue: [ 
				self layout add: (self newNumberDescriptionInput: each)
				 ].
			]
]

{ #category : 'layout' }
MyForm >> defaultLayout [

	^ SpBoxLayout newTopToBottom.
		
	 
]

{ #category : 'instance creation' }
MyForm >> newNumberDescriptionInput: aDescription [

	^ SpBoxLayout newLeftToRight add:
		  (SpDatePresenter new)
]

{ #category : 'instance creation' }
MyForm >> newOptionDescriptionInput: aDescription [

	^ SpBoxLayout newLeftToRight add:
		  (self newDropList )
]

{ #category : 'instance creation' }
MyForm >> newStringDescriptionInput: aDescription [

	^ SpBoxLayout newLeftToRight add:
		  (self newTextInput text: aDescription label)
]
