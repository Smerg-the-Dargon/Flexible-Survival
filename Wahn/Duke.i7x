Version 1 of Duke by Wahn begins here.
[Version 1 - Put into its own file]

[ HP states of Duke                                                     ]
[   0: starting state                                                   ]
[   1: player saw him getting fucked by Shawn                           ]
[   2: he asked the player to bring in some wool                        ]
[   3: sheep-player refused to transform Shawn                          ]
[  10: player helped transform Shawn                                    ]
[  11: player had sex with Duke                                         ]

[ thirst states of Duke (location)                                      ]
[   1: Sheep Meadow SW                                                  ]
[   2: Sheep Meadow SE                                                  ]

Table of GameCharacterIDs (continued)
object	name
Duke	"Duke"

Duke is a man.
ScaleValue of Duke is 3. [human sized]
Body Weight of Duke is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Duke is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Duke is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Duke is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Duke is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Duke is 5. [length in inches]
Breast Size of Duke is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Duke is 2. [count of nipples]
Asshole Depth of Duke is 8. [inches deep for anal fucking]
Asshole Tightness of Duke is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Duke is 1. [number of cocks]
Cock Girth of Duke is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Duke is 9. [length in inches]
Ball Count of Duke is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Duke is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Duke is 0. [number of cunts]
Cunt Depth of Duke is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Duke is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Duke is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Duke is false.
PlayerRomanced of Duke is false.
PlayerFriended of Duke is false.
PlayerControlled of Duke is false.
PlayerFucked of Duke is false.
OralVirgin of Duke is false.
Virgin of Duke is true.
AnalVirgin of Duke is false.
PenileVirgin of Duke is false.
SexuallyExperienced of Duke is true.
TwistedCapacity of Duke is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Duke is false. [steriles can't knock people up]
MainInfection of Duke is "German Shepherd Male".
Thirst of Duke is normally 2.
Duke is in Sheep Meadow SE.
Description of Duke is "[DukeDesc]".
Conversation of Duke is { "Mew!" }.

instead of sniffing Duke:
	say "Duke has a pleasant animalistic smell, just like a male dog. Though there seems to be an undertone of sheep-musk there too.";

to say DukeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Duke], THIRST: [thirst of Duke] <- DEBUG[line break]";
	if daytimer is day:
		say "     Standing before you is an anthro German shepherd, standing tall on two digitigrade legs and keeping the spread-out sheep in his attentive gaze at all times. As his view crosses your position, he gives you a slight nod, then continues with his vigilance. The dog-morph has a fit, muscular body sporting the traditional brown and tan fur coat of his breed. Seeing as he's not wearing anything except a black dog-collar with a medallion bearing the name 'Duke', it is quite clear that he's male, with a furry canine sheath resting against is belly and a pair of golf ball size balls dangling beneath.";
	else:
		say "     Standing before you is an anthro German shepherd, standing tall on two digitigrade legs. With the sheep now gathered in a compact group, it looks like he's relaxing a bit, only scanning over them from time to time. Most of his attention rests on one young ram that stands on the nearest side of the flock, though he gives you a short nod as you approach. The dog-morph has a fit, muscular body sporting the traditional brown and tan fur coat of his breed. Seeing as he's not wearing anything except a black dog-collar with a medallion bearing the name 'Duke', it is quite clear that he's male, with a furry canine sheath resting against is belly and a pair of golf ball size balls dangling beneath.";

instead of conversing the Duke:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Duke says [one of]'I take my duty protect the herd seriously, not now'[or]'I have to stay vigilant so the herd is safe, please don't distract me'[or]'I don't have time to chat now'[or]'Look for me this evening, if you want to talk'[at random], not even taking his eyes off the sheep and ignoring any attempt to start a conversation.";
	else: [at night, he's got some time to chat]
		if HP of Duke is 0:
			say "     Note: Hm, you shouldn't be able to talk to him before watching his event with Shawn the ram - please report how you got to see this.";
		else if HP of Duke is 1:
			if (BodyName of Player is "Ram" or BodyName of Player is "Ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he looks you up and down with a happy, almost ecstatic expression, his tail wagging excitedly. 'I haven't seen you around here before, so you came in from elsewhere in the city? And you're a sheep-person!' He turns his head to look at his 'special' ram friend, then back to you. 'I was hoping that there might be... sheep-people out there somewhere - and now you just walk into our farm and come to talk to me.' Duke takes a deep breath, then says 'You see - my boyfriend and I started working here a while ago as shepherds, and... then everything went crazy with that nanite infection and I turned into an actual German shepherd. At least still more or less humanoid...' He looks down over his naked body and stretches his arms a bit, then points at the young ram you saw him with before. 'Shawn on the other hand, he went all the way to being a sheep. He can't even talk, and barely recognizes me. I don't know if there's much left of him inside, he acts pretty much like any other ram.'";
				say "     He sniffs a bit, then continues 'I tried to... infect him with being a German shepherd, but it doesn't work. Nothing someone here on the farm has worked so far. I think having a similar infection might be the only way to make him a person again - a sheep-person, like you' Duke gives you a pleading look and a wag of his tail 'Could you maybe... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				LineBreak;
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if Player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down beside him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					WaitLineBreak;
					say "[DukeShawnFirstTimeSex]";
				else:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
			else: [player isn't a sheep himself]
				say "     As you walk up to Duke, he turns to you with a hopeful expression. 'I haven't seen you around here before, so you came in from elsewhere in the city? Are you planning on... going back there again?' He turns his head to look at his 'special' ram friend, then back to you. 'I was wondering if there might be... sheep-people out there somewhere.' Duke takes a deep breath, then says 'You see - my boyfriend and I started working here a while ago as shepherds, and... then everything went crazy with that nanite infection and I turned into an actual German shepherd. At least still more or less humanoid...' He looks down over his naked body and stretches his arms a bit, then points at the young ram you saw him with before. 'Shawn on the other hand, he went all the way to being a sheep. He can't even talk, and barely recognizes me. I don't know if there's much left of him inside, he acts pretty much like any other ram.'";
				say "     Duke gives you a hopeful smile and a wag of his tail 'I can't just leave my duties here, so... if you do find someone with a sheep infection, could you bring back something they touched, or maybe some tufts of fur? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.' (clarification: you need to bring him [bold type]3 tufts of tainted wool[roman type])";
				if carried of Tainted wool > 2:
					LineBreak;
					say "     Remembering that you - by an amazing coincidence - already have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if Player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - it really must be fate that you already have that and just now came to us. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down beside him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						WaitLineBreak;
						ItemLoss Tainted wool by 3;
						say "[DukeShawnFirstTimeSex]";
					else:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now HP of Duke is 2;
				else:
					LineBreak;
					say "     You assure Duke you'll have an eye out for sheep in the city and walk away from him a bit.";
					now HP of Duke is 2;
		else if HP of Duke is 2:
			if (BodyName of Player is "Ram" or BodyName of Player is "Ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he looks you up and down with a happy, almost ecstatic expression, his tail wagging excitedly. 'I ask you to get some wool, and you go all the way and come back as a sheep-person. Thank you - you're amazing!' He turns his head to look at his ram boyfriend, then back to you. 'Could you maybe... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				LineBreak;
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if Player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down beside him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					WaitLineBreak;
					say "[DukeShawnFirstTimeSex]";
				else:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
					now HP of Duke is 3;
			else: [player isn't a sheep himself]
				say "     As you walk up to Duke, he gives you a hopeful expression. 'Have you found the sheep-people and got something from them? Maybe some wool?";
				if carried of Tainted wool > 2:
					LineBreak;
					say "     Remembering that you have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if Player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - you're a really nice person to help us out with this. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down beside him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						WaitLineBreak;
						ItemLoss Tainted wool by 3;
						say "[DukeShawnFirstTimeSex]";
					else:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now HP of Duke is 2;
				else:
					LineBreak;
					say "     Shaking your head to show that you don't have what he needs, you see Duke's raised tail droop a bit, then partly perk up again as you assure him you'll have an eye out for sheep in the city.";
					now HP of Duke is 2;
		else if HP of Duke is 3:
			if (BodyName of Player is "Ram" or BodyName of Player is "Ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he gives you a hopeful but still somewhat guarded look, then says 'Have you changed your mind? Please let it be so. You could just... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				LineBreak;
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if Player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down beside him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					WaitLineBreak;
					say "[DukeShawnFirstTimeSex]";
				else:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
					now HP of Duke is 3;
			else: [player isn't a sheep himself]
				say "     As you walk up to Duke, he gives you a hopeful expression. 'Have you found the sheep-people and got something from them? Maybe some wool?";
				if carried of Tainted wool > 2:
					LineBreak;
					say "     Remembering that you have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if Player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - you're a really nice person to help us out with this. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down beside him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						WaitLineBreak;
						ItemLoss Tainted wool by 3;
						say "[DukeShawnFirstTimeSex]";
					else:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now HP of Duke is 2;
				else:
					LineBreak;
					say "     Shaking your head to show that you don't have what he needs, you see Duke's raised tail droop a bit, then partly perk up again as you assure him you'll have an eye out for sheep in the city.";
					now HP of Duke is 2;
		else if HP of Duke is 10 or HP of Duke is 11:
			say "     Duke gives you a happy smile as you approach, saying 'I can't thank you enough. What you've done for me and Shawn is just amazing.'";

to say DukeShawnFirstTimeSex:
	say "     Wincing, holding his horned head, Shawn rises from the ground on unsteady digitigrade legs. 'Man, I had the weirdest dream...' he says, then adds 'Wait - what's this?' as he looks at his hand, arm, then down his body. Nonplussed at his furred, anthro ram body, he looks to you, then is almost bowled over as Duke rushes in and gives him an exuberant embrace. The shepherd hugs his ram friend tight, saying 'It's me, Duke - so good to have you finally back. I've missed you terribly.'";
	say "     There is a moment of silence as the two of them just look into each other's eyes, then suddenly, they kiss and start making out with each other. Basically forgetting the world around them, Duke and Shawn just keep going at it, hands exploring each other's body while they're busy tongue-wrestling or Duke licks Shawn's face. It doesn't take long until the anthro canine sinks to the floor, still embracing Shawn and pulling him down with him to lie together in the green grass. Their make-out-session continues some more with Shawn now lying on top of Duke - until there is a moaned 'Fuck me' audible from Duke between their kisses.";
	LineBreak;
	say "     Do you want to watch them go at it ([link]Y[as]y[end link]), or would you rather give [']em some privacy ([link]N[as]n[end link])?";
	if Player consents:
		LineBreak;
		say "     Giving his canine lover a last loud smooch, Shawn moves back a little bit, coming to kneel between Duke's legs and looking down on him. A smile on the ram's face, he takes hold of his hard cock and rubs it against the German shepherd's knotted shaft, then takes both of them in one hand and strokes them together. Next, he moves his hands to Duke's legs, rubbing the insides of his thighs and lifting the legs up into the air. Duke readily helps him out with that, taking over holding his own legs in that position, his tail beating against the ground in the dog-morph's eagerness for what will come next.";
		say "     With Duke's hips raised a bit and his legs spread, he's in a perfect position for Shawn, who quickly aims his hard cock then pushes its tip against the German shepherd's pucker, easily stretching it around his shaft as he did so many times before when they were animals. Still, now with both of them in anthro shape, it's kind of their first time, so Shawn takes it slow, sinking his manhood into the dog bit by bit and taking breaks for him to get used to it. When he finally is all the way inside, Shawn leans forward, with Duke meeting his lips for a kiss. Then the ram takes up thrusting into his partner, quickly getting faster and harder as his libido runs high.";
		WaitLineBreak;
		say "     The two of them going at it is quite a show. They're like - well... a bit like animals, though with lots of caresses and kisses between the loving partners thrown in. Standing where you are, watching them, you suddenly notice movement to your sides - it's several sheep, who've moved over to have a look too. One of them gives you a meaning-laden 'Meeeh', then looks back at Duke and Shawn.";
		say "     Observed by a growing flock of spectators, still oblivious to anything except each other, the dissimilar partners eventually reach a breathtaking and quite noisy orgasm. There is a shout of 'I'm coming!' by Shawn, right at the same time as Duke gasps and his knotted cock starts shooting long spurts of the dog's seed all over his chest-fur.";
	else:
		LineBreak;
		say "     Silently moving back a bit from the two men, you turn to leave, but are stopped from actually walking away by quite a few sheep encircling the scene now. One of them gives you a meaning-laden 'Meeeh', then returns its attention to Duke and Shawn. Observed by a growing flock of spectators, still oblivious to anything except each other, the dissimilar partners eventually reach a breathtaking and quite noisy orgasm. There is a shout of 'I'm coming!' by Shawn, right at the same time as Duke gasps in lust himself.";
	NPCSexAftermath Duke receives "AssFuck" from Shawn;
	WaitLineBreak;
	say "     As they come down from their respective climaxes, lying in the grass and holding one another, Shawn finally looks up and sees all the sheep standing in a circle around them. 'Did you like the show, guys and gals? Sadly, it's over for now... and I'm not letting go of this doggie until we're done cuddling. Just go back to the group-hug and get some sleep, OK?' Almost seems like the gathered sheep understood what he said, as they give a chorus of 'Meeh', then trot back over to where the rest of their herd are. The crowd around you now having vanished, you're left standing alone before the exhausted ram and German shepherd.";
	say "     Seeing you there, Duke says 'Oh, err - sorry for just leaving you to wait while we... got distracted'. He continues to tell Shawn all about your part in getting him transformed, both of them thanking you effusively afterwards.";
	now lastfuck of Duke is turns;
	move Shawn to Sheep Meadow SE;
	now HP of Duke is 10;

An everyturn rule:
	if daytimer is night and thirst of Duke is 1:
		move Duke to Sheep Meadow SE;
		now thirst of Duke is 2;
		if HP of Duke is 0 and player is in Sheep Meadow SE:
			say "[DukeShawnSheepScene]";
	else if daytimer is day and thirst of Duke is 2:
		move Duke to Sheep Meadow SW;
		now thirst of Duke is 1;

instead of going east from Sheep Meadow SW while (HP of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "[DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

instead of going southeast from Sheep Meadow NW while (HP of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "[DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

instead of going south from Sheep Meadow NE while (HP of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "[DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

to say DukeShawnSheepScene:
	say "     Walking towards where the herd of sheep has gathered during the night, you see the German shepherd watching over them on the other side of the flock, then suddenly disappear from sight. He must have crouched down or something. Curious, you make your way around the large gathering of sheep until you see the dog-morph again, kneeling next to a young ram and stroking his fur. Unobtrusively moving closer, you overhear him talking to the ram:[line break]";
	say "     'I really hope you're still in there, Shawn. This must all be difficult to understand, but inside this furry body, I'm me - Duke. And I still love you.' He gently pulls the sheep's muzzle to the side, giving him a kiss on the nose, making the ram give a somewhat confused 'Meeh?' Duke sighs, and you can only barely make out the quiet 'If only you'd just changed like I did... not went all the way to being an animal. I don't even know if you even understand a word I'm saying...'";
	WaitLineBreak;
	say "     Giving another sigh, he continues 'I miss you. Talking to you, being with you...', his hand meanwhile wandering lower and touching the ram's crotch. Stroking his transformed boyfriend, it doesn't take long till he's got his ram hard and ready to go. Then the German shepherd takes a new position on all fours, ass raised high. Lust is clearly audible in the eager 'Meeeh!' given by the ram as he proceeds to mount the dog without much ceremony, just rearing up to get on top of him and plunging in his erect shaft. Duke takes it easily, this clearly not being his first time in getting fucked, and from the way he rocks back against the young ram to meet his thrusts, not just his fifth or tenth time either. He moans as the ram pounds his ass, gasping 'Fuck me! Yeah - harder!'";
	say "     With the sheep on top of Duke just rutting away, not remotely intelligent enough to think about giving his partner some additional pleasure or even simply talk, it doesn't take too much longer until he suddenly bleeks and fills the dog's ass with a load of his cum. Quickly dismounting him after that, the ram stands beside Duke as he jerks himself off, soon afterwards spraying his own load into the grass. Panting, the dog-morph puts his arms around his ram friend, holding and stroking his fur as he rides out is orgasm.";
	NPCSexAftermath Duke receives "AssFuck" from Shawn;
	now HP of Duke is 1;

instead of fucking the Duke:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Duke says [one of]'I take my duty protect the herd seriously, not now'[or]'I have to stay vigilant so the herd is safe, please don't distract me'[or]'I don't have time to chat now, sorry'[or]'Look for me this evening if you want to talk, OK?'[at random], not even taking his eyes off the sheep and ignoring any attempt to start a conversation.";
	else:
		if HP of Duke < 10:
			say "     As you make Duke your offer of some nice time together, he looks over to you and shakes his head. 'I'm flattered, but... no. I hardly know you, after all...'";
		else if HP of Duke is 10:
			say "     As you make Duke your offer of some nice time together, he looks over to you and gives a smile. 'Of course I'm interested. I'd do almost anything for you. Though as you've... seen before, I'm gay, and a bottom at that. Pussy just doesn't do anything for me, so you'll have to excuse me if you wanted me to fuck you or anyone anyone...'";
			wait for any key;
			say "[DukeSexMenu]";
			now lastfuck of Duke is turns;
		else:
			if daytimer is day:
				say "     As you make Duke your offer of some interesting time together, he looks over to you and gives a slight shake of his head. 'Got to watch the herd.'";
			else:
				if lastfuck of Duke - turns < 6:
					say "     As you approach Duke and ask him for some sexy time, he shakes his head 'Not now, I'm exhausted.'";
				else:
					say "     You walk over to Duke and ask him if he'd like to have some fun with you. Giving your body an appreciative look, the anthro dog smiles and steps closer to you, his tail wagging excitedly.";
					wait for any key;
					say "[DukeSexMenu]";
					now lastfuck of Duke is turns;

to say DukeSexMenu:
	say "     [bold type]What do you want to do with Duke?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your shepherd friend's mouth to good use";
	[]
	if (HP of Duke > 1):
		choose a blank row in table of fucking options;
		now title entry is "Give Duke a blowjob";
		now sortorder entry is 3;
		now description entry is "Blow off the German shepherd";
	[]
	if (HP of Duke > 1):
		choose a blank row in table of fucking options;
		now title entry is "Finger his ass";
		now sortorder entry is 4;
		now description entry is "Finger-fuck Duke and jerk him off at the same time";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Duke's ass";
		now sortorder entry is 6;
		now description entry is "Fill the German shepherd's ass with your cock";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 7;
		now description entry is "Take his canine shaft in the back door and be knotted by him";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[DukeSex1]";
				else if (nam is "Give Duke a blowjob"):
					say "[DukeSex2]";
				else if (nam is "Finger his ass"):
					say "[DukeSex3]";
				else if (nam is "Take Duke's ass"):
					say "[DukeSex4]";
				else if (nam is "Let him fuck your ass"):
					say "[DukeSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the German shepherd, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DukeSex1: [cock sucked by Duke]
	say "     Rubbing your crotch, you tell Duke how much you'd appreciate some attention from him, pulling out your already half-hard shaft in an obvious invitation. With a smiling face, the German shepherd sinks to his knees and starts licking your manhood and balls, showing good skill in the use of his long and flexible tongue. Taking your shaft into his muzzle, carefully using his lips and tongue to hold it away from his teeth, Duke bobs up and down, sending shivers of pleasure up your spine. Meanwhile, he moves a hand up to tease and caress your balls, fondling them softly between his fingers.";
	say "     Running your hands over the German shepherd's head, you feel Duke's soft fur, then rub him behind his pointy ears. Finally you just hold on to him as he keeps giving you an amazing blowjob, giving yourself over to his skillful stimulation. It doesn't take much longer until you feel the urgent need to cum rise in your balls, the first spurt already blasting into Duke's mouth before you can say anything or warn him. He just takes it in stride and continues what he's doing, eagerly swallowing your seed. As he pulls off your cock after you stop cumming, the dog-morph gives it another slow lick along its side and smiles up at you. 'Your cum is pretty tasty, just so you know,' he adds, giving you a wink as he stands up.";
	if HP of Duke is 10:
		now HP of Duke is 11;
	NPCSexAftermath Duke receives "OralCock" from Player;

to say DukeSex2: [Blowjob for Duke]
	say "     Stepping up to Duke, you put your hand on his crotch, rubbing his balls and canine cock as it fills out and comes out of its sheath. He moans as you grasp the shaft, tongue hanging out of his mouth and tail wagging excitedly. Then you kneel, bringing your head to about the same level as his crotch. Holding the aroused canine's shaft up with one hand, you grab his balls with the other, squeezing them lightly as you fondle them with your fingers. You look up at Duke with a smile, then put your tongue to the underside of his penis, running it up along the shaft until you reach the tip and slide your lips over it.";
	say "     Duke moans as you go down on him, running his hands over your head as you take all of his cock in, deep-throating the horny German shepherd. 'Man, this feels great - your mouth on my dick,' he pants, then starts to pull back a bit before thrusting back in, taking up a nice rhythm of face-fucking you. With him taking over on the front side, you decide to put some of your attention on another of the morphed dog's sensitive areas, sneaking your arm between his legs and reaching up to goose a firm, furry asscheek. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker.";
	WaitLineBreak;
	say "     The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, just holding your head tight against his crotch until he gets himself back under control, then letting you go to catch a breath a moment later. 'I love having my ass played with,' he tells you happily, then pulls your head to his cock again, pumping it in and out of your mouth with a fervor that foreshadows his upcoming orgasm. With you adding another finger and pushing them in deep to rub Duke's sensitive insides, it's pretty easy to drive his arousal to the roof, and it makes you smile how he yips loudly each time you brush over his prostate.";
	say "     With Duke speeding up his face-fucking and you having two, then three, fingers knuckle-deep in his ass, it's not much longer until the muscular anthro dog calls out 'I'm... gonnna... cummmMMM!', grunting as his knotted shaft starts spurting sperm into your mouth and down your throat. His asshole twitches around your fingers with each blast of seed that splashes onto your tongue and that you immediately swallow.";
	WaitLineBreak;
	say "     After he finishes coming and pulls out, Duke strokes your head and gives your shoulder a squeeze. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if HP of Duke is 10:
		now HP of Duke is 11;
	NPCSexAftermath Player receives "OralCock" from Duke;

to say DukeSex3: [Duke's ass fingered]
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with,' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself.";
	say "     With you adding another finger and pushing them in deep to rub Duke's sensitive insides, it's pretty easy to drive his arousal to the roof, and it makes you smile how he yips loudly each time you brush over his prostate. Looking over his shoulder, you see that he's by now fully hard, his canine shaft standing at full attention and with a shining bead of pre-cum at its tip. Time to help him out with that too - you snake an arm around his hip, then grasp your furry friend's hard cock, jerking it in rhythm with your fingers thrusting in and out of his back door. Getting jerked off at the same time as having two, then three, fingers knuckle-deep in his ass, it's not much longer until the muscular anthro dog calls out 'I'm... gonnna... cummmMMM!', grunting as his knotted shaft starts spurting arcs of sperm in the air. His asshole twitches around your fingers with each blast of seed that splashes down onto the grass.";
	WaitLineBreak;
	say "     After he finishes coming and you pull your fingers out, Duke turns around and gives your shoulder a squeeze. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if HP of Duke is 10:
		now HP of Duke is 11;
	NPCSexAftermath Duke receives "Stroking" from Player;

to say DukeSex4: [Duke fucked in the ass]
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with,' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself. Putting your arms around Duke from behind, you feel his muscular chest, while at the same time grinding your hips against his ass, letting him feel your hard cock. The dog-morph is like putty in your hands, content in your embrace and moaning as he pushes his ass back against your crotch.";
	say "     After letting go of him for a second and a really quick strip on your part, you move into place behind him again, pulling him against your naked form and feeling the soft fur of his back against your chest. Your hard cock pokes his butt, sliding up and down between his firm buns as Duke pushes himself back against you, rotating his hips a bit. Panting, the German shepherd turns his head and says over his shoulder 'Put it in please. Fuck me, I need it.' Grinning at having this muscular bottom boy for your pleasure, you reach down to take hold of your shaft, setting its tip at the canine's waiting pucker and thrust in, burying your manhood in him in one deep thrust. Duke's clearly used to taking hard cocks without complaint, only giving a loud satisfied moan as your hips meet his ass with an audible slap. His back passage stretches easily to allow your member in, then tightens around you, proving his skillful muscle control.";
	WaitLineBreak;
	say "     After just resting like that for a moment, reveling in holding the athletic shepherd and being balls-deep inside him, you start thrusting in and out, fucking him with slow and sure strokes. Following his pants of 'Harder! Faster!', you quickly speed up until you're really pounding his ass, giving it to him like he is used to from getting mounted by a horny ram. He really is an amazing bottom - easy to penetrate but still tight and gripping when he flexes his muscles, almost jerking you off inside of his ass. And pretty vocal too, yipping in pleasure each time you hit his prostate.";
	say "     Soon, the wild ride you're giving him pushes Duke over the edge and he orgasms, his sphincter gripping your cock like a vise as his knotted shaft starts spurting arcs of cum in the air. With Duke's hot hole tight around your cock and creating breathtaking sensations as you fuck him through his climax, you soon feel a familiar tingle rise in your balls. Plunging in one last time, you grind your hips against his furry ass and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	WaitLineBreak;
	say "     Holding the German shepherd until your orgasm ebbs out and the last spurt of cum is shot inside him, you pull out after a while, feeling his pucker pull tight the moment you leave his body, not letting one drop of your load escape. Duke turns around and gives your shoulder a squeeze, then leans in to lick your face. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if HP of Duke is 10:
		now HP of Duke is 11;
	NPCSexAftermath Duke receives "AssFuck" from Player;

to say DukeSex5: [Player fucked in the ass]
	setmonster "German Shepherd Male";
	choose row MonsterID from the Table of Random Critters;
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with,' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself. Putting your arms around Duke from behind, you feel his muscular chest, then whisper in his ear that he's not the only one who likes hard dick in his ass, reaching down to grab his erect canine manhood. Inviting him to be the top for a change, you walk around Duke, stripping your clothes off on the move to stop on your hands and knees in the grass in front of the German shepherd.";
	say "     Looking back at him, wiggling your naked ass invitingly, you tell him to mount you. Duke is a bit hesitant at first, always having been the bottom in his pairing with Shawn, then his natural (though nanite-enhanced) urges take over, making him follow the guiding arrow of his erect penis. The anthro dog kneels behind you, his hands cupping your buttcheeks, then kneading them. The next thing you feel is your canine friend's tongue, lapping up and down your crack to give you a pleasant tingly feeling. Wet nose pressed against your skin, he pushes his tongue against your hole teasingly, then wiggles its tip in as you relax your muscle. Duke happily eats you out and gets you nice and wet - giving you a very nice feeling as he does so, then you remind him that he's supposed to fuck you. 'Oh, yes - of course,' he answers in a still rather submissive tone, then lifts his upper body and moves forwards till his hard cock pokes you in the butt.";
	WaitLineBreak;
	say "     Brushing his erect canine cock against a willing partner's body seems almost to break a little dam in Duke's mind, and with a low lusty growl, he takes hold of his shaft and sets it right against your quivering pucker. Driven by animalistic instinct, he thrusts deep in your thankfully wet and well-lubed hole till the meaty bulge of his knots rests against its outside, then grips your hips with both hands and starts to really pound your ass with rapid thrusts. It feels amazing to have the well-hung canine fuck you, hitting just the right spots to have you moan in lust and grip the grass tightly. As his arousal mounts higher and higher, Duke eventually just keeps pushing against your hole when he's in to his knot - and with a sudden stretching sensation, it pops in too.";
	say "     Burying his manhood down to the base in your warm and tight ass is the last straw for the German shepherd. He gives a sound that's halfway between a howl and an aroused grunt, then starts to flood your insides with blast after blast of canine seed, gushing forth as his knot expands even more and seals the two of you together. Panting, Duke leans against your back, his cock still pulsing with more cum shooting into you. He says 'That was... amazing.' and caresses your chest, then reaches down to take hold of your own shaft and return the favor. With how hot and horny all this fucking already made you, it doesn't take all that long until his eager jerking drives you over the edge and you spray your own seed all over the grass below.";
	NPCSexAftermath Player receives "AssFuck" from Duke;
	WaitLineBreak;
	say "     With both of you having gotten off, Duke just puts his arms around your body to hold you and pulls you down to lie on the grass as you wait for his knot to go down. He nuzzles against your neck from behind and whispers 'Thanks for letting me fuck you. I really could get used to this too...'";
	if HP of Duke is 10:
		now HP of Duke is 11;

Table of GameCharacterIDs (continued)
object	name
Shawn	"Shawn"

Shawn is a man.
ScaleValue of Shawn is 3. [human sized]
Body Weight of Shawn is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Shawn is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Shawn is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Shawn is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Shawn is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Shawn is 5. [length in inches]
Breast Size of Shawn is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Shawn is 2. [count of nipples]
Asshole Depth of Shawn is 8. [inches deep for anal fucking]
Asshole Tightness of Shawn is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Shawn is 1. [number of cocks]
Cock Girth of Shawn is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Shawn is 11. [length in inches]
Ball Count of Shawn is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Shawn is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Shawn is 0. [number of cunts]
Cunt Depth of Shawn is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Shawn is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Shawn is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Shawn is false.
PlayerRomanced of Shawn is false.
PlayerFriended of Shawn is false.
PlayerControlled of Shawn is false.
PlayerFucked of Shawn is false.
OralVirgin of Shawn is false.
Virgin of Shawn is true.
AnalVirgin of Shawn is false.
PenileVirgin of Shawn is false.
SexuallyExperienced of Shawn is true.
TwistedCapacity of Shawn is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Shawn is false. [steriles can't knock people up]
MainInfection of Shawn is "Ram".
Description of Shawn is "[ShawnDesc]".
Conversation of Shawn is { "Mew!" }.

instead of sniffing Shawn:
	say "Shawn has a pleasant animalistic smell, woolly and masculine.";

to say ShawnDesc:
	if daytimer is day:
		say "     Shawn is a young anthro ram, with ruggedly good looks on his flattened face and his blunt muzzle. Two horns adorn the sides of his forehead, just starting to curve downward, which will no doubt leave him with impressive spiral horns in a few years to come. He's tall, standing straight on digitigrade legs and hooves, his upper body pretty human-like - except for the fur, that is. Even though the anthro ram already has a quite respectable physique, about the level of a college-age athlete, he's pretty concentrated on expanding on that. Always busy keeping fit, jogging or doing push-ups and crunches in the grass.";
	else:
		say "     Shawn is a young anthro ram, with ruggedly good looks on his flattened face and his blunt muzzle. Two horns adorn the sides of his forehead, just starting to curve downward, which will no doubt leave him with impressive spiral horns in a few years to come. He's tall, standing straight on digitigrade legs and hooves, his upper body pretty human-like - except for the fur, that is. Now that the herd is gathered and Duke isn't quite as busy watching over them, Shawn hangs out with him, chatting and joking around. He often has his arm around Duke's shoulders, being pretty affectionate to his boyfriend, giving him small kisses and caresses.";

instead of conversing the Shawn:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Shawn says [one of]'Wanna train a bit with me? Come on, let's jog.'[or]'I can't thank you enough for making me... well, humanoid. Allowing me to think.'[at random]";
	else: [at night, he's got some time to chat]
		say "     With Shawn almost constantly busy chatting with his boyfriend Duke, you can't get a word in edgewise.";
		say "     <Wahn says: He'll get more talkative in a future update>";

instead of fucking the Shawn:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Shawn shakes his head. 'Not now, I'm busy training.'";
	else: [at night, he's got some time to chat]
		say "     With Shawn almost constantly busy chatting with his boyfriend Duke, you can't get a word in edgewise.";
		say "     <Wahn says: Sex scenes can be added somewhen later...>";

Duke ends here.
