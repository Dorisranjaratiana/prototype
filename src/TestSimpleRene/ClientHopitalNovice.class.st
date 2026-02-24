Class {
	#name : 'ClientHopitalNovice',
	#superclass : 'ClientHopital',
	#instVars : [
		'allergie'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'accessing' }
ClientHopitalNovice >> allergie [

	^ allergie
]

{ #category : 'accessing' }
ClientHopitalNovice >> allergie: anObject [

	allergie := anObject
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionAllergie [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #allergie;
		label: 'Allergie';
		yourself
]

{ #category : 'initialization' }
ClientHopitalNovice >> initialize [

	uiColor := Color red 
]
