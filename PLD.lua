local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'chev. armet +3',
        Neck = 'unmoving collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'tuisto earring',
        Body = 'sakpata\'s plate',
        Hands = 'chev. gauntlets +3',
        Ring1 = 'warden\'s ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'carrier\'s sash',
        Legs = 'chev. cuisses +3',
        Feet = 'rev. leggings +4',
    },
    Resting = {},
    Idle_Regen = {
        --Head = 'volte salade',
        Neck = 'Coatl Gorget +1',
        --Ear1 = 'Infused Earring',
		hands = 'regal gauntlets',
        Ring2 = 'Chirich Ring +1',
		waist = 'null belt',
    },
    Idle_Refresh = {
        --Ammo = 'Homiliary',
        --Head = 'Jumalik Helm',
        --Ring1 = 'Stikini Ring +1',
		--ring2 = 'stikini ring +1',
    },
    Town = {
        Main = 'burtgang',
        Sub = 'duban',
		range = 'ullr',
        Ammo = 'chapuli arrow',
		neck = 'coatl gorget +1',
		ear1 = 'hearty earring',
		ear2 = 'chev. earring +1',
        Hands = 'regal gauntlets',
		Ring1 = 'shneddick ring',
		ring2 = 'stikini ring +1',
		waist = 'plat. mog. belt',
        Legs = 'cab. breeches +4',
        Feet = 'Rev. Leggings +4',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Sakpata\'s helm',
        Neck ='Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
		Ring1 = 'warden\'s ring',
        Ring2 = 'gelatinous ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'asklepian belt',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },

    Tp_Default = {
        ammo = 'coiste bodhar',
        Head = 'sakpata\'s helm',
        Neck ='null loop',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'sakpata\'s plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'chirich Ring +1',
        Ring2 = 'Petrov Ring',
        Back = 'null shawl',
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'sakpata\'s leggings',
    },
    Tp_Hybrid = {
        ammo = 'coiste bodhar',
        Head = 'sakpata\'s helm',
        Neck ='null loop',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'sakpata\'s plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'defending ring',
        Ring2 = 'Petrov Ring',
        Back = 'null shawl',
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s leggings',
    },
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },

    --These will overwrite any above TP profile.Sets if /tankset is used
    Tank_Main = {--Default Tanking,  dt 
        Ammo = 'coiste bodhar',
        Head = 'nyame helm',
        Neck = 'unmoving collar +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'nyame mail',
        Hands = 'nyame gauntlets',
		Ring1 = 'petrov ring',
        Ring2 = 'chirich ring +1',
		--Ring2 = 'Moonlight Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'sailfi belt +1',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
        },
		
    Tank_MEVA = {
        Ammo = 'vanir battery',
        Head = 'nyame helm',
        Neck = 'moonlight necklace',
        Ear1 = 'Eabani Earring',
        Ear2 = 'chev. earring +1',
        Body = 'nyame mail',
        Hands = 'nyame gauntlets',
		Ring1 = 'vexer ring +1',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'carrier\'s sash',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },

    Precast = { --47FC
        Ammo = 'Sapience Orb',--2
        Head = 'chev. armet +3',--9
        Neck = 'voltsurge torque',--4
        Ear1 = 'loquac. earring', --2
        Ear2 = 'Etiolation Earring',--1
        Body = 'Rev. Surcoat +4',--10
        Hands = 'Leyline Gloves',--6
		Ring1 = 'defending ring',
		ring2 = 'gelatinous ring +1',
      --ring2 = 'moonlight ring',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = '"Fast Cast"+10', [2] = 'Phys. dmg. taken -10%', [3] = 'Mag. Evasion+20', [4] = 'HP+60', [5] = 'Evasion+20' } }, --10    
		Waist = 'plat. mog. belt',
        Legs = 'odyssean cuisses',--6
        Feet = 'chev. sabatons +3',--7
    },
    Cure_Precast = {
	    --Ear1 = 'Nourish. Earring +1',
        Ear2 = 'Mendi. Earring',
    },
    Enhancing_Precast = {
		body = 'shab. cuirass +1',
		hands = 'regal gauntlets',
        Waist = 'Siegel Sash',
    },
    SIR = {
        Ammo = 'Staunch Tathlum',--10
        Head = 'Souv. Schaller +1',--20 
        Neck = 'Moonlight Necklace',--15
		Ear1 = 'Odnowa Earring +1',
	    Ear2 = 'Tuisto Earring',
        Body = 'chev. cuirass +3',--20
		hands = 'regal gauntlets', --10
		ring1 = 'defending ring',
		ring2 = 'gelatinous ring +1',
		--ring2 = 'moonlight ring',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'plat. mog. belt',
        Legs = 'cab. breeches +4',--10 
        Feet = 'Odyssean Greaves',--20
    },
    Enmity = {
        Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
		Ring1 = 'eihwaz Ring',--5
        Ring2 = 'vexer ring +1',--4
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'plat. mog. belt',
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
    },

    Cure = {  --maybe need to fix for Aminon, 95% SIR 39%/50% CurePot, 25%/30%CurePot2 w Majesty
        Ammo = 'Staunch Tathlum', --10SIR
        Head = 'Souv. Schaller +1', --15rec/20SIR
        Neck = 'moonlight necklace',--15SIR
        Ear1 = 'mendi. earring', --5
        Ear2 = 'chev. earring +1', --11
        Body = 'chev. cuirass +3',--20SIR
        Hands = 'Macabre Gaunt. +1', --11
        Ring1 = 'defending ring',
        Ring2 = 'gelatinous ring +1',
		--Ring2 = 'Moonlight Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'plat. mog. belt',
        Legs = 'cab. breeches +4',--10SIR
        Feet = 'odyssean greaves',--12/20SIR
    },
	
    Phalanx = { -- +25phalanx received
		ammo = 'staunch tathlum',
        Head = 'valorous mask',--4
        Neck = 'moonlight necklace',
        Ear1 = 'odnowa earring +1',
        Ear2 = 'tuisto Earring',
        Body = 'valorous mail',--4
        Hands = 'souv. handsch. +1', --5
        Ring1 = 'defending ring',
        Ring2 = 'gelatinous ring +1',
		--Ring2 = 'Moonlight Ring',
        Back = 'weard mantle', --2
        Waist = 'audumbla sash',
        Legs = 'sakpata\'s cuisses', --5
        Feet = 'souveran schuhs +1', --5
	},
		
	Stoneskin = {
		ammo = 'staunch tathlum',
        Head = 'chev. armet +3',
        Neck = 'stone gorget',
        Ear1 = 'odnowa earring +1',
        Ear2 = 'earthcry earring',
        Body = 'rev. surcoat +4',
        Hands = 'stone mufflers',
		Ring1 = 'defending ring',
        Ring2 = 'gelatinous ring +1',
		--Ring2 = 'Moonlight Ring',
        Back = 'moonbeam cape',
        Waist = 'siegel sash',
        Legs = 'haven hose',
        Feet = 'sakpata\'s leggings',
    },
	
    Reprisal = { --105 SIR
        Ammo = 'staunch tathlum',--10
        Head = 'souv. schaller +1',--20
        Neck = 'moonlight necklace', --15
        Ear1 = 'odnowa earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'Shab. Cuirass +1',
		Hands = 'regal gauntlets',--20
		Ring1 = 'eihwaz ring',
        Ring2 = 'gelatinous ring +1',
		--Ring2 = 'Moonlight Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'audumbla sash',--10
        Legs = 'cab. breeches +4',--10
        Feet = 'odyssean greaves',--20
    },
	
    Flash = {
        Ammo = 'sapience orb',
        Head = 'loess barbuta +1',
        Neck = 'moonlight necklace',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'Rev. Surcoat +4',
		hands = 'cab. gauntlets +4',
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } },
        Waist = 'creed baudrier',
		Legs = 'cab. breeches +4',
        Feet = 'chev. sabatons +3',--15
    },

    Preshot = {},
    Midshot = {
		head = 'nyame helm',
		neck = 'sanctity necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Enervating Earring',
		body = 'nyame mail',
		hands = 'nyame gauntlets',
		ring1 = 'petrov ring',
		ring2 = 'regal ring',
		back = 'null shawl',
		waist = 'null belt',
		legs = 'nyame flanchard',
		feet = 'nyame sollerets',
    },

    Ws_Default = {
        ammo = 'coiste bodhar',
        Head = 'Nyame Helm',
        Neck = 'rep. plat. medal',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = 'Nyame Mail',
        Hands = 'nyame Gauntlets',
        Ring1 = 'petrov Ring',
        Ring2 = 'ephramad\'s ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'sailfi Belt +1',
        Legs = 'nyame flanchard',
        Feet = 'nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Chant_Default = {
        ammo = 'coiste bodhar',
        Head = 'Nyame Helm',
        Neck = 'rep. plat. medal',
        Ear1 = 'moonshade Earring',
        Ear2 = 'telos Earring',
        Body = 'Nyame Mail',
        Hands = 'nyame Gauntlets',
        Ring1 = 'regal Ring',
        Ring2 = 'ephramad\'s ring',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'nyame flanchard',
        Feet = 'Nyame Sollerets',
    },
    Chant_Hybrid = {
    },
    Chant_Acc = {
    },
    Savage_Default = {
		ammo = 'coiste bodhar',
        Head = 'Nyame Helm',
        Neck = 'rep. plat. medal',
        Ear1 = 'moonshade Earring',
        Ear2 = 'telos Earring',
        Body = 'Nyame Mail',
        Hands = 'nyame Gauntlets',
        Ring1 = 'regal Ring',
        Ring2 = 'ephramad\'s ring',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'nyame flanchard',
        Feet = 'Nyame Sollerets',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Atone_Default = {
        Ammo = 'sapience orb',
        Head = 'loess barbuta +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'friomisi earring',
        Body = 'rev. surcoat +4',
        Hands = 'cab. gauntlets +4',
        Ring1 = 'vexer ring +1',--4
        Ring2 = 'eihwaz Ring',--5
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'HP+60', [5] = 'Enmity+10' } },
        Waist = 'creed baudrier',
        Legs = 'cab. breeches +4',
        Feet = 'chev. sabatons +3',
    },
    Atone_Hybrid = {
    },
    Atone_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'sibyl scarf',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'regal ring',
        Ring2 = 'metamor. ring +1',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'orpheus\'s sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {},
    Aedge_Acc = {},

    sanguine_default = {
        Ammo = 'Pemphredo tathlum',
        Head = 'pixie hairpin +1',
        Neck = 'sibyl scarf',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Regal Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'archon Ring',
        Ring2 = 'metamor. ring +1',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'orpheus\'s sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    sanguine_Hybrid = {},
    sanguine_Acc = {},
	
	shining_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'sibyl scarf',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'regal ring',
        Ring2 = 'metamor. ring +1',
		Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'orpheus\'s sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    shining_Hybrid = {},
    shining_Acc = {},
	
	KOR_Default = {
        Ammo = 'coiste bodhar',
        Head = 'nyame helm',
        Neck = 'rep. plat. medal',
        Ear1 = 'lugra Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'regal Ring',
        Ring2 = 'ephramad\'s ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'sailfi belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'nyame sollerets',
    },
    KOR_Hybrid = {},
    KOR_Acc = {},

    Fealty = {
		sub = 'diamond aspis',
        Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'Cab. Surcoat +4',
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
    },
    Sentinel = {
		sub = 'diamond aspis',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'Cab. Surcoat +4',
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'Cab. Leggings +2',
    },
    Bash = {
		sub = 'aegis',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'Cab. Surcoat +4',
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
    },
    Invincible = {
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--9
        Neck = 'Moonlight Necklace', -- 15
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'Cab. Breeches +4',
        Feet = 'chev. sabatons +3',--15
		},
	de = {
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--9
        Neck = 'Moonlight Necklace', -- 15
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'Cab. Breeches +4',
        Feet = 'chev. sabatons +3',--15
		},
		
    Cover = {
        --Head = 'Rev. Coronet +1',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'Cab. Surcoat +4',
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
    },
    Rampart = {
		sub = 'diamond aspis',
		Ammo = 'Sapience Orb',--2
        Head = 'Cab. Coronet +2',
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'Cab. Surcoat +4',
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
    },
	circle = {
		sub = 'diamond aspis',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
		feet = 'rev. leggings +4',
		},
		
	palisade = {
		sub = 'diamond aspis',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
		},
	
	chiv = {
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
		},
		
    intervene = {
		sub = 'duban',
		Ammo = 'Sapience Orb',--2
        Head = 'loess barbuta +1',--19
        Neck = 'Moonlight Necklace', -- 15
		Ear1 = 'Friomisi Earring',--2
        Ear2 = 'tuisto earring',
        Body = 'souv. cuirass +1',--20
		hands = 'cab. gauntlets +4',--9
        Ring1 = 'eihwaz ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'Creed Baudrier',--5
        Legs = 'cab. breeches +4',--9
        Feet = 'chev. sabatons +3',--15
		},
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
	
    Movement = {
        Ammo = 'Staunch Tathlum',
        Head = 'chev. armet +3',
        Neck = 'coatl gorget +1',
        Ear1 = 'hearty earring',
        Ear2 = 'spellbr. earring',
        Body = 'sakpata\'s plate',
        Hands = 'regal gauntlets',
        Ring1 = 'shneddick ring',
        --ring2 = 'moonlight ring',
		Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'carrier\'s sash',
        Legs = 'chev. cuisses +3',
        Feet = 'nyame sollerets',
	},	
	
	kite = {
		main = 'burtgang',
		sub = 'aegis',
        Ammo = 'Staunch Tathlum',
        Head = 'chev. armet +3',
        Neck = 'unmoving collar +1',
        Ear1 = 'hearty earring',
        Ear2 = 'spellbr. earring',
        Body = 'sakpata\'s plate',
        Hands = 'nyame gauntlets',
        Ring1 = 'shneddick ring',
        Ring2 = 'vexer ring +1',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Evasion+20', [3] = 'HP+60', [4] = 'Mag. Evasion+30', [5] = 'Enmity+10' } }, --10
        Waist = 'carrier\'s sash',
        Legs = 'chev. cuisses +3',
        Feet = 'nyame sollerets',
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
        if (gcdisplay.GetCycle('TankSet') ~= 'None') then
			gFunc.EquipSet('Tank_' .. gcdisplay.GetCycle('TankSet')) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    local cover = gData.GetBuffCount('Cover');
	if (cover >= 1) then
		gFunc.EquipSet(sets.Fealty); -- same set as fealty
	end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.kite) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    gFunc.EquipSet(sets.Enmity)
	if string.match(ability.Name, 'Fealty') then
		gFunc.EquipSet(sets.Fealty);
    elseif string.match(ability.Name, 'Sentinel') then
		gFunc.EquipSet(sets.Sentinel);
	elseif string.match(ability.Name, 'Divine Emblem') then
		gFunc.EquipSet(sets.de);
    elseif string.match(ability.Name, 'Shield Bash') or string.match(ability.Name, 'Majesty') then
		gFunc.EquipSet(sets.Bash);
    elseif string.match(ability.Name, 'Invincible') then
		gFunc.EquipSet(sets.Invincible);
	elseif string.match(ability.Name, 'Intervene') then
		gFunc.EquipSet(sets.intervene);
    elseif string.match(ability.Name, 'Cover') then
		gFunc.EquipSet(sets.Cover);
	elseif string.match(ability.Name, 'Palisade') then
		gFunc.EquipSet(sets.palisade);
    elseif string.match(ability.Name, 'Rampart') then
		gFunc.EquipSet(sets.Rampart);
	elseif string.match(ability.Name, 'Holy Circle') then
		gFunc.EquipSet(sets.circle);
	elseif string.match(ability.Name, 'Chivalry') then
		gFunc.EquipSet(sets.chiv);
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
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.SIR);
	if string.contains(spell.Name, 'Cur') then
        gFunc.EquipSet(sets.Cure);
	elseif string.contains(spell.Name, 'Pro') then
        gFunc.EquipSet(sets.Reprisal);
    elseif string.match(spell.Name, 'Phalanx') then
        gFunc.EquipSet(sets.Phalanx);
    elseif string.match(spell.Name, 'Reprisal') then
        gFunc.EquipSet(sets.Reprisal);
        -- return; --if we dont want to override this with SIR even with SIR toggle
	elseif string.match(spell.Name, 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
        --return; --if we dont want to override this with SIR even with SIR toggle
    elseif string.match(spell.Name, 'Flash') then
        gFunc.EquipSet(sets.Flash);
    else
        gFunc.EquipSet(sets.Enmity);
    end

    if (gcdisplay.GetToggle('SIR') == true) then
        gFunc.EquipSet(sets.SIR);
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
   
        if string.match(ws.Name, 'Chant du Cygne') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')); end
	    elseif string.match(ws.Name, 'Savage Blade') or string.match(ws.Name, 'Knights of Round') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Atonement') then
            gFunc.EquipSet(sets.Atone_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Atone_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Sanguine Blade') then
            gFunc.EquipSet(sets.sanguine_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('sanguine_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Knights of Round') then
            gFunc.EquipSet(sets.KOR_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('KOR_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Shining Blade') or string.match(ws.Name, 'Seraph Blade') or string.match(ws.Name, 'Shining Strike') then
            gFunc.EquipSet(sets.shining_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('shining_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;

