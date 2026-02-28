"
""Je suis le constructeur générique de formulaires.
Mon rôle est de transformer une liste de descriptions
en widgets Spec2 affichables.

Je reçois :
    - un objet métier (ex: ClientHopital)
    - un contexte (SimpleContext / NoviceContext / ExpertContext)

Je produis :
    - un layout top-to-bottom avec labels + champs

Je ne connais jamais ClientHopital directement.
Je travaille uniquement avec les descriptions SRDescription.

Méthode principale :
    buildFor: anObject withContext: aContext""
"
Class {
	#name : 'SRFormBuilder',
	#superclass : 'SpPresenter',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
SRFormBuilder >> buildForm: allDescriptions [

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
SRFormBuilder >> defaultLayout [

	^ SpBoxLayout newTopToBottom.
		
	 
]
