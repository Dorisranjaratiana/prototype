Class {
	#name : 'MyForm',
	#superclass : 'SpPresenter',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
MyForm >> buildForm: aDescription [

	aDescription do: [ :each |
			self layout add: (SpBoxLayout newLeftToRight
					 add: (self newTextInput text: each label)) ]
]

{ #category : 'layout' }
MyForm >> defaultLayout [

	^ SpBoxLayout newTopToBottom.
		
	 
]
