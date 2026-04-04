Class {
	#name : 'ClientHopital',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'prenom',
		'age',
		'telephone',
		'chambre',
		'allergies'
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
ClientHopital >> allergies [

	^ allergies
]

{ #category : 'accessing' }
ClientHopital >> allergies: anObject [

	allergies := anObject
]

{ #category : 'accessing' }
ClientHopital >> chambre [

	^ chambre
]

{ #category : 'accessing' }
ClientHopital >> chambre: anObject [

	chambre := anObject
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionAge [
    <simpleReneDescription>
    ^ SRNumberDescription new
        accessor: #age;
        label: 'Âge';
        comment: 'Âge du patient – information de base';
        propertyAt: #level put: #simple;
        yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionAllergies [
    <simpleReneDescription>
    ^ SRStringDescription new
        accessor: #allergies;
        label: 'Allergies';
        comment: 'Allergies médicamenteuses – réservé au contexte Expert';
        propertyAt: #level put: #expert;
        yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionChambre [
    <simpleReneDescription>
    ^ SRStringDescription new
        accessor: #chambre;
        label: 'Chambre';
        comment: 'Chambre assignée – visible en contexte Base/Expert';
        propertyAt: #level put: #base;
        yourself

]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionNom [
    <simpleReneDescription>
    ^ SRStringDescription new
        accessor: #nom;
        label: 'Nom';
        comment: 'Nom du patient – identifiant principal';
        propertyAt: #level put: #simple;
        yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionPrenom [
    <simpleReneDescription>
    ^ SRStringDescription new
        accessor: #prenom;
        label: 'Prénom';
        comment: 'Prénom usuel';
        propertyAt: #level put: #simple;
        yourself
]

{ #category : 'as yet unclassified' }
ClientHopital >> descriptionTelephone [
    <simpleReneDescription>
    ^ SRStringDescription new
        accessor: #telephone;
        label: 'Téléphone';
        comment: 'Numéro de contact – visible en contexte Base/Expert';
        propertyAt: #level put: #base;
        yourself
]

{ #category : 'initialization' }
ClientHopital >> initialize [
    super initialize.
    nom := ''.
    prenom := ''.
    age := 0.
    telephone := ''.
    chambre := ''.
    allergies := ''.
    ^ self
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
ClientHopital >> telephone [

	^ telephone
]

{ #category : 'accessing' }
ClientHopital >> telephone: anObject [

	telephone := anObject
]
