filename = "H-CELL-7DAY-1500-240325"
//open(filename +"-conv.tif")
run("Set Scale...", "distance=1 known=1.721 unit=um");
run("Enhance Contrast...", "saturated=0.35 process_all");
run("HSB Stack");
run("Slice Keeper", "first=2 last=2 increment=1");
selectWindow(filename + ".tif");
close();
selectWindow(filename + ".tif kept stack");
setThreshold(59, 255);
setOption("BlackBackground", true);
run("Convert to Mask", "background=Dark calculate black");
//run("Threshold...");
setOption("BlackBackground", true);
run("Convert to Mask", "background=Dark calculate black");
run("Analyze Particles...", "size=500000.00-Infinity circularity=0.65-1.00 show=Outlines display clear include stack");
//saveAs("Results", "C:\Users\jemsa\OneDrive - University of Birmingham\Protorheology Research Project\Results\ImageJ Analysis\0.75 Collagen FG 210225"+ filename +".csv");
area = getResult("Area", 0);
R = sqrt(area/PI)

print(R)