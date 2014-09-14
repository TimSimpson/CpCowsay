import("Macaroni", "ProjectTemplates", "1")

require "os"
require "SimpleProject"

SimpleProject{
  group="BorderTown",
  project="CowsayCP",
  version="DEV",
  src="src",
  target="target",
  libShortName="CowsayCP",
  dependencies = {
    load("Macaroni", "Boost-headers", "1.55"):Target("lib"),
    load("Macaroni", "CppStd", "2003"):Target("lib"),
    load("Lp3", "Lp3.Engine.Gfx", "DEV"):Target("lib"),
  },
};

