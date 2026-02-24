Class {
	#name : 'SRFormVisitor',
	#superclass : 'Object',
	#traits : 'SpTPresenterBuilder',
	#classTraits : 'SpTPresenterBuilder classTrait',
	#instVars : [
		'formElements'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'accessing' }
SRFormVisitor >> formElements [

	^ formElements
]

{ #category : 'visiting' }
SRFormVisitor >> initialize [

	formElements := OrderedCollection new
]

{ #category : 'visiting' }
SRFormVisitor >> visitBooleanDescription: aSRBooleanDescription [

	formElements
		add: {aSRBooleanDescription label . self newCheckBox}.
		 
]

{ #category : 'visiting' }
SRFormVisitor >> visitDateAndTimeDescription: aSRDateAndTimeDescription [

	formElements add: {
			aSRDateAndTimeDescription label.
			SpDatePresenter new }
]

{ #category : 'visiting' }
SRFormVisitor >> visitDateDescription: aSRDateDescription [

	formElements
		add: {aSRDateDescription label . SpDatePresenter new}
]

{ #category : 'visiting' }
SRFormVisitor >> visitNumberDescription: aSRNumberDescription [

	formElements
		add: { aSRNumberDescription label . self newNumberInput}
]

{ #category : 'visiting' }
SRFormVisitor >> visitOptionDescription: aSROptionDescription [

	formElements add: {
			aSROptionDescription label.
			(SpDropListPresenter new items: aSROptionDescription options) }
]

{ #category : 'visiting' }
SRFormVisitor >> visitStringDescription: aSRStringDescription [

	formElements
		add: {aSRStringDescription label . self newTextInput}
]

{ #category : 'visiting' }
SRFormVisitor >> visitTimeDescription: aSRTimeDescription [

	formElements add: {
			aSRTimeDescription label.
			SpDatePresenter new }
]
