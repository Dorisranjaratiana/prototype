Class {
	#name : 'MyContactAddress',
	#superclass : 'WAComponent',
	#instVars : [
		'addressForm'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'initialization' }
MyContactAddress >> children [

	^ Array with: addressForm
]

{ #category : 'initialization' }
MyContactAddress >> initialize [

	super initialize.
	addressForm := Address new
		               street: 'Tillierstrasse 17';
		               place: 'Bern';
		               yourself
]
