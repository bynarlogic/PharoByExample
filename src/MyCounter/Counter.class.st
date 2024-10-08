Class {
	#name : 'Counter',
	#superclass : 'Object',
	#classVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startAt: anInteger [ 
	^ self new count: anInteger 

]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [ 
	count := anInteger.
]

{ #category : 'API' }
Counter >> decrement [
	count := count - 1
]

{ #category : 'API' }
Counter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [ 
	count := 0.
	^ self.
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
