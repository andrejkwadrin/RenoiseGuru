-- Waldorf Blofeld synth definition for Guru

-- Andrej Kwadrin

-- last update: 2013-03-12


-- Parameter lists

local Oscillator_ShapesAndWaves = {"off","Pulse","Saw","Triangle","Sine","Alt 1","Alt 2","Resonant","Resonant2","MalletSyn","Sqr-Sweep","Bellish","Pul-Sweep","Saw-Sweep","MellowSaw","Feedback","Add Harm","Reso 3 HP","Wind Syn","High Harm","Clipper","Organ Syn","SquareSaw","Formant 1","Polated","Transient","ElectricP","Robotic","StrongHrm","PercOrgan","ClipSweep","ResoHarms","2 Echoes","Formant 2","FmntVocal","MicroSync","Micro PWM","Glassy","Square HP","SawSync 1","SawSync 2","SawSync 3","PulSync 1","PulSync 2","PulSync 3","SinSync 1","SinSync 2","SinSync 3","PWM Pulse","PWM Saw","Fuzz Wave","Distorted","HeavyFuzz","Fuzz Sync","K+Strong1","K+Strong2","K+Strong3","1-2-3-4-5","19/twenty","Wavetrip1","Wavetrip2","Wavetrip3","Wavetrip4","MaleVoice","Low Piano","ResoSweep","Xmas Bell","FM Piano","Fat Organ","Vibes","Chorus 2","True PWM","UpperWaves","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","reserved","Wavetable 80","Wavetable 81","Wavetable 82","Wavetable 83","Wavetable 84","Wavetable 85","Wavetable 86","Wavetable 87","Wavetable 88","Wavetable 89","Wavetable 90","Wavetable 91","Wavetable 92","Wavetable 93","Wavetable 94","Wavetable 95","Wavetable 96","Wavetable 97","Wavetable 98","Wavetable 99","Wavetable 100","Wavetable 101","Wavetable 102","Wavetable 103","Wavetable 104","Wavetable 105","Wavetable 106","Wavetable 107","Wavetable 108","Wavetable 109","Wavetable 110","Wavetable 111","Wavetable 112","Wavetable 113","Wavetable 114","Wavetable 115","Wavetable 116","Wavetable 117","Wavetable 118","Sample A1","Sample A2","Sample A3","Sample A4","Sample A5","Sample A6","Sample A7","Sample A8","Sample A9","Sample A10","Sample A11","Sample A12","Sample A13","Sample A14","Sample A15","Sample A16","Sample A17","Sample A18","Sample A19","Sample A20","Sample A21","Sample A22","Sample A23","Sample A24","Sample A25","Sample A26","Sample A27","Sample A28","Sample A29","Sample A30","Sample A31","Sample A32","Sample A33","Sample A34","Sample A35","Sample A36","Sample A37","Sample A38","Sample A39","Sample A40","Sample A41","Sample A42","Sample A43","Sample A44","Sample A45","Sample A46","Sample A47","Sample A48","Sample A49","Sample A50","Sample A51","Sample A52","Sample A53","Sample A54","Sample A55","Sample A56","Sample A57","Sample A58","Sample A59","Sample A60","Sample A61","Sample A62","Sample A63","Sample A64","Sample A65","Sample A66","Sample A67","Sample A68","Sample A69","Sample A70","Sample A71","Sample A72","Sample A73","Sample A74","Sample A75","Sample A76","Sample A77","Sample A78","Sample A79","Sample A80","Sample A81","Sample A82","Sample A83","Sample A84","Sample A85","Sample A86","Sample A87","Sample A88","Sample A89","Sample A90","Sample A91","Sample A92","Sample A93","Sample A94","Sample A95","Sample A96","Sample A97","Sample A98","Sample A99","Sample A100","Sample A101","Sample A102","Sample A103","Sample A104","Sample A105","Sample A106","Sample A107","Sample A108","Sample A109","Sample A110","Sample A111","Sample A112","Sample A113","Sample A114","Sample A115","Sample A116","Sample A117","Sample A118","Sample A119","Sample A120","Sample A121","Sample A122","Sample A123","Sample A124","Sample A125","Sample A126","Sample A127","Sample A128"}


local FMSources = {"off","Osc 1","Osc 2","Osc 3","Noise","LFO 1","LFO 2","LFO 3","FilterEnv","AmpEnv","Env3","Env4"}


local ModulationSources = {"off","LFO 1","LFO1*MW","LFO 2","LFO2*Press","LFO 3","FilterEnv","AmpEnv","Env3","Env4","Keytrack","Velocity","Rel. Velo","Pressure","Poly Press","Pitch Bend","Mod Wheel","Sustain","Foot Ctrl","BreathCtrl","Control W","Control X","Control Y","Control Z","Unisono V.","Modifier 1","Modifier 2","Modifier 3","Modifier 4","minimum","MAXIMUM"}


local ModulationDestinations = {"Pitch","O1 Pitch","O1 FM","O1 PW/Wave","O2 Pitch","O2 FM","O2 PW/Wave","O3 Pitch","O3 FM","O3 PW","O1 Level","O1 Balance","O2 Level","O2 Balance","O3 Level","O3 Balance","RMod Level","RMod Bal.","NoiseLevel","Noise Bal.","F1 Cutoff","F1 Reson.","F1 FM","F1 Drive","F1 Pan","F2 Cutoff","F2 Reson.","F2 FM","F2 Drive","F2 Pan","Volume","LFO1Speed","LFO2Speed","LFO3Speed","FE Attack","FE Decay","FE Sustain","FE Release","AE Attack","AE Decay","AE Sustain","AE Release","E3 Attack","E3 Decay","E3 Sustain","E3 Release","E4 Attack","E4 Decay","E4 Sustain","E4 Release","M1 Amount","M2 Amount","M3 Amount","M4 Amount"}



-- Group definitions

local Group_OSC1 = Group {
      
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      
      name = "OSC 1",
      Parameter {
        id = "OSC1_Shape",
        name = "Shape",
        number = 8,
        gui_type = "dropdown",
        items = Oscillator_ShapesAndWaves,
        default_value = 3,
      },
      Parameter {
        id = "OSC1_Octave",
        name = "Octave",
        number = 1,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112},
        default_value = 5,
      },
      Parameter {
        id = "OSC1_Semitone",
        name = "Semitone",
        number = 2,
        gui_type = "dropdown",
        items = {"-12","-11","-10","-9","-8","-7","-6","-5","-4","-3","-2","-1","0","+1","+2","+3","+4","+5","+6","+7","+8","+9","+10","+11","+12"},
        item_values = {52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76},
        default_value = 13,
      }, 
      Parameter {
        id = "OSC1_Detune",
        name = "Detune",
        number = 3,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC1_BendRange",
        name = "Bend Range",
        number = 4,
        display_min_value = -24,
        display_max_value = 24,
        default_value = 64,
      },
      Parameter {
        id = "OSC1_Keytrack",
        name = "Keytrack",
        number = 5,
        default_value = 96,
      },
      Parameter {
        id = "OSC1_FMSource",
        name = "FM Source",
        number = 6,
        gui_type = "dropdown",
        items = FMSources,
      },
      Parameter {
        id = "OSC1_FMAmount",
        name = "FM Amount",
        number = 7,
      },
      Parameter {
        id = "OSC1_Pulsewidth",
        name = "Pulsewidth",
        number = 9,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112}
      },      
      Parameter {
        id = "OSC1_PWMSource",
        name = "PWM Source",
        number = 10,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "OSC1_PWMAmount",
        name = "PWM Amount",
        number = 11,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC1_LimitWT",
        name = "Limit WT",
        number = 14,
        items = {"on","off"},
      },
      Parameter {
        id = "OSC1_Brilliance",
        name = "Brilliance",
        number = 16,
      },
      Parameter {
        id = "OSC1_Level",
        name = "Level",
        number = 61,
        default_value = 64,
        randomize_min = 1,
      },
      Parameter {
        id = "OSC1_Balance",
        name = "Balance",
        number = 62,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,        
      },
    }

local Group_OSC2 = Group {
      
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      
      name = "OSC 2",
      Parameter {
        id = "OSC2_Shape",
        name = "Shape",
        number = 24,
        gui_type = "dropdown",
        items = Oscillator_ShapesAndWaves,
      },
      Parameter {
        id = "OSC2_Octave",
        name = "Octave",
        number = 17,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112},
        default_value = 5,
      },
      Parameter {
        id = "OSC2_Semitone",
        name = "Semitone",
        number = 18,
        gui_type = "dropdown",
        items = {"-12","-11","-10","-9","-8","-7","-6","-5","-4","-3","-2","-1","0","+1","+2","+3","+4","+5","+6","+7","+8","+9","+10","+11","+12"},
        item_values = {52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76},
        default_value = 13,
      }, 
      Parameter {
        id = "OSC2_Detune",
        name = "Detune",
        number = 19,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC2_BendRange",
        name = "Bend Range",
        number = 20,
        display_min_value = -24,
        display_max_value = 24,
        default_value = 64,
      },
      Parameter {
        id = "OSC2_Keytrack",
        name = "Keytrack",
        number = 21,
        default_value = 96,
      },
      Parameter {
        id = "OSC2_FMSource",
        name = "FM Source",
        number = 22,
        gui_type = "dropdown",
        items = FMSources,
      },
      Parameter {
        id = "OSC2_FMAmount",
        name = "FM Amount",
        number = 23,
      },
      Parameter {
        id = "OSC2_Pulsewidth",
        name = "Pulsewidth",
        number = 25,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112}
      },      
      Parameter {
        id = "OSC2_PWMSource",
        name = "PWM Source",
        number = 26,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "OSC2_PWMAmount",
        name = "PWM Amount",
        number = 27,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC2_LimitWT",
        name = "Limit WT",
        number = 30,
        items = {"on","off"},
      },
      Parameter {
        id = "OSC2_Brilliance",
        name = "Brilliance",
        number = 32,
      },
      Parameter {
        id = "OSC2_Level",
        name = "Level",
        number = 63,
        default_value = 64,
        randomize_min = 1,
      },
      Parameter {
        id = "OSC2_Balance",
        name = "Balance",
        number = 64,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC2_SyncToOSC3",
        name = "Sync to OSC3",
        number = 49,
        items = {"off","on"},
      },
    }
    
local Group_OSC3 = Group {
      
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      
      name = "OSC 3",
      Parameter {
        id = "OSC3_Shape",
        name = "Shape",
        number = 40,
        gui_type = "dropdown",
        items = {"off","Pulse","Saw","Triangle","Sine"},
        default_value = 1,
      },
      Parameter {
        id = "OSC3_Octave",
        name = "Octave",
        number = 33,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112},
        default_value = 5,
      },
      Parameter {
        id = "OSC3_Semitone",
        name = "Semitone",
        number = 34,
        gui_type = "dropdown",
        items = {"-12","-11","-10","-9","-8","-7","-6","-5","-4","-3","-2","-1","0","+1","+2","+3","+4","+5","+6","+7","+8","+9","+10","+11","+12"},
        item_values = {52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76},
        default_value = 13,
      }, 
      Parameter {
        id = "OSC3_Detune",
        name = "Detune",
        number = 35,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "OSC3_BendRange",
        name = "Bend Range",
        number = 36,
        display_min_value = -24,
        display_max_value = 24,
        default_value = 64,
      },
      Parameter {
        id = "OSC3_Keytrack",
        name = "Keytrack",
        number = 37,
        default_value = 96,
      },
      Parameter {
        id = "OSC3_FMSource",
        name = "FM Source",
        number = 38,
        gui_type = "dropdown",
        items = FMSources,
      },
      Parameter {
        id = "OSC3_FMAmount",
        name = "FM Amount",
        number = 39,
      },
      Parameter {
        id = "OSC3_Pulsewidth",
        name = "Pulsewidth",
        number = 41,
        items = {"128'","64'","32'","16'","8'","4'","2'","1'","1/2'"},
        item_values = {16,28,40,52,64,76,88,100,112}
      },      
      Parameter {
        id = "OSC3_PWMSource",
        name = "PWM Source",
        number = 42,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "OSC3_PWMAmount",
        name = "PWM Amount",
        number = 43,
        display_min_value = -64,
        display_max_value = 63,
        default_value=64,
      },
      Parameter {
        id = "OSC3_Brilliance",
        name = "Brilliance",
        number = 48,
      },
      Parameter {
        id = "OSC3_Level",
        name = "Level",
        number = 65,
        default_value = 64,
        randomize_min = 1,
      },
      Parameter {
        id = "OSC3_Balance",
        name = "Balance",
        number = 66,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
    }
    

local Group_OSCCommon = Group {
    
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      
      name = "Common",
    
      Parameter {
        id = "Common_Allocation",
        name = "Allocation",
        number = 58,
        items = {"poly","mono"},
      },
    
      Parameter {
        id = "Common_Unisono",
        name = "Unisono",
        number = 58,
        gui_type = "dropdown",
        items = {"off","dual","3","4","5","6"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local AllocMode = synth_definition.parameters["Common_Allocation"]
          return parameter:value()*16 + AllocMode:value()
        end
      },
      
      Parameter {
        id = "Common_UniDetune",
        name = "Uni Detune",
        number = 59,
      },
      
      Parameter {
        id = "Common_Glide",
        name = "Glide",
        number = 53,
        items = {"off","on"},
      },
      
      Parameter {
        id = "Common_GlideMode",
        name = "Glide Mode",
        number = 56,
        gui_type = "dropdown",
        items = {"Portamento","fingered P","Glissando","fingered G"},
      },
      
      Parameter {
        id = "Common_GlideRate",
        name = "Glide Rate",
        number = 57,
      },
      
      Parameter {
        id = "Common_PitchSource",
        name = "Pitch Source",
        number = 50,
        gui_type = "dropdown",
        items = ModulationSources,
      },
    
      Parameter {
        id = "Common_PitchAmount",
        name = "Pitch Amount",
        number = 51,
        default_value = 64,
      },
    }
    
    
local Group_RingModulation = Group {

      name = "Ring Modulation",
      
      Parameter {
        id = "RingMod_Level",
        name = "Level",
        number = 71,
      },
      
      Parameter {
        id = "RingMod_Balance",
        name = "Balance",
        number = 72,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },    
    }
    
local Group_Noise = Group {
      
      name = "Noise",
      
      Parameter {
        id = "Noise_Level",
        name = "Level",
        number = 67,
      },
      
      Parameter {
        id = "Noise_Balance",
        name = "Balance",
        number = 68,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      Parameter {
        id = "Noise_Colour",
        name = "Colour",
        number = 69,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },

    }
    
local Group_LFO1 = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "LFO 1",
      Parameter {
        id = "LFO1_Shape",
        name = "Shape",
        number = 32,
        gui_type = "dropdown",
        items = {"Sine","Triangle","Square","Saw","Random","S&H"},
      },
      Parameter {
        id = "LFO1_Speed",
        name = "Speed",
        number = 33,
      },
      Parameter {
        id = "LFO1_Sync",
        name = "Sync",
        number = 35,
        items = {"off","on"},
      }, 
      Parameter {
        id = "LFO1_Clocked",
        name = "Clocked",
        number = 36,
        items = {"off","on"},
      },
      Parameter {
        id = "LFO1_StartPhase",
        name = "Start Phase",
        number = 37,
        default_value = 0,
      },
      Parameter {
        id = "LFO1_Delay",
        name = "Delay",
        number = 38,
      },
      Parameter {
        id = "LFO1_Fade",
        name = "Fade",
        number = 39,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "LFO1_Keytrack",
        name = "Keytrack",
        number = 42,
        default_value = 96,
      },
    }    


local Group_LFO2 = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "LFO 2",
      Parameter {
        id = "LFO2_Shape",
        name = "Shape",
        number = 44,
        gui_type = "dropdown",
        items = {"Sine","Triangle","Square","Saw","Random","S&H"},
      },
      Parameter {
        id = "LFO2_Speed",
        name = "Speed",
        number = 45,
      },
      Parameter {
        id = "LFO2_Sync",
        name = "Sync",
        number = 47,
        items = {"off","on"},
      }, 
      Parameter {
        id = "LFO2_Clocked",
        name = "Clocked",
        number = 48,
        items = {"off","on"},
      },
      Parameter {
        id = "LFO2_StartPhase",
        name = "Start Phase",
        number = 49,
      },
      Parameter {
        id = "LFO2_Delay",
        name = "Delay",
        number = 50,
      },
      Parameter {
        id = "LFO2_Fade",
        name = "Fade",
        number = 51,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "LFO2_Keytrack",
        name = "Keytrack",
        number = 54,
        default_value = 96,
      },
    }


local Group_LFO3 = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "LFO 3",
      Parameter {
        id = "LFO3_Shape",
        name = "Shape",
        number = 56,
        gui_type = "dropdown",
        items = {"Sine","Triangle","Square","Saw","Random","S&H"},
      },
      Parameter {
        id = "LFO3_Speed",
        name = "Speed",
        number = 57,
      },
      Parameter {
        id = "LFO3_Sync",
        name = "Sync",
        number = 59,
        items = {"off","on"},
      }, 
      Parameter {
        id = "LFO3_Clocked",
        name = "Clocked",
        number = 60,
        items = {"off","on"},
      },
      Parameter {
        id = "LFO3_StartPhase",
        name = "Start Phase",
        number = 61,
      },
      Parameter {
        id = "LFO3_Delay",
        name = "Delay",
        number = 62,
      },
      Parameter {
        id = "LFO3_Fade",
        name = "Fade",
        number = 63,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "LFO3_Keytrack",
        name = "Keytrack",
        number = 66,
        default_value = 96,
      },
    }



local Group_Filter1 = Group {
      name = "Filter 1",
      Parameter {
        id = "Filter1_Type",
        name = "Type",
        number = 77,
        gui_type = "dropdown",
        items = {"Bypass","LP 24dB","LP 12dB","BP 24dB","BP 12dB","HP 24dB","HP 12dB","Notch24dB","Notch12dB","Comb+","Comb-","PPG LP"},
      },
      Parameter {
        id = "Filter1_Cutoff",
        name = "Cutoff",
        number = 78,
      },
      Parameter {
        id = "Filter1_Resonance",
        name = "Resonance",
        number = 80,
      },
      Parameter {
        id = "Filter1_Drive",
        name = "Drive",
        number = 81,
      },
      Parameter {
        id = "Filter1_DriveCurve",
        name = "Drive Curve",
        number = 82,
        gui_type = "dropdown",
        items = {"Clipping","Tube","Hard","Medium","Soft","Pickup 1","Pickup 2","Rectifier","Square","Binary","Overflow","Sine Shaper","Osc 1 Mod"},
      },
      Parameter {
        id = "Filter1_Keytrack",
        name = "Keytrack",
        number = 86,
        default_value = 96,
      },
      Parameter {
        id = "Filter1_EnvAmount",
        name = "Env Amount",
        number = 87,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter1_EnvVelocity",
        name = "Env Velocity",
        number = 88,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter1_ModSource",
        name = "Mod Source",
        number = 89,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Filter1_ModAmount",
        name = "Mod Amount",
        number = 90,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter1_FMSource",
        name = "FM Source",
        number = 91,
        gui_type = "dropdown",
        items = {"off","Osc 1","Osc 2","Osc 3","Noise","LFO 1","LFO 2","LFO 3","FilterEnv","AmpEnv","Env3","Env4"},
      },
      Parameter {
        id = "Filter1_FMAmount",
        name = "FM Amount",
        number = 92,
      },
      Parameter {
        id = "Filter1_Pan",
        name = "Pan",
        number = 93,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter1_PanSource",
        name = "Pan Source",
        number = 94,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Filter1_PanAmount",
        name = "Pan Amount",
        number = 95,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },  
    }


local Group_Filter2 = Group {
      name = "Filter 2",
      Parameter {
        id = "Filter2_Type",
        name = "Type",
        number = 97,
        gui_type = "dropdown",
        items = {"Bypass","LP 24dB","LP 12dB","BP 24dB","BP 12dB","HP 24dB","HP 12dB","Notch24dB","Notch12dB","Comb+","Comb-","PPG LP"},
      },
      Parameter {
        id = "Filter2_Cutoff",
        name = "Cutoff",
        number = 98,
      },
      Parameter {
        id = "Filter2_Resonance",
        name = "Resonance",
        number = 100,
      },
      Parameter {
        id = "Filter2_Drive",
        name = "Drive",
        number = 101,
      },
      Parameter {
        id = "Filter2_DriveCurve",
        name = "Drive Curve",
        number = 102,
        gui_type = "dropdown",
        items = {"Clipping","Tube","Hard","Medium","Soft","Pickup 1","Pickup 2","Rectifier","Square","Binary","Overflow","Sine Shaper","Osc 1 Mod"},
      },
      Parameter {
        id = "Filter2_Keytrack",
        name = "Keytrack",
        number = 106,
        default_value = 96,
      },
      Parameter {
        id = "Filter2_EnvAmount",
        name = "Env Amount",
        number = 107,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter2_EnvVelocity",
        name = "Env Velocity",
        number = 108,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter2_ModSource",
        name = "Mod Source",
        number = 109,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Filter2_ModAmount",
        name = "Mod Amount",
        number = 110,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter2_FMSource",
        name = "FM Source",
        number = 111,
        gui_type = "dropdown",
        items = {"off","Osc 1","Osc 2","Osc 3","Noise","LFO 1","LFO 2","LFO 3","FilterEnv","AmpEnv","Env3","Env4"},
      },
      Parameter {
        id = "Filter2_FMAmount",
        name = "FM Amount",
        number = 112,
      },
      Parameter {
        id = "Filter2_Pan",
        name = "Pan",
        number = 113,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Filter2_PanSource",
        name = "Pan Source",
        number = 114,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Filter2_PanAmount",
        name = "Pan Amount",
        number = 115,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },  
    }


local Group_FilterEnvelope = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "Filter Envelope",
      Parameter {
        id = "Filter_EnvelopeMode",
        name = "Mode",
        number = 68,
        gui_type = "dropdown",
        items = {"ADSR","ADS1DS2R","One Shot","Loop S1S2","Loop All"},
      },
      Parameter {
        id = "Filter_EnvelopeTrigger",
        name = "Trigger",
        number = 68,
        items = {"normal","single"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local EnvMode = synth_definition.parameters["Filter_EnvelopeMode"]
          return parameter:value()*32 + EnvMode:value()
        end
      }, 
      Parameter {
        id = "Filter_EnvelopeAttack",
        name = "Attack",
        number = 71,
      },
      Parameter {
        id = "Filter_EnvelopeAttackLevel",
        name = "Attack Level",
        number = 72,
      },
      Parameter {
        id = "Filter_EnvelopeDecay",
        name = "Decay",
        number = 73,
      },
      Parameter {
        id = "Filter_EnvelopeSustain",
        name = "Sustain",
        number = 74,
      },
      Parameter {
        id = "Filter_EnvelopeDecay2",
        name = "Decay 2",
        number = 75,
      },
      Parameter {
        id = "Filter_EnvelopeSustain2",
        name = "Sustain 2",
        number = 76,
      },
      Parameter {
        id = "Filter_EnvelopeRelease",
        name = "Release",
        number = 77,
      },
    }


local Group_AmplifierEnvelope = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "Amplifier Envelope",
      Parameter {
        id = "Amplifier_EnvelopeMode",
        name = "Mode",
        number = 80,
        gui_type = "dropdown",
        items = {"ADSR","ADS1DS2R","One Shot","Loop S1S2","Loop All"},
      },
      Parameter {
        id = "Amplifier_EnvelopeTrigger",
        name = "Trigger",
        number = 80,
        items = {"normal","single"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local EnvMode = synth_definition.parameters["Amplifier_EnvelopeMode"]
          return parameter:value()*32 + EnvMode:value()
        end
      }, 
      Parameter {
        id = "Amplifier_EnvelopeAttack",
        name = "Attack",
        number = 83,
        default_value = 64,
      },
      Parameter {
        id = "Amplifier_EnvelopeAttackLevel",
        name = "Attack Level",
        number = 84,
        default_value = 64,
      },
      Parameter {
        id = "Amplifier_EnvelopeDecay",
        name = "Decay",
        number = 85,
        default_value = 64,
      },
      Parameter {
        id = "Amplifier_EnvelopeSustain",
        name = "Sustain",
        number = 86,
        default_value = 64,
      },
      Parameter {
        id = "Amplifier_EnvelopeDecay2",
        name = "Decay 2",
        number = 87,
      },
      Parameter {
        id = "Amplifier_EnvelopeSustain2",
        name = "Sustain 2",
        number = 88,
      },
      Parameter {
        id = "Amplifier_EnvelopeRelease",
        name = "Release",
        number = 89,
        default_value = 64,
      },
    }    


local Group_FilterRouting = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      name = "Filter Routing",
      Parameter {
        id = "FilterRouting",
        name = "Routing",
        number = 117,
        items = {"parallel","serial"},
      },
    }


local Group_Envelope3 = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "Envelope 3",
      Parameter {
        id = "Envelope3_Mode",
        name = "Mode",
        number = 92,
        gui_type = "dropdown",
        items = {"ADSR","ADS1DS2R","One Shot","Loop S1S2","Loop All"},
      },
      Parameter {
        id = "Envelope3_Trigger",
        name = "Trigger",
        number = 92,
        items = {"normal","single"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local EnvMode = synth_definition.parameters["Envelope3_Mode"]
          return parameter:value()*32 + EnvMode:value()
        end
      }, 
      Parameter {
        id = "Envelope3_Attack",
        name = "Attack",
        number = 95,
      },
      Parameter {
        id = "Envelope3_AttackLevel",
        name = "Attack Level",
        number = 96,
      },
      Parameter {
        id = "Envelope3_Decay",
        name = "Decay",
        number = 97,
      },
      Parameter {
        id = "Envelope3_Sustain",
        name = "Sustain",
        number = 98,
      },
      Parameter {
        id = "Envelope3_Decay2",
        name = "Decay 2",
        number = 99,
      },
      Parameter {
        id = "Envelope3_Sustain2",
        name = "Sustain 2",
        number = 100,
      },
      Parameter {
        id = "Envelope3_Release",
        name = "Release",
        number = 101,
      },
    }


local Group_Envelope4 = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "Envelope 4",
      Parameter {
        id = "Envelope4_Mode",
        name = "Mode",
        number =104,
        gui_type = "dropdown",
        items = {"ADSR","ADS1DS2R","One Shot","Loop S1S2","Loop All"},
      },
      Parameter {
        id = "Envelope4_Trigger",
        name = "Trigger",
        number = 104,
        items = {"normal","single"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local EnvMode = synth_definition.parameters["Envelope4_Mode"]
          return parameter:value()*32 + EnvMode:value()
        end
      }, 
      Parameter {
        id = "Envelope4_Attack",
        name = "Attack",
        number = 107,
      },
      Parameter {
        id = "Envelope4_AttackLevel",
        name = "Attack Level",
        number = 108,
      },
      Parameter {
        id = "Envelope4_Decay",
        name = "Decay",
        number = 109,
      },
      Parameter {
        id = "Envelope4_Sustain",
        name = "Sustain",
        number = 110,
      },
      Parameter {
        id = "Envelope4_Decay2",
        name = "Decay 2",
        number = 111,
      },
      Parameter {
        id = "Envelope4_Sustain2",
        name = "Sustain 2",
        number = 112,
      },
      Parameter {
        id = "Envelope4_Release",
        name = "Release",
        number = 113,
      },
    }


local Group_ModulationI = Group {
      name = "Modulation I",
      Parameter {
        id = "Modulation1_Source",
        name = "Mod 1 Source",
        number = 5,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation1_Destination",
        name = "           Destination",
        number = 6,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation1_Amount",
        name = "           Amount",
        number = 7,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      Parameter {
        id = "Modulation2_Source",
        name = "Mod 2 Source",
        number = 8,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation2_Destination",
        name = "           Destination",
        number = 9,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation2_Amount",
        name = "           Amount",
        number = 10,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation3_Source",
        name = "Mod 3 Source",
        number = 11,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation3_Destination",
        name = "           Destination",
        number = 12,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation3_Amount",
        name = "           Amount",
        number = 13,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation4_Source",
        name = "Mod 4 Source",
        number = 14,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation4_Destination",
        name = "           Destination",
        number = 15,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation4_Amount",
        name = "           Amount",
        number = 16,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation5_Source",
        name = "Mod 5 Source",
        number = 17,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation5_Destination",
        name = "           Destination",
        number = 18,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation5_Amount",
        name = "           Amount",
        number = 19,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation6_Source",
        name = "Mod 6 Source",
        number = 20,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation6_Destination",
        name = "           Destination",
        number = 21,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation6_Amount",
        name = "           Amount",
        number = 22,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation7_Source",
        name = "Mod 7 Source",
        number = 23,
        gui_type = "dropdown",
        items = ModulationSources,
      },
   
    
    
      
      Parameter {
        id = "Modulation7_Destination",
        name = "           Destination",
        number = 24,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation7_Amount",
        name = "           Amount",
        number = 25,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation8_Source",
        name = "Mod 8 Source",
        number = 26,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation8_Destination",
        name = "           Destination",
        number = 27,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation8_Amount",
        name = "           Amount",
        number = 28,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
    }


local Group_ModulationII = Group {
      name = "Modulation II",
      
      
      Parameter {
        id = "Modulation9_Source",
        name = "Mod 9 Source",
        number = 29,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation9_Destination",
        name = "           Destination",
        number = 30,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation9_Amount",
        name = "           Amount",
        number = 31,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation10_Source",
        name = "Mod10 Source",
        number = 32,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation10_Destination",
        name = "            Destination",
        number = 33,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation10_Amount",
        name = "            Amount",
        number = 34,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },      
      

      
      
      Parameter {
        id = "Modulation11_Source",
        name = "Mod11 Source",
        number = 35,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation11_Destination",
        name = "            Destination",
        number = 36,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation11_Amount",
        name = "            Amount",
        number = 37,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation12_Source",
        name = "Mod12 Source",
        number = 38,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation12_Destination",
        name = "            Destination",
        number = 39,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation12_Amount",
        name = "            Amount",
        number = 40,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },  
    
      Parameter {
        id = "Modulation13_Source",
        name = "Mod13 Source",
        number = 41,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation13_Destination",
        name = "            Destination",
        number = 42,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation13_Amount",
        name = "            Amount",
        number = 43,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation14_Source",
        name = "Mod14 Source",
        number = 44,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation14_Destination",
        name = "            Destination",
        number = 45,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation14_Amount",
        name = "            Amount",
        number = 46,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation15_Source",
        name = "Mod15 Source",
        number = 47,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation15_Destination",
        name = "            Destination",
        number = 48,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation15_Amount",
        name = "            Amount",
        number = 49,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modulation16_Source",
        name = "Mod16 Source",
        number = 50,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Modulation16_Destination",
        name = "            Destination",
        number = 51,
        gui_type = "dropdown",
        items = ModulationDestinations,
      },
      Parameter {
        id = "Modulation16_Amount",
        name = "            Amount",
        number = 52,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
    }

local Group_Modifiers = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
      name = "Modifiers",
    
      Parameter {
        id = "Modifier1_SourceA",
        name = "Mod 1 Source A",
        number = 117,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier1_SourceB",
        name = "           Source B",
        number = 118,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier1_Operation",
        name = "           Operation",
        number = 119,
        gui_type = "dropdown",
        items = {"+","-","*","AND","OR","XOR","MAX","min"},
       },
       Parameter {
        id = "Modifier1_Constant",
        name = "           Constant",
        number = 120,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      Parameter {
        id = "Modifier2_SourceA",
        name = "Mod 2 Source A",
        number = 121,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier2_SourceB",
        name = "           Source B",
        number = 122,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier2_Operation",
        name = "           Operation",
        number = 123,
        gui_type = "dropdown",
        items = {"+","-","*","AND","OR","XOR","MAX","min"},
       },
       Parameter {
        id = "Modifier2_Constant",
        name = "           Constant",
        number = 124,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      
      Parameter {
        id = "Modifier3_SourceA",
        name = "Mod 3 Source A",
        number = 125,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier3_SourceB",
        name = "           Source B",
        number = 126,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        id = "Modifier3_Operation",
        name = "           Operation",
        number = 127,
        gui_type = "dropdown",
        items = {"+","-","*","AND","OR","XOR","MAX","min"},
       },
       
       Parameter {
        sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
        id = "Modifier3_Constant",
        name = "           Constant",
        number = 0,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      Parameter {
        sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
        id = "Modifier4_SourceA",
        name = "Mod 4 Source A",
        number = 1,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
        id = "Modifier4_SourceB",
        name = "           Source B",
        number = 2,
        gui_type = "dropdown",
        items = ModulationSources,
       },
       Parameter {
        sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
        id = "Modifier4_Operation",
        name = "           Operation",
        number = 3,
        gui_type = "dropdown",
        items = {"+","-","*","AND","OR","XOR","MAX","min"},
       },
       
       Parameter {
        sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
        id = "Modifier4_Constant",
        name = "           Constant",
        number = 4,
        default_value = 64,
       },   
    }
    
    
local Group_Functions =    Group {
     
     sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
     name = "Functions",
     
     
     Parameter {
       id = "AllModSourcesOff", -- will become a single button in future Guru update
       name = "All Mod Sources",
       number = 54,
       items = {"keep unchanged","off"},
       item_values = {0,1},
       value_callback = function(parameter)
         local synth_definition = parameter.synth_definition
         if parameter:value() == 1 then
           synth_definition.parameters["Modulation1_Source"]:value(0)
           synth_definition.parameters["Modulation2_Source"]:value(0)
           synth_definition.parameters["Modulation3_Source"]:value(0)
           synth_definition.parameters["Modulation4_Source"]:value(0)
           synth_definition.parameters["Modulation5_Source"]:value(0)
           synth_definition.parameters["Modulation6_Source"]:value(0)
           synth_definition.parameters["Modulation7_Source"]:value(0)
           synth_definition.parameters["Modulation8_Source"]:value(0)
           synth_definition.parameters["Modulation9_Source"]:value(0)
           synth_definition.parameters["Modulation10_Source"]:value(0)
           synth_definition.parameters["Modulation11_Source"]:value(0)
           synth_definition.parameters["Modulation12_Source"]:value(0)
           synth_definition.parameters["Modulation13_Source"]:value(0)
           synth_definition.parameters["Modulation14_Source"]:value(0)
           synth_definition.parameters["Modulation15_Source"]:value(0)
           synth_definition.parameters["Modulation16_Source"]:value(0)
           
           synth_definition.parameters["Modifier1_SourceA"]:value(0)
           synth_definition.parameters["Modifier1_SourceB"]:value(0)
           synth_definition.parameters["Modifier2_SourceA"]:value(0)
           synth_definition.parameters["Modifier2_SourceB"]:value(0)
           synth_definition.parameters["Modifier3_SourceA"]:value(0)
           synth_definition.parameters["Modifier3_SourceB"]:value(0)
           synth_definition.parameters["Modifier4_SourceA"]:value(0)
           synth_definition.parameters["Modifier4_SourceB"]:value(0)
         end
         return parameter:value() 
       end
     },  
   }    
    

local Group_Arpeggiator = Group {
      name = "Arpeggiator",
      Parameter {
        id = "Arpeggiator_Mode",
        name = "Mode",
        number = 55,
        items = {"off","on","One Shot","Hold"},
      },
      Parameter {
        id = "Arpeggiator_Clock",
        name = "Clock",
        number = 58,
        gui_type = "dropdown",
        items = {"1/96","1/48","1/32","1/16T","1/32.","1/16","1/8T","1/16.","1/8","1/4T","1/8.","1/4","1/2T","1/4.","1/2","1/1T","1/2.","1 bar","1.5 bars","2 bars","2.5 bars","3 bars","3.5 bars","4 bars","5 bars","6 bars","7 bars","8 bars","9 bars","10 bars","12 bars","14 bars","16 bars","18 bars","20 bars","24 bars","28 bars","32 bars","36 bars","40 bars","48 bars","56 bars","64 bars"},
      },
      Parameter {
        id = "Arpeggiator_Tempo",
        name = "Tempo",
        number = 70,
        default_value = 60,
      },
      Parameter {
        id = "Arpeggiator_Pattern",
        name = "Pattern",
        number = 56,
        gui_type = "dropdown",
        items = {"off","User","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"},
      },
      Parameter {
        id = "Arpeggiator_Direction",
        name = "Direction",
        number = 61,
        items = {"Up","Down","Alt Up","Alt Down"},
      },
      Parameter {
        id = "Arpeggiator_Length",
        name = "Length",
        number = 59,
        gui_type = "dropdown",
        items = {"1/96","1/48","1/32","1/16T","1/32.","1/16","1/8T","1/16.","1/8","1/4T","1/8.","1/4","1/2T","1/4.","1/2","1/1T","1/2.","1 bar","1.5 bars","2 bars","2.5 bars","3 bars","3.5 bars","4 bars","5 bars","6 bars","7 bars","8 bars","9 bars","10 bars","12 bars","14 bars","16 bars","18 bars","20 bars","24 bars","28 bars","32 bars","36 bars","40 bars","48 bars","56 bars","64 bars","legato"},
      },
      Parameter {
        id = "Arpeggiator_SortOrder",
        name = "Sort Order",
        number = 62,
        gui_type = "dropdown",
        items = {"as played","reversed","Key Lo>Hi","Key Hi>Lo","Vel Lo>Hi","Vel Hi>Lo"},
      },
      Parameter {
        id = "Arpeggiator_TimingFactor",
        name = "Timing Factor",
        number = 64,
      },
      Parameter {
        id = "Arpeggiator_VelocityMode",
        name = "Velocity Mode",
        number = 63,
        gui_type = "dropdown",
        items = {"Each Note","First Note","Last Note","fix 32","fix 64","fix 100","fix 127"},
      },
      Parameter {
        id = "Arpeggiator_PtnLength",
        name = "Pattern Length",
        number = 67,
        gui_type = "dropdown",
        items = {"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"},
      },
      Parameter {
        id = "Arpeggiator_PtnReset",
        name = "Pattern Reset",
        number = 66,
        gui_type = "dropdown",
        items = {"off","on"},
      },
    }


local Group_PatternI = Group {
    
      name = "Pattern I",
      
      Parameter {
        id = "Arpeggiator_PatternPosition1_Step",
        name = "Pos 1 Step",
        number = 71,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition1_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition1_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition1_Accent",
        name = "          Accent",
        number = 71,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition1_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition1_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition1_Glide",
        name = "          Glide",
        number = 71,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition1_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition1_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition1_Timing",
        name = "          Timing",
        number = 87,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition1_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition1_Length",
        name = "          Length",
        number = 87,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition1_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition2_Step",
        name = "Pos 2 Step",
        number = 72,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition2_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition2_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition2_Accent",
        name = "          Accent",
        number = 72,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition2_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition2_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition2_Glide",
        name = "          Glide",
        number = 72,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition2_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition2_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition2_Timing",
        name = "          Timing",
        number = 88,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition2_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition2_Length",
        name = "          Length",
        number = 88,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition2_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition3_Step",
        name = "Pos 3 Step",
        number = 73,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition3_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition3_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition3_Accent",
        name = "          Accent",
        number = 73,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition3_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition3_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition3_Glide",
        name = "          Glide",
        number = 73,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition3_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition3_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition3_Timing",
        name = "          Timing",
        number = 89,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition3_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition3_Length",
        name = "          Length",
        number = 89,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition3_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition4_Step",
        name = "Pos 4 Step",
        number = 74,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition4_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition4_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition4_Accent",
        name = "          Accent",
        number = 74,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition4_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition4_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition4_Glide",
        name = "          Glide",
        number = 74,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition4_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition4_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition4_Timing",
        name = "          Timing",
        number = 90,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition4_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition4_Length",
        name = "          Length",
        number = 90,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition4_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
    }
    
    
local Group_PatternII = Group {
    
      name = "Pattern II",
      
      Parameter {
        id = "Arpeggiator_PatternPosition5_Step",
        name = "Pos 5 Step",
        number = 75,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition5_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition5_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition5_Accent",
        name = "          Accent",
        number = 75,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition5_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition5_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition5_Glide",
        name = "          Glide",
        number = 75,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition5_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition5_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition5_Timing",
        name = "          Timing",
        number = 91,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition5_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition5_Length",
        name = "          Length",
        number = 91,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition5_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition6_Step",
        name = "Pos 6 Step",
        number = 76,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition6_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition6_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition6_Accent",
        name = "          Accent",
        number = 76,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition6_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition6_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition6_Glide",
        name = "          Glide",
        number = 76,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition6_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition6_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition6_Timing",
        name = "          Timing",
        number = 92,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition6_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition6_Length",
        name = "          Length",
        number = 92,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition6_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition7_Step",
        name = "Pos 7 Step",
        number = 77,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition7_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition7_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition7_Accent",
        name = "          Accent",
        number = 77,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition7_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition7_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition7_Glide",
        name = "          Glide",
        number = 77,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition7_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition7_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition7_Timing",
        name = "          Timing",
        number = 93,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition7_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition7_Length",
        name = "          Length",
        number = 93,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition7_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition8_Step",
        name = "Pos 8 Step",
        number = 78,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition8_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition8_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition8_Accent",
        name = "          Accent",
        number = 78,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition8_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition8_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition8_Glide",
        name = "          Glide",
        number = 78,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition8_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition8_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition8_Timing",
        name = "          Timing",
        number = 94,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition8_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition8_Length",
        name = "          Length",
        number = 94,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition8_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition9_Step",
        name = "Pos 9 Step",
        number = 79,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition9_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition9_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition9_Accent",
        name = "          Accent",
        number = 79,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition9_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition9_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition9_Glide",
        name = "          Glide",
        number = 79,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition9_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition9_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition9_Timing",
        name = "          Timing",
        number = 95,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition9_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition9_Length",
        name = "          Length",
        number = 95,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition9_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition10_Step",
        name = "Pos10 Step",
        number = 80,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition10_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition10_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition10_Accent",
        name = "           Accent",
        number = 80,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition10_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition10_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition10_Glide",
        name = "           Glide",
        number = 80,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition10_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition10_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition10_Timing",
        name = "           Timing",
        number = 96,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition10_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition10_Length",
        name = "           Length",
        number = 96,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition10_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },    
    }
    
    
local Group_PatternIII = Group {
      
      name = "Pattern III",
      
      Parameter {
        id = "Arpeggiator_PatternPosition11_Step",
        name = "Pos11 Step",
        number = 81,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition11_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition11_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition11_Accent",
        name = "           Accent",
        number = 81,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition11_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition11_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition11_Glide",
        name = "           Glide",
        number = 81,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition11_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition11_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition11_Timing",
        name = "           Timing",
        number = 97,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition11_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition11_Length",
        name = "           Length",
        number = 97,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition11_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition12_Step",
        name = "Pos12 Step",
        number = 82,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition12_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition12_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition12_Accent",
        name = "           Accent",
        number = 82,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition12_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition12_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition12_Glide",
        name = "           Glide",
        number = 82,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition12_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition12_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition12_Timing",
        name = "           Timing",
        number = 98,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition12_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition12_Length",
        name = "           Length",
        number = 98,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition12_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition13_Step",
        name = "Pos13 Step",
        number = 83,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition13_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition13_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition13_Accent",
        name = "           Accent",
        number = 83,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition13_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition13_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition13_Glide",
        name = "           Glide",
        number = 83,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition13_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition13_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition13_Timing",
        name = "           Timing",
        number = 99,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition13_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition13_Length",
        name = "           Length",
        number = 99,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition13_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition14_Step",
        name = "Pos14 Step",
        number = 84,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition14_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition14_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition14_Accent",
        name = "           Accent",
        number = 84,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition14_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition14_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition14_Glide",
        name = "           Glide",
        number = 84,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition14_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition14_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition14_Timing",
        name = "           Timing",
        number = 100,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition14_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition14_Length",
        name = "           Length",
        number = 100,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition14_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition15_Step",
        name = "Pos15 Step",
        number = 85,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition15_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition15_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition15_Accent",
        name = "           Accent",
        number = 85,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition15_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition15_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition15_Glide",
        name = "           Glide",
        number = 85,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition15_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition15_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition15_Timing",
        name = "           Timing",
        number = 101,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition15_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition15_Length",
        name = "           Length",
        number = 101,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition15_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
      
      
      Parameter {
        id = "Arpeggiator_PatternPosition16_Step",
        name = "Pos16 Step",
        number = 86,
        gui_type = "dropdown",
        items = {"normal","pause","previous","first","last","first+last","chord","random"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition16_Accent"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition16_Glide"]
          return parameter:value()*16 + Glide:value()*8 + Accent:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition16_Accent",
        name = "           Accent",
        number = 86,
        items = {"silent","/4","/3","/2","*1","*2","*3","*4"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition16_Step"]
          local Glide = synth_definition.parameters["Arpeggiator_PatternPosition16_Glide"]
          return Step:value()*16 + Glide:value()*8 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition16_Glide",
        name = "           Glide",
        number = 86,
        items = {"off","on"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Step = synth_definition.parameters["Arpeggiator_PatternPosition16_Step"]
          local Accent = synth_definition.parameters["Arpeggiator_PatternPosition16_Accent"]
          return Step:value()*16 + parameter:value()*8 + Accent:value()
        end
      },
      
            Parameter {
        id = "Arpeggiator_PatternPosition16_Timing",
        name = "           Timing",
        number = 102,
        items = {"rnd","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Length = synth_definition.parameters["Arpeggiator_PatternPosition16_Length"]
          return Length:value()*16 + parameter:value()
        end
      },
      
      Parameter {
        id = "Arpeggiator_PatternPosition16_Length",
        name = "           Length",
        number = 102,
        items = {"leg","-3","-2","-1","0","+1","+2","+3"},
        value_callback = function(parameter)
          local synth_definition = parameter.synth_definition
          local Timing = synth_definition.parameters["Arpeggiator_PatternPosition16_Length"]
          return parameter:value()*16 + Timing:value()
        end
      },
    }        


local Group_Effect1 = Group {
      
      name = "Effect 1",
      
      Parameter {
        id = "Effect1_Type",
        name = "Type",
        number = 0,
        gui_type = "dropdown",
        items = {"Bypass","Chorus","Flanger","Phaser","Overdrive","Triple FX"},
        value_callback = function(parameter,midi_value)
          local vb = parameter.synth_definition.view_builder
            if parameter:value() == 0 then
              vb.views["Effect1_Parameter1"].active = false
              vb.views["label_Effect1_Parameter1"].text = ""
              vb.views["Effect1_Parameter2"].active = false
              vb.views["label_Effect1_Parameter2"].text = ""
              vb.views["Effect1_Parameter3"].active = false
              vb.views["label_Effect1_Parameter3"].text = ""
              vb.views["Effect1_Parameter4"].active = false
              vb.views["label_Effect1_Parameter4"].text = ""
              vb.views["Effect1_Parameter5"].active = false
              vb.views["label_Effect1_Parameter5"].text = ""
              vb.views["Effect1_Parameter6"].active = false
              vb.views["label_Effect1_Parameter6"].text = ""
              vb.views["Effect1_Parameter7"].active = false
              vb.views["label_Effect1_Parameter7"].text = ""
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = false
              vb.views["label_Effect1_Parameter9"].text = ""
              vb.views["Effect1_Parameter10"].active = false
              vb.views["label_Effect1_Parameter10"].text = ""
            elseif parameter:value() == 1 then
              vb.views["Effect1_Parameter1"].active = true
              vb.views["label_Effect1_Parameter1"].text = "Speed"
              vb.views["Effect1_Parameter2"].active = true
              vb.views["label_Effect1_Parameter2"].text = "Depth"
              vb.views["Effect1_Parameter3"].active = false
              vb.views["label_Effect1_Parameter3"].text = ""
              vb.views["Effect1_Parameter4"].active = false
              vb.views["label_Effect1_Parameter4"].text = ""
              vb.views["Effect1_Parameter5"].active = false
              vb.views["label_Effect1_Parameter5"].text = ""
              vb.views["Effect1_Parameter6"].active = false
              vb.views["label_Effect1_Parameter6"].text = ""
              vb.views["Effect1_Parameter7"].active = false
              vb.views["label_Effect1_Parameter7"].text = ""
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = false
              vb.views["label_Effect1_Parameter9"].text = ""
              vb.views["Effect1_Parameter10"].active = false
              vb.views["label_Effect1_Parameter10"].text = ""
            elseif parameter:value() == 2 then
              vb.views["Effect1_Parameter1"].active = true
              vb.views["label_Effect1_Parameter1"].text = "Speed"
              vb.views["Effect1_Parameter2"].active = true
              vb.views["label_Effect1_Parameter2"].text = "Depth"
              vb.views["Effect1_Parameter3"].active = false
              vb.views["label_Effect1_Parameter3"].text = ""
              vb.views["Effect1_Parameter4"].active = false
              vb.views["label_Effect1_Parameter4"].text = ""
              vb.views["Effect1_Parameter5"].active = true
              vb.views["label_Effect1_Parameter5"].text = "Feedback"
              vb.views["Effect1_Parameter6"].active = false
              vb.views["label_Effect1_Parameter6"].text = ""
              vb.views["Effect1_Parameter7"].active = false
              vb.views["label_Effect1_Parameter7"].text = ""
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = true
              vb.views["label_Effect1_Parameter9"].text = "Polarity"
              vb.views["Effect1_Parameter10"].active = false
              vb.views["label_Effect1_Parameter10"].text = ""
            elseif parameter:value() == 3 then
              vb.views["Effect1_Parameter1"].active = true
              vb.views["label_Effect1_Parameter1"].text = "Speed"
              vb.views["Effect1_Parameter2"].active = true
              vb.views["label_Effect1_Parameter2"].text = "Depth"
              vb.views["Effect1_Parameter3"].active = false
              vb.views["label_Effect1_Parameter3"].text = ""
              vb.views["Effect1_Parameter4"].active = false
              vb.views["label_Effect1_Parameter4"].text = ""
              vb.views["Effect1_Parameter5"].active = true
              vb.views["label_Effect1_Parameter5"].text = "Feedback"
              vb.views["Effect1_Parameter6"].active = true
              vb.views["label_Effect1_Parameter6"].text = "Center"
              vb.views["Effect1_Parameter7"].active = true
              vb.views["label_Effect1_Parameter7"].text = "Spacing"
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = true
              vb.views["label_Effect1_Parameter9"].text = "Polarity"
              vb.views["Effect1_Parameter10"].active = false
              vb.views["label_Effect1_Parameter10"].text = ""
            elseif parameter:value() == 4 then
              vb.views["Effect1_Parameter1"].active = false
              vb.views["label_Effect1_Parameter1"].text = ""
              vb.views["Effect1_Parameter2"].active = true
              vb.views["label_Effect1_Parameter2"].text = "Drive"
              vb.views["Effect1_Parameter3"].active = true
              vb.views["label_Effect1_Parameter3"].text = "Post Gain"
              vb.views["Effect1_Parameter4"].active = false
              vb.views["label_Effect1_Parameter4"].text = ""
              vb.views["Effect1_Parameter5"].active = false
              vb.views["label_Effect1_Parameter5"].text = ""
              vb.views["Effect1_Parameter6"].active = true
              vb.views["label_Effect1_Parameter6"].text = "Cutoff"
              vb.views["Effect1_Parameter7"].active = false
              vb.views["label_Effect1_Parameter7"].text = ""
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = false
              vb.views["label_Effect1_Parameter9"].text = ""
              vb.views["Effect1_Parameter10"].active = true
              vb.views["label_Effect1_Parameter10"].text = "Curve"
            elseif parameter:value() == 5 then
              vb.views["Effect1_Parameter1"].active = true
              vb.views["label_Effect1_Parameter1"].text = "Speed"
              vb.views["Effect1_Parameter2"].active = true
              vb.views["label_Effect1_Parameter2"].text = "Depth"
              vb.views["Effect1_Parameter3"].active = false
              vb.views["label_Effect1_Parameter3"].text = ""
              vb.views["Effect1_Parameter4"].active = true
              vb.views["label_Effect1_Parameter4"].text = "Chorus Mix"
              vb.views["Effect1_Parameter5"].active = true
              vb.views["label_Effect1_Parameter5"].text = "Sample & Hold"
              vb.views["Effect1_Parameter6"].active = true
              vb.views["label_Effect1_Parameter6"].text = "Overdrive"
              vb.views["Effect1_Parameter7"].active = false
              vb.views["label_Effect1_Parameter7"].text = ""
              vb.views["Effect1_Parameter8"].active = false
              vb.views["label_Effect1_Parameter8"].text = ""
              vb.views["Effect1_Parameter9"].active = false
              vb.views["label_Effect1_Parameter9"].text = ""
              vb.views["Effect1_Parameter10"].active = false
              vb.views["label_Effect1_Parameter10"].text = ""      
            end
        end
      
      },
      
      Parameter {
        id = "Effect1_Mix",
        name = "Mix",
        number = 1,
      },
      
      Parameter {
        id = "Effect1_Parameter1",
        name = "Parameter 1",
        number = 2,
      },
      
      Parameter {
        id = "Effect1_Parameter2",
        name = "Parameter 2",
        number = 3,
      },
      
      Parameter {
        id = "Effect1_Parameter3",
        name = "Parameter 3",
        number = 4,
      },
      
      Parameter {
        id = "Effect1_Parameter4",
        name = "Parameter 4",
        number = 5,
      },
      
      Parameter {
        id = "Effect1_Parameter5",
        name = "Parameter 5",
        number = 6,
      },
      
      Parameter {
        id = "Effect1_Parameter6",
        name = "Parameter 6",
        number = 7,
      },
      
      Parameter {
        id = "Effect1_Parameter7",
        name = "Parameter 7",
        number = 8,
      },
      
      Parameter {
        id = "Effect1_Parameter8",
        name = "Parameter 8",
        number = 9,
      },
      
      Parameter {
        id = "Effect1_Parameter9",
        name = "Parameter 9",
        number = 10,
        items = {"positive","negative"},
      },
      
      Parameter {
        id = "Effect1_Parameter10",
        name = "Parameter 10",
        number = 11,
        gui_type = "dropdown",
        items = {"Clipping","Tube","Hard","Medium","Soft","Pickup 1","Pickup 2","Rectifier","Square","Binary","Overflow","Sine Shaper"},
      },
    }


local Group_Effect2 = Group {
      
      name = "Effect 2",
      
      Parameter {
        id = "Effect2_Type",
        name = "Type",
        number = 16,
        gui_type = "dropdown",
        items = {"Bypass","Chorus","Flanger","Phaser","Overdrive","Triple FX","Delay","Clk. Delay","Reverb"},
        value_callback = function(parameter,midi_value)
          local vb = parameter.synth_definition.view_builder
            if parameter:value() == 0 then
              vb.views["Effect2_Parameter1"].active = false
              vb.views["label_Effect2_Parameter1"].text = ""
              vb.views["Effect2_Parameter2"].active = false
              vb.views["label_Effect2_Parameter2"].text = ""
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = false
              vb.views["label_Effect2_Parameter5"].text = ""
              vb.views["Effect2_Parameter6"].active = false
              vb.views["label_Effect2_Parameter6"].text = ""
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = false
              vb.views["label_Effect2_Parameter9"].text = ""
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 1 then
              vb.views["Effect2_Parameter1"].active = true
              vb.views["label_Effect2_Parameter1"].text = "Speed"
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Depth"
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = false
              vb.views["label_Effect2_Parameter5"].text = ""
              vb.views["Effect2_Parameter6"].active = false
              vb.views["label_Effect2_Parameter6"].text = ""
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = false
              vb.views["label_Effect2_Parameter9"].text = ""
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 2 then
              vb.views["Effect2_Parameter1"].active = true
              vb.views["label_Effect2_Parameter1"].text = "Speed"
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Depth"
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = true
              vb.views["label_Effect2_Parameter5"].text = "Feedback"
              vb.views["Effect2_Parameter6"].active = false
              vb.views["label_Effect2_Parameter6"].text = ""
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = true
              vb.views["label_Effect2_Parameter9"].text = "Polarity"
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 3 then
              vb.views["Effect2_Parameter1"].active = true
              vb.views["label_Effect2_Parameter1"].text = "Speed"
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Depth"
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = true
              vb.views["label_Effect2_Parameter5"].text = "Feedback"
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Center"
              vb.views["Effect2_Parameter7"].active = true
              vb.views["label_Effect2_Parameter7"].text = "Spacing"
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = true
              vb.views["label_Effect2_Parameter9"].text = "Polarity"
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 4 then
              vb.views["Effect2_Parameter1"].active = false
              vb.views["label_Effect2_Parameter1"].text = ""
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Drive"
              vb.views["Effect2_Parameter3"].active = true
              vb.views["label_Effect2_Parameter3"].text = "Post Gain"
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = false
              vb.views["label_Effect2_Parameter5"].text = ""
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Cutoff"
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = false
              vb.views["label_Effect2_Parameter9"].text = ""
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = true
              vb.views["label_Effect2_Parameter10"].text = "Curve"
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 5 then
              vb.views["Effect2_Parameter1"].active = true
              vb.views["label_Effect2_Parameter1"].text = "Speed"
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Depth"
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = true
              vb.views["label_Effect2_Parameter4"].text = "Chorus Mix"
              vb.views["Effect2_Parameter5"].active = true
              vb.views["label_Effect2_Parameter5"].text = "Sample & Hold"
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Overdrive"
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = false
              vb.views["label_Effect2_Parameter9"].text = ""
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = "" 
            elseif parameter:value() == 6 then
              vb.views["Effect2_Parameter1"].active = false
              vb.views["label_Effect2_Parameter1"].text = ""
              vb.views["Effect2_Parameter2"].active = false
              vb.views["label_Effect2_Parameter2"].text = ""
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = true
              vb.views["label_Effect2_Parameter4"].text = "Length"
              vb.views["Effect2_Parameter5"].active = true
              vb.views["label_Effect2_Parameter5"].text = "Feedback"
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Cutoff"
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = true
              vb.views["label_Effect2_Parameter9"].text = "Polarity"
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = true
              vb.views["label_Effect2_Parameter10Slider"].text = "Spread"
              local synth_definition = parameter.synth_definition
              synth_definition.parameters["Effect2_Parameter10Slider"]:value(64)
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = ""
            elseif parameter:value() == 7 then
              vb.views["Effect2_Parameter1"].active = false
              vb.views["label_Effect2_Parameter1"].text = ""
              vb.views["Effect2_Parameter2"].active = false
              vb.views["label_Effect2_Parameter2"].text = ""
              vb.views["Effect2_Parameter3"].active = false
              vb.views["label_Effect2_Parameter3"].text = ""
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = true
              vb.views["label_Effect2_Parameter5"].text = "Feedback"
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Cutoff"
              vb.views["Effect2_Parameter7"].active = false
              vb.views["label_Effect2_Parameter7"].text = ""
              vb.views["Effect2_Parameter8"].active = false
              vb.views["label_Effect2_Parameter8"].text = ""
              vb.views["Effect2_Parameter9"].active = true
              vb.views["label_Effect2_Parameter9"].text = "Polarity"
              vb.views["Effect2_Parameter9Slider"].active = false
              vb.views["label_Effect2_Parameter9Slider"].text = ""
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = true
              vb.views["label_Effect2_Parameter10Slider"].text = "Spread"
              local synth_definition = parameter.synth_definition
              synth_definition.parameters["Effect2_Parameter10Slider"]:value(64)
              vb.views["Effect2_Parameter11"].active = true
              vb.views["label_Effect2_Parameter11"].text = "Length"
            elseif parameter:value() == 8 then
              vb.views["Effect2_Parameter1"].active = true
              vb.views["label_Effect2_Parameter1"].text = "Size"
              vb.views["Effect2_Parameter2"].active = true
              vb.views["label_Effect2_Parameter2"].text = "Shape"
              vb.views["Effect2_Parameter3"].active = true
              vb.views["label_Effect2_Parameter3"].text = "Decay"
              vb.views["Effect2_Parameter4"].active = false
              vb.views["label_Effect2_Parameter4"].text = ""
              vb.views["Effect2_Parameter5"].active = false
              vb.views["label_Effect2_Parameter5"].text = ""
              vb.views["Effect2_Parameter6"].active = true
              vb.views["label_Effect2_Parameter6"].text = "Lowpass"
              vb.views["Effect2_Parameter7"].active = true
              vb.views["label_Effect2_Parameter7"].text = "Highpass"
              vb.views["Effect2_Parameter8"].active = true
              vb.views["label_Effect2_Parameter8"].text = "Diffusion"
              vb.views["Effect2_Parameter9"].active = false
              vb.views["label_Effect2_Parameter9"].text = ""
              vb.views["Effect2_Parameter9Slider"].active = true
              vb.views["label_Effect2_Parameter9Slider"].text = "Damping"
              vb.views["Effect2_Parameter10"].active = false
              vb.views["label_Effect2_Parameter10"].text = ""
              vb.views["Effect2_Parameter10Slider"].active = false
              vb.views["label_Effect2_Parameter10Slider"].text = ""
              vb.views["Effect2_Parameter11"].active = false
              vb.views["label_Effect2_Parameter11"].text = ""          
            end
        end
      },
      
      Parameter {
        id = "Effect2_Mix",
        name = "Mix",
        number = 17,
      },
      
      Parameter {
        id = "Effect2_Parameter1",
        name = "Parameter 1",
        number = 18,
      },
      
      Parameter {
        id = "Effect2_Parameter2",
        name = "Parameter 2",
        number = 19,
      },
      
      Parameter {
        id = "Effect2_Parameter3",
        name = "Parameter 3",
        number = 20,
      },
      
      Parameter {
        id = "Effect2_Parameter4",
        name = "Parameter 4",
        number = 21,
      },
      
      Parameter {
        id = "Effect2_Parameter5",
        name = "Parameter 5",
        number = 22,
      },
      
      Parameter {
        id = "Effect2_Parameter6",
        name = "Parameter 6",
        number = 23,
      },
      
      Parameter {
        id = "Effect2_Parameter7",
        name = "Parameter 7",
        number = 24,
      },
      
      Parameter {
        id = "Effect2_Parameter8",
        name = "Parameter 8",
        number = 25,
      },
      
      Parameter {
        id = "Effect2_Parameter9Slider",
        name = "Parameter 9",
        number = 26,
      },
      
      Parameter {
        id = "Effect2_Parameter10Slider",
        name = "Parameter 10",
        number = 27,

        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      
      Parameter {
        id = "Effect2_Parameter9",
        name = "Parameter 9",
        number = 26,
        items = {"positive","negative"},
      },
      
      
      Parameter {
        id = "Effect2_Parameter10",
        name = "Parameter 10",
        number = 27,
        gui_type = "dropdown",
        items = {"Clipping","Tube","Hard","Medium","Soft","Pickup 1","Pickup 2","Rectifier","Square","Binary","Overflow","Sine Shaper"},
      },
      
      Parameter {
        id = "Effect2_Parameter11",
        name = "Parameter 11",
        number = 28,
        gui_type = "dropdown",
        items = {"1/96","1/48","1/32","1/16T","1/32.","1/16","1/8T","1/16.","1/8","1/4T","1/8.","1/4","1/2T","1/4.","1/2","1/1T","1/2.","1 bar","1.5 bars","2 bars","2.5 bars","3 bars","3.5 bars","4 bars","5 bars","6 bars","7 bars","8 bars","9 bars","10 bars"},
      },
    }


local Group_Amplifier = Group {
      sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
      name = "Amplifier",
      Parameter {
        id = "Amplifier_Volume",
        name = "Volume",
        number = 121,
        default_value = 64,
        randomize_min = 1,
      },
      Parameter {
        id = "Amplifier_Velocity",
        name = "Velocity",
        number = 122,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      },
      Parameter {
        id = "Amplifier_ModSource",
        name = "Mod Source",
        number = 123,
        gui_type = "dropdown",
        items = ModulationSources,
      },
      Parameter {
        id = "Amplifier_ModAmount",
        name = "Mod Amount",
        number = 124,
        display_min_value = -64,
        display_max_value = 63,
        default_value = 64,
      }, 
    }
    
    
    
    
    

-- Synth definition


return SynthDefinition {

  name = "Waldorf Blofeld",
  author = "Andrej Kwadrin",
  
  -- delay_between_midi_messages = 10,
  
  
  content_height = 800,
  
  
  
  Section {
    sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
    
    name = "OSC & LFO",
        
    Group_OSC1,
    Group_OSC2,
    Group_OSC3,
    
    Group_OSCCommon,
    
    Group_RingModulation,
    Group_Noise,
    
    Group_LFO1,
    Group_LFO2,
    Group_LFO3  
  },
    

  Section {
    sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x00, "nn", "vv", 0xF7},
    name = "FLT & ENV",
    
    Group_Filter1,
    Group_Filter2,
    Group_FilterEnvelope,
    Group_AmplifierEnvelope,
    Group_FilterRouting,
    Group_Envelope3,
    Group_Envelope4
  },  
  
  
  Section {
    sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
    name = "MOD",
    
    Group_ModulationI,  
    Group_ModulationII,
    Group_Modifiers,   
    Group_Functions,  
  },
  
  
  Section {
    sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x02, "nn", "vv", 0xF7},
    name = "ARP",
    
    Group_Arpeggiator,
    Group_PatternI,
    Group_PatternII,
    Group_PatternIII,    
  },
 
  
  Section {    
    sysex_message_template = {0xF0, 0x3E, 0x13, "dd", 0x20, 0x00, 0x01, "nn", "vv", 0xF7},
    name = "FX & AMP",
    
    Group_Effect1,
    Group_Effect2,
    Group_Amplifier,
  }    
             
}
