filename = "A-0.5WT-0.5-RH-2001-1203"
//open(filename +"-conv.avi")
run("Set Scale...", "distance=0.2904444 known=1 unit=um");
run("Enhance Contrast...", "saturated=0.35 process_all");
run("HSB Stack");
run("Split Channels");
selectImage("C1-"+filename+"-conv.avi");
selectImage("C2-"+filename+"-conv.avi");
selectImage("C1-"+filename+"-conv.avi");
selectImage("C2-"+filename+"-conv.avi");
selectImage("C3-"+filename+"-conv.avi");
selectImage("C2-"+filename+"-conv.avi");
selectImage("C3-"+filename+"-conv.avi");
close;
selectImage("C1-"+filename+"-conv.avi");
close;
selectImage("C2-"+filename+"-conv.avi");
setThreshold(59, 255);
setOption("BlackBackground", true);
run("Convert to Mask", "background=Dark calculate black");
//run("Threshold...");
setOption("BlackBackground", true);
run("Convert to Mask", "background=Dark calculate black");
run("Analyze Particles...", "size=500000.00-Infinity circularity=0.65-1.00 show=Outlines display clear include stack");
//saveAs("Results", "C:\Users\jemsa\OneDrive - University of Birmingham\Protorheology Research Project\Results\ImageJ Analysis\0.75 Collagen FG 210225"+ filename +".csv");
