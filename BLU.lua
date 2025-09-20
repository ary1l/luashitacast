local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'warder\'s charm +1',
        Ear1 = 'alabaster earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Hashishin Mintan +3',
        Hands = 'hashi. bazu. +3',
        Ring1 = 'Gelatinous ring +1',
        Ring2 = 'stikini ring +1',
		Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Evasion+20', [3] = 'AGI+20', [4] = 'Evasion+45' } },
        Waist = 'null belt',
        Legs = 'hashishin tayt +3',
        Feet = 'nyame sollerets',
    },
	Resting = {
        Body = 'Hashishin Mintan +3',
        Waist = 'Fucho-no-Obi',
    },
    Idle_Regen = {
        Neck = 'Sanctity Necklace',
        --Ear1 = 'Infused Earring',
        Ring1 = 'Chirich Ring +1',
		waist = 'null belt',
    },
    Idle_Refresh = {
        --Head = 'Rawhide Mask',
        Body = 'Hashishin Mintan +3',
        --Ring1 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
    },
	['Town'] = {
        Ammo = 'Staunch Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'mirage stole +2',
        Ear1 = 'alabaster earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Assim. Jubbah +4',
        Hands = 'Assim. Bazu. +4',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'shneddick ring',
        Back = 'null shawl',
        Waist = 'Null Belt',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },

    Evasion = {--this set will be my idle set when in /cj mode for evasion pulling
        Ammo = 'Staunch Tathlum',
        Head = 'nyame helm',
        Neck = 'null loop',
        Ear1 = 'Eabani Earring',
        Ear2 = 'odnowa earring +1',
        Body = 'nyame mail',
        Hands = 'nyame gauntlets',
        Ring1 = 'Gelatinous ring +1',
        Ring2 = 'defending ring',
		Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Evasion+20', [3] = 'AGI+20', [4] = 'Evasion+45' } },
        Waist = 'null belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
	
	Dt = {
		Ammo = 'Staunch Tathlum',
		Neck = 'Loricate Torque +1',
		Ear1 = 'Eabani Earring',
        Head = 'Nyame Helm',
		Body = 'nyame mail',
        Hands = 'nyame gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
		Waist = 'Plat. Mog. Belt',
		Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
	},
	
	Tp_Default = {
		--sub = 'thibron',
        Ammo = 'coiste bodhar',
        Head = 'Malignance Chapeau',
        Neck = 'Mirage Stole +2',
        Ear1 = 'Suppanomimi',
        Ear2 = 'telos earring',
        Body = 'malignance tabard',
        Hands = 'malignance gloves',
        Ring1 = 'chirich ring +1',
        Ring2 = 'Epona\'s Ring',
        Back = 'null shawl',
        Waist = 'sailfi belt +1',
        Legs = 'malignance tights',
		Feet = 'malignance boots',
    },
	Tp_Hybrid = {
		--sub = 'thibron',
		Head = 'Malignance Chapeau',
		Body = 'Malignance Tabard',
		Hands = 'Malignance Gloves',
		Ring2 = 'Chirich Ring +1',
		Legs = 'malignance tights',
		Feet = 'malignance boots',
        },
	Tp_Acc = {
        },
	
	Precast = {--64
        Ammo = 'Sapience Orb',--2
        Head = 'Carmine Mask +1', --14
        Neck = 'voltsurge torque',--4
        Ear1 = 'Loquac. Earring', --2
        Ear2 = 'Etiolation Earring',--1
        Body = 'Pinga Tunic',--13
        Hands = 'Leyline Gloves',--6
        Ring1 = 'Prolix Ring',--2
       --Ring2 = 'Kishar Ring',--4
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Evasion+20', [3] = 'AGI+20', [4] = 'Evasion+45' } },
        Waist = 'Witful Belt',
        Legs = 'Pinga Pants',--11
        Feet = 'Carmine Greaves +1',--7
    },
    Blu_Precast = {
		Ammo = 'Sapience Orb',--2
        Head = 'Carmine Mask +1',
        Neck = 'voltsurge torque',--4
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',--1
        Body = 'Hashishin Mintan +3',
		Hands = 'Leyline Gloves',--6
        Ring1 = 'Prolix Ring',--2
        --Ring2 = 'Kishar Ring',--4
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Evasion+20', [3] = 'AGI+20', [4] = 'Evasion+45' } },
        Waist = 'Witful Belt',
        Legs = 'Pinga Pants',--11
        Feet = 'Carmine Greaves +1',--7
    },
    Stoneskin_Precast = {
		Ammo = 'Sapience Orb',--2
        Head = 'Carmine Mask +1',
        Neck = 'voltsurge torque',--4
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Etiolation Earring',--1
        Body = 'Hashishin Mintan +3',
		Hands = 'Leyline Gloves',--6
        Ring1 = 'Prolix Ring',--2
        --Ring2 = 'Kishar Ring',--4
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Fast Cast"+10', [2] = 'Mag. Evasion+20', [3] = 'AGI+20', [4] = 'Evasion+45' } },
        Waist = 'Siegel Sash',
		Legs = 'Pinga Pants',--11
        Feet = 'Carmine Greaves +1',--7
    },

    Cure = {--I cap is 50, II cap is 30
        Ammo = 'Staunch Tathlum',
        Head = 'Pinga Crown',--8
        --Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',--5
        Ear2 = 'Etiolation Earring',
        Body = 'Pinga Tunic',--13
        Hands = 'Pinga Mittens',--16
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Solemnity Cape',--7
        Waist = 'Gishdubar Sash',
        Legs = 'Pinga Pants',--11
        Feet = 'Medium\'s Sabots',--10 atm
    },
    WhiteWind = {--HP+ go!
		--sub = 'sakpata\'s sword',
        Ammo = 'Staunch Tathlum',
        Head = 'nyame helm',
        Neck = 'unmoving collar +1',
        Ear1 = 'odnowa earring +1',
        Ear2 = 'tuisto Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Meridian Ring',
        Ring2 = 'gelatinous Ring +1',
        Back = 'Moonbeam Cape',
        Waist = 'plat. mog. belt',
        Legs = 'Pinga Pants',
        Feet = 'Carmine Greaves +1',
    },
    BluSkill = {
		Ear1 = 'Njordr earring',
		ear2 = 'Hashi. earring +1',
        Body = 'Assim. Jubbah +4',
        Back = 'Cornflower Cape',
        Legs = 'Hashishin Tayt +3',
    },
    BluMagical = {
        Ammo = 'Ghastly Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Mirage Stole +2',
		Ear1 = 'Regal Earring',
        Ear2 = 'Hashi. Earring +1',
        Body = 'Hashishin Mintan +3',
        Hands = 'hashi. bazu. +3',
        Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage+20', [4] = 'INT+30' } },
        Waist = 'orpheus\'s sash',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +3',
    },
    BluDark = {
        Head = 'Pixie Hairpin +1',
        Ring2 = 'Archon Ring',
    },
    BluMagicAccuracy = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Mirage Stole +2',
        Ear1 = 'Regal Earring',
        Ear2 = 'Hashi. Earring +1',
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage+20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +3',
    },
    CJmid = {--same as macc set but with weapons since in CJmode we idle in eva swords
		main = 'maxentius',
		sub  = 'Bunzi\'s rod',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Mirage Stole +2',
		Ear1 = 'Regal Earring',
        Ear2 = 'Hashi. Earring +1',
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage+20', [4] = 'INT+30' } },
        Waist = 'null belt',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +3',
    },
    BluStun = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Malignance Chapeau',
        Neck = 'Mirage Stole +2',
        Ear1 = 'digni. Earring',
        Ear2 = 'Hashi. Earring +1',
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Metamor. Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage+20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +3',
    },
    BluPhysical = {
        Ammo = 'coiste bodhar',
        Head = 'Nyame Helm',
        Neck = 'Mirage Stole +2',
        Ear1 = 'Regal Earring',
        Ear2 = 'Hashi. Earring +1',
        Body = 'Malignance Tabard',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Ephramad\'s ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'STR+30', [2] = 'Accuracy+20', [3] = 'Attack+20', [4] = 'Weapon skill damage +10%', [5] = 'Phys. dmg. taken -10%' } },
        Waist = 'Prosilio Belt +1',
        Legs = 'Jhakri Slops +2',
        Feet = 'Gleti\'s Boots',
    },
    CMP = {
        Ammo = 'Pemphredo Tathlum',
        --Head = 'Ipoca Beret',--in storage probably
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Metamor. Ring +1',
        --Ring2 = 'Kishar Ring',
        Back = 'Solemnity Cape',
        Waist = 'Hachirin-no-Obi',
        --Legs = 'Augury Cuisses +1',--in storage probably
        Feet = 'Amalric Nails +1',
    },

    Preshot = {
		range = 'aliyat chakram',
		ammo = empty,
    },
    Midshot = {
		range = 'aliyat chakram',
		ammo = empty,
        Ear1 = 'Telos Earring',
        --Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'coiste bodhar',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Assim. Jubbah +4',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Ephramad\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Fotia Belt',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },
    Ws_Hybrid = {
        Head = 'Nyame Helm',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Malignance Gloves',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
    Ws_Acc = {
    },
    Chant_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Adhemar Bonnet +1',
		Neck = 'Mirage Stole +2',
        Ear1 = 'Telos Earring',
        Ear2 = 'Digni. Earring',
        Body = 'Gleti\'s Cuirass',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Begrudging Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Dbl.Atk."+10', [2] = 'Phys. dmg. taken -10%', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'DEX+30' } },
        Legs = 'Gleti\'s Breeches',
        Feet = 'Gleti\'s Boots',
    },
    Chant_Hybrid = {
        Head = 'Malignance Chapeau',
        Hands = 'Malignance Gloves',
    },
    Chant_Acc = {
    },
    Savage_Default = {
	    Ammo = 'coiste bodhar',
        Head = 'Hashishin Kavuk +3',
		Neck = 'Mirage Stole +2',
        Ear1 = 'Moonshade Earring',
        Ear2 = 'hashi. earring +1',
        Body = 'Assim. Jubbah +4',
        Hands = 'nyame gauntlets',
        Ring1 = 'Ephramad\'s Ring',
        Ring2 = 'petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        waist = 'sailfi belt +1',
		Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },
    Savage_Hybrid = {
        Ammo = 'Staunch Tathlum',
    },
    Savage_Acc = {
    },
    Expiacion_Default = {
        Ammo = 'coiste bodhar',--crep pebble
        Head = 'Hashishin Kavuk +3',
        Neck = 'Mirage Stole +2',
        Ear1 = 'Ishvara Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Assim. Jubbah +4',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'ephramad\'s Ring',
        Ring2 = 'petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = 'STR+30', [3] = 'Accuracy+20', [4] = 'Attack+20', [5] = 'Weapon skill damage +10%' } },
        Waist = 'Sailfi Belt +1',
        Legs = 'nyame flanchard',
        Feet = 'nyame sollerets',
    },
    Expiacion_Hybrid = {
        Ammo = 'Staunch Tathlum',
    },
    Expiacion_Acc = {
    },
    Requiescat_Default = {
        Head = 'Hashishin Kavuk +3',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Hashishin Mintan +3',
        Hands = 'Nyame Gauntlets',
        --Ring1 = 'archon ring',
        Ring2 = 'Metamor. ring +1',
        Waist = 'Fotia Belt',
        Legs = 'Gleti\'s Breeches',
        Feet = 'Jhakri Pigaches +2',
    },
    Requiescat_Hybrid = {
    },
    Requiescat_Acc = {
    },
	sanguine_Default = {
        Ammo = 'oshasha\'s treatise',
        Head = 'Hashishin kavuk +3',
        Neck = 'sibyl ring',
        Ear1 = 'regal Earring',
        Ear2 = 'malignance Earring',
        Body = 'Nyame Mail',
        Hands = 'jhakri cuffs +2',
        Ring1 = 'archon ring',
        Ring2 = 'Metamor. ring +1',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage+20', [4] = 'INT+30' } },
        Waist = 'orpheus\'s sash',
        Legs = 'nyame flanchard',
        Feet = 'hashi. baskmak +3',
    },
    sanguine_Hybrid = {},
    sanguine_Acc = {},
    Ca = {
        Head = 'Hashishin Kavuk +3',
		Feet = 'Hashi. Basmak +3',
        --Feet = 'Assim. Charuqs +1',
    },
    Ba = {
        Feet = 'Hashi. Basmak +3',
    },
    Diffusion = {
        Feet = 'Luhlaza Charuqs',
    },
    Efflux = {
        Legs = 'Hashishin Tayt +3',
    },

    Enmity = {
        Neck = 'Unmoving Collar +1',
        Ear1 = 'Cryptic Earring',
        Ring1 = 'Eihwaz Ring',
    },

    TH = {
	    Head = { Name = 'Herculean Helm', Augment = { [1] = 'Accuracy+30', [2] = 'Attack+18', [3] = '"Fast Cast"+3', [4] = '"Treasure Hunter"+2' } },
		Waist = 'Chaac Belt',
	},
    Salvage = {
		Main = 'Tizona',
        Sub = 'Bunzi\'s Rod',
	},
	Movement = {
		ring1 = 'defending ring',
		Ring2 = 'shneddick ring',
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
	
    local zone = gData.GetEnvironment();
	local player = gData.GetPlayer();
    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (gcdisplay.GetToggle('CJmode') == true) then
		gFunc.EquipSet(sets.Evasion);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    if (gcdisplay.GetToggle('CJmode') ~= true) then
        gcinclude.CheckDefault ();
    end
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Evasion) end;
    --lazy equip weapons for salvage runs
    if (zone.Area:contains('Remnants')) then
        gFunc.EquipSet(sets.Salvage);
    end
end

profile.HandleAbility = function()
	local ability = gData.GetAction();

    if string.match(ability.Name, 'Provoke') then gFunc.EquipSet(sets.Enmity) end

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Precast);

    if string.contains(spell.Skill, 'Blue Magic') then
        gFunc.EquipSet(sets.Blu_Precast);
    elseif string.contains(spell.Name, 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin_Precast);
    end 

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local diff = gData.GetBuffCount('Diffusion');
    local ca = gData.GetBuffCount('Chain Affinity');
    local ba = gData.GetBuffCount('Burst Affinity');
    local ef = gData.GetBuffCount('Efflux');
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.BluMagical);
    if (gcinclude.BluMagDebuff:contains(spell.Name)) then gFunc.EquipSet(sets.BluMagicAccuracy)
    elseif (gcinclude.BluMagStun:contains(spell.Name, 'Sudden Lunge')) then gFunc.EquipSet(sets.BluStun);
    elseif (gcinclude.BluMagBuff:contains(spell.Name)) then gFunc.EquipSet(sets.CMP);
    elseif (gcinclude.BluMagSkill:contains(spell.Name)) then gFunc.EquipSet(sets.BluSkill);
    elseif (gcinclude.BluMagCure:contains(spell.Name)) then gFunc.EquipSet(sets.Cure);
    elseif (gcinclude.BluMagEnmity:contains(spell.Name)) then gFunc.EquipSet(sets.Enmity);
    elseif string.match(spell.Name, 'White Wind') then gFunc.EquipSet(sets.WhiteWind);
    elseif string.match(spell.Name, 'Evryone. Grudge') or string.match(spell.Name, 'Tenebral Crush') then gFunc.EquipSet(sets.BluDark);
    end

    if (ca>=1) then gFunc.EquipSet(sets.Ca) end
    if (ba>=1) then gFunc.EquipSet(sets.Ba) end
    if (ef>=1) then gFunc.EquipSet(sets.Efflux) end
    if (diff>=1) then gFunc.EquipSet(sets.Diffusion) end
    
    if (gcdisplay.GetToggle('CJmode') == true) then
        gFunc.EquipSet(sets.CJmid);
    end

    if (gcinclude.BluMagTH:contains(spell.Name)) and (gcdisplay.GetToggle('TH') == true) then
        gFunc.EquipSet(sets.TH);
    end
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
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')) end
	    elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')) end
        elseif string.match(ws.Name, 'Expiacion') then
            gFunc.EquipSet(sets.Expiacion_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Expiacion_' .. gcdisplay.GetCycle('MeleeSet')) end
        elseif string.match(ws.Name, 'Requiescat') then
            gFunc.EquipSet(sets.Requiescat_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Requiescat_' .. gcdisplay.GetCycle('MeleeSet')) end
		elseif string.match(ws.Name, 'Sanguine Blade') then
            gFunc.EquipSet(sets.sanguine_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('sanguine_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
