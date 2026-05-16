## Auto-generates loam.hpp when you compile Loam
# @author luciferoussky72

#note that if you're using CLion, the IDE's static analyzer might not pick up on Python modules, but Loam should still compile so long
#as Python is installed on your system.

# Yes, I use semicolons in writing Python code. It's too much of a habit to break it
# -luciferoussky72

import os;
import glob;

root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)));
headers = sorted(glob.glob(os.path.join(root, "include/loam/*.hpp")));

lines = ["""#pragma once\n\n/**\n * A namespace for all Loam functions, variables, and classes to avoid naming conflicts\n */\nnamespace loam {}\n\n// This header is mostly the "kitchen sink" that just includes all Loam headers.\n\n"""];
for h in headers:
    name = os.path.basename(h);
    if name != "loam.hpp":
        lines.append(f"#include <loam/{name}>\n");

with open(os.path.join(root, "include/loam/loam.hpp"), "w") as f:
    f.writelines(lines);