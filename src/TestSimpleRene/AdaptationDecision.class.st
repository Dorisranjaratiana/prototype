Class {
	#name : 'AdaptationDecision',
	#superclass : 'Object',
	#instVars : [
		'field',
		'reason',
		'context',
		'timestamp'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
AdaptationDecision class >> field: aField reason: aReason context: aContext [
    ^ self new
        field: aField;
        reason: aReason;
        context: aContext;
        timestamp: DateAndTime now;
        yourself
]

{ #category : 'as yet unclassified' }
AdaptationDecision class >> field: f reason: r context: c timestamp: t [
    ^ self new
        field: f;
        reason: r;
        context: c;
        timestamp: t;
        yourself.
]

{ #category : 'accessing' }
AdaptationDecision >> context: aValue [
    context := aValue.
]

{ #category : 'accessing' }
AdaptationDecision >> field: aValue [
    field := aValue.
]

{ #category : 'printing' }
AdaptationDecision >> printOn: aStream [
    aStream
        nextPutAll: field;
        nextPutAll: ' → ';
        nextPutAll: reason;
        nextPutAll: ' (';
        nextPutAll: context;
        nextPutAll: ') @ ';
        print: timestamp.
]

{ #category : 'accessing' }
AdaptationDecision >> reason: aValue [
    reason := aValue.
]

{ #category : 'accessing' }
AdaptationDecision >> timestamp: aValue [
    timestamp := aValue.
]
