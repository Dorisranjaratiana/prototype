"
simple
"
Class {
	#name : 'ClientHopital',
	#superclass : 'Object',
	#instVars : [
		'age',
		'nom',
		'sexe',
		'uiColor',
		'prenom',
		'quantite',
		'dateNaissance'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'accessing' }
ClientHopital >> age [

	^ age
]

{ #category : 'accessing' }
ClientHopital >> age: anObject [

	age := anObject
]

{ #category : 'accessing' }
ClientHopital >> dateNaissance [

	^ dateNaissance
]

{ #category : 'accessing' }
ClientHopital >> dateNaissance: anObject [

	dateNaissance := anObject
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionAge [
	<simpleReneDescription>
	^ SRNumberDescription new
		accessor: #age;
		label: 'Age';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionDateNaissance [
	<simpleReneDescription>
	^ SRDateDescription new
		accessor: #dateNaissance ;
		label: 'Date de naissance';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionNom [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #nom ;
		label: 'Nom';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionPrenom [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #prenom ;
		label: 'Prenom';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionQuantite [
	<simpleReneDescription>
	^ SRNumberDescription new
		accessor: #quantite ;
		label: 'Quantite';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionSexe [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #sexe ;
		label: 'Sexe';
		yourself
]

{ #category : 'initialization' }
ClientHopital >> initialize [

	uiColor := Color blue
]

{ #category : 'accessing' }
ClientHopital >> nom [

	^ nom
]

{ #category : 'accessing' }
ClientHopital >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
ClientHopital >> prenom [

	^ prenom
]

{ #category : 'accessing' }
ClientHopital >> prenom: anObject [

	prenom := anObject
]

{ #category : 'accessing' }
ClientHopital >> quantite [

	^ quantite
]

{ #category : 'accessing' }
ClientHopital >> quantite: anObject [

	quantite := anObject
]

{ #category : 'accessing' }
ClientHopital >> sexe [

	^ sexe
]

{ #category : 'accessing' }
ClientHopital >> sexe: anObject [

	sexe := anObject
]

{ #category : 'accessing' }
ClientHopital >> uiColor [

	^ uiColor
]

{ #category : 'accessing' }
ClientHopital >> uiColor: anObject [

	uiColor := anObject
]
