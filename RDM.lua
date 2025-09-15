local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
		main = 'excalibur',
		sub = 'diamond aspis',
		range = empty,
		ammo = 'staunch tathlum',
        Head = 'leth. chappel +3',
        Neck = 'Warder\'s Charm +1',
        Ear1 = 'eabani earring',
        Ear2 = 'alabaster Earring',
		Body = 'lethargy Sayon +3',
        Hands = 'leth. ganth. +3',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'defending ring',
        Back = 'null shawl',
        Waist = 'null belt',
        Legs = 'Nyame Flanchard',
        Feet = 'nyame sollerets',
    },
    Resting = {},
    Idle_Regen = {
        --Neck = 'Bathy Choker +1',
        --Ear1 = 'Infused Earring',
        Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Head = 'Viti. Chapeau +4',
		hands = 'merlinic dastanas',
		body = 'lethargy sayon +3',
		feet = 'merlinic crackows',
    },
	
    Town = {
        Main = 'Excalibur',
        Sub = 'diamond aspis',
        Range = 'Ullr',
		ammo = 'chapuli arrow',
        Head = 'Viti. Chapeau +4',
        Neck = 'warder\'s charm +1',
        Ear1 = 'etiolation earring',
        Ear2 = 'alabaster earring',
        Body = 'Viti. Tabard +4',
        Hands = 'leth. ganth. +3',
        Ring1 = 'stikini ring +1',
        Ring2 = 'shneddick ring',
        Back = 'ghostfyre cape',
        Waist = 'null belt',
        Legs = 'nyame flanchard',
        feet= 'Viti. Boots +4',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'nyame helm',
        Neck = 'loricate torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'alabaster Earring',
        Body = 'Nyame Mail',
        Hands = 'Malignance Gloves',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'carrier\'s sash',
        Legs = 'nyame flanchard',
        Feet = 'leth. houseaux +3',
    },

    Tp_Default = {
		main = 'excalibur',
		sub = 'thibron',
        Ammo = 'Coiste Bodhar',
        Head = 'Malignance Chapeau',
        Neck = 'Anu Torque',
        Ear1 = 'Sherida Earring',
        Ear2 = 'eabani Earring',
        Body = 'malignance tabard',
        Hands = 'Malignance Gloves',
        Ring1 = 'chirich ring +1',
        Ring2 = 'Petrov Ring',
        Back = 'null shawl',
        waist = 'reiki yotai',
        Legs = 'malignance tights',
        Feet = 'malignance boots',
    },
    Tp_Hybrid = {
        Ring1 = 'Defending Ring',
    },
    Tp_Acc = {
        Ring1 = 'Cacoethic Ring +1',
        Ring2 = 'Chirich Ring +1',
    },


    Precast = {--30 from traits, 80 from gear
		main = 'Sakpata\'s sword',--10
        Head = 'Atro. Chapeau +2',--14
        Neck = 'voltsurge torque',--4
        Ear1 = 'malignance Earring',--4
        Ear2 = 'leth. earring +1',--8
        Body = 'Viti. Tabard +4',--15
		hands = 'leyline gloves',--6
        Ring1 = 'naji\'s loop',--1
        Ring2 = 'Prolix Ring',--2
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
        Waist = 'Embla Sash',--5
        Legs = 'chironic hose',--5
        Feet = 'amalric nails +1',--6
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
        Feet = 'Vanya Clogs',
    },
    Enhancing_Precast = {
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
        Waist = 'Siegel Sash',
    },
    Stoneskin_Precast = {
        Head = 'Umuthi Hat',
		Waist = 'Siegel Sash',
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
    },
	dispelga_precast = {
		main = 'daybreak',
		sub = 'ammurapi shield',
		range = 'ullr',
		ammo = empty,
		Head = 'Atro. Chapeau +2',--12
        Neck = 'voltsurge torque',--4
        Ear1 = 'malignance Earring',--4
        Ear2 = 'leth. earring +1',--8
        Body = 'Viti. Tabard +4',--15
		hands = 'leyline gloves',--6
        Ring1 = 'naji\'s loop',--1
        Ring2 = 'Prolix Ring',--2
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
        Waist = 'Embla Sash',--5
        Legs = 'chironic hose',--5
        Feet = 'amalric nails +1',--6
	},


    Cure = {--I cap is 50, II cap is 30
        Main = 'daybreak',--I 30
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Neck = 'loricate torque +1',
        Ear1 = 'Mendi. Earring',--I 5
        ear2 = 'gwati earring',
		body = 'Bunzi\'s robe', --I 15
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'defending ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
        Waist = 'Rumination Sash',
        Legs = 'Atrophy Tights +2',--I 10 and skill
		feet = 'leth. houseaux +3',
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Main = 'Bolelabunga',
        Sub = 'Ammurapi Shield',
        Body = 'Viti. Tabard +4',
		Back = 'ghostfyre cape',
    },
    Cursna = {
        --Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },

    Enhancing = {
        Main = 'Sakpata\'s Sword',
        Sub = 'Ammurapi Shield',
        Ammo = 'hydrocera',
        Head = 'telchine cap',
        --Neck = 'Dls. Torque +1',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Leth. Earring +1',
        Body = 'Viti. Tabard +4',
        Hands = 'Atrophy Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'ghostfyre cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Leth. Houseaux +3',
    },
    Self_Enhancing = {},
    Skill_Enhancing = {},
    Stoneskin = {
		--Neck = 'Nodens Gorget',--I 5
		hands = 'stone mufflers',
        Waist = 'Siegel Sash',
		legs = 'haven hose',
    },
    Phalanx = {},
    Refresh = {
		head = 'amalric coif +1',
        Body = 'Atrophy Tabard +2',
		Back = 'ghostfyre cape',
		Waist = 'Gishdubar Sash',
		legs = 'leth. fuseau +3',
		Feet = 'Leth. Houseaux +3',
    },
    Self_Refresh = {},
	
	Gain = {
        Sub = 'Ammurapi Shield',
        Ammo = 'hydrocera',
        Head = 'telchine cap',
        --Neck = 'Dls. Torque +1',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Leth. Earring +1',
        Body = 'Viti. Tabard +4',
        Hands = 'Viti. Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'ghostfyre cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Leth. Houseaux +3',
	},

    Enfeebling = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Range = 'Ullr',
		ammo = 'chapuli arrow',
        Head = 'viti. chapeau +4',
		--Neck = 'Dls. Torque +1',
        Neck = 'null loop',
        Ear1 = 'Snotra Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Lethargy Sayon +3',
        Hands = 'leth. ganth. +3',
        Ring1 = 'stikini ring +1',
        Ring2 =  'Metamor. Ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+20', [5] = 'Magic Damage+20' } },
        Waist = 'obstin. sash',
        Legs = 'chironic hose',
        feet = 'Viti. Boots +4',
    },
    EnfeeblingACC = {
        Ear1 = 'Snotra Earring',
        Ear2 = 'Regal Earring',
        Body = 'Atrophy Tabard +2',
        Hands = 'Atrophy Gloves +2',
    },
	dispelga = {
        Main = 'Daybreak',
        Sub = 'Ammurapi Shield',
        Range = 'Ullr',
		ammo = empty,
        Head = 'viti. chapeau +4',
		--Neck = 'Dls. Torque +1',
        Neck = 'null loop',
        Ear1 = 'Snotra Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Lethargy Sayon +3',
        Hands = 'leth. ganth. +3',
        Ring1 = 'stikini ring +1',
        Ring2 =  'Metamor. Ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+20', [5] = 'Magic Damage+20' } },
        Waist = 'obstin. sash',
        Legs = 'chironic hose',
        feet = 'Viti. Boots +4',
    },
    Mind_Enfeebling = {
		Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'Mag. Acc.+30', [3] = 'Magic Damage+20', [4] = 'MND+20', [5] = 'Haste+10' } },
    },
    Int_Enfeebling = {},
    Potency_Enfeebling = {},

    Drain = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Range = 'Ullr',
		ammo = 'chapuli arrow',
        Head = 'Viti. Chapeau +4',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Atrophy Tabard +2',
        Hands = 'Atrophy Gloves +2',
        Ring1 = 'stikini ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+20', [5] = 'Magic Damage+20' } }, 
        Waist = 'Fucho-no-Obi',
        Legs = 'leth. fuseau +3',
        Feet = 'Leth. Houseaux +3',
    },

    Nuke = {
        Main = 'bunzi\'s rod',
        Sub = 'ammurapi shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'leth. chappel +3',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Lethargy Sayon +3',
        Hands = 'leth. ganth. +3',
        Ring1 = 'stikini ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+20', [5] = 'Magic Damage+20' } },
        Waist = 'Acuity Belt +1',
        Legs = 'leth. fuseau +3',
        Feet = 'Leth. Houseaux +3',
    },
    NukeACC = {};
    Burst = {
        Main = 'Bunzi\'s Rod', -- 10 and 0
        Sub = 'Ammurapi Shield',
        --Head = 'Ea Hat', -- 6 and 6
        --Body = 'Ea Houppelande', -- 8 and 8
        Hands = 'Amalric Gages +1', -- 0 and 6
        Ring1 = 'Mujin Band', -- 0 and 5
        --Feet = 'Ea Pigaches', -- 4 and 4
    },
    Helix = {},
    Mp_Body = {Body = 'Seidr Cotehardie',},

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'coiste bodhar',
        Head = 'Viti. Chapeau +4',
		Neck = 'rep. plat. medal',
        Ear1 = 'ishvara Earring',
        Ear2 = 'moonshade Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'ephramad\'s Ring',
        Ring2 = 'petrov Ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'leth. houseaux +3',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },

    Savage_Default = {
        Ammo = 'coiste bodhar',
        Head = 'Viti. Chapeau +4',
        Neck = 'rep. plat. medal',
        Ear1 = 'moonshade Earring',
        Ear2 = 'ishvara earring +1',
        Body = 'Nyame Mail',
        Hands = 'nyame gauntlets',
        Ring1 = 'ilabrat ring',
        Ring2 = 'ephramad\'s ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'leth. houseaux +3',
    },
    Savage_Hybrid = {},
    Savage_Acc = {},

    Chant_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = 'Blistering Sallet +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Begrudging Ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Thereoid Greaves',
    },
    Chant_Hybrid = {},
    Chant_Acc = {},
	
	BH_Default = {
        Ammo = 'coiste bodhar',
        Head = 'Viti. Chapeau +4',
        Neck = 'rep. plat. medal',
        Ear1 = 'moonshade earring',
        Ear2 = 'regal earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'ilabrat ring',
        Ring2 = 'ephramad\'s ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'sailfi belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'leth. houseaux +3',
    },
    BH_Hybrid = {},
    BH_Acc = {},
	
	shining_Default = {
        Ammo = 'Voluspa Tathlum',
        Head = 'leth. chappel +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'moonshade Earring',
        Ear2 = 'malignance Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'ilabrat ring',
        Ring2 = 'Metamor. ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'orpheus\'s sash',
        Legs = 'Nyame Flanchard',
        Feet = 'leth. houseaux +3',
    },
    shining_Hybrid = {},
    shining_Acc = {},
	
	sanguine_Default = {
        Ammo = 'oshasha\'s treatise',
        Head = 'pixie hairpin +1',
        Neck = 'sibyl scarf',
        Ear1 = 'regal Earring',
        Ear2 = 'malignance Earring',
        Body = 'lethargy sayon +3',
        Hands = 'leth. ganth. +3',
        Ring1 = 'archon ring',
        Ring2 = 'Metamor. ring +1',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+20', [5] = 'Magic Damage+20' } }, 
        Waist = 'orpheus\'s sash',
        Legs = 'leth. fuseau +3',
        Feet = 'leth. houseaux +3',
    },
    sanguine_Hybrid = {},
    sanguine_Acc = {},
	
	KOR_Default = {
        Ammo = 'coiste bodhar',
        Head = 'viti. chapeau +4',
        Neck = 'rep. plat. medal',
        Ear1 = 'sherida Earring',
        Ear2 = 'ishvara Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'apate ring',
        Ring2 = 'ephramad\'s ring',
        Back = { Name = 'Sucellos\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'sailfi belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'leth. houseaux +3',
    },
    KOR_Hybrid = {},
    KOR_Acc = {},

    CS = {
		Body = 'Viti. Tabard +4',
	},
	
	sab = {
		Body = 'diamond aspis',
	},
	
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    Movement = {
        ring1 = 'shneddick ring',
	},
};
profile.Sets = sets;
;

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
        if (gcdisplay.GetToggle('Fight') == false) then AshitaCore:GetChatManager():QueueCommand(1, '/fight') end
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

    if ability.Name == 'Chainspell' then
        gFunc.EquipSet(sets.CS);
    end
    
	if ability.Name == 'Saboteur' then
        gFunc.EquipSet(sets.sab);
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
		end
	
	if (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Precast);
        end
	if spell.Name == 'Dispelga' and (gcdisplay.GetToggle('Fight') == true) then
			AshitaCore:GetChatManager():QueueCommand(1, '/fight');
			elseif spell.Name == 'Dispelga' then
			gFunc.EquipSet(sets.dispelga_precast);
		end


    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);
    local player = gData.GetPlayer();



    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Enhancing);
        end

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Temper') then
            gFunc.EquipSet(sets.Skill_Enhancing);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
		elseif string.contains(spell.Name, 'Gain') then
            gFunc.EquipSet(sets.Gain);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
            if (target.Name == me) then
                gFunc.EquipSet(sets.Self_Refresh);
            end
        elseif (target.Name == me) and string.contains(spell.Name, 'En') then
            gFunc.EquipSet(sets.Skill_Enhancing);
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

        if (gcdisplay.GetToggle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.NukeACC);
        end
        if (gcdisplay.GetToggle('Burst') == true) then
            gFunc.EquipSet(sets.Burst);
        end
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
        if string.match(spell.Name, 'helix') then
            gFunc.EquipSet(sets.Helix);
        end
        if (player.MPP <= 40) then
            gFunc.EquipSet(sets.Mp_Body);
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
        if (gcdisplay.GetToggle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.EnfeeblingACC);
        end
        if string.contains(spell.Name, 'Paralyze') or string.contains(spell.Name, 'Slow') or string.contains(spell.Name, 'Addle') then
            gFunc.EquipSet(sets.Mind_Enfeebling);
        elseif string.contains(spell.Name, 'Poison') then
            gFunc.EquipSet(sets.Int_Enfeebling);
		elseif string.contains(spell.Name, 'Dispelga') then
            gFunc.EquipSet(sets.dispelga);
        elseif string.contains(spell.Name, 'Distract') or string.match(spell.Name, 'Frazzle III') then
            gFunc.EquipSet(sets.Potency_Enfeebling);
        end
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.EnfeeblingACC); -- mostly MACC anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
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
   
        if string.match(ws.Name, 'Chant du Cygne') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Sanguine Blade') then
            gFunc.EquipSet(sets.sanguine_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('sanguine_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Black Halo') then
            gFunc.EquipSet(sets.BH_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('BH_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Knights of Round') then
            gFunc.EquipSet(sets.KOR_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('KOR_' .. gcdisplay.GetCycle('MeleeSet')); end
		elseif string.match(ws.Name, 'Shining Blade') or string.match(ws.Name, 'Seraph Blade') or string.match(ws.Name, 'Shining Strike') then
            gFunc.EquipSet(sets.shining_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('shining_' .. gcdisplay.GetCycle('MeleeSet')); end
	    elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
