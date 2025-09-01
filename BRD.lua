local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    ['Idle'] = {
        Main = 'Carnwenhan',
        Sub = 'Genmei Shield',
        Range = 'Daurdabla',
        Head = 'Nyame Helm',
        Neck = 'null loop',
        Ear1 = 'genmei Earring',
		Ear2 = 'Eabani Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = 'null shawl',
		waist = 'null belt',
		legs = 'nyame flanchard',
        Feet = 'Nyame Sollerets',	
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'null loop',
        Ear1 = 'Infused Earring',
        Ring1 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        --Legs = 'Assid. Pants +1',
        --Feet = 'Volte Gaiters',
    },
    Town = {
        Main = 'Carnwenhan',
        Sub = 'Ammurapi Shield',
        Range = 'Daurdabla',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Body = 'Bihu Just. +4',
        Hands = 'Fili Manchettes +2',
        Back = 'null shawl',
        Legs = 'Fili Rhingrave +2',
        Feet = 'Brioso Slippers +4',
    },

    Dt = {
        Sub = 'Genbu\'s Shield',
        Head = 'Nyame Helm',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
		ear2 = 'eabani earring',
        --Ear2 = 'Etiolation Earring',
        Body = 'Ashera Harness',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = 'Solemnity Cape',
        Waist = 'null belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Main = 'naegling',
        Sub = 'Fusetto +2',
        Range = { Name = 'Linos', Augment = { [1] = 'Accuracy+15', [2] = '"Store TP"+3', [3] = 'Quadruple Attack +3' } },
        Head = 'Aya. Zucchetto +2',
        Neck = 'Bard\'s Charm +2',
        Ear1 = 'Telos Earring',
        Ear2 = 'cessance Earring',
        Body = 'Ashera Harness',
        Hands = 'Bunzi\'s gloves',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Chirich Ring +1',
        Back = 'null shawl',
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Volte Spats',
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },


    Precast = { --74
        Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        --Head = 'Haruspex Hat', --8
        Neck = 'Baetyl Pendant', --4
        Ear1 = 'Loquacious Earring',
        Ear2 = 'Etiolation Earring', --1
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Gende. Gages +1', --6
        Ring1 = 'Prolix Ring', --2
		Ring2 = 'weather. ring',
        --Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1', --5
        Legs = 'Kaykaus tights +1', --6
        Feet = 'Fili Cothurnes +2',
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Feet = 'Vanya Clogs',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    Stoneskin_Precast = {
        Head = 'Umuthi Hat',
        Waist = 'Siegel Sash',
		legs = 'doyen pants',
    },
    Song_Precast = { --87
		Main = 'Carnwenhan',
		Sub = 'Kali',
		Range = 'Gjallarhorn',
        Head = 'Fili Calot +2', --14
        Neck = 'Loricate Torque +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Gende. Gages +1', --6
        Ring1 = 'Prolix Ring',
        Ring2 = 'weather. ring',
		--Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1', --5
        Legs = 'Kaykaus tights +1', --6
        Feet = 'Fili Cothurnes +2',
    },

	Honor_Precast = { --87
        Main = 'Carnwenhan',
		Sub = 'Kali',
		Range = 'Marsyas',
        Head = 'Fili Calot +2', --14
        Neck = 'Loricate Torque +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Gende. Gages +1', --6
        Ring1 = 'Prolix Ring',
        Ring2 = 'weather.ring',
		--Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1', --5
        Legs = 'Kaykaus tights +1', --6
        Feet = 'Fili Cothurnes +2',
    },

	Aria_Precast = { --87
        Main = 'Carnwenhan',
		Sub = 'Kali',
		Range = 'Loughnashade',
        Head = 'Fili Calot +2', --14
        Neck = 'Loricate Torque +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Inyanga Jubbah +2', --14
        Hands = 'Gende. Gages +1', --6
        Ring1 = 'Prolix Ring',
        Ring2 = 'Defending Ring',
		--Ring2 = 'Kishar Ring', --5
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1', --5
        Legs = 'Kaykaus tights +1', --6
        Feet = 'Fili Cothurnes +2',
    },
	
    Cure = {--I cap is 50, II cap is 30
       --Main = 'Bunzi\'s Rod',--I 30
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Nodens Gorget',--I 5
        Ear1 = 'Mendi. Earring',--I 5
        Ear2 = 'Regal Earring',
        Hands = 'Nyame Gauntlets',
        --Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
		Legs = 'Kaykaus tights +1', --6
        Waist = 'Rumination Sash',
        Feet = 'Vanya Clogs',--I 10
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
        Body = 'Telchine Chas.',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
        Feet = 'Vanya Clogs',
    },

    Enhancing = {
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Shinjutsu-no-Obi +1',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Phalanx = {},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },

    Enfeebling = { --need update
        Sub = 'Ammurapi Shield',
        Head = 'Brioso Roundlet +2',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Crep. Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Brioso Cuffs +2',
        Ring1 = 'metamor. ring +1',
        Ring2 = 'weather. ring',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Acuity Belt +1',
        Legs = 'Fili Rhingrave +2',
        Feet = 'Brioso Slippers +4',
    },

    Wind = {
        Main = 'Carnwenhan',
		Sub = 'Ammurapi Shield',
        Range = 'Gjallarhorn',
        Head = 'Brioso Roundlet +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Brioso Cuffs +2',
        --Ring1 = 'Stikini Ring +1',
		Ring1 = "defending ring",
        Ring2 = 'weather. ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Fili Rhingrave +2',
        Feet = 'Brioso Slippers +4',
    },
	Aria = {
        Main = 'Carnwenhan',
		sub = 'Kali',
        Range = 'Loughnashade',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        --Ring1 = 'Stikini Ring +1',
		Ring1 = "defending ring",
        Ring2 = 'weather. ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
	Honor = {
        Main = 'Carnwenhan',
		sub = 'kali',
        Range = 'Marsyas',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        --Ring1 = 'Stikini Ring +1',
		Ring1 = "defending ring",
        Ring2 = 'weather. ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
    Harp = {--use /forcestring in game to lock this on all songs, I personally just use Paeons
        Range = 'Daurdabla', -- This should be ur extra song harp, whichever you use
	},
	
	
	
    Foe = {
        Main = 'Carnwenhan',
		Sub = 'Ammurapi Shield',
        Range = 'Marsyas',
        Head = 'Brioso Roundlet +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'regal earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Brioso Cuffs +2',
		Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Weather. Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Acuity Belt +1',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Bihu Slippers +4',
    },
    Horde = {
        Main = 'Carnwenhan',
        Sub = 'Ammurapi Shield',
        Range = 'Daurdabla',
        Head = 'Brioso Roundlet +2',
        Neck = 'Mnbw. Whistle +1',
		Ear1 = 'Gersemi Earring',
        Ear2 = 'Regal Earring',
        Body = 'Brioso Justau. +2',
        Hands = 'Inyan. Dastanas +2',
		Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Weather. Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Harfner\'s Sash',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Bihu Slippers +4',
    },
    Buff = {
        Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
    Paeon = {
        Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
		Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Ring1 = 'Defending Ring',
		Ring2 = 'weather. Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Fili Cothurnes +2',
    },
	Dummy = {--you can also use /forcestring if you want
        Main = 'Carnwenhan',
		Sub = 'Ammurapi Shield',
        Range = 'Daurdabla',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Ring1 = 'Defending Ring',
		Ring2 = 'weather. Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'Shinjutsu-no-Obi +1',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Fili Cothurnes +2',
    },
    March = {
		Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
		},

    Madrigal = {
        Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
    Ballad = {
		Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
	Mambo = {
		Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Mousai crackows',
    },
	
	Etude = {
        Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Mousai turban',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +4',
    },
    Scherzo = {
		Main = 'Carnwenhan',
        Sub = 'Kali',
        Range = 'Gjallarhorn',
        Head = 'Fili Calot +2',
        Neck = 'Mnbw. Whistle +1',
        Ear1 = 'loquac. earring',
        Ear2 = 'fili Earring',
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Moonlight Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Acc.+20', [3] = 'CHR+30', [4] = 'Phys. dmg. taken -10%', [5] = 'Magic Damage+20' } },
        Waist = 'null belt',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Fili Cothurnes +2',
    },

    Drain = {},
	
    Nuke = {
	--main = '',
	},
    
	--Preshot = {},
    --Midshot = {
        --Ear1 = 'Telos Earring',
        --Ear2 = 'Crep. Earring',
    --},

    Ws_Default = {
        Range = { Name = 'Linos', Augment = { [1] = 'Accuracy+12', [2] = 'STR+8', [3] = 'Attack+12', [4] = 'Weapon skill damage +2%' } },
        Head = 'Nyame Helm',
        Neck = 'Bard\'s Charm +2',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Telos Earring',
        Body = 'Bihu Just. +4',
        Hands = 'Nyame Gauntlets',
        Ring1 = ' Ephramad\'s Ring',
        Ring2 = 'Ilabrat Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Salifi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {},
    Ws_Acc = {},

    Mordant_Default = {
        Range = { Name = 'Linos', Augment = { [1] = 'Accuracy+12', [2] = 'STR+8', [3] = 'Attack+12', [4] = 'Weapon skill damage +2%' } },
        Neck = 'Bard\'s Charm +2',
        Body = 'Bihu Just. +4',
        Ring1 = 'Apate Ring',
        Ring2 = 'Ilabrat Ring',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
    },
    Mordant_Hybrid = {},
    Mordant_Acc = {},

    Savage_Default = {
        Range = { Name = 'Linos', Augment = { [1] = 'Accuracy+12', [2] = 'STR+8', [3] = 'Attack+12', [4] = 'Weapon skill damage +2%' } },
		head = 'nyame helm',
        Neck = 'Bard\'s Charm +2',
		ear1 = 'regal earring',
		ear2 = 'telos earring',
		Body = 'Bihu Just. +4',
		hands = 'nyame Gauntlets',
        Ring1 = 'Ephramad\'s Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
		Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Savage_Hybrid = {},
    Savage_Acc = {},
	
    Nitro = {--includes legs for soul voice as well
        Body = 'Bihu Just. +4',
        Legs = 'Bihu Cannions',
        Feet = 'Bihu Slippers +4',
    },

    TH = {
		Waist = 'Chaac Belt',
		Feet = 'Volte Boots',
	},
    Movement = {
        Feet = 'Fili Cothurnes +2',
	},
};
profile.Sets = sets;


profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();
	
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
	
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
		if (gcdisplay.GetToggle('Fight') == false) then
            AshitaCore:GetChatManager():QueueCommand(1, '/fight') end
	elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
	elseif (gcdisplay.GetToggle('Fight') == true) and (player.TP < 100) then
            AshitaCore:GetChatManager():QueueCommand(1, '/fight');
    end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    
    if string.match(ability.Name, 'Troubadour') 
        or string.match(ability.Name, 'Nightingale') 
        or string.match(ability.Name, 'Soul Voice') 
        or string.match(ability.Name, 'Clarion Call') then
        
        gFunc.EquipSet(sets.Nitro)

        -- Turn off /fight if active to allow gear swap
        if gcdisplay.GetToggle('Fight') == true then
            AshitaCore:GetChatManager():QueueCommand(1, '/fight')
            gcdisplay.SetToggle('Fight', false) --
        end
    end

    gcinclude.CheckCancels();
end


profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Precast)

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    elseif (spell.Skill == 'Singing') then
        gFunc.EquipSet(sets.Song_Precast);
    end
	if string.contains(spell.Name, 'Honor March') then
            gFunc.EquipSet(sets.Honor_Precast);
        end
			if string.contains(spell.Name, 'Aria of Passion') then
            gFunc.EquipSet(sets.Aria_Precast);
        end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Cure);
        end
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);

        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
    elseif (spell.Skill == 'Singing') then
        if (string.contains(spell.Name, 'Paeon')) then
            gFunc.EquipSet(sets.Paeon);
        elseif (string.contains(spell.Name, 'Victory March')) or (string.contains(spell.Name, 'Advancing March')) then
            gFunc.EquipSet(sets.March);
        elseif (string.contains(spell.Name, 'Blade Madrigal')) or (string.contains(spell.Name, 'Sword Madrigal')) then
            gFunc.EquipSet(sets.Madrigal);
		elseif (string.contains(spell.Name, 'Honor March')) then
            gFunc.EquipSet(sets.Honor);
		elseif (string.contains(spell.Name, 'Aria of Passion')) then
            gFunc.EquipSet(sets.Aria);
        elseif (string.contains(spell.Name, 'Sentinel\'s Scherzo')) then
            gFunc.EquipSet(sets.Scherzo);
		elseif (string.contains(spell.Name, 'Dragonfoe Mambo')) or (string.contains(spell.Name, 'Sheepfoe Mambo')) then
            gFunc.EquipSet(sets.Mambo);
        elseif (string.contains(spell.Name, 'Ballad')) then
            gFunc.EquipSet(sets.Ballad);
		elseif (string.contains(spell.Name, 'Etude')) then
            gFunc.EquipSet(sets.Etude);
		elseif (string.contains(spell.Name, 'Operetta')) or (string.contains(spell.Name, 'Round')) or (string.contains(spell.Name, 'Fantasia')) or (string.contains(spell.Name, 'Capriccio')) or (string.contains(spell.Name, 'Gavotte')) then
            gFunc.EquipSet(sets.Dummy);
		else
            gFunc.EquipSet(sets.Buff);
        end
        if (string.contains(spell.Name, 'Requiem')) or (string.contains(spell.Name, 'Elegy')) or (string.contains(spell.Name, 'Threnody')) or (string.contains(spell.Name, 'Finale')) or (string.contains(spell.Name, 'Lullaby')) then
            gFunc.EquipSet(sets.Wind);
        end
        if (string.contains(spell.Name, 'Horde Lullaby')) then
            gFunc.EquipSet(sets.Horde);
        elseif (string.contains(spell.Name, 'Foe Lullaby')) then
            gFunc.EquipSet(sets.Foe);
        end

        if (gcdisplay.GetToggle('String') == true) then
            gFunc.EquipSet(sets.Harp);
        end
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot);
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end
   
           if string.match(ws.Name, 'Mordant Rime') then
            gFunc.EquipSet(sets.Mordant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Mordant_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
		
		if string.match(ws.Name, 'Ruthless Stroke') then
            gFunc.EquipSet(sets.Ruthless_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Ruthless_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
   
        if string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;