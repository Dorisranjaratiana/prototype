Class {
	#name : 'ClientHopital',
	#superclass : 'Object',
	#instVars : [
		'age',
		'nom',
		'sexe'
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

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionAge [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #age;
		label: 'Age';
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
ClientHopital >> descriptionSexe [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #sexe ;
		label: 'Sexe';
		yourself
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
ClientHopital >> sexe [

	^ sexe
]

{ #category : 'accessing' }
ClientHopital >> sexe: anObject [

	sexe := anObject
]
