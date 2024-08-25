Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [

	self assert: ((Counter startAt: 5) increment ; count) equals: 6
]

{ #category : 'tests' }
CounterTest >> testCountIsDecremented [
	| c |
	c := Counter new.
	c count: 4  ; decrement ; decrement.
	self assert: c count equals: 2.
]

{ #category : 'tests' }
CounterTest >> testCountIsIncremented [
	| c |
	c := Counter new.
	c count: 0 ; increment ; increment.
	self assert: c count equals: 2.
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testCounterStartAt [
	self assert: (Counter startAt: 2) count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	| c |
	c := Counter new.
	
	self assert: c count equals: 0
	
]
