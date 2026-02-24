Class {
	#name : 'ClientHopitalExpert',
	#superclass : 'ClientHopitalNovice',
	#instVars : [
		'gravite'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
ClientHopitalExpert >> descriptionGravite [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #gravite ;
		label: 'Gravite';
		yourself
]

{ #category : 'accessing' }
ClientHopitalExpert >> gravite [

	^ gravite
]

{ #category : 'accessing' }
ClientHopitalExpert >> gravite: anObject [

	gravite := anObject
]

{ #category : 'initialization' }
ClientHopitalExpert >> initialize [

	uiColor := Color green
]
