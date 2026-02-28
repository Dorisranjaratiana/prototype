Class {
	#name : 'SRFormApp',
	#superclass : 'SpPresenter',
	#instVars : [
		'generateButton',
		'levelDropList'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
SRFormApp class >> availableOptions [

	^ Dictionary newFrom: {
			  ('Simple' -> ClientHopital).
			  ('Novice' -> ClientHopitalNovice).
			  ('Expert' -> ClientHopitalExpert) }
]

{ #category : 'as yet unclassified' }
SRFormApp >> availableOptions [
	^ self class availableOptions
]

{ #category : 'layout' }
SRFormApp >> defaultLayout [ 

^ SpBoxLayout newTopToBottom
		  add: self toolbarLayout;
		  yourself
]

{ #category : 'as yet unclassified' }
SRFormApp >> generateAndOpenForm [ 

	SRGeneratedForm new openModalWithLevel: levelDropList selectedItem

]

{ #category : 'initialization' }
SRFormApp >> initializeWindow: aWindowPresenter [

	super initializeWindow: aWindowPresenter.

	aWindowPresenter
		title: 'Dynamic form generator';
		initialExtent: 300 @ 50.


	generateButton := self newButton label: 'Generer le formulaire'.
	generateButton action: [ self generateAndOpenForm ].

	levelDropList := SpDropListPresenter new items: self class availableOptions keys
]

{ #category : 'as yet unclassified' }
SRFormApp >> toolbarLayout [

	| toolbar |
	toolbar := SpBoxLayout newTopToBottom.
	toolbar
		add: (SpBoxLayout newLeftToRight
				 add: (self newLabel label: 'Niveau:');
				 add: levelDropList);
		add: generateButton.

	^ toolbar
]
