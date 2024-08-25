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
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [ 
	count := anInteger.
]
