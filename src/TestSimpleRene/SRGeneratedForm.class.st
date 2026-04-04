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

{ #category : 'adding' }
SRGeneratedForm >> addReflexiveButton [
    | button |
    button := self newButton
        label: 'Rendre allergies visible (Ψ)';
        action: [ 
            | desc |
            desc := (simpleReneModelClass new simpleReneDescription)
                detect: [ :d | d label = 'Allergies' ].
            AXPLReflector setLevel: #base of: desc.
            self layout removeAll.
            self layout add: self defaultLayout.
            self layout add: button ].
    self layout add: button
]

{ #category : 'as yet unclassified' }
SRGeneratedForm >> allowedLevelsFor: aLevel [
    aLevel = 'Simple' ifTrue: [ ^ #( #simple ) ].
    aLevel = 'Novice' ifTrue: [ ^ #( #simple #base ) ].
    aLevel = 'Expert' ifTrue: [ ^ #( #simple #base #expert ) ].
    ^ #()
]

{ #category : 'layout' }
SRGeneratedForm >> defaultLayout [
    | descriptions allowed visible hidden mainLayout hiddenLayout |
    descriptions := simpleReneModelClass new simpleReneDescription.
    allowed := self allowedLevelsFor: selectedLevel.
    visible := (AXPLContext filter: descriptions withLevels: allowed) key.
    hidden := (AXPLContext filter: descriptions withLevels: allowed) value.

    mainLayout := SpBoxLayout newTopToBottom.
    mainLayout add: (SRFormBuilder new buildForm: visible).

    hidden ifNotEmpty: [
        hiddenLayout := SpBoxLayout newTopToBottom.
        hiddenLayout addAll: (hidden collect: [ :decision |
            SpButtonPresenter new
                label: (String streamContents: [ :stream |
                    stream nextPutAll: '? ';
                          nextPutAll: decision field;
                          nextPutAll: ' (masqué)' ]);
                action: [ UIManager default alert: decision printString ] ]).
        mainLayout add: hiddenLayout ].

    ^ mainLayout
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
    cancelButton := self newButton label: 'Annuler'.
    self layout add: self defaultLayout.
    self addReflexiveButton.   "commenter pour désactiver"
]

{ #category : 'as yet unclassified' }
SRGeneratedForm >> openModalWithLevel: aLevel [
    selectedLevel := aLevel.
    self openModal
]
