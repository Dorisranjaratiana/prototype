Class {
	#name : 'AXPLContext',
	#superclass : 'Object',
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'as yet unclassified' }
AXPLContext class >> filter: descriptions withLevels: allowedLevels [
    | visible hidden |
    visible := OrderedCollection new.
    hidden := OrderedCollection new.
    descriptions do: [ :desc |
        | level |
        level := desc propertyAt: #level ifAbsent: [ #simple ].
        (allowedLevels includes: level)
            ifTrue: [ visible add: desc ]
            ifFalse: [
                hidden add: (AdaptationDecision
                    field: desc label
                    reason: desc comment
                    context: allowedLevels printString) ] ].
    ^ visible -> hidden
]

{ #category : 'initialization' }
AXPLContext >> adapt: aCollection [
    self subclassResponsibility.
]

{ #category : 'as yet unclassified' }
AXPLContext >> adapt: descriptions withLevels: allowedLevels [
    | shown hidden |
    
    shown := OrderedCollection new.
    hidden := OrderedCollection new.

    descriptions do: [ :desc |
        | level explanation |
        
        level := desc propertyAt: #level ifAbsent: [ #simple ].
        explanation := desc propertyAt: #explanation ifAbsent: [ 'No explanation' ].

        (allowedLevels includes: level)
            ifTrue: [ shown add: desc ]
            ifFalse: [
                hidden add: (AdaptationDecision
                    field: desc label
                    reason: explanation
                    context: self name
                    timestamp: DateAndTime now)
            ].
    ].

    ^ {
        #shown -> shown.
        #hidden -> hidden
    } asDictionary.
]

{ #category : 'accessing' }
AXPLContext >> name [
    ^ self class name.
]
