//Maya ASCII 2026 scene
//Name: bowlModel.ma
//Last modified: Sun, Mar 01, 2026 11:44:20 PM
//Codeset: 1252
requires maya "2026";
requires -nodeType "polyDisc" "modelingToolkit" "0.0.0.0";
requires "mtoa" "5.5.4.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2026";
fileInfo "version" "2026";
fileInfo "cutIdentifier" "202510291147-60ec9eda33";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "3138CE90-4CE4-FFBD-36D7-3BA64A3AD5A5";
createNode transform -s -n "persp";
	rename -uid "BB31A5A8-4962-6A48-7B3A-FFBA5CF31CB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.1605830677855486 28.297871300998928 64.140014909197276 ;
	setAttr ".r" -type "double3" 336.26164727417648 355.39999999972332 -7.9770818538776845e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F9EE9907-4AA3-3CA2-75CA-A6B2F2167A30";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 70.294684367427223;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "35B15F05-4EC2-A8F4-0104-3B8C8059F38C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6761F66E-46EB-3617-FF32-7F9A8EF8CD52";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "019FA9E9-4E30-38F5-505B-FCA70F65CB5E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DC92F269-4EB6-093D-F44C-C8A124FD92D9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C68C6870-4766-28B0-3404-93936D99F731";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "762DDD44-447E-05CE-681F-D9B6BE9FA32A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pDisc1";
	rename -uid "730090CE-436A-99C1-7D4A-43BB69FE5680";
	setAttr ".s" -type "double3" 3.4293972412649163 3.4293972412649163 3.4293972412649163 ;
createNode mesh -n "pDiscShape1" -p "pDisc1";
	rename -uid "EB21E9F2-4FB2-CED2-1EDC-13A13E852EA5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.82473313808441162 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "CC22E989-4C6A-C270-4740-01B6685FE94E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1BCC479C-4804-2C42-2AEB-9494EC0F1802";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "77A1DCF3-4B95-D69B-3777-E9923CCCC71D";
createNode displayLayerManager -n "layerManager";
	rename -uid "84A70A35-417F-6562-B638-0796AF7B407C";
createNode displayLayer -n "defaultLayer";
	rename -uid "63D852B5-4D9D-6F36-5F85-B8B789475720";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "85BA0440-41E1-C04D-9ABA-BCA473B72D41";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "21ABE109-4DDE-0AD2-3682-A7AFAF9CD9B2";
	setAttr ".g" yes;
createNode polyDisc -n "polyDisc1";
	rename -uid "A4BF14AE-49A3-C5CC-18CA-2BA901602D0D";
createNode polyNormal -n "polyNormal1";
	rename -uid "DE5F8C65-4E27-5F1E-0267-19AFBF96DAB6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "EDBFA31C-4855-2390-EC9B-B1B93F055AEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[5]" "e[7]" "e[12]" "e[15:16]" "e[18]" "e[22]" "e[25]" "e[43]" "e[45]" "e[50]" "e[53:54]" "e[56]" "e[60]" "e[63]" "e[79]" "e[81]" "e[86]" "e[89:90]" "e[92]" "e[96]" "e[99]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 42056;
	setAttr ".lt" -type "double3" -3.0109040930056679e-16 -3.2531221543693063e-16 -0.66651089521762852 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4293972412649163 0 -3.4293972412649163 ;
	setAttr ".cbx" -type "double3" 3.4293972412649163 0 3.4293972412649163 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "14E5F7C6-430A-920C-A1D3-D283A67AB905";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[110]" "e[112]" "e[114]" "e[116]" "e[118]" "e[120]" "e[122]" "e[124]" "e[126]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142]" "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154:155]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.66651088 0 ;
	setAttr ".rs" 39132;
	setAttr ".lt" -type "double3" 2.0514248367840088e-16 6.2623992475783519 -8.4972748375995549e-17 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4293976500809249 0.66651082912231907 -3.4293976500809249 ;
	setAttr ".cbx" -type "double3" 3.4293976500809249 0.66651088022432015 3.4293976500809249 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "FD12980D-4746-86E2-E083-18BDC7832D2B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202:203]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.9289107 0 ;
	setAttr ".rs" 43663;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.1190451184160581 6.9289105161851596 -7.1190451184160581 ;
	setAttr ".cbx" -type "double3" 7.1190451184160581 6.9289105161851596 7.1190451184160581 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "D7A97877-4D01-BC62-94B2-EFA5E8E18DE2";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[85]" -type "float3" -0.93174881 0 -0.53794396 ;
	setAttr ".tk[86]" -type "float3" -1.0392299 0 -0.27846032 ;
	setAttr ".tk[87]" -type "float3" -1.0758879 0 1.1107311e-07 ;
	setAttr ".tk[88]" -type "float3" -1.0392299 0 0.27846086 ;
	setAttr ".tk[89]" -type "float3" -0.93174881 0 0.53794396 ;
	setAttr ".tk[90]" -type "float3" -0.76076746 0 0.76076746 ;
	setAttr ".tk[91]" -type "float3" -0.53794396 0 0.93174881 ;
	setAttr ".tk[92]" -type "float3" -0.27846032 0 1.0392299 ;
	setAttr ".tk[93]" -type "float3" 1.2897107e-07 0 1.0758879 ;
	setAttr ".tk[94]" -type "float3" 0.27846086 0 1.0392299 ;
	setAttr ".tk[95]" -type "float3" 0.53794396 0 0.93174881 ;
	setAttr ".tk[96]" -type "float3" 0.76076746 0 0.76076746 ;
	setAttr ".tk[97]" -type "float3" 0.93174881 0 0.53794396 ;
	setAttr ".tk[98]" -type "float3" 1.0392299 0 0.27846029 ;
	setAttr ".tk[99]" -type "float3" 1.0758879 0 -1.6660928e-07 ;
	setAttr ".tk[100]" -type "float3" 1.0392299 0 -0.27846089 ;
	setAttr ".tk[101]" -type "float3" 0.93174881 0 -0.53794456 ;
	setAttr ".tk[102]" -type "float3" 0.76076746 0 -0.76076746 ;
	setAttr ".tk[103]" -type "float3" 0.53794396 0 -0.93174881 ;
	setAttr ".tk[104]" -type "float3" 0.27846032 0 -1.0392299 ;
	setAttr ".tk[105]" -type "float3" -1.7528488e-07 0 -1.0758879 ;
	setAttr ".tk[106]" -type "float3" -0.27846089 0 -1.0392299 ;
	setAttr ".tk[107]" -type "float3" -0.53794396 0 -0.93174881 ;
	setAttr ".tk[108]" -type "float3" -0.76076788 0 -0.76076746 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "4ACF386A-4D75-B074-5A81-97948663DD2D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250:251]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 6.9289112 0 ;
	setAttr ".rs" 46698;
	setAttr ".lt" -type "double3" 7.727728956838229e-16 3.8294033854844344e-15 -2.3327187192308187 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.3985804899310956 6.9289113338171768 -6.3985804899310956 ;
	setAttr ".cbx" -type "double3" 6.3985804899310956 6.9289113338171768 6.3985804899310956 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "B71A3A06-4965-4A4E-A2D5-9497AFE918C1";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[109:132]" -type "float3"  0.18193913 0 0.10504242 0.20292661
		 0 0.054373965 0.21008487 0 -2.168883e-08 0.20292661 0 -0.054374032 0.1819391 0 -0.10504244
		 0.14855239 0 -0.14855239 0.10504244 0 -0.1819391 0.054373957 0 -0.20292661 -2.5183711e-08
		 0 -0.21008487 -0.054374032 0 -0.20292661 -0.10504244 0 -0.1819391 -0.14855239 0 -0.14855239
		 -0.1819391 0 -0.10504242 -0.20292661 0 -0.054373957 -0.21008487 0 3.2533205e-08 -0.20292661
		 0 0.05437405 -0.1819391 0 0.10504248 -0.14855239 0 0.14855239 -0.10504242 0 0.1819391
		 -0.054373957 0 0.20292661 3.422722e-08 0 0.21008487 0.05437405 0 0.20292661 0.10504244
		 0 0.1819391 0.14855248 0 0.14855239;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "E2109129-4938-DEB8-1BF0-C38661272F42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[254]" "e[256]" "e[258]" "e[260]" "e[262]" "e[264]" "e[266]" "e[268]" "e[270]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284]" "e[286]" "e[288]" "e[290]" "e[292]" "e[294]" "e[296]" "e[298:299]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.9034164 -4.0881602e-07 ;
	setAttr ".rs" 57199;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4349718563598031 2.9034161997116006 -3.4349722651758117 ;
	setAttr ".cbx" -type "double3" 3.4349718563598031 2.9034166085276092 3.4349714475437945 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "12552BE2-44D2-A740-653B-3DAE63E8ADC1";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[133]" -type "float3" 0.74840206 -0.49360761 0.43208876 ;
	setAttr ".tk[134]" -type "float3" 0.83473384 -0.49360767 0.22366609 ;
	setAttr ".tk[135]" -type "float3" 0.86417782 -0.49360767 -1.4443025e-07 ;
	setAttr ".tk[136]" -type "float3" 0.83473384 -0.49360767 -0.22366621 ;
	setAttr ".tk[137]" -type "float3" 0.74840206 -0.49360761 -0.43208909 ;
	setAttr ".tk[138]" -type "float3" 0.61106682 -0.49360767 -0.61106682 ;
	setAttr ".tk[139]" -type "float3" 0.43208885 -0.49360767 -0.74840206 ;
	setAttr ".tk[140]" -type "float3" 0.22366609 -0.49360767 -0.83473384 ;
	setAttr ".tk[141]" -type "float3" -1.0555895e-07 -0.49360767 -0.86417758 ;
	setAttr ".tk[142]" -type "float3" -0.22366618 -0.49360767 -0.83473384 ;
	setAttr ".tk[143]" -type "float3" -0.43208885 -0.49360761 -0.74840206 ;
	setAttr ".tk[144]" -type "float3" -0.61106682 -0.49360761 -0.61106682 ;
	setAttr ".tk[145]" -type "float3" -0.74840206 -0.49360767 -0.43208897 ;
	setAttr ".tk[146]" -type "float3" -0.83473384 -0.49360767 -0.22366612 ;
	setAttr ".tk[147]" -type "float3" -0.86417782 -0.49360767 7.8610597e-08 ;
	setAttr ".tk[148]" -type "float3" -0.83473384 -0.49360767 0.22366618 ;
	setAttr ".tk[149]" -type "float3" -0.74840206 -0.49360761 0.43208939 ;
	setAttr ".tk[150]" -type "float3" -0.61106682 -0.49360761 0.61106682 ;
	setAttr ".tk[151]" -type "float3" -0.43208885 -0.49360761 0.74840206 ;
	setAttr ".tk[152]" -type "float3" -0.22366609 -0.49360767 0.83473384 ;
	setAttr ".tk[153]" -type "float3" 1.4623498e-07 -0.49360767 0.86417758 ;
	setAttr ".tk[154]" -type "float3" 0.22366621 -0.49360761 0.83473384 ;
	setAttr ".tk[155]" -type "float3" 0.43208891 -0.49360761 0.74840206 ;
	setAttr ".tk[156]" -type "float3" 0.61106688 -0.49360761 0.61106676 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "81832256-431E-1C2D-037B-4091B8BCCA80";
	setAttr ".ics" -type "componentList" 1 "vtx[157:180]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "677257C4-4992-F032-E104-C88F4CAC8D98";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[157:180]" -type "float3"  0.86743361 5.9604645e-08 0.50081289
		 0.9674955 -5.9604645e-08 0.25923929 1.0016256571 -5.9604645e-08 -1.3069535e-07 0.9674955
		 -5.9604645e-08 -0.25923988 0.86743319 5.9604645e-08 -0.50081271 0.70825529 -5.9604645e-08
		 -0.70825553 0.50081277 -5.9604645e-08 -0.86743325 0.25923923 -5.9604645e-08 -0.96749532
		 -1.6529066e-07 -5.9604645e-08 -1.0016256571 -0.25923982 -5.9604645e-08 -0.96749532
		 -0.50081289 5.9604645e-08 -0.86743325 -0.70825541 5.9604645e-08 -0.70825541 -0.86743331
		 -5.9604645e-08 -0.50081271 -0.96749562 -5.9604645e-08 -0.25923932 -1.0016256571 -5.9604645e-08
		 1.2781993e-07 -0.96749562 -5.9604645e-08 0.25923982 -0.86743331 5.9604645e-08 0.50081313
		 -0.70825541 5.9604645e-08 0.70825541 -0.50081289 5.9604645e-08 0.86743319 -0.25923938
		 -5.9604645e-08 0.96749532 1.2655084e-07 -5.9604645e-08 1.0016255379 0.25923988 5.9604645e-08
		 0.9674955 0.50081277 5.9604645e-08 0.86743319 0.70825583 5.9604645e-08 0.70825535;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "0DCF9993-496E-0083-FBE2-BFA28B377399";
	setAttr ".dc" -type "componentList" 12 "e[300]" "e[302]" "e[304]" "e[306]" "e[308]" "e[310]" "e[312]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322]";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "CB8D0591-4572-7E01-53B5-918751653502";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[156:157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]" "e[181]" "e[183]" "e[185]" "e[187]" "e[189]" "e[191]" "e[193]" "e[195]" "e[197]" "e[199]" "e[201]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.099581360816955566;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "B38B1F27-4E32-3431-6052-8F8D53E5355E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[312:313]" "e[315]" "e[317]" "e[319]" "e[321]" "e[323]" "e[325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]" "e[347]" "e[349]" "e[351]" "e[353]" "e[355]" "e[357]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.12218133360147476;
	setAttr ".re" 312;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "999D3DCC-4CCE-5A2A-6982-19A8715F9212";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[360:361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371]" "e[373]" "e[375]" "e[377]" "e[379]" "e[381]" "e[383]" "e[385]" "e[387]" "e[389]" "e[391]" "e[393]" "e[395]" "e[397]" "e[399]" "e[401]" "e[403]" "e[405]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.13587798178195953;
	setAttr ".re" 360;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "8EF875CD-4556-4AC8-FDEC-2AACDED33C03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[408:409]" "e[411]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437]" "e[439]" "e[441]" "e[443]" "e[445]" "e[447]" "e[449]" "e[451]" "e[453]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.16826756298542023;
	setAttr ".re" 408;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "09CE2B84-4F0F-D96E-0DAF-A69AA3EB71F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[456:457]" "e[459]" "e[461]" "e[463]" "e[465]" "e[467]" "e[469]" "e[471]" "e[473]" "e[475]" "e[477]" "e[479]" "e[481]" "e[483]" "e[485]" "e[487]" "e[489]" "e[491]" "e[493]" "e[495]" "e[497]" "e[499]" "e[501]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.18852455914020538;
	setAttr ".re" 456;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "6E6C1B70-4D78-2029-9197-D481567E84FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[504:505]" "e[507]" "e[509]" "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]" "e[523]" "e[525]" "e[527]" "e[529]" "e[531]" "e[533]" "e[535]" "e[537]" "e[539]" "e[541]" "e[543]" "e[545]" "e[547]" "e[549]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.30284002423286438;
	setAttr ".re" 504;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "53507061-4042-3F0D-6F85-BF82BAB28C87";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[552:553]" "e[555]" "e[557]" "e[559]" "e[561]" "e[563]" "e[565]" "e[567]" "e[569]" "e[571]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]" "e[595]" "e[597]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".wt" 0.45463913679122925;
	setAttr ".re" 552;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "720B9F0D-4B95-CD9F-72DF-77A1EE3B5E0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 46 "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202:203]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218]" "e[220]" "e[222]" "e[224]" "e[226]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240]" "e[242]" "e[244]" "e[246]" "e[248]" "e[250:251]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.8;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "AC1C5E04-4D0D-2C7E-C80A-11BC1E5BAAFD";
	setAttr ".uopa" yes;
	setAttr -s 173 ".tk";
	setAttr ".tk[158]" -type "float3" 0.23943368 0 0.064155996 ;
	setAttr ".tk[159]" -type "float3" 0.21467021 0 0.12393998 ;
	setAttr ".tk[160]" -type "float3" 0.17527752 0 0.17527752 ;
	setAttr ".tk[161]" -type "float3" 0.12393998 0 0.21467021 ;
	setAttr ".tk[162]" -type "float3" 0.064156033 0 0.23943368 ;
	setAttr ".tk[163]" -type "float3" 1.7564233e-08 0 0.24787995 ;
	setAttr ".tk[164]" -type "float3" -0.064156018 0 0.23943368 ;
	setAttr ".tk[165]" -type "float3" -0.12393998 0 0.21467021 ;
	setAttr ".tk[166]" -type "float3" -0.17527752 0 0.17527753 ;
	setAttr ".tk[167]" -type "float3" -0.21467021 0 0.12393998 ;
	setAttr ".tk[168]" -type "float3" -0.23943369 0 0.064156033 ;
	setAttr ".tk[169]" -type "float3" -0.24787995 0 2.5590683e-08 ;
	setAttr ".tk[170]" -type "float3" -0.23943368 0 -0.064156018 ;
	setAttr ".tk[171]" -type "float3" -0.21467021 0 -0.12393998 ;
	setAttr ".tk[172]" -type "float3" -0.17527753 0 -0.17527752 ;
	setAttr ".tk[173]" -type "float3" -0.12393998 0 -0.21467021 ;
	setAttr ".tk[174]" -type "float3" -0.064156055 0 -0.23943369 ;
	setAttr ".tk[175]" -type "float3" -4.0384762e-08 0 -0.24787995 ;
	setAttr ".tk[176]" -type "float3" 0.064155996 0 -0.23943368 ;
	setAttr ".tk[177]" -type "float3" 0.12393985 0 -0.21467021 ;
	setAttr ".tk[178]" -type "float3" 0.17527752 0 -0.17527753 ;
	setAttr ".tk[179]" -type "float3" 0.21467021 0 -0.12393998 ;
	setAttr ".tk[180]" -type "float3" 0.23943369 0 -0.064156055 ;
	setAttr ".tk[181]" -type "float3" 0.24787995 0 -3.8386023e-08 ;
	setAttr ".tk[182]" -type "float3" 0.35203201 0 0.094326645 ;
	setAttr ".tk[183]" -type "float3" 0.31562343 0 0.18222509 ;
	setAttr ".tk[184]" -type "float3" 0.25770536 0 0.25770536 ;
	setAttr ".tk[185]" -type "float3" 0.18222509 0 0.31562343 ;
	setAttr ".tk[186]" -type "float3" 0.094326742 0 0.35203201 ;
	setAttr ".tk[187]" -type "float3" 2.9521365e-08 0 0.36445019 ;
	setAttr ".tk[188]" -type "float3" -0.094326653 0 0.35203201 ;
	setAttr ".tk[189]" -type "float3" -0.18222509 0 0.31562343 ;
	setAttr ".tk[190]" -type "float3" -0.25770536 0 0.25770536 ;
	setAttr ".tk[191]" -type "float3" -0.31562343 0 0.18222509 ;
	setAttr ".tk[192]" -type "float3" -0.35203201 0 0.094326742 ;
	setAttr ".tk[193]" -type "float3" -0.36445019 0 3.7625245e-08 ;
	setAttr ".tk[194]" -type "float3" -0.35203201 0 -0.09432672 ;
	setAttr ".tk[195]" -type "float3" -0.31562343 0 -0.18222509 ;
	setAttr ".tk[196]" -type "float3" -0.25770536 0 -0.25770536 ;
	setAttr ".tk[197]" -type "float3" -0.18222509 0 -0.31562343 ;
	setAttr ".tk[198]" -type "float3" -0.094326749 0 -0.35203201 ;
	setAttr ".tk[199]" -type "float3" -5.9376564e-08 0 -0.36445019 ;
	setAttr ".tk[200]" -type "float3" 0.094326645 0 -0.35203201 ;
	setAttr ".tk[201]" -type "float3" 0.18222506 0 -0.31562343 ;
	setAttr ".tk[202]" -type "float3" 0.25770536 0 -0.25770536 ;
	setAttr ".tk[203]" -type "float3" 0.31562343 0 -0.18222511 ;
	setAttr ".tk[204]" -type "float3" 0.35203201 0 -0.094326749 ;
	setAttr ".tk[205]" -type "float3" 0.36445019 0 -5.6437859e-08 ;
	setAttr ".tk[206]" -type "float3" 0.39137715 0 0.10486899 ;
	setAttr ".tk[207]" -type "float3" 0.35089898 0 0.2025914 ;
	setAttr ".tk[208]" -type "float3" 0.28650761 0 0.28650761 ;
	setAttr ".tk[209]" -type "float3" 0.2025914 0 0.35089898 ;
	setAttr ".tk[210]" -type "float3" 0.10486908 0 0.39137715 ;
	setAttr ".tk[211]" -type "float3" 3.6133571e-08 0 0.40518281 ;
	setAttr ".tk[212]" -type "float3" -0.10486899 0 0.39137715 ;
	setAttr ".tk[213]" -type "float3" -0.2025914 0 0.35089898 ;
	setAttr ".tk[214]" -type "float3" -0.28650761 0 0.28650761 ;
	setAttr ".tk[215]" -type "float3" -0.35089898 0 0.2025914 ;
	setAttr ".tk[216]" -type "float3" -0.39137709 0 0.10486908 ;
	setAttr ".tk[217]" -type "float3" -0.40518281 0 4.1830418e-08 ;
	setAttr ".tk[218]" -type "float3" -0.39137715 0 -0.10486901 ;
	setAttr ".tk[219]" -type "float3" -0.35089898 0 -0.2025914 ;
	setAttr ".tk[220]" -type "float3" -0.28650767 0 -0.28650761 ;
	setAttr ".tk[221]" -type "float3" -0.2025914 0 -0.35089898 ;
	setAttr ".tk[222]" -type "float3" -0.1048691 0 -0.39137709 ;
	setAttr ".tk[223]" -type "float3" -6.6012745e-08 0 -0.40518281 ;
	setAttr ".tk[224]" -type "float3" 0.10486899 0 -0.39137715 ;
	setAttr ".tk[225]" -type "float3" 0.20259127 0 -0.35089898 ;
	setAttr ".tk[226]" -type "float3" 0.28650761 0 -0.28650761 ;
	setAttr ".tk[227]" -type "float3" 0.35089898 0 -0.20259145 ;
	setAttr ".tk[228]" -type "float3" 0.39137709 0 -0.1048691 ;
	setAttr ".tk[229]" -type "float3" 0.40518281 0 -6.2745542e-08 ;
	setAttr ".tk[230]" -type "float3" 0.39083311 0 0.10472337 ;
	setAttr ".tk[231]" -type "float3" 0.3504118 0 0.20230992 ;
	setAttr ".tk[232]" -type "float3" 0.2861096 0 0.2861096 ;
	setAttr ".tk[233]" -type "float3" 0.20230994 0 0.3504118 ;
	setAttr ".tk[234]" -type "float3" 0.10472348 0 0.39083311 ;
	setAttr ".tk[235]" -type "float3" 3.9045336e-08 0 0.40461987 ;
	setAttr ".tk[236]" -type "float3" -0.10472343 0 0.39083311 ;
	setAttr ".tk[237]" -type "float3" -0.20230994 0 0.3504118 ;
	setAttr ".tk[238]" -type "float3" -0.2861096 0 0.2861096 ;
	setAttr ".tk[239]" -type "float3" -0.3504118 0 0.20230994 ;
	setAttr ".tk[240]" -type "float3" -0.39083311 0 0.10472348 ;
	setAttr ".tk[241]" -type "float3" -0.40461987 0 4.1772342e-08 ;
	setAttr ".tk[242]" -type "float3" -0.39083311 0 -0.10472345 ;
	setAttr ".tk[243]" -type "float3" -0.3504118 0 -0.20230992 ;
	setAttr ".tk[244]" -type "float3" -0.2861096 0 -0.2861096 ;
	setAttr ".tk[245]" -type "float3" -0.20230994 0 -0.3504118 ;
	setAttr ".tk[246]" -type "float3" -0.10472348 0 -0.39083311 ;
	setAttr ".tk[247]" -type "float3" -6.5921085e-08 0 -0.40461987 ;
	setAttr ".tk[248]" -type "float3" 0.10472337 0 -0.39083311 ;
	setAttr ".tk[249]" -type "float3" 0.20230992 0 -0.3504118 ;
	setAttr ".tk[250]" -type "float3" 0.2861096 0 -0.2861096 ;
	setAttr ".tk[251]" -type "float3" 0.3504118 0 -0.20231009 ;
	setAttr ".tk[252]" -type "float3" 0.39083311 0 -0.10472348 ;
	setAttr ".tk[253]" -type "float3" 0.40461987 0 -6.2658387e-08 ;
	setAttr ".tk[254]" -type "float3" 0.36386383 0 0.097496949 ;
	setAttr ".tk[255]" -type "float3" 0.32623169 0 0.18834969 ;
	setAttr ".tk[256]" -type "float3" 0.26636657 0 0.26636657 ;
	setAttr ".tk[257]" -type "float3" 0.18834969 0 0.32623169 ;
	setAttr ".tk[258]" -type "float3" 0.097497061 0 0.36386383 ;
	setAttr ".tk[259]" -type "float3" 3.8532164e-08 0 0.37669939 ;
	setAttr ".tk[260]" -type "float3" -0.097496949 0 0.36386383 ;
	setAttr ".tk[261]" -type "float3" -0.18834969 0 0.32623169 ;
	setAttr ".tk[262]" -type "float3" -0.26636657 0 0.2663666 ;
	setAttr ".tk[263]" -type "float3" -0.32623169 0 0.18834969 ;
	setAttr ".tk[264]" -type "float3" -0.36386383 0 0.097497061 ;
	setAttr ".tk[265]" -type "float3" -0.37669939 0 3.8889848e-08 ;
	setAttr ".tk[266]" -type "float3" -0.36386383 0 -0.097496964 ;
	setAttr ".tk[267]" -type "float3" -0.32623172 0 -0.18834969 ;
	setAttr ".tk[268]" -type "float3" -0.2663666 0 -0.26636657 ;
	setAttr ".tk[269]" -type "float3" -0.18834969 0 -0.32623169 ;
	setAttr ".tk[270]" -type "float3" -0.097497061 0 -0.36386383 ;
	setAttr ".tk[271]" -type "float3" -6.1372177e-08 0 -0.37669939 ;
	setAttr ".tk[272]" -type "float3" 0.097496949 0 -0.36386383 ;
	setAttr ".tk[273]" -type "float3" 0.18834969 0 -0.32623169 ;
	setAttr ".tk[274]" -type "float3" 0.26636657 0 -0.2663666 ;
	setAttr ".tk[275]" -type "float3" 0.32623169 0 -0.18834972 ;
	setAttr ".tk[276]" -type "float3" 0.36386383 0 -0.097497061 ;
	setAttr ".tk[277]" -type "float3" 0.37669939 0 -5.8334692e-08 ;
	setAttr ".tk[278]" -type "float3" 0.28399432 0 0.076095909 ;
	setAttr ".tk[279]" -type "float3" 0.25462237 0 0.14700603 ;
	setAttr ".tk[280]" -type "float3" 0.2078979 0 0.2078979 ;
	setAttr ".tk[281]" -type "float3" 0.14700603 0 0.25462237 ;
	setAttr ".tk[282]" -type "float3" 0.076096073 0 0.28399432 ;
	setAttr ".tk[283]" -type "float3" 3.1952851e-08 0 0.29401207 ;
	setAttr ".tk[284]" -type "float3" -0.076095968 0 0.28399432 ;
	setAttr ".tk[285]" -type "float3" -0.14700603 0 0.25462237 ;
	setAttr ".tk[286]" -type "float3" -0.2078979 0 0.20789793 ;
	setAttr ".tk[287]" -type "float3" -0.25462237 0 0.14700603 ;
	setAttr ".tk[288]" -type "float3" -0.28399432 0 0.076096073 ;
	setAttr ".tk[289]" -type "float3" -0.29401207 0 3.0353352e-08 ;
	setAttr ".tk[290]" -type "float3" -0.28399432 0 -0.076095976 ;
	setAttr ".tk[291]" -type "float3" -0.25462246 0 -0.14700603 ;
	setAttr ".tk[292]" -type "float3" -0.20789814 0 -0.2078979 ;
	setAttr ".tk[293]" -type "float3" -0.14700603 0 -0.25462237 ;
	setAttr ".tk[294]" -type "float3" -0.076096073 0 -0.28399432 ;
	setAttr ".tk[295]" -type "float3" -4.7900752e-08 0 -0.29401207 ;
	setAttr ".tk[296]" -type "float3" 0.076095909 0 -0.28399432 ;
	setAttr ".tk[297]" -type "float3" 0.14700603 0 -0.25462237 ;
	setAttr ".tk[298]" -type "float3" 0.2078979 0 -0.20789793 ;
	setAttr ".tk[299]" -type "float3" 0.25462237 0 -0.1470062 ;
	setAttr ".tk[300]" -type "float3" 0.28399432 0 -0.076096073 ;
	setAttr ".tk[301]" -type "float3" 0.29401207 0 -4.5529976e-08 ;
	setAttr ".tk[302]" -type "float3" 0.16482003 0 0.044163346 ;
	setAttr ".tk[303]" -type "float3" 0.1477737 0 0.08531706 ;
	setAttr ".tk[304]" -type "float3" 0.12065656 0 0.12065656 ;
	setAttr ".tk[305]" -type "float3" 0.08531709 0 0.1477737 ;
	setAttr ".tk[306]" -type "float3" 0.044163417 0 0.16482003 ;
	setAttr ".tk[307]" -type "float3" 1.9499572e-08 0 0.17063418 ;
	setAttr ".tk[308]" -type "float3" -0.044163346 0 0.16482003 ;
	setAttr ".tk[309]" -type "float3" -0.08531709 0 0.1477737 ;
	setAttr ".tk[310]" -type "float3" -0.12065656 0 0.12065657 ;
	setAttr ".tk[311]" -type "float3" -0.1477737 0 0.08531709 ;
	setAttr ".tk[312]" -type "float3" -0.16482003 0 0.044163417 ;
	setAttr ".tk[313]" -type "float3" -0.17063418 0 1.7615998e-08 ;
	setAttr ".tk[314]" -type "float3" -0.16482003 0 -0.04416338 ;
	setAttr ".tk[315]" -type "float3" -0.14777371 0 -0.08531706 ;
	setAttr ".tk[316]" -type "float3" -0.12065657 0 -0.12065656 ;
	setAttr ".tk[317]" -type "float3" -0.08531709 0 -0.1477737 ;
	setAttr ".tk[318]" -type "float3" -0.044163417 0 -0.16482003 ;
	setAttr ".tk[319]" -type "float3" -2.7799885e-08 0 -0.17063418 ;
	setAttr ".tk[320]" -type "float3" 0.044163346 0 -0.16482003 ;
	setAttr ".tk[321]" -type "float3" 0.08531706 0 -0.1477737 ;
	setAttr ".tk[322]" -type "float3" 0.12065656 0 -0.12065657 ;
	setAttr ".tk[323]" -type "float3" 0.1477737 0 -0.085317142 ;
	setAttr ".tk[324]" -type "float3" 0.16482003 0 -0.044163417 ;
	setAttr ".tk[325]" -type "float3" 0.17063418 0 -2.6423972e-08 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "4B11C1C5-431A-F44D-A5C7-A888DB259F4D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[5]" "e[7]" "e[12]" "e[15:16]" "e[18]" "e[22]" "e[25]" "e[43]" "e[45]" "e[50]" "e[53:54]" "e[56]" "e[60]" "e[63]" "e[79]" "e[81]" "e[86]" "e[89:90]" "e[92]" "e[96]" "e[99]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "42D004CB-47C2-197E-CE1E-ADA766F81943";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "6799BA21-4ECF-57A6-269D-63A2EC84A2A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[63:86]";
	setAttr ".ix" -type "matrix" 3.4293972412649163 0 0 0 0 3.4293972412649163 0 0 0 0 3.4293972412649163 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F6FFD9A4-4857-8C92-588E-BC9187CA0FDF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1600\n            -height 794\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"motionMakerEditorPanel\" (localizedPanelLabel(\"MotionMaker Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"MotionMaker Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n"
		+ "\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1600\\n    -height 794\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1600\\n    -height 794\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CDCA8A95-44AE-53BA-0770-B484F4E4E217";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 15 -ast 0 -aet 16 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :openPBR_shader1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "openPBR_shader1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySoftEdge2.out" "pDiscShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyDisc1.output" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyExtrudeEdge1.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge3.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeEdge4.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeEdge5.ip";
connectAttr "pDiscShape1.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert1.ip";
connectAttr "pDiscShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak4.ip";
connectAttr "polyMergeVert1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplitRing1.ip";
connectAttr "pDiscShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pDiscShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pDiscShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pDiscShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pDiscShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pDiscShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pDiscShape1.wm" "polySplitRing7.mp";
connectAttr "polyTweak5.out" "polyBevel1.ip";
connectAttr "pDiscShape1.wm" "polyBevel1.mp";
connectAttr "polySplitRing7.out" "polyTweak5.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "pDiscShape1.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polySoftEdge1.ip";
connectAttr "pDiscShape1.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pDiscShape1.wm" "polySoftEdge2.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pDiscShape1.iog" ":initialShadingGroup.dsm" -na;
// End of bowlModel.ma
