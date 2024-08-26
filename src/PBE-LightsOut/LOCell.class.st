"
## LOCell

Lights Out Game Cell for storing off/on state
"
Class {
	#name : 'LOCell',
	#superclass : 'SimpleSwitchMorph',
	#instVars : [
		'mouseAction'
	],
	#classVars : [
		'mouseAction'
	],
	#category : 'PBE-LightsOut',
	#package : 'PBE-LightsOut'
}

{ #category : 'initialization' }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 32 @ 32.
	offColor := Color paleYellow.
	onColor := Color paleBlue. 
	self useSquareCorners.
	self turnOff.
]

{ #category : 'accessing' }
LOCell >> mouseAction: aFullBlockClosure [ 
	mouseAction := aFullBlockClosure
]

{ #category : 'event handling' }
LOCell >> mouseUp: anEvent [
	self toggleState.
	mouseAction value
]
