Class {
	#name : 'Address',
	#superclass : 'Object',
	#instVars : [
		'place',
		'street'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'acessing-magritte' }
Address >> descriptionPlace [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #place;
		label: 'Place';
		yourself
]

{ #category : 'acessing-magritte' }
Address >> descriptionStreet [

	<simpleReneDescription>
	^ SRStringDescription new
		  accessor: #street;
		  label: 'Street';
		  beRequired;
		  yourself
]

{ #category : 'accessing' }
Address >> place [

	^ place
]

{ #category : 'accessing' }
Address >> place: anObject [

	place := anObject
]

{ #category : 'accessing' }
Address >> street [

	^ street
]

{ #category : 'accessing' }
Address >> street: anObject [

	street := anObject
]
