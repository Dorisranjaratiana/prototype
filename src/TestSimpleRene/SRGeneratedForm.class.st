Class {
	#name : 'SRGeneratedForm',
	#superclass : 'SpPresenter',
	#instVars : [
		'okButton',
		'cancelButton',
		'selectedLevel',
		'simpleReneModelClass'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'layout' }
SRGeneratedForm >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SRFormBuilder new buildForm: simpleReneModelClass new simpleReneDescription);
		  yourself
]

{ #category : 'initialization' }
SRGeneratedForm >> initializeDialogWindow: aDialogPresenter [

	aDialogPresenter centered.
	aDialogPresenter
		addButton: 'Annuler' do: [ :button | button close ];
		addButton: 'OK' do: [ :button | button beOk; close ]
]

{ #category : 'initialization' }
SRGeneratedForm >> initializeWindow: aWindowPresenter [

	super initializeWindow: aWindowPresenter.

	aWindowPresenter title: 'Formulaire genere pour: ' , selectedLevel.


	simpleReneModelClass := SRFormApp availableOptions at: selectedLevel.
	okButton := self newButton label: 'OK'.
	cancelButton := self newButton label: 'Annuler'
]

{ #category : 'as yet unclassified' }
SRGeneratedForm >> openModalWithLevel: aLevel [

	selectedLevel := aLevel.
	self openModal
]
