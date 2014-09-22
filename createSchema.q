addType:{[t] if[t in key map;:"`",string[map t],"$()"];:`error};
addCol:{[c;t] :string[c],":",addType[t]};
map:(`b`h`i`j`e`f`c`s`p`m`d`z`n`u`v`t!`boolean`short`int`long`real`float`char`symbol`timestamp`month`date`datetime`timespan`minute`second`time);
tableSchema:{[tabName;data]exec (string[tabName],":([]",(";" sv {addCol[x;y]}.' flip (c;`$'t)),")") from (0!meta data)};
