Class {
	#name : 'MyForm',
	#superclass : 'SpPresenter',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
MyForm >> buildForm: allDescriptions [

	| formVisitor |
	formVisitor := SRFormVisitor new.

	allDescriptions do: [ :each | each acceptSimpleReneVisitor: formVisitor ].

	self layout add: (SpGridLayout build: [ :builder |
				 formVisitor formElements do: [ :each |
						 builder
							 add: each first;
							 add: each second;
							 nextRow ] ])
]

{ #category : 'layout' }
MyForm >> defaultLayout [

	^ SpBoxLayout newTopToBottom.
		
	 
]
