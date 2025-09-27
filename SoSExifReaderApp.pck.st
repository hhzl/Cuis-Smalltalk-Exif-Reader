'From Cuis7.5 [latest update: #7610] on 27 September 2025 at 4:24:47 pm'!
'Description '!
!provides: 'SoSExifReaderApp' 1 0!
SystemOrganization addCategory: #SoSExifReaderApp!


!classDefinition: #ExifBasicTag category: #SoSExifReaderApp!
Object subclass: #ExifBasicTag
	instanceVariableNames: 'tagName fieldName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'ExifBasicTag class' category: #SoSExifReaderApp!
ExifBasicTag class
	instanceVariableNames: ''!

!classDefinition: #ExifOutputTag category: #SoSExifReaderApp!
ExifBasicTag subclass: #ExifOutputTag
	instanceVariableNames: 'output separator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'ExifOutputTag class' category: #SoSExifReaderApp!
ExifOutputTag class
	instanceVariableNames: ''!

!classDefinition: #ExifJPEGMaker category: #SoSExifReaderApp!
Object subclass: #ExifJPEGMaker
	instanceVariableNames: 'jpegArray dib'
	classVariableNames: ''
	poolDictionaries: 'NlsCatCGa'
	category: 'SoSExifReaderApp'!
!classDefinition: 'ExifJPEGMaker class' category: #SoSExifReaderApp!
ExifJPEGMaker class
	instanceVariableNames: ''!

!classDefinition: #SoSExifReader category: #SoSExifReaderApp!
Object subclass: #SoSExifReader
	instanceVariableNames: 'visitor bigEndian filePath fileStream thumbnailDIB headerOffset jpegOffset endOffset thumbnailLength tags startMarker showOutput currentTags fileName debug thumbnailData fileSize result startOffset validExif file thumbnailOffset'
	classVariableNames: 'TagDictionary'
	poolDictionaries: 'CldtConstants CfsConstants'
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSExifReader class' category: #SoSExifReaderApp!
SoSExifReader class
	instanceVariableNames: 'TagDictionary'!

!classDefinition: #SoSTagFiller category: #SoSExifReaderApp!
Object subclass: #SoSTagFiller
	instanceVariableNames: 'tags file offset headerOffset bigEndian'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSTagFiller class' category: #SoSExifReaderApp!
SoSTagFiller class
	instanceVariableNames: ''!

!classDefinition: #SoSVisitorAbstractClass category: #SoSExifReaderApp!
Object subclass: #SoSVisitorAbstractClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSVisitorAbstractClass class' category: #SoSExifReaderApp!
SoSVisitorAbstractClass class
	instanceVariableNames: ''!

!classDefinition: #SoSVisitorAbstractOutputClass category: #SoSExifReaderApp!
SoSVisitorAbstractClass subclass: #SoSVisitorAbstractOutputClass
	instanceVariableNames: 'showOutput separator outputList bigEndian'
	classVariableNames: ''
	poolDictionaries: 'CldtConstants'
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSVisitorAbstractOutputClass class' category: #SoSExifReaderApp!
SoSVisitorAbstractOutputClass class
	instanceVariableNames: ''!

!classDefinition: #SoSExifTag category: #SoSExifReaderApp!
ProtoObject subclass: #SoSExifTag
	instanceVariableNames: 'count tagDec type tagHex bytes value defaultValue'
	classVariableNames: 'Headers Tags'
	poolDictionaries: 'CldtConstants'
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSExifTag class' category: #SoSExifReaderApp!
SoSExifTag class
	instanceVariableNames: 'Tags Headers'!

!classDefinition: #SoSExifTagError category: #SoSExifReaderApp!
SoSExifTag subclass: #SoSExifTagError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSExifTagError class' category: #SoSExifReaderApp!
SoSExifTagError class
	instanceVariableNames: ''!

!classDefinition: #SoSVisitorPrintClass category: #SoSExifReaderApp!
ProtoObject subclass: #SoSVisitorPrintClass
	instanceVariableNames: 'result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SoSExifReaderApp'!
!classDefinition: 'SoSVisitorPrintClass class' category: #SoSExifReaderApp!
SoSVisitorPrintClass class
	instanceVariableNames: ''!


!ExifBasicTag methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
fieldName


	"Return the value of fieldName."

	^fieldName


! !

!ExifBasicTag methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
fieldName: anObject


	"Save the value of fieldName."

	fieldName := anObject.
	self signalEvent: #fieldName with: anObject


! !

!ExifBasicTag methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
tagName


	"Return the value of tagName."

	^tagName


! !

!ExifBasicTag methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
tagName: anObject


	"Save the value of tagName."

	tagName := anObject.
	self signalEvent: #tagName with: anObject


! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
<= aTag


	^self fieldName <= aTag fieldName


! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
isEmpty


	^false
! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
output


	"Return the value of output."

	^output


! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
output: anObject


	"Save the value of output."

	output := anObject.
	self signalEvent: #output with: anObject


! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
separator


	"Return the value of separator."

	^separator


! !

!ExifOutputTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
separator: anObject


	"Save the value of separator."

	separator := anObject.
	self signalEvent: #separator with: anObject


! !

!ExifOutputTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
newEmpty


	^self with: '' with: '' with: '' with: 'Not available'
! !

!ExifOutputTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
newEmptyFor: aName


	^self with: aName with: '' with: '' with: 'Not available'
! !

!ExifOutputTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
with: aTagName with: aFieldName with: separator with: output


	| o |

	o := self new.
	o
		tagName: aTagName;
		fieldName: aFieldName;
		separator: separator;
		output: output.

	^o
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
dib

	"Return the value of dib."

	^dib
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
dib: anObject

	"Save the value of dib."

	dib := anObject.
	self signalEvent: #dib with: anObject
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
jpegArray

	"Return the value of jpegArray."

	^jpegArray
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
jpegArray: anObject

	"Save the value of jpegArray."

	jpegArray := anObject.
	self signalEvent: #jpegArray with: anObject
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
makeJPEG


	| st |



	"( CgJPEGFileFormat formatMatchesByteObjects: (Array with: self jpegArray) 
	offsetsIntoByteObjects: #(0)) ifFalse:[ ^ false].."

	st := (CgByteArrayByteStream on: (Array with: self jpegArray) offsets: #(0)).
	[self dib: (CgJPEGFileFormat new loadFromByteStream: st)]
		when: ExError
		do: [:signal | signal exitWith: 'Exception: ' , signal argument , 'format error'].
	self jpegArray: nil
! !

!ExifJPEGMaker methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:21'!
writeJPEGTo: aFilePath




	CgJPEGFileFormat new unload: self dib intoFile: aFilePath
! !

!ExifJPEGMaker class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
_PRAGMA_IS_


	"%%PRAGMA DECLARE
	(name: IS_ExifJPEGMaker isPool: true isConstant: false)
	(pool: IS_ExifJPEGMaker declarations: (
		(name: IS_jpegArray isConstant: false)
		(name: IS_dib isConstant: false)
		(name: IS_instanceInterfaceSpec isConstant: false)
	))"


! !

!ExifJPEGMaker class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:21'!
newFor: aByteArray


	| o |

	o := self new.
	o
		jpegArray: aByteArray;
		makeJPEG.
	^o
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
activateVisitor



	SoSVisitorPrintClass bigEndian: self bigEndian.
	self visitor: SoSVisitorPrintClass new.
	self visitor
		visit: self currentTags with: nil;
		showOutput: self showOutput;
		outputResultTo: 'Transcript'.
	self makeResult: self visitor outputList.
	^result
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
bigEndian


	"Return the value of bigEndian."

	^bigEndian


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
bigEndian: anObject


	"Save the value of bigEndian."

	bigEndian := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
buildRecordFor: aPosition


	^self fileStream copyFrom: aPosition to: (aPosition + 11)


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
completeTags


	SoSTagFiller
		newFor: self fileStream
		tags: self currentTags
		offset: self headerOffset
		bigEndian: self bigEndian
		headerOffset: self headerOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
createTagListForFile: aFilePath


	| tagsO |

	tagsO := SortedCollection sortBlock: [:a :b | a fieldName <= b fieldName].
	self tags: (self decodeAFileCalled: aFilePath).
	self tags: (self tags current tags reject: [:each | each isTagError]).
	tagsO addAll: self tags.
	^self presentTagsFrom: tagsO
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
currentTags


	"Return the value of currentTags."

	^currentTags


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
currentTags: anObject


	"Save the value of currentTags."

	currentTags := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
debug


	"Return the value of debug."

	debug isNil ifTrue: [debug := false].
	^debug


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
debug: anObject


	"Save the value of debug."

	debug := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
debugShowTags


	Transcript
		cr;
		show: 'Tags';
		cr.
	self currentTags asSortedCollection do: [:each |
		Transcript
			show: each printString;
			cr]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
decodeAFileCalled: aFileName


	self fileName: aFileName.
	TagDictionary := SoSExifTag tagsFromCSV.
	self
		resolveTags;
		completeTags.

	^self
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
endOffset


	"Return the value of endOffset."

	^endOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
endOffset: anObject


	"Save the value of endOffset."

	endOffset := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
exifIDValue


	| mem |

	mem :=
		((self tags at: SoSExifTag exifIDFTagNo ifAbsent: [^false]) copyFrom: 9 to: 12) asByteArray
			asInteger: self bigEndian.
	^mem + self headerOffset + 1


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
exifIFDTag


	^34665


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
file


	"Return the value of file."

	^file


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
file: anObject


	"Save the value of file."

	file := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileName


	"Return the value of fileName."

	^fileName


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileName: anObject


	"Save the value of fileName."

	fileName := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
filePath


	"Return the value of filePath."

	^filePath


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
filePath: anObject


	"Save the value of filePath."

	filePath := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileSize


	"Return the value of fileSize."

	^fileSize


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileSize: anObject


	"Save the value of fileSize."

	fileSize := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileStream


	"Return the value of fileStream."

	^fileStream


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
fileStream: anObject


	"Save the value of fileStream."

	fileStream := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
findAMarker: aMarker


	"The marker is in decimal so it needs to be made into a byte array"

	| ba |

	ba := aMarker asByteArray: self bigEndian.
	^self getStreamMarkersFor: ba count: 2 on: self fileStream


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
findASingleMarker: aMarker


	"The marker is in decimal so it needs to be made into a byte array"

	| ba |

	ba := aMarker asByteArray: self bigEndian.
	^self getStreamMarkersFor: ba count: 1 on: self fileStream


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
findEndianMarker


	| a |

	a := self findASingleMarker: 18761.
	(a = false or: [a isEmpty]) ifFalse: [(a at: 1) < self endOffset ifTrue: [^a at: 1]].
	a := self findASingleMarker: 19789.
	(a = false or: [a isEmpty]) ifFalse: [(a at: 1) < self endOffset ifTrue: [^a at: 1]].
	^0


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
getAllData


	| exifIDValue |

	self headerOffset = 0
		ifFalse: [
			self validExif: (
				self
					makeAllTags: (self headerOffset + 9)
					count: (self interopCount: (self headerOffset + 8))).
			self validExif = false
				ifFalse: [
					exifIDValue := self exifIDValue.
					exifIDValue = false
						ifFalse: [
							self
								makeAllTags: self exifIDValue
								count: (self interopCount: (self exifIDValue - 1)).
							self makeThumbnail.
							self validExif: true]
						ifTrue: [self validExif: false]]]
		ifTrue: [self validExif: false]



! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
getStreamMarkersFor: aMarker count: aCount


	^self getStreamMarkersFor: aMarker count: aCount on: self fileStream


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
getStreamMarkersFor: aMarker count: aCount on: aStream


	| r1 rOC |

	r1 := 0.
	rOC := OrderedCollection new.
	aStream doWithIndex: [:each :i |
		i < aStream size
			ifTrue: [
				(Array with: (aStream at: i) with: (aStream at: (i + 1))) asByteArray = aMarker
					ifTrue: [
						rOC add: i.
						r1 := r1 + 1.
						r1 = aCount ifTrue: [^rOC]]]].
	[rOC size < aCount] whileTrue: [rOC add: 0].
	(rOC at: 1) = 0 ifTrue: [^false].
	(rOC at: 1) = 2 ifTrue: [^false].
	(rOC at: 2) > 1000 ifTrue: [^false].
	^rOC


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
headerOffset


	"Return the value of headerOffset."

	^headerOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
headerOffset: anObject


	"Save the value of headerOffset."

	headerOffset := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
interopCount


	^(self fileStream copyFrom: 21 to: 22) asSmallInteger: self bigEndian


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
interopCount: start


	^(self fileStream copyFrom: start to: (start + 1)) asSmallInteger: self bigEndian


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
jpegOffset


	"Return the value of jpegOffset."

	^jpegOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
jpegOffset: anObject


	"Save the value of jpegOffset."

	jpegOffset := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
loadUpFrom: aFilePath


	self
		filePath: aFilePath;
		fileName: aFilePath justLastEntry;
		tags: Dictionary new;
		setFileSize.
	self parseExif = false
		ifFalse: [
			self
				resolveEndian;
				makeHeaderOffset;
				getAllData.
			^self]
		ifTrue: [^self]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
makeATagEntry: aBlock


	| tag |

	tag := (aBlock copyFrom: 1 to: 2) asByteArray asSmallInteger: self bigEndian.
	self tags at: tag put: aBlock copy.
	(tag = SoSExifTag exifIDFTagNo or: [tag = 0]) ifTrue: [^#end].
	^true


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
makeAllTags: startValue count: count


	| increment st currentBlock byteNumber |


	((count = 0) or: [count > 50]) ifTrue: [^false].
	st := ReadWriteStream on: self fileStream.
	st position: startValue.
	increment := 12.
	byteNumber := 12.
	currentBlock := ExifValueArray new: 12 bigEndian: self bigEndian.
	1 to: count do: [:i |
		(st position + byteNumber) > st readLimit ifTrue: [^false].
		st next: byteNumber into: currentBlock startingAt: 1.
		st position: (st position + (increment - byteNumber)).
		self makeATagEntry: currentBlock].
	^true


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
makeHeaderOffset


	self headerOffset: self findEndianMarker


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
makeResult: aList


	self result: Dictionary new.
	aList do: [:each | result at: each tagName put: each]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
makeThumbnail


	self
		thumbnailLength: self jpegOffset - self thumbnailOffset;
		thumbnailData: (self fileStream copyFrom: self thumbnailOffset to: (self jpegOffset - 1));
		thumbnailDIB: (ExifJPEGMaker newFor: self thumbnailData)


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
openFile


	| f |

	f := CfsReadFileStream open: self filePath.
	f isCfsError ifTrue: [^false].
	self fileStream: f contents asByteArray.
	f close.
	^true


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
parseAFileCalled: aFileName



	self
		resolveTags;
		completeTags;
		activateVisitor;
		showDebug


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
parseExif


	self openFile ifFalse: [^false].
	^self setOffsetValues


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
presentTagsFrom: tagList


	| wantedDictionary |

	wantedDictionary := Dictionary new.
	tagList isEmpty ifTrue: [^wantedDictionary].
	tagList do: [:aTag | | tagValue |
		tagValue := aTag value.
		wantedDictionary at: aTag tagName put: tagValue].
	^wantedDictionary
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
resolveEndian


	| a |

	a := self findASingleMarker: 18761.
	(a = false or: [a isEmpty]) ifFalse: [(a at: 1) < self endOffset ifTrue: [^self bigEndian: true]].
	a := self findASingleMarker: 19789.
	(a = false or: [a isEmpty]) ifFalse: [(a at: 1) < self endOffset ifTrue: [self bigEndian: false]].
	^false


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
resolveTags




	tags keys do: [:each | | one |
		one := (self class TagDictionary at: each ifAbsent: [SoSExifTagError newFor: each]).
		one bytes: (tags at: each).
		self currentTags at: each put: one]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
result


	"Return the value of result."

	^result


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
result: anObject


	"Save the value of result."

	result := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
reverseResults


	| fields |

	fields := Dictionary new.
	self result do: [:each | fields at: each fieldName put: each].
	^fields
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
setFileSize


	"Answer a collection containing directory entries for wanted file and return file size in bytes'"

	| collection dd de dirPath |

	collection := OrderedCollection new.
	dirPath := self filePath stripLastEntry.
	dirPath = '\' ifTrue: [dirPath := CfsDirectoryDescriptor startUpDirectoryPath].
	(dd := CfsDirectoryDescriptor opendir: dirPath pattern: self fileName mode: FREG | FDIR)
		isCfsError
			ifTrue: [self error: dd message].
	[(de := dd readdir) notNil] whileTrue: [collection add: de].
	dd closedir.
	self fileSize: (collection at: 1) stSize


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
setOffsetValues


	| tempOC |

	tempOC := self getStreamMarkersFor: self startMarker count: 3.
	(tempOC = false or: [tempOC size < 3]) ifTrue: [^false].
	self
		startOffset: (tempOC at: 1);
		endOffset: (tempOC at: 2);
		thumbnailOffset: ((tempOC at: 2) - 1);
		jpegOffset: (tempOC at: 3);
		thumbnailLength: self jpegOffset - self thumbnailOffset.
	self thumbnailLength < 2 ifTrue: [self thumbnailLength: 0].
	^true


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showAnyForCount


	currentTags do: [:each |
		Transcript
			show: each tagDec printString , ' : ' , each count printString;
			cr]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showDebug


	self debug ifTrue: [self debugShowTags]


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showOutput

	"Return the value of showOutput."

	showOutput isNil ifTrue: [^true].
	^showOutput
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showOutput: anObject

	"Save the value of showOutput."

	showOutput := anObject
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
startMarker


	"Return the value of startMarker."

	^CgJPEGStartOfImage signature asByteArray: self bigEndian


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
startMarker: anObject


	"Save the value of startMarker."

	startMarker := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
startOffset


	"Return the value of startOffset."

	^startOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
startOffset: anObject


	"Save the value of startOffset."

	startOffset := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
tagEnd


	^#end


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
tags


	"Return the value of tags."

	^tags


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
tags: anObject


	"Save the value of tags."

	tags := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailDIB

	"Return the value of thumbnailDIB."

	^thumbnailDIB
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailDIB: anObject

	"Save the value of thumbnailDIB."

	thumbnailDIB := anObject
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailData


	"Return the value of thumbnailData."

	^thumbnailData


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailData: anObject


	"Save the value of thumbnailData."

	thumbnailData := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailLength


	"Return the value of thumbnailLength."

	^thumbnailLength


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailLength: anObject


	"Save the value of thumbnailLength."

	thumbnailLength := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailOffset


	"Return the value of thumbnailOffset."

	^thumbnailOffset


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
thumbnailOffset: anObject


	"Save the value of thumbnailOffset."

	thumbnailOffset := anObject


! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
validExif

	"Return the value of validExif."

	validExif isNil ifTrue: [^false].
	^validExif
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
validExif: anObject

	"Save the value of validExif."

	validExif := anObject
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
visitor

	"Return the value of visitor."

	^visitor
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
visitor: anObject

	"Save the value of visitor."

	visitor := anObject
! !

!SoSExifReader methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
writeThumbnail: aPath


	self thumbnailDIB writeJPEGTo: aPath


! !

!SoSExifReader class methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
createCompleteTagListForFile: aFilePath


	"Creates and answers complete tag list with data for the chosen image
 No path is required for images in the Smalltalk root directory - normally CfsDirectoryDescriptor startUpDirectoryPath
 
 SoSExifReader createCompleteTagListForFile: 'testimage.jpg' 
 "

	| tags tagDict |

	tagDict := Dictionary new.
	tags := self decodeAFileCalled: aFilePath.
	tags := tags currentTags reject: [:each | each isTagError].
	tags do: [:each | tagDict at: each tagName put: each].
	^tagDict
! !

!SoSExifReader class methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
createTagListForFile: aFilePath usIng: aTagList


	"Computes the  complete tag list with data for the chosen image and returns only the tags in aTagList
	 Data returned is the actual data for each entry in the dictionary
 No path is required for images in the Smalltalk root dirtectory - normally CfsDirectoryDescriptor startUpDirectoryPath
 
 SoSExifReader createTagListForFile: 'testimage.jpg' usIng: #( 'FNumber'  'PixelXDimension'  'DateTimeOriginal'  'ISOSpeedRatings' 'ExposureTime' 'FocalLength')
 "

	| tags tagSO |

	tagSO := SortedCollection sortBlock: [:a :b | a fieldName <= b fieldName].
	tags := self decodeAFileCalled: aFilePath.
	tags := tags currentTags reject: [:each | each isTagError].
	tagSO addAll: tags.
	^self selectWantedTagsFrom: tagSO using: aTagList
! !

!SoSExifReader class methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
parseAFileCalled: aFileName


	"

 Execute will answer all tags for the current image to the Transcript. Inspect will answer this list and  will also answer an inspector on the Dictionary list of the EXIF tags with their constituent data.
 SoSExifReader parseAFileCalled: 'testimage.jpg' 
 "

	| sos |

	sos := self newFor: aFileName.
	TagDictionary := SoSExifTag tagsFromCSV.
	sos
		resolveTags;
		completeTags;
		activateVisitor;
		showDebug.

	^sos result
! !

!SoSExifReader class methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showTagDefinitions


	"

Answers a list of all EXIF tags with their constituent data.
 SoSExifReader showTagDefinitions
 "

	| tagDict |

	tagDict := Dictionary new.
	TagDictionary := SoSExifTag tagsFromCSV.
	TagDictionary do: [:each | tagDict at: each fieldName put: each].
	^tagDict
! !

!SoSExifReader class methodsFor: 'Exif' stamp: 'hjh 9/26/2025 18:55:22'!
showTagListFor: aJPEGFile


	"
Inspect  answers an inspector list of all tag names in the the chosen image
 No path is required for images in the Smalltalk root directory - normally CfsDirectoryDescriptor startUpDirectoryPath
 
 SoSExifReader showTagListFor: 'testimage.jpg'
 "

	| tags tagSO |

	tagSO := SortedCollection sortBlock: [:a :b | a fieldName <= b fieldName].
	tags := SoSExifReader decodeAFileCalled: CfsDirectoryDescriptor startUpDirectoryPath , aJPEGFile.
	tags := tags currentTags reject: [:each | each isTagError].
	tagSO addAll: tags.
	^tagSO collect: [:each | each fieldName]
! !

!SoSExifReader class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
TagDictionary


	^TagDictionary
! !

!SoSExifReader class methodsFor: 'Not categorized' stamp: 'hjh 9/27/2025 15:56:44'!
newFor: aFileName
"
self newFor: 'testImage_for_exif-reader.jpg'
"

	| o |

	TagDictionary := SoSExifTag tagsFromCSV.
	o := self new.
	o currentTags: Dictionary new.
	o := o loadUpFrom: aFileName.
	^o
! !

!SoSExifReader class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
presentTagsFrom: tagList


	| wantedDictionary |

	wantedDictionary := Dictionary new.
	tagList isEmpty ifTrue: [^wantedDictionary].
	tagList do: [:aTag | | tagValue |
		tagValue := aTag value.
		wantedDictionary at: aTag tagName put: tagValue].
	^wantedDictionary
! !

!SoSExifReader class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
selectWantedTagsFrom: tagList


	| wantedNames wantedList |

	wantedList := #('FNumber' 'PixelXDimension' 'PixelYDimension' 'DateTimeOriginal'
	'ISOSpeedRatings' 'ExposureTime' 'FocalLength').
	wantedNames := Dictionary new.
	tagList isEmpty ifTrue: [^wantedNames].
	wantedList do: [:each | | tagValue oneTag |
		oneTag := tagList select: [:one | one fieldName = each].
		oneTag isEmpty
			ifFalse: [
				tagValue := oneTag first value first.
				wantedNames at: each put: tagValue]]. "
aName := 'FNumber'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first value first.
aName := 'PixelXDimension'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first value first.
aName := 'PixelYDimension'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first  value first.
aName := 'DateTimeOriginal'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first  value first.
aName := 'ISOSpeedRatings'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first  value first.
aName := 'ExposureTime'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first value first.
aName := 'FocalLength'. wantedNames at: aName put: (tagList select:[ : each | each fieldName = aName]) first value first."
	^wantedNames
! !

!SoSExifReader class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
selectWantedTagsFrom: tagList using: aTagArray


	| wantedNames |

	wantedNames := Dictionary new.
	aTagArray do: [:one | | aTag |
		aTag := (tagList select: [:each | each fieldName = one]).
		aTag isEmpty
			ifFalse: [
				wantedNames
					at: one
					put: (tagList select: [:each | each fieldName = one]) first value first]].
	aTagArray do: [:each | (wantedNames keys includes: each) ifFalse: [wantedNames at: each put: '']].

	^wantedNames
! !

!SoSExifReader class methodsFor: 'data' stamp: 'hjh 9/27/2025 16:06:42'!
tagsCSV
"
A copy of the file 
exif-tags.csv
for documentation purposes here.

"

^'tagName,fieldName,tagDec,tagHex,type,count
Aperture,ApertureValue,37378,9202,RATIONAL,1,
Body Serial Number,BodySerialNumber,42033,A431,ASCII,Any,
Brightness,BrightnessValue,37379,9203,SRATIONAL,1,
Bytes of JPEG data,JPEGInterchangeFormatLength,514,202,LONG,1,
Bytes per compressed strip,StripByteCounts,279,117,SHORT or LONG,*S,
Camera Owner Name,CameraOwnerName,42032,A430,ASCII,Any,
CFA pattern,CFAPattern,41730,A302,UNDEFINED,Any,
Chromaticities of primaries,PrimaryChromaticities,319,13F,RATIONAL,6,
Color space information,ColorSpace,40961,A001,SHORT,1,
Color space transformation matrix coefficients,YCbCrCoefficients,529,211,RATIONAL,3,
Compression scheme,Compression,259,103,SHORT,1,
Components Configuration,ComponentsConfiguration,37121,9101,UNDEFINED,4,
Contrast,Contrast,41992,A408,SHORT,1,
Copyright holder,Copyright,33432,8298,ASCII,Any,
Custom image processing,CustomRendered,41985,A401,SHORT,1,
Date and time of digital data generation,DateTimeDigitized,36868,9004,ASCII,20,
Date and time of original data generation,DateTimeOriginal,36867,9003,ASCII,20,
DateTime subseconds,SubSecTime,37520,9290,ASCII,Any,
DateTimeDigitized subseconds,SubSecTimeDigitized,37522,9292,ASCII,Any,
DateTimeOriginal subseconds,SubSecTimeOriginal,37521,9291,ASCII,Any,
Device settings description,DeviceSettingDescription,41995,A40B,UNDEFINED,Any,
Digital zoom ratio,DigitalZoomRatio,41988,A404,RATIONAL,1,
Exif IFD Pointer,ExifIFDPointer,34665,8769,LONG,1,
Exif version,ExifVersion,36864,9000,UNDEFINED,4,
Exposure bias,ExposureBiasValue,37380,9204,SRATIONAL,1,
Exposure index,ExposureIndex,41493,A215,RATIONAL,1,
Exposure mode,ExposureMode,41986,A402,SHORT,1,
Exposure program,ExposureProgram,34850,8822,SHORT,1,
Exposure time,ExposureTime,33434,829A,RATIONAL,1,
F number,FNumber,33437,829D,RATIONAL,1,
File change date and time,DateTime,306,132,ASCII,20,
File source,FileSource,41728,A300,UNDEFINED,1,
Flash,Flash,37385,9209,SHORT,1,
Flash energy,FlashEnergy,41483,A20B,RATIONAL,1,
Focal length in 35 mm film,FocalLengthIn35mmFilm,41989,A405,SHORT,1,
Focal plane resolution unit,FocalPlaneResolutionUnit,41488,A210,SHORT,1,
Focal plane X resolution,FocalPlaneXResolution,41486,A20E,RATIONAL,1,
Focal plane Y resolution,FocalPlaneYResolution,41487,A20F,RATIONAL,1,
Gain control,GainControl,41991,A407,SHORT,1,
Image compression mode,CompressedBitsPerPixel,37122,9102,RATIONAL,1,
Image data arrangement,PlanarConfiguration,284,11C,SHORT,1,
Image data location,StripOffsets,273,111,SHORT or LONG *,S,
Image height,ImageLength,257,101,SHORT or LONG,1,
Image input equipment Manufacturer,Make,271,10F,ASCII,Any,
Image input equipment model,Model,272,110,ASCII,Any,
Image resolution in height direction,YResolution,283,11B,RATIONAL,1,
Image resolution in width direction,XResolution,282,11A,RATIONAL,1,
Image title,ImageDescription,270,10E,ASCII,Any,
Image width,ImageWidth,256,100,SHORT or LONG,1,
Interoperability IFD Pointer,InteroperabilityIFDPointer,40965,A005,LONG,1,
ISO speed rating,ISOSpeedRatings,34855,8827,SHORT,Any,
Lens focal length,FocalLength,37386,920A,RATIONAL,1,
Lens Make,LensMake,42035,A433,ASCII,Any,
Lens Model,LensModel,42036,A434,ASCII,Any,
Lens Serial Number,LensSerialNumber,42037,A435,ASCII,Any,,
Lens Specification,LensSpecification,42034,A432,RATIONAL,4,
Light source,LightSource,37384,9208,SHORT,1,
Manufacturer notes,MakerNote,37500,927C,UNDEFINED,Any,
Maximum lens aperture,MaxApertureValue,37381,9205,RATIONAL,1,
Meaning of each component,ComponentsConfiguration,37121,9101,UNDEFINED,4,
Metering mode,MeteringMode,37383,9207,SHORT,1,
Number of bits per component,BitsPerSample,258,102,SHORT,3,
Number of components,SamplesPerPixel,277,115,SHORT,1,
Number of rows per strip,RowsPerStrip,278,116,SHORT or LONG,1,
Offset to JPEG SOI,JPEGInterchangeFormat,513,201,LONG,1,
Optoelectric conversion factor,OECF,34856,8828,UNDEFINED,Any,
Orientation of image,Orientation,274,112,SHORT,1,
Pair of black and white reference values,ReferenceBlackWhite,532,214,RATIONAL,6,
Person who created the image,Artist,315,13B,ASCII,Any,
Pixel composition,PhotometricInterpretation,262,106,SHORT,1,
Related audio file,RelatedSoundFile,40964,A004,ASCII,13,
Saturation,Saturation,41993,A409,SHORT,1,
Scene capture type,SceneCaptureType,41990,A406,SHORT,1,
Scene type,SceneType,41729,A301,UNDEFINED,1,
Sensing method,SensingMethod,41495,A217,SHORT,1,
Sharpness,Sharpness,41994,A40A,SHORT,1,
Shutter speed,ShutterSpeedValue,37377,9201,SRATIONAL,1,
Software used,Software,305,131,ASCII,Any,
Spatial frequency response,SpatialFrequencyResponse,41484,A20C,UNDEFINED,Any,
Spectral sensitivity,SpectralSensitivity,34852,8824,ASCII,Any,
Subject area,SubjectArea,37396,9214,SHORT,2 or 3 or 4,
Subject distance,SubjectDistance,37382,9206,RATIONAL,1,
Subject distance range,SubjectDistanceRange,41996,A40C,SHORT,1,
Subject location,SubjectLocation,41492,A214,SHORT,2,
Subsampling ratio of Y to C,YCbCrSubSampling,530,212,SHORT,2,
Supported Flashpix version,FlashpixVersion,40960,A000,UNDEFINED,4,
Transfer function,TransferFunction,301,12D,SHORT,3 * 256,
Unique image ID,ImageUniqueID,42016,A420,ASCII,33,
Unit of X and Y resolution,ResolutionUnit,296,128,SHORT,1,
User comments,UserComment,37510,9286,UNDEFINED,Any,
Valid image height,PixelYDimension,40963,A003,SHORT or LONG,1,
Valid image width,PixelXDimension,40962,A002,SHORT or LONG,1,
White balance,WhiteBalance,41987,A403,SHORT,1,
White point chromaticity,WhitePoint,318,13E,RATIONAL,2,
Y and C positioning,YCbCrPositioning,531,213,SHORT,1,
Sensitivity Type,SensitivityType,34864,8830,SHORT,1,'! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
ascii: aTag


	| result memoryLocation |

	result := OrderedCollection new.
	memoryLocation :=
		((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) + self headerOffset.
	aTag count: ((aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian).
	result add: (self getAsciiFromMemoryStartingAt: memoryLocation count: aTag count).
	aTag value: result


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
byte: aTag





! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
getFractionFromFileAt: aLocation


	| num denom |

	num := (self file copyFrom: aLocation to: (aLocation + 3)) asByteArray asInteger: self bigEndian.
	denom :=
		(self file copyFrom: (aLocation + 4) to: (aLocation + 7)) asByteArray
			asInteger: self bigEndian.
	(num = 0 or: [denom = 0]) ifTrue: [^0].
	^num / denom


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
getMultiCountRationalFromFileAt: aLocation count: aCount


	| num byteCount |

	byteCount := 8.
	num := (self file copyFrom: aLocation to: (aLocation + ((byteCount) * aCount) - 1)) asByteArray.

	^num
! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
getRationalFromFileAt: aLocation count: aCount


	| num  |

	num := self getMultiCountRationalFromFileAt: aLocation count: aCount.

	num = 0 ifTrue: [^0].
	^num
! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
long: aTag


	| result count valueStart value valueOffset |

	count := (aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian.
	result := OrderedCollection new.
	valueStart := 1.
	valueOffset := 4.
	value := (aTag bytes copyFrom: 9 to: 12).
	1 to: count do: [:i |
		result add: (
			(value copyFrom: valueStart to: (valueStart + valueOffset - 1)) asByteArray
				asInteger: self bigEndian).
		valueStart := valueStart + valueOffset].
	aTag value: result


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
rational: aTag


	|  memoryLocation |


	memoryLocation :=
		((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) + self headerOffset.
	aTag value: (self getRationalFromFileAt: memoryLocation count: aTag count asNumber)
	"aTag convertFraction ifTrue: [aTag valueAsFloat]"


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
short: aTag


	((aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian) > 2
		ifTrue: [self shortFromExtraMemory: aTag]
		ifFalse: [self shortFromBytes: aTag]


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
shortFromExtraMemory: aTag


	| result count valueStart value valueOffset memStart |

	count := (aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian.
	result := OrderedCollection new.
	valueStart := 1.
	valueOffset := 2.
	memStart := ((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) + 13.
	value := (self file copyFrom: memStart to: (memStart + ((count * 2) - 1))) asByteArray.
	1 to: count do: [:i |
		result add: (
			(value copyFrom: valueStart to: (valueStart + valueOffset - 1)) asByteArray
				asInteger: self bigEndian).
		valueStart := valueStart + valueOffset].
	aTag value: result


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
slong: aTag





! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
srational: aTag


	| memLoc num denom |

	memLoc :=
		((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) + self headerOffset.
	num := (self file copyFrom: memLoc to: (memLoc + 3)) alignedFor: self bigEndian.
	num := num int32At: 0.
	denom := (self file copyFrom: (memLoc + 4) to: (memLoc + 7)) alignedFor: self bigEndian.
	denom := denom int32At: 0.
	aTag value: num / denom.
	aTag convertFraction ifTrue: [aTag value: aTag value asFloat]


! !

!SoSTagFiller methodsFor: 'Calculations' stamp: 'hjh 9/26/2025 18:55:22'!
undefined: aTag


	| result memoryLocation count |

	result := OrderedCollection new.
	aTag count = 'Any'
		ifFalse: [
			count := aTag count asNumber.
			count < 5 ifTrue: [aTag getResultFromValue]]
		ifTrue: [
			memoryLocation :=
				((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) +
					self headerOffset.
			result add: (self getAsciiFromMemoryStartingAt: memoryLocation).
			aTag value: result]


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
bigEndian


	"Return the value of bigEndian."

	^bigEndian


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
bigEndian: anObject


	"Save the value of bigEndian."

	bigEndian := anObject


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
doCalculationFor: type on: aTag


	self perform: type with: aTag


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
file


	"Return the value of file."

	^file


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
file: anObject


	"Save the value of file."

	file := anObject


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
fillTags


	self tags do: [:each | self getResultFor: each]


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getAsciiFromMemoryStartingAt: startLocation


	| nextChar result nextLocation |

	nextChar := 255.
	result := ''.
	nextLocation := startLocation.
	[nextChar = 0] whileFalse: [
		nextChar := self file at: nextLocation.
		(Character value: nextChar) isPrintable
			ifTrue: [result := result , (Character value: nextChar) asString].
		nextLocation := nextLocation + 1].
	^result


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getAsciiFromMemoryStartingAt: startLocation count: count


	| nextChar result nextLocation |

	nextChar := 255.
	result := ''.
	nextLocation := startLocation.
	1 to: count do: [:i |
		nextChar := self file at: nextLocation.
		nextChar = 0 ifFalse: [result := result , (Character value: nextChar) asString].
		nextLocation := nextLocation + 1].
	^result


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getDataFromMemoryStartingAt: startLocation forCount: count


	| result |

	result := self file copyFrom: startLocation to: (startLocation + count).
	^result


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getMakerNoteFor: aTag


	| memoryLocation count result |
	result := OrderedCollection new.
	memoryLocation :=
		((aTag bytes copyFrom: 9 to: 12) asByteArray asInteger: self bigEndian) + self headerOffset.
	count := ((aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian).
	result add: (self getDataFromMemoryStartingAt: memoryLocation forCount: count).
	aTag value: result
! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getResultFor: aTag


	| type |

	aTag isTagError
		ifFalse: [
			type :=
				aTag typeCalculationUsing: self bigEndian for: (aTag actualType asInteger: bigEndian).
			aTag checkDefaultValue
				ifFalse: [self doCalculationFor: type on: aTag]
				ifTrue: [aTag setDefaultValue]]


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
headerOffset

	"Return the value of headerOffset."

	^headerOffset
! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
headerOffset: anObject

	"Save the value of headerOffset."

	headerOffset := anObject
! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
offset


	"Return the value of offset."

	^offset


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
offset: anObject


	"Save the value of offset."

	offset := anObject


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
shortFromBytes: aTag


	| result count valueStart value valueOffset |

	count := (aTag bytes copyFrom: 5 to: 8) asByteArray asInteger: self bigEndian.
	result := OrderedCollection new.
	valueStart := 1.
	valueOffset := 2.
	value := (aTag bytes copyFrom: 9 to: 12).
	1 to: count do: [:i |
		result add: (
			(value copyFrom: valueStart to: (valueStart + valueOffset - 1)) asByteArray
				asInteger: self bigEndian).
		valueStart := valueStart + valueOffset].
	aTag value: result


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagResult





! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tags


	"Return the value of tags."

	^tags


! !

!SoSTagFiller methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tags: anObject


	"Save the value of tags."

	tags := anObject


! !

!SoSTagFiller class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:22'!
_PRAGMA_IS_


	"%%PRAGMA DECLARE
	(name: IS_SoSTagFiller isPool: true isConstant: false)
	(pool: IS_SoSTagFiller declarations: (
		(name: IS_instanceInterfaceSpec isConstant: false)
	))"


! !

!SoSTagFiller class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:22'!
abtPrimFlushInterfaceSpecCache


	IS_SoSTagFiller associationsDo: [:poolDictionaryAssoc | poolDictionaryAssoc value: nil].
	super abtPrimFlushInterfaceSpecCache
! !

!SoSVisitorAbstractClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
visit: aList with: extraObject


	aList do: [:each | each isTagError ifFalse: [each visit: self with: extraObject]].
	self makeResult


! !

!SoSVisitorAbstractClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
visited: target with: anExtraObject





! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
apexApertureCalculation: aValue


	| a |

	a := (2 sqrt raisedTo: aValue).
	a := a roundTo: 0.01.
	^a


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
apexBrightnessCalculation: aValue


	| a |

	a := self calculateLog2: aValue.
	a := a roundTo: 0.0001.
	^a


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
apexShutterSpeedCalculation: aValue


	| a |

	a := self calculateLog2: aValue.
	a := 1 / a.
	a := a roundTo: 0.0001.
	^a


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
calculateLog2: aValue


	^2 raisedTo: aValue


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
convertByteArrayToStrings: baArray bigEndian: anEndian


	| ba result |

	ba := OrderedCollection new.
	result := OrderedCollection new.
	1 to: baArray size by: 4 do: [:i | ba add: ((baArray copyFrom: i to: (i + 3)) asInteger: true)].
	1 to: ba size by: 2 do: [:i | result add: (((ba at: i) / (ba at: (i + 1)))) asFloat].
	^result
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputATag: aTag ForValues: values andResults: results


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputList


	"Return the value of outputList."

	outputList isNil ifTrue: [self outputList: OrderedCollection new].
	^outputList


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputList: anObject


	"Save the value of outputList."

	outputList := anObject


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value prefix: prefix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value suffix: suffix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value suffix: suffix using: aSymbol


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndOneValueString: aTag


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag prefix: aPrefix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix using: aSymbol


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix using: aSymbol with: anArgument


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueStringAsFraction: aTag suffix: aSuffix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueStringAsFraction: aTag suffixList: aSuffix


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagString: aTag separator: aString value: value


	^self subclassResponsibility


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
resolveByteArrayFor: bytes output: textStrings


	|  outputString result |


	outputString := WriteStream on: ''.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString
		nextPutAll: (textStrings at: 1);
		nextPutAll: (result at: 1) printString;
		nextPutAll: 'mm ';
		nextPutAll: (textStrings at: 2);
		nextPutAll: (result at: 2) printString;
		nextPutAll: 'mm ';
		nextPutAll: (textStrings at: 3);
		nextPut: $f;
		nextPutAll: (result at: 3) printString;
		nextPut: $ ;
		nextPutAll: (textStrings at: 4);
		nextPut: $f;
		nextPutAll: (result at: 4) printString
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
secondsSuffixFor: aValue


	| suffix |

	aValue < 0
		ifTrue: [suffix := 'seconds']
		ifFalse: [aValue = 1 ifTrue: [suffix := 'second'] ifFalse: [suffix := 'th of a second']].
	^suffix


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
separator


	"Return the value of separator."

	separator isNil ifTrue: [self separator: ' : '].
	^separator


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
separator: anObject


	"Save the value of separator."

	separator := anObject


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
showOutput

	"Return the value of showOutput."

	^showOutput
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
showOutput: anObject

	"Save the value of showOutput."

	showOutput := anObject
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedExifReaderTag: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedExifTag: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSApertureValue: target with: anExtraObject


	target value do: [:each |
		self
			outputTag: target
			oneValueString: (self apexApertureCalculation: each) exifPrintString
			prefix: 'f']


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSArtist: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSBitsPerSample: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSBodySerialNumber: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSBrightnessValue: target with: anExtraObject


	| apexValue suffix |

	apexValue := self apexBrightnessCalculation: target value.
	suffix := 'foot lambert'.
	self outputTag: target oneValueString: apexValue exifPrintString suffix: suffix


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCFAPattern: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCameraOwnerName: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSColorSpace: target with: anExtraObject


	self outputATag: target ForValues: #(1 65535) andResults: #('sRGB' 'Uncalibrated' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSComponentsConfiguration: target with: anExtraObject


	self outputATag: target ForValues: #('1230' '4560') andResults: #('YCbCr' 'RGB' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCompressedBitsPerPixel: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCompression: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSContrast: target with: anExtraObject


	self outputATag: target ForValues: #(0 1 2) andResults: #('Normal' 'Soft' 'Hard' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCopyright: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSCustomRendered: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1)
		andResults: #('Normal Process' 'Custom Process' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSDateTime: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSDateTimeDigitized: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSDateTimeOriginal: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSDeviceSettingDescription: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSDigitalZoomRatio: target with: anExtraObject


	| bytes outputString textStrings result |

	textStrings := #('').
	bytes := target value.
	outputString := WriteStream on: ''.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString
		nextPutAll: (textStrings at: 1);
		nextPutAll: (result at: 1) printString.
	self outputTag: target oneValueString: outputString contents


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExifIFDPointer: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExifVersion: target with: anExtraObject


	| versionString vArray |

	vArray := target value first printString asArray.
	vArray := vArray copyFrom: 2 to: (vArray size - 1).
	versionString := WriteStream on: ''.
	versionString
		nextPut: (vArray at: 2);
		nextPut: $.;
		nextPut: (vArray at: 3);
		nextPut: $.;
		nextPut: (vArray at: 4).

	self outputTag: target oneValueString: versionString contents suffix: ''
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExposureBiasValue: target with: anExtraObject


	| apexValue prefix |

	target value = (0 / 3) ifTrue: [apexValue := 0] ifFalse: [apexValue := target value].
	prefix := 'EV '.
	self outputTag: target oneValueString: apexValue exifPrintString prefix: prefix


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExposureIndex: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExposureMode: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2)
		andResults: #('Auto exposure' 'Manual exposure' 'Auto bracket' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExposureProgram: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3 4 5 6 7 8)
		andResults: #(
			'Not defined' 'Manual' 'Normal program' 'Aperture priority' 'Shutter priority'
			'Creative program' 'Action program' 'Portrait mode' ' Landscape mode' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSExposureTime: target with: anExtraObject


	| suffixList v |

	suffixList := OrderedCollection new.
	v := target value first.
	target value do: [:each | suffixList add: (self secondsSuffixFor: each)].
	v := 1 / v.
	target value: (OrderedCollection with: v).
	self outputTagAndValueString: target suffix: suffixList first


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFNumber: target with: anExtraObject


	| bytes outputString  textStrings result |

	textStrings := #('f').
	bytes := target value.
	outputString := WriteStream on: ''.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString
		nextPutAll: (textStrings at: 1);
		nextPutAll: (result at: 1) printString.
	self outputTag: target oneValueString: outputString contents
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFileSource: target with: anExtraObject


	self outputATag: target ForValues: #(3) andResults: #('DSC' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFlash: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 5 9 13 15 16 24 25 29 31 32 65 69 71 73 77 79 89 93 95)
		andResults: #(
			'Flash did not fire.' 'Flash fired.' 'Strobe return light not detected.'
			'Flash fired  compulsory flash mode'
			'Flash fired  compulsory flash mode  return light not detected'
			'Flash fired  compulsory flash mode  return light detected'
			'Flash did not fire  compulsory flash mode' 'Flash fired  auto mode'
			'Flash fired  auto mode  return light not detected'
			'Flash fired  auto mode  return light detected' 'No flash function'
			'Flash fired  red-eye reduction mode'
			'Flash fired  red-eye reduction mode  return light not detected'
			'Flash fired  red-eye reduction mode  return light detected'
			'Flash fired  compulsory flash mode  red-eye reduction mode'
			'Flash fired  compulsory flash mode  red-eye reduction mode  return light not detected'
			'Flash fired  compulsory flash mode  red-eye reduction mode  return light detected'
			'Flash fired  auto mode  red-eye reduction mode'
			'Flash fired  auto mode  return light not detected  red-eye reduction mode'
			'Flash fired  auto mode  return light detected  red-eye reduction mode' 'reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFlashEnergy: target with: anExtraObject


	self outputTagAndValueString: target suffix: ' Beam Candle Power seconds (BCPS)'


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFlashpixVersion: target with: anExtraObject


	| s |

	s := target value first asNumber.
	s := s / 100.
	target value: (OrderedCollection with: s printString).
	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFocalLength: target with: anExtraObject


	| bytes outputString  result |

	bytes := target value.
	outputString := WriteStream on: ''.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString
		nextPutAll: (result at: 1) printString;
		nextPutAll: 'mm '.
	self outputTag: target oneValueString: outputString contents
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFocalLengthIn35mmFilm: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFocalPlaneResolutionUnit: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFocalPlaneXResolution: target with: anExtraObject


	self
		outputTagAndValueString: target
		suffix: ' pixels per Focal Plane resolution Unit'
		using: #roundTo:
		with: 0.1


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSFocalPlaneYResolution: target with: anExtraObject


	self
		outputTagAndValueString: target
		suffix: ' pixels per Focal Plane resolution Unit'
		using: #roundTo:
		with: 0.1


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSGainControl: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3 4)
		andResults: #(
			'None' 'Low gain up' High gain up ' Low gain down' 'High gain down' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSISOSpeedRatings: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSImageDescription: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSImageDescriptionSoSMake: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSImageLength: target with: anExtraObject


	target value do: [:each |
		self
			outputTag: target
			oneValueString: (each printString , ' pixels') exifPrintString
			prefix: '']


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSImageUniqueID: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSImageWidth: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSInteroperabilityIFDPointer: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSJPEGInterchangeFormat: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSJPEGInterchangeFormatLength: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSLensMake: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSLensModel: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSLensSerialNumber: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSLensSpecification: target with: anExtraObject


	| bytes outputString  textStrings result |

	textStrings := #('Minimum: ' 'Maximum: ' 'Min f: ' 'Max f: ').
	bytes := target value.
	outputString := WriteStream on: ''.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString
		nextPutAll: (textStrings at: 1);
		nextPutAll: (result at: 1) printString;
		nextPutAll: 'mm ';
		nextPutAll: (textStrings at: 2);
		nextPutAll: (result at: 2) printString;
		nextPutAll: 'mm ';
		nextPutAll: (textStrings at: 3);
		nextPut: $f;
		nextPutAll: (result at: 3) printString;
		nextPut: $ ;
		nextPutAll: (textStrings at: 4);
		nextPut: $f;
		nextPutAll: (result at: 4) printString.
	self outputTag: target oneValueString: outputString contents
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSLightSource: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3 4 9 10 11 12 13 14 15 17 18 19 20 21 22 23 24 255)
		andResults: #(
			'Daylight' 'Flourescent' 'Tungsten (incandescent light)' 'Flash' 'Fine weather'
			'Cloudy weather' 'Shade' 'Daylight fluorescent (D 5700 - 7100K)'
			'Day white fluorescent (N 4600 - 5400K)' 'Cool white fluorescent (W 3900 - 4500K)'
			'White fluorescent (WW 3200 - 3700K)' 'Standard light A' 'Standard light B'
			'Standard light C' 'D55' 'D65' 'D75' 'D50' 'ISO studio tungsten' 'Other light source'
			'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSMake: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSMakerNote: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSMaxApertureValue: target with: anExtraObject


	target value do: [:each |
		self
			outputTag: target
			oneValueString: (self apexApertureCalculation: each) exifPrintString
			prefix: 'f']


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSMeteringMode: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3 4 5 6 7 8 255)
		andResults: #(
			'Unknown' 'Average' 'Center Weighted Average' 'Spot' 'Multi-spot' 'Pattern' 'Partial'
			'Other' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSModel: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSOECF: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSOrientation: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPhotometricInterpretation: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPixelXDimension: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPixelYDimension: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPlanarConfiguration: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(1 2)
		andResults: #('Chunky format' 'Planar format' 'Reserved format')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPrimaryChroSoSSpectralSensitivitymaticities: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSPrimaryChromaticities: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSReferenceBlackWhite: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSRelatedSoundFile: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSResolutionUnit: target with: anExtraObject


	self outputATag: target ForValues: #(1 2) andResults: #('Inches' 'Centimeters' 'Reserved ')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSRowsPerStrip: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSamplesPerPixel: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSaturation: target with: anExtraObject



	self
		outputATag: target
		ForValues: #(0 1 2)
		andResults: #('Normal' 'Low saturation' 'High saturation' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSceneCaptureType: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3)
		andResults: #('Standard' 'Landscape' 'Portrait' 'Night scene' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSceneType: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSensingMethod: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(1 2 3 4 5 7 8)
		andResults: #(
			'Not defined' 'One-chip color area sensor' 'Two-chip color area sensor'
			'Three-chip color area sensor' 'Color sequential area sensor' 'Trilinear sensor'
			'Color sequential linear sensor' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSensitivityType: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3 4 5 6 7 'Other')
		andResults: #(
			'Unknown' 'Standard output sensitivity (SOS)' 'Recommended exposure index (REI)'
			'ISO speed' 'Standard output sensitivity (SOS) and recommended exposure index (REI)'
			'Standard output sensitivity (SOS) and ISO speed'
			'Recommended exposure index (REI) and ISO speed'
			'Standard output sensitivity (SOS) and recommended exposure index (REI) and ISO speed'
			'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSharpness: target with: anExtraObject


	self outputATag: target ForValues: #(0 1 2) andResults: #('Normal' 'Soft' 'Hard' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSShutterSpeedValue: target with: anExtraObject


	| apexValue suffix |

	apexValue := self apexShutterSpeedCalculation: target value.
	suffix := self secondsSuffixFor: apexValue.
	self outputTag: target oneValueString: apexValue exifPrintString suffix: suffix


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSoftware: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSpatialFrequencyResponse: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSpectralSensitivity: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSStripByteCounts: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSStripOffsets: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubSecTime: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubSecTimeDigitized: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubSecTimeOriginal: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubjectArea: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubjectDistance: target with: anExtraObject


	| distance |

	target value = 4294967295
		ifTrue: [distance := 'Infinity']
		ifFalse: [
			target value = 0
				ifTrue: [distance := 'Unknown']
				ifFalse: [distance := target value exifPrintString , ' m']].
	self outputTagAndValueString: distance


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubjectDistanceRange: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2 3)
		andResults: #('Unknown' 'Macro' 'Close view' 'Distant view' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSSubjectLocation: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSTransferFunction: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSUserComment: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSWhiteBalance: target with: anExtraObject


	self
		outputATag: target
		ForValues: #(0 1 2)
		andResults: #('Normal' 'Auto white balance' 'Manual white balance' 'Reserved')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSWhitePoint: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSXResolution: target with: anExtraObject



	| textStrings bytes outputString result |

	textStrings := #(' pixels').
	bytes := target value.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString := WriteStream on: ''.
	outputString
		nextPutAll: (result at: 1) printString;
		nextPutAll: (textStrings at: 1).
	self outputTag: target oneValueString: outputString contents
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSYCbCrCoefficients: target with: anExtraObject


	self outputTagAndValueString: target


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSYCbCrPositioning: target with: anExtraObject


	self outputATag: target ForValues: #(1 2) andResults: #('Centered' 'Co-sited' 'Reserved ')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSYCbCrSubSampling: target with: anExtraObject


	self outputATag: target ForValues: #(1 2) andResults: #('YCbCr4:2:2' 'YCbCr4:2:0' 'Reserved ')


! !

!SoSVisitorAbstractOutputClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
visitedSoSYResolution: target with: anExtraObject


	| textStrings bytes outputString result |

	textStrings := #(' pixels').
	bytes := target value.
	result := self convertByteArrayToStrings: bytes bigEndian: self bigEndian.
	outputString := WriteStream on: ''.
	outputString
		nextPutAll: (result at: 1) printString;
		nextPutAll: (textStrings at: 1).
	self outputTag: target oneValueString: outputString contents
! !

!SoSVisitorAbstractOutputClass methodsFor: 'Accessors' stamp: 'hjh 9/26/2025 18:55:23'!
bigEndian

	"Return the value of bigEndian."

	^self class bigEndian
! !

!SoSVisitorAbstractOutputClass class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:23'!
_PRAGMA_IS_


	"%%PRAGMA DECLARE
	(name: IS_SoSVisitorAbstractOutputClass isPool: true isConstant: false)
	(pool: IS_SoSVisitorAbstractOutputClass declarations: (
		(name: IS_instanceInterfaceSpec isConstant: false)
	))"


! !

!SoSVisitorAbstractOutputClass class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:23'!
abtPrimFlushInterfaceSpecCache


	IS_SoSVisitorAbstractOutputClass
		associationsDo: [:poolDictionaryAssoc | poolDictionaryAssoc value: nil].
	super abtPrimFlushInterfaceSpecCache
! !

!SoSVisitorAbstractOutputClass class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:23'!
bigEndian


	^bigEndian
! !

!SoSVisitorAbstractOutputClass class methodsFor: 'IS_generated' stamp: 'hjh 9/26/2025 18:55:23'!
bigEndian: anObject


	bigEndian := anObject
! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
<= aTag


	^self tagDecNumber <= aTag tagDecNumber


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
actualType


	^self bytes type


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
bytes


	"Return the value of bytes."

	^bytes


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
bytes: anObject


	"Save the value of bytes."

	bytes := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
checkDefaultValue


	^self defaultValue isNil not


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
convertFraction


	^false


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
count


	"Return the value of count."

	^count


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
count: anObject


	"Save the value of count."

	count := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
defaultValue


	"Return the value of defaultValue."

	^defaultValue


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
defaultValue: anObject


	"Save the value of defaultValue."

	defaultValue := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getResultFromValue


	| num answer result offset |

	result := OrderedCollection new.
	offset := 9.
	answer := ''.
	num := self count asNumber.
	(self bytes copyFrom: offset to: (offset + num - 1))
		do: [:each | answer := answer , (Character value: each) asString].
	result add: answer.
	self value: result


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
isTagError


	^false


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
printString


	^self tagDec printString , ' : ' , self tagName , ' : ' , self fieldName , ' : ' , self tagHex ,
		' : ' , self count printString , ' : ' , self type printString , ' : ' ,
		self bytes printString , ' : ' , self value printString


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
setDefaultValue


	self value: (OrderedCollection with: self actualDefaultValue)


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagDec


	"Return the value of tagDec."

	^tagDec asNumber


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagDec: anObject


	"Save the value of tagDec."

	tagDec := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagDecNumber


	^self tagDec asInteger


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagHex


	"Return the value of tagHex."

	^tagHex


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagHex: anObject


	"Save the value of tagHex."

	tagHex := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
type


	"Return the value of type."

	^type


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
type: anObject


	"Save the value of type."

	type := ExifTagType newFor: anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
typeCalculationUsing: bigEndian for: currentType


	"Return the value of type."

	^self type typeNames at: (self type typeNumbers indexOf: currentType)


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
value


	"Return the value of value."

	^value


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
value: anObject


	"Save the value of value."

	value := anObject


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
valueAsFloat


	1 to: self value size do: [:i | self value at: i put: (self value at: 1) asFloat]


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
visit: visitorObject with: anExtraObject


	^visitorObject perform: self visitClass withArguments: (Array with: self with: anExtraObject)


! !

!SoSExifTag methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
visitClass


	| t |

	t := self class asString. "
	t := t copyFrom: 4 to: t size.
	(t copyFrom: 1 to: 4) = 'Exif' ifFalse:[ t := 'Exif', t]."
	^('visited' , t , ':' , 'with:') asSymbol


! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
exifIDFTagNo


	^34665
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
getRealClassFor: aList


	| which className c |

	which := Headers indexOf: #fieldName:.
	className := (aList at: which) asString.
	className := 'SoS' , className.
	c := className asSymbol.
	c := c asClass.
	c isNil ifTrue: [self halt].
	^c new
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/27/2025 16:01:49'!
loadFromFile: aFileName


	| f contents |

	f := aFileName asFileEntry readStream.
	contents := f contents.
	f close.
	^contents
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
makeATagFromString: aLine


	| tagList aTag |

	tagList := aLine subStrings: $,.
	aTag := self getRealClassFor: tagList.
	Headers doWithIndex: [:each :i | aTag perform: each with: (tagList at: i)].
	Tags at: aTag tagDec put: aTag.
	^aTag
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/27/2025 15:59:50'!
tagFileName


	^'exif-tags.csv'
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagsFromCSV


	self tagsFromTagList: (self loadFromFile: self tagFileName).
	^Tags
! !

!SoSExifTag class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagsFromTagList: aList


	| body |


	Tags := Dictionary new.
	Headers := OrderedCollection new.
	body := aList sosArrayOfSubStringsUsingString: LineDelimiter.
	((body at: 1) subStrings: $,) do: [:each | Headers add: (each , ':') asSymbol].
	body := body copyFrom: 2 to: body size.
	body do: [:each | self makeATagFromString: each]
! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
<= aTag


	^false


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
count


	^0


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
fieldName


	"Return the value of fieldName."

	^'Tag not defined'


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
isTagError


	"Return the value of isTagError."

	^true


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
printString


	^self tagDec printString , ' : ' , self tagName


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagDecNumber


	"Return the value of tagDec."

	^999999


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
tagName


	"Return the value of tagName."

	^'Tag not defined'


! !

!SoSExifTagError methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
typeCalculationUsing: bigEndian





! !

!SoSExifTagError class methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:22'!
newFor: aTag


	| o |

	o := self new.
	o tagDec: aTag printString.
	^o
! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
makeResult


	self result: Dictionary new.
	self outputList asSortedCollection do: [:each | result at: each tagName put: each]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
output: aLine


	self outputList add: aLine


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputATag: aTag ForValues: values andResults: results



	aTag value do: [:each | | which |
		which := values indexOf: each.
		which = 0 ifTrue: [which := results size].
		self outputTag: aTag oneValueString: (results at: which)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputResultTo: target


	self showOutput
		ifTrue: [
			target = 'Transcript'
				ifTrue: [
					Transcript
						cr;
						cr.
					self result keys asSortedCollection do: [:each | | one |
						one := self result at: each.
						Transcript
							show: one tagName , one separator , one output;
							cr]]
				ifFalse: [self outputStreamTo: target]]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputStreamTo: target



	| ss |

	self stripInternalTags.
	ss := ReadWriteStream on: target.
	self showOutput
		ifTrue: [
			ss nextPutAll: LineDelimiter , LineDelimiter.
			result keys asSortedCollection do: [:each |
				ss nextPutAll:
					(result at: each) fieldName , (result at: each) separator ,
						(result at: each) output , LineDelimiter]].

	^ss collection


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value


	self output: (
		ExifOutputTag
			with: aTag tagName
			with: aTag fieldName
			with: self separator
			with: value exifPrintString)


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value prefix: prefix


	self output: (
		ExifOutputTag
			with: aTag tagName
			with: aTag fieldName
			with: self separator
			with: prefix , value exifPrintString)


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value suffix: suffix


	self output: (
		ExifOutputTag
			with: aTag tagName
			with: aTag fieldName
			with: self separator
			with: value exifPrintString , ' ' , suffix)


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTag: aTag oneValueString: value suffix: suffix using: aSymbol


	self output: (
		ExifOutputTag
			with: aTag tagName
			with: aTag fieldName
			with: self separator
			with: (value perform: aSymbol) exifPrintString , ' ' , suffix)


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndOneValueString: aTag


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: each exifPrintString)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag


	^aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: each exifPrintString)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag prefix: aPrefix


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: aPrefix , each exifPrintString)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: each exifPrintString , ' ' , aSuffix)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix using: aSymbol


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: (each perform: aSymbol) exifPrintString , ' ' , aSuffix)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueString: aTag suffix: aSuffix using: aSymbol with: anArgument


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: (each perform: aSymbol with: anArgument) exifPrintString , ' ' , aSuffix)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueStringAsFraction: aTag suffix: aSuffix


	aTag value do: [:each |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: each exifPrintString , ' ' , aSuffix)]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
outputTagAndValueStringAsFraction: aTag suffixList: aSuffixList


	aTag value doWithIndex: [:each :i |
		self output: (
			ExifOutputTag
				with: aTag tagName
				with: aTag fieldName
				with: self separator
				with: each exifPrintString , ' ' , (aSuffixList at: i))]


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
result


	"Return the value of result."

	^result


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
result: anObject


	"Save the value of result."

	result := anObject


! !

!SoSVisitorPrintClass methodsFor: 'Not categorized' stamp: 'hjh 9/26/2025 18:55:23'!
stripInternalTags


	self result
		removeKey: 'ExifIFDPointer' ifAbsent: [];
		removeKey: 'InteroperabilityIFDPointer' ifAbsent: []
! !

!Object methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
exifPrintString


	^self printString


! !

!ByteArray methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:21'!
alignedFor: bigEndian


	bigEndian = false ifTrue: [^self reverse] ifFalse: [^self]
! !

!ByteArray methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:21'!
asInteger: bigEndian


	| finish mult answer count step |

	mult := 0.
	finish := self size.
	bigEndian = false
		ifTrue: [
			count := self size.
			step := -1]
		ifFalse: [
			count := 1.
			step := 1].
	answer := 0.
	1 to: finish do: [:i |
		mult = 0
			ifTrue: [answer := answer + (self at: count)]
			ifFalse: [answer := answer + ((self at: count) * (256 * mult))].
		mult := mult + 1.
		count := count + step].
	^answer


! !

!ByteArray methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:21'!
asSmallInteger: bigEndian


	bigEndian = false
		ifTrue: [^(self at: 2) + ((self at: 1) * 256)]
		ifFalse: [^(self at: 1) + ((self at: 2) * 256)]


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
addDecimalToBinary: aNumber size: aSize


	| temp |

	temp := self fromBinary + aNumber.
	^temp toBinaryWithSize: aSize


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
binaryInvert


	| result |

	result := ''.
	self do: [:each | | temp |
		each = $0 ifTrue: [temp := $1] ifFalse: [temp := $0].
		result := result , temp asString].
	^result


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
exifPrintString


	^self


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
fromBinary


	| result reverse mult |

	mult := 2.
	reverse := self reverse.
	result := (reverse at: 1) asString asNumber.
	(reverse copyFrom: 2 to: reverse size) doWithIndex: [:each :i |
		result := result + (each asString asNumber * mult).
		mult := mult * 2].
	^result


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
fromSignedBinary: aSize


	| temp sign |

	(self at: 1) = $1 ifTrue: [sign := -1] ifFalse: [sign := 1].
	sign = 1
		ifFalse: [
			temp := self copyFrom: 2 to: self size.
			temp := (temp subtractDecimalToBinary: 1 size: (aSize - 1)) binaryInvert.
			^temp fromBinary * sign].
	^self fromBinary


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
justLastEntry



	^(self subStrings: $\) last


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
sosArrayOfSubStringsUsingString: aString


	| start result pointer remainder |

	self isEmpty ifTrue: [^self].
	start := 1.
	result := OrderedCollection new.
	pointer := 1.
	(self copyFrom: (self size - 1) to: self size) = aString
		ifTrue: [remainder := self copyFrom: 1 to: (self size - 2)]
		ifFalse: [remainder := self copy].
	[start = 0] whileFalse: [
		start := remainder indexOfSubCollection: aString startingAt: 1 ifAbsent: [0].
		start = 0
			ifFalse: [
				result add: (remainder copyFrom: 1 to: (start - 1)).
				pointer := (start + aString size).
				pointer > remainder size
					ifTrue: [
						start := 0.
						result add: remainder]
					ifFalse: [remainder := remainder copyFrom: pointer to: remainder size]]
			ifTrue: [remainder isEmpty ifFalse: [result add: remainder]]].
	^result reject: [:each | each isEmpty]


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
stripLastEntry


	| a result |

	result := ''.
	a := self subStrings: $\.
	1 to: (a size - 1) do: [:i | result := result , '\' , (a at: i)].
	result := result copyFrom: 2 to: result size.
	^result , '\'


! !

!String methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:23'!
subtractDecimalToBinary: aNumber size: aSize


	| temp |

	temp := self fromBinary - aNumber.
	^temp toBinaryWithSize: aSize


! !

!Fraction methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
exifPrintString


	^numerator printString , '/' , denominator printString


! !

!Integer methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
fromUnsignedToSigned: aSize


	^(self toBinaryWithSize: aSize) fromSignedBinary: aSize


! !

!Integer methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
toBinaryWithSize: aSize


	| remainder carry binary |

	carry := self number.
	binary := ''.
	[carry > 1] whileTrue: [
		remainder := carry rem: 2.
		carry := carry // 2.
		binary := remainder asString , binary].
	carry = 1 ifTrue: [binary := '1' , binary] ifFalse: [binary := '0' , binary].
	[binary size < aSize] whileTrue: [binary := '0' , binary].
	^binary


! !

!Integer methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
twosComplementBinary: aSize


	| result |

	self < 0
		ifTrue: [
			result := self abs toBinaryWithSize: aSize.
			result := result binaryInvert.
			result := result addDecimalToBinary: 1 size: aSize.
			^result].
	^self toBinaryWithSize: aSize


! !

!SmallInteger methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
asByteArray


	^(Array with: (self // 256) with: (self - ((self // 256) * 256))) asByteArray


! !

!SmallInteger methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:22'!
asByteArray: bigEndian


	bigEndian = true
		ifTrue: [^(Array with: (self // 256) with: (self - ((self // 256) * 256))) asByteArray]
		ifFalse: [^(Array with: (self - ((self // 256) * 256)) with: (self // 256)) asByteArray]


! !

!Character methodsFor: '*SoSExifReaderApp' stamp: 'hjh 9/26/2025 18:55:21'!
isPrintable


	^self isLetter | self isDigit | self isPunctuation | self isSeparator


! !
