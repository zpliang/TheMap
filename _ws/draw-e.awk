!/^#/{printf("    %5d -> %5d ",$1,$2)}
$3=="i"{printf("[headport = n, tailport = e,dir=back,arrowtail = odot];\n")}
$3=="o"{printf("[headport = w, tailport = s,dir=forward,arrowhead = normal];\n")}
$3=="n"{printf("[style="invis"];\n")}
