Class {
	#name : 'SRGeneratedForm',
	#superclass : 'SpPresenter',
	#instVars : [
		'simpleReneModel',
		'okButton',
		'cancelButton',
		'selectedLevel'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'layout' }
SRGeneratedForm >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SRFormBuilder new buildForm: simpleReneModel simpleReneDescription);
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

	aWindowPresenter title: 'Dynamic form generator'.


	simpleReneModel := SRFormApp availableOptions at: selectedLevel.
	okButton := self newButton label: 'OK'.
	cancelButton := self newButton label: 'Annuler'
]

{ #category : 'as yet unclassified' }
SRGeneratedForm >> openModalWithLevel: aLevel [

	selectedLevel := aLevel.
	self openModal
]
