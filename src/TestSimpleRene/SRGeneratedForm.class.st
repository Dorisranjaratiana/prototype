"
""Je suis le formulaire généré et affiché à l'utilisateur.
Mon rôle est de présenter les champs filtrés selon le contexte.

Je contiens :
    - les widgets générés par SRFormBuilder
    - le titre 'Formulaire genere pour: [Niveau]'
    - les boutons OK et Annuler

Je suis créé à chaque clic sur 'Generer le formulaire'.
Je suis neutre : je fonctionne pour n'importe quel objet métier
(ClientHopital, Etudiant, Patient, Produit...)
sans modifier une ligne de code.""
"
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
