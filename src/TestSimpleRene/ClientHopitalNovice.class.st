Class {
	#name : 'ClientHopitalNovice',
	#superclass : 'ClientHopital',
	#instVars : [
		'allergie',
		'commentaire',
		'rendezVous',
		'rendezVousAvecTimeDate',
		'groupeSanguin'
	],
	#category : 'TestSimpleRene',
	#package : 'TestSimpleRene'
}

{ #category : 'accessing' }
ClientHopitalNovice >> allergie [

	^ allergie
]

{ #category : 'accessing' }
ClientHopitalNovice >> allergie: anObject [

	allergie := anObject
]

{ #category : 'accessing' }
ClientHopitalNovice >> commentaire [

	^ commentaire
]

{ #category : 'accessing' }
ClientHopitalNovice >> commentaire: anObject [

	commentaire := anObject
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionAllergie [
	<simpleReneDescription>
	^ SRStringDescription new
		accessor: #allergie;
		label: 'Allergie';
		yourself
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionCommentaire [

	<simpleReneDescription>
	^ SRStringDescription new
		  accessor: #commentaire;
		  label: 'Commentaire';
		  yourself
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionGroupeSanguin [

	<simpleReneDescription>
	^ SROptionDescription new
		  accessor: #groupeSanguin;
		  label: 'Groupe sanguin';
		  options: #( 'A' 'B' 'O' 'AB' );
		  yourself
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionRendezVous [

	<simpleReneDescription>
	^ SRTimeDescription new
		  accessor: #rendezVous;
		  label: 'Rendez-vous';
		  yourself
]

{ #category : 'as yet unclassified' }
ClientHopitalNovice >> descriptionRendezVousAvecTimeDate [

	<simpleReneDescription>
	^ SRDateAndTimeDescription new
		  accessor: #rendezVousAvecTimeDate;
		  label: 'Rendez-vous date et heure';
		  yourself
]

{ #category : 'initialization' }
ClientHopitalNovice >> initialize [

	uiColor := Color red 
]
