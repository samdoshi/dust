local ControlSpec = require 'controlspec'
local Formatters = require 'jah/formatters'
local Gong = {}

local specs = {}

--[[
specs.timbre = ControlSpec.new(0, 5, 'lin', nil, 1, "")
specs.timemod = ControlSpec.new(0, 5, 'lin', nil, 1, "")

specs.oscgain = ControlSpec.AMP
-- TODO specs.oscfixed = ControlSpec.new(0, 1, 'lin', 1, 0, "")
specs.oscfixedfreq = ControlSpec.WIDEFREQ
specs.oscpartial = ControlSpec.new(0.5, 12, 'lin', 0.5, 1, "")
specs.oscindex = ControlSpec.new(0, 24, 'lin', 0, 3, "")
specs.oscoutlevel = ControlSpec.AMP
specs.osc_to_oscfreq = ControlSpec.AMP
specs.lfo_to_oscfreq = ControlSpec.BIPOLAR
specs.env_to_oscfreq = ControlSpec.BIPOLAR

specs.lpfcutoff = ControlSpec.new(20, 10000, 'exp', 0, 10000, "Hz")
specs.lpfres = ControlSpec.UNIPOLAR
specs.hpfcutoff = ControlSpec.new(1, 10000, 'exp', 0, 1, "Hz")
specs.hpfres = ControlSpec.UNIPOLAR
specs.ampgain = ControlSpec.AMP
specs.lforate = ControlSpec.RATE
specs.lfo_to_lpfcutoff = ControlSpec.BIPOLAR
specs.lfo_to_lpfres = ControlSpec.AMP
specs.lfo_to_hpfcutoff = ControlSpec.AMP
specs.lfo_to_hpfres = ControlSpec.AMP
specs.lfo_to_ampgain = ControlSpec.BIPOLAR
specs.gate = ControlSpec.UNIPOLAR
specs.envattack = ControlSpec.new(0, 5000, 'lin', 0, 5, "ms")
specs.envdecay = ControlSpec.new(0, 5000, 'lin', 0, 400, "ms")
specs.envsustain = ControlSpec.new(0, 1, 'lin', 0, 0.5, "")
specs.envrelease = ControlSpec.new(0, 5000, 'lin', 0, 400, "ms")
specs.env_to_lpfcutoff = ControlSpec.BIPOLAR
specs.env_to_lpfres = ControlSpec.BIPOLAR
specs.env_to_hpfcutoff = ControlSpec.BIPOLAR
specs.env_to_hpfres = ControlSpec.BIPOLAR
specs.env_to_ampgain = ControlSpec.BIPOLAR
]]

-- Autogenerated using Engine_Gong.generateLuaEngineModuleSpecsSection

specs = {}

specs.timbre = ControlSpec.new(0, 5, 'linear', 0, 1, "")
specs.timemod = ControlSpec.new(1, 5, 'linear', 0, 1, "")
specs.osc1gain = ControlSpec.AMP
specs.osc1partial = ControlSpec.new(0.5, 12, 'linear', 0.5, 1, "")
specs.osc1fixed = ControlSpec.new(0, 1, 'linear', 1, 0, "")
specs.osc1fixedfreq = ControlSpec.WIDEFREQ
specs.osc1index = ControlSpec.new(0, 24, 'linear', 0, 3, "")
specs.osc1outlevel = ControlSpec.AMP
specs.osc1_to_osc1freq = ControlSpec.AMP
specs.osc1_to_osc2freq = ControlSpec.AMP
specs.osc1_to_osc3freq = ControlSpec.AMP
specs.osc2gain = ControlSpec.AMP
specs.osc2partial = ControlSpec.new(0.5, 12, 'linear', 0.5, 1, "")
specs.osc2fixed = ControlSpec.new(0, 1, 'linear', 1, 0, "")
specs.osc2fixedfreq = ControlSpec.WIDEFREQ
specs.osc2index = ControlSpec.new(0, 24, 'linear', 0, 3, "")
specs.osc2outlevel = ControlSpec.AMP
specs.osc2_to_osc1freq = ControlSpec.AMP
specs.osc2_to_osc2freq = ControlSpec.AMP
specs.osc2_to_osc3freq = ControlSpec.AMP
specs.osc3gain = ControlSpec.AMP
specs.osc3partial = ControlSpec.new(0.5, 12, 'linear', 0.5, 1, "")
specs.osc3fixed = ControlSpec.new(0, 1, 'linear', 1, 0, "")
specs.osc3fixedfreq = ControlSpec.WIDEFREQ
specs.osc3index = ControlSpec.new(0, 24, 'linear', 0, 3, "")
specs.osc3outlevel = ControlSpec.AMP
specs.osc3_to_osc3freq = ControlSpec.AMP
specs.osc3_to_osc2freq = ControlSpec.AMP
specs.osc3_to_osc1freq = ControlSpec.AMP
specs.lpfcutoff = ControlSpec.new(20, 10000, exp, 0, 10000, "Hz")
specs.lpfres = ControlSpec.UNIPOLAR
specs.hpfcutoff = ControlSpec.new(1, 10000, exp, 0, 1, "Hz")
specs.hpfres = ControlSpec.UNIPOLAR
specs.ampgain = ControlSpec.AMP
specs.lforate = ControlSpec.new(0.125, 8, 'exp', 0, 1, "Hz")
specs.lfo_to_lpfcutoff = ControlSpec.BIPOLAR
specs.lfo_to_lpfres = ControlSpec.BIPOLAR
specs.lfo_to_hpfcutoff = ControlSpec.BIPOLAR
specs.lfo_to_hpfres = ControlSpec.BIPOLAR
specs.lfo_to_ampgain = ControlSpec.BIPOLAR
specs.lfo_to_osc1freq = ControlSpec.BIPOLAR
specs.lfo_to_osc2freq = ControlSpec.BIPOLAR
specs.lfo_to_osc3freq = ControlSpec.BIPOLAR
specs.envattack = ControlSpec.new(0, 5000, 'linear', 0, 5, "ms")
specs.envdecay = ControlSpec.new(0, 5000, 'linear', 0, 400, "ms")
specs.envsustain = ControlSpec.new(0, 1, 'linear', 0, 0.5, "")
specs.envrelease = ControlSpec.new(0, 5000, 'linear', 0, 400, "ms")
specs.env_to_osc1freq = ControlSpec.BIPOLAR
specs.env_to_osc1gain = ControlSpec.BIPOLAR
specs.env_to_osc2freq = ControlSpec.BIPOLAR
specs.env_to_osc2gain = ControlSpec.BIPOLAR
specs.env_to_osc3freq = ControlSpec.BIPOLAR
specs.env_to_osc3gain = ControlSpec.BIPOLAR
specs.env_to_lpfcutoff = ControlSpec.BIPOLAR
specs.env_to_lpfres = ControlSpec.BIPOLAR
specs.env_to_hpfcutoff = ControlSpec.BIPOLAR
specs.env_to_hpfres = ControlSpec.BIPOLAR
specs.env_to_ampgain = ControlSpec.BIPOLAR

Gong.specs = specs

local function bind(paramname, id, formatter, specref)
  params:add_control(paramname, specs[specref or id], formatter)
  -- params:set_action(paramname, engine[id])
  params:set_action(paramname, function(value)
    print(value)
    engine[id](value)
  end)
end

function Gong.add_params()
  local numoscs = 3

  bind("timbre", "timbre", Formatters.percentage)
  bind("timemod", "timemod", Formatters.percentage)

  for oscnum=1,numoscs do
    bind("osc"..oscnum.." gain", "osc"..oscnum.."gain", Formatters.percentage)

    params:add_option("osc"..oscnum.." type", {"partial", "fixed"})
    params:set_action("osc"..oscnum.." type", function(value)
      if value == 1 then
        engine["osc"..oscnum.."fixed"](0)
      else
        engine["osc"..oscnum.."fixed"](1)
      end
    end)

    bind("osc"..oscnum.." partial no", "osc"..oscnum.."partial")
    bind("osc"..oscnum.." fixed freq", "osc"..oscnum.."fixedfreq")
    bind("osc"..oscnum.." index", "osc"..oscnum.."index")
    bind("osc"..oscnum.." > out", "osc"..oscnum.."outlevel", Formatters.percentage)

    for src=1,numoscs do
      bind("osc"..src.." > osc"..oscnum.." freq", "osc"..src.."_to_osc"..oscnum.."freq", Formatters.percentage)
    end

    bind( "env > osc"..oscnum.." freq", "env_to_osc"..oscnum.."freq", Formatters.percentage)
    bind( "env > osc"..oscnum.." gain", "env_to_osc"..oscnum.."gain", Formatters.percentage)
  end

  bind("env attack", "envattack")
  bind("env decay", "envdecay")
  bind("env sustain", "envsustain")
  bind("env release", "envrelease")
  bind("lpf cutoff", "lpfcutoff")
  bind("lpf resonance", "lpfres", Formatters.percentage)
  bind("hpf cutoff", "hpfcutoff")
  bind("hpf resonance", "hpfres", Formatters.percentage)
  bind("amp gain", "ampgain", Formatters.percentage)
  bind("lfo rate", "lforate")
  bind("lfo > lpf cutoff", "lfo_to_lpfcutoff", Formatters.percentage)
  bind("lfo > lpf resonance", "lfo_to_lpfres", Formatters.percentage)
  bind("lfo > hpf cutoff", "lfo_to_hpfcutoff", Formatters.percentage)
  bind("lfo > hpf resonance", "lfo_to_hpfres", Formatters.percentage)
  bind("lfo > amp gain", "lfo_to_ampgain", Formatters.percentage)
  bind("env > amp gain", "env_to_ampgain", Formatters.percentage)
  bind("env > lpf cutoff", "env_to_lpfcutoff", Formatters.percentage)
  bind("env > lpf resonance", "env_to_lpfres", Formatters.percentage)
  bind("env > hpf cutoff", "env_to_hpfcutoff", Formatters.percentage)
  bind("env > hpf resonance", "env_to_hpfres", Formatters.percentage)
end

return Gong
