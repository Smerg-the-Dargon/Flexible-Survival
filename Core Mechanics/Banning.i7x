Version 2 of Banning by Core Mechanics begins here.
[ Version 1 - Banning/Warding - Written by Speedlover]
[ Version 1.1 - Updates to have Tags for content and Flags for creatures / situations - Dys]
[ Version 2 - Flags and Tags renamed into unique XLists]

Flag is a kind of thing.
A Flag has a list of text called Infections.
A Flag has a list of situations called BadSpots.
A Flag can be banned. A Flag is usually not banned.
A Flag can be warded. A Flag is usually not warded.
Tag is a kind of thing.
A Tag has a list of text called Infections.
A Tag has a list of situations called BadSpots.
A Tag can be warded. A Tag is usually not warded.
A Tag can be banned. A Tag is usually not banned.

BodyHorrorList is a flag.
FurryList is a flag.
DemonList is a flag.
FeralList is a flag.
HumorousList is a flag.
HumanoidList is a flag.

FemaleList is a flag.
HermList is a flag.
MaleList is a flag.
TransList is a flag.

CockVoreList is a tag.
CuckList is a tag.
IncestList is a tag.
MindcontrolList is a tag.
NonconList is a tag.
VoreList is a tag.

The player has a list of text called WardList.
The player has a list of text called BanList.

to new ban menu:
	let FlagList be { "Body Horror", "Furry", "Males", "Females", "Transgender", "Hermaphrodite", "Humorous", "Humanoid", "Hellspawn", "Feral"};
	let TagList be {"Noncon", "Cuck", "Incest", "Vore", "Cockvore", "Mindcontrol"};
	let countnumber be 1;
	let nbmexit be 0;
	while nbmexit is 0:
		say "[bold type]Select which categories you want banned/warded:[roman type][line break]";
		say "[bold type]Warding will remove all qualifying monsters from appearing as random encounters, but you can still find them by specifically hunting for them or if they are directly written into a given scene. Banning will completely remove the chance to encounter said monsters entirely, both random and even hunting for them and in scenes. Combat will be skipped if such creatures are called up. (Banning is sure to choke off MANY threads of the story and quests as well. Use with caution. You have been warned.)[roman type][line break]";
		say "[line break][bold type]FLAGS[roman type][line break]";
		while countnumber <= number of entries in FlagList:
			say "[link][countnumber] - [entry countnumber of FlagList][as][countnumber][end link]: [run paragraph on]";
			bancheck entry countnumber of FlagList;
			increase countnumber by 1;
		say "[line break][bold type]TAGS[roman type][line break]";
		while countnumber <= (number of entries in FlagList + number of entries in TagList):
			say "[link][countnumber] - [entry (countnumber - number of entries in FlagList) of TagList][as][countnumber][end link]: [run paragraph on]";
			bancheck entry (countnumber - number of entries in FlagList) of TagList;
			increase countnumber by 1;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-[countnumber])>[run paragraph on]";
			get a number;
			if (calcnumber >= 0 and calcnumber <= countnumber):
				break;
			else:
				say "Invalid Entry";
		let turq be number of entries in FlagList;
		if calcnumber is 0:
			now nbmexit is 1;
		else if calcnumber <= turq:
			banchange entry calcnumber of FlagList;
		else:
			banchange entry (calcnumber - number of entries in FlagList) of TagList;
		now countnumber is 1; [Must reset to 1 or it won't print the list again]

to bancheck (name - text):
	if name is listed in BanList of Player:
		say "[bold type]BANNED[roman type]";
	else if name is listed in WardList of Player:
		say "[bold type]WARDED[roman type]";
	else:
		say "[bold type]Normal[roman type]";
	say "[line break]";

to banchange (name - text):
	if name is listed in BanList of Player:
		remove name from BanList of Player;
		oldflagunban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now normal.[roman type][line break]";
	else if name is listed in WardList of Player:
		remove name from WardList of Player;
		oldflagunward name;
		add name to BanList of Player;
		oldflagban name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now banned.[roman type][line break]";
	else:
		add name to WardList of Player;
		oldflagward name;
		if clearnomore is 0, clear the screen;
		say "[bold type][name] is now warded.[roman type][line break]";
	WaitLineBreak;

to oldflagban (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is banned;
		-- "Cockvore":
			now CockvoreList is banned;
		-- "Furry":
			now FurryList is banned;
		-- "Males":
			now MaleList is banned;
		-- "Females":
			now FemaleList is banned;
		-- "Humorous":
			now HumorousList is banned;
		-- "Hermaphrodite":
			now HermList is banned;
		-- "Hellspawn":
			now DemonList is banned;
		-- "Feral":
			now FeralList is banned;
		-- "Transgender":
			now TransList is banned;
		-- "Cuck":
			now CuckList is banned;
		-- "Incest":
			now IncestList is banned;
		-- "Noncon":
			now NonconList is banned;
		-- "Mindcontrol":
			now MindcontrolList is banned;
		-- "Vore":
			now VoreList is banned;

to oldflagward (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is not warded;
		-- "Cockvore":
			now CockvoreList is warded;
		-- "Furry":
			now FurryList is warded;
		-- "Males":
			now MaleList is warded;
		-- "Females":
			now FemaleList is warded;
		-- "Humorous":
			now HumorousList is warded;
		-- "Hermaphrodite":
			now HermList is warded;
		-- "Hellspawn":
			now DemonList is warded;
		-- "Feral":
			now FeralList is warded;
		-- "Transgender":
			now TransList is warded;
		-- "Cuck":
			now CuckList is warded;
		-- "Incest":
			now IncestList is warded;
		-- "Noncon":
			now NonconList is warded;
		-- "Mindcontrol":
			now MindcontrolList is warded;
		-- "Vore":
			now VoreList is warded;

to oldflagunban (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is not banned;
		-- "Cockvore":
			now CockvoreList is not banned;
		-- "Furry":
			now FurryList is not banned;
		-- "Males":
			now MaleList is not banned;
		-- "Females":
			now FemaleList is not banned;
		-- "Humorous":
			now HumorousList is not banned;
		-- "Hermaphrodite":
			now HermList is not banned;
		-- "Hellspawn":
			now DemonList is not banned;
		-- "Feral":
			now FeralList is not banned;
		-- "Transgender":
			now TransList is not banned;
		-- "Cuck":
			now CuckList is not banned;
		-- "Incest":
			now IncestList is not banned;
		-- "Noncon":
			now NonconList is not banned;
		-- "Mindcontrol":
			now MindcontrolList is not banned;
		-- "Vore":
			now VoreList is not banned;

to oldflagunward (flagname - text):
	if flagname is:
		-- "Body Horror":
			now BodyHorrorList is not warded;
		-- "Cockvore":
			now CockvoreList is not warded;
		-- "Furry":
			now FurryList is not warded;
		-- "Males":
			now MaleList is not warded;
		-- "Females":
			now FemaleList is not warded;
		-- "Humorous":
			now HumorousList is not warded;
		-- "Hermaphrodite":
			now HermList is not warded;
		-- "Hellspawn":
			now DemonList is not warded;
		-- "Feral":
			now FeralList is not warded;
		-- "Transgender":
			now TransList is not warded;
		-- "Incest":
			now IncestList is not warded;
		-- "Cuck":
			now CuckList is not warded;
		-- "Noncon":
			now NonconList is not warded;
		-- "Mindcontrol":
			now MindcontrolList is not warded;
		-- "Vore":
			now VoreList is not warded;

Banning ends here.
