/*
TRITON LUX DISCORD:._triton_.#9197
*/
/*CREDITS TO ALL MAPPINGS NA DI SAKIN GALING*/


#define FILTERSCRIPT // for consistency
#include <a_samp>
#include <streamer>
new tmpobjid;
new tmpobjid90;
new object_world = -1, object_int = -1;

	/* CONTENT OF THIS FILE
	//Donator_1-Duke
	//Donator_2-Hush

	*/
public OnPlayerConnect(playerid)
{
	return 1;
}
public OnFilterScriptInit()
{	
	//Donator_1-Duke
	tmpobjid = CreateDynamicObject(3486, -2333.409179, 2013.041015, 10.982784, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 11, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 12, 18646, "matcolours", "grey-70-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(19433, -2308.258300, 1998.765136, 5.125502, 0.000000, 90.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2312.426757, 2204.939208, 6.370079, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-10-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2303.346435, 2204.939208, 6.370079, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-10-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2312.491699, 2152.885986, 6.370079, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-10-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2303.346435, 2152.877197, 6.370079, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-10-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2312.491699, 2155.797851, 8.755178, 80.900047, 180.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2303.368408, 2155.797851, 8.755178, 80.900047, 180.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2312.426757, 2201.918701, 8.667638, 83.000053, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2303.340820, 2201.918701, 8.667638, 83.000053, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(3521, -2315.191650, 2286.657714, 5.390079, 0.000000, 0.000000, 23.300014, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 3, 10765, "airportgnd_sfse", "black64", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 4, 10765, "airportgnd_sfse", "black64", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2288.399902, 2037.897705, 6.478632, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2298.812255, 2037.897705, 6.508625, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2288.399902, 1996.456787, 6.488604, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2317.584228, 2072.698486, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2298.812255, 2072.698486, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2337.324218, 2060.739013, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2345.096923, 2060.378662, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2345.096923, 2047.727539, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2337.334716, 2047.643920, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2337.334716, 2042.163696, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2337.334716, 2037.552368, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2337.334716, 2039.872802, 8.478631, 0.000000, 90.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18762, -2348.170410, 2037.942749, 6.478631, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2301.424804, 2155.298828, 3.975928, 270.000000, 180.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2301.424804, 2157.428955, 3.975928, 270.000000, 180.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2304.515869, 2157.428955, 3.975927, -89.999992, 0.000014, 90.000015, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2304.514892, 2155.117431, 3.975928, 270.000000, 180.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2308.275146, 2157.428955, 3.975928, -89.999992, 0.000014, 90.000015, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2308.275146, 2155.117431, 3.975928, -89.999992, 0.000014, 90.000015, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2316.826416, 2157.428955, 3.975928, -89.999992, 0.000014, 89.999969, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2312.034667, 2157.428955, 3.975928, -89.999992, 0.000007, 89.999984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2312.034667, 2155.117431, 3.975928, -89.999992, 0.000007, 89.999984, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2316.826416, 2155.117431, 3.975928, -89.999992, 0.000014, 89.999969, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2316.826416, 2202.739501, 3.975928, -89.999992, 0.000029, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2316.826416, 2200.427978, 3.975928, -89.999992, 0.000029, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2313.215576, 2202.739501, 3.975928, -89.999992, 0.000048, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2313.215576, 2200.427978, 3.975928, -89.999992, 0.000048, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2310.033935, 2202.739501, 3.975928, -89.999992, 0.000068, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2310.033935, 2200.427978, 3.975928, -89.999992, 0.000068, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2306.454589, 2202.739501, 3.975928, -89.999992, 0.000087, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2306.454589, 2200.427978, 3.975928, -89.999992, 0.000087, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2302.714599, 2202.739501, 3.975928, -89.999992, 0.000105, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(19834, -2302.714599, 2200.427978, 3.975928, -89.999992, 0.000105, 89.999961, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2288.997802, 2004.305297, 6.218636, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, -2290.926757, 2004.305297, 9.289033, 115.700004, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(19482, -2315.467285, 2286.714355, 6.060081, 0.000000, 0.000000, 113.100021, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(tmpobjid, 0, "{FFFFFF} DUKE BROS.", 140, "Ariel", 65, 1, 0x00000000, 0x00000000, 1);
	tmpobjid = CreateDynamicObject(6300, -2318.264160, 2034.581665, -4.066052, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(6450, -2318.079101, 2271.730957, -4.088759, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(6450, -2318.079101, 2139.361572, -4.088759, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3749, -2327.421630, 2272.877685, 9.441877, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19076, -2318.571777, 2029.657958, 3.982785, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19608, -2306.250244, 1999.296630, 3.988632, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19609, -2304.218994, 1998.854125, 3.988632, 0.000000, 0.000000, -149.800003, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2232, -2309.014404, 1998.860961, 4.598633, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2232, -2307.524414, 1998.860961, 4.608633, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1957, -2308.156982, 1998.603515, 5.285510, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19612, -2309.218505, 1999.025146, 5.215518, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19612, -2307.107421, 1999.025146, 5.215518, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3934, -2296.314453, 2030.051757, 3.988632, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19124, -2300.359619, 2033.601806, 4.478635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19124, -2300.359619, 2026.250366, 4.478635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19124, -2292.318603, 2026.250366, 4.478635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19124, -2292.318603, 2033.589843, 4.478635, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.423095, 2139.682617, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.423095, 2114.016845, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.423095, 2088.357177, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2073.952880, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2099.722900, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2151.343750, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2125.490966, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2177.195068, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2202.899169, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2228.819824, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2254.525634, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2337.684326, 2276.917968, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2298.412597, 2051.267578, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2298.412597, 2059.280029, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2287.983886, 2008.847045, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2300.844970, 1996.016235, 4.568633, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2319.977539, 1996.016235, 4.568633, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.392822, 2218.278564, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.392822, 2243.973388, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2317.392822, 2269.564453, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2298.592041, 2191.755859, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2298.592041, 2166.139892, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(982, -2287.983886, 2024.927612, 4.568633, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(10244, -2339.742675, 2044.415771, 0.464570, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2295.262939, 2038.357177, 4.608633, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2292.061523, 2038.357177, 4.608633, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2302.513916, 2072.858642, 4.608633, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2308.992675, 2072.858642, 4.608633, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2313.796630, 2072.858642, 4.608633, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2317.447998, 2075.529541, 4.558632, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2345.468261, 2057.649902, 4.558632, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2345.468261, 2051.129882, 4.558632, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2341.236816, 2047.480102, 4.558632, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2342.206054, 2060.839355, 4.558632, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2340.595214, 2060.839355, 4.558632, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2337.445068, 2044.910644, 4.558632, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2345.059082, 2038.290283, 4.558632, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2348.539550, 2031.708618, 4.558632, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(983, -2348.539550, 2034.919067, 4.558632, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(17068, -2349.680908, 2050.014404, -0.127321, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19831, -2298.487792, 2015.920043, 3.988634, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1702, -2299.931884, 2012.201782, 3.988634, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1702, -2296.619873, 2014.321777, 3.988634, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(16151, -2290.571044, 2004.173950, 4.352785, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(1702, -2297.909912, 2010.861816, 3.988634, 0.000000, 0.000000, 540.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(7929, -2309.309570, 2055.246826, 10.644564, 0.000000, 0.000000, 360.000000, -1, -1, -1, 300.00, 300.00); 


	//	//Donator_2-Hush
	tmpobjid = CreateDynamicObject(18981, 3035.335449, -790.453613, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18981, 3060.288818, -790.453613, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18981, 3035.335449, -814.013793, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18981, 3035.335449, -765.974060, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18981, 3060.265625, -765.974060, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18981, 3060.295654, -814.013793, 9.538508, 0.000000, 90.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-60-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(3485, 3055.308349, -811.371093, 17.028757, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 12, 18646, "matcolours", "grey-50-percent", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 13, 18646, "matcolours", "grey-50-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, 3072.234130, -791.332336, 12.358510, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-40-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, 3072.234130, -786.862365, 12.358510, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-40-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, 3070.217285, -786.862365, 15.248004, 109.299995, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(18766, 3070.217285, -791.212585, 15.248004, 109.299995, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	tmpobjid = CreateDynamicObject(970, 3069.642822, -781.897033, 10.508505, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 8680, "chnatwnfnce", "ctmallfence", 0x00000000);
	tmpobjid = CreateDynamicObject(970, 3069.642822, -796.277770, 10.508505, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 8680, "chnatwnfnce", "ctmallfence", 0x00000000);
	tmpobjid = CreateDynamicObject(3749, 2909.762939, -790.865417, 15.564949, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 1, 10765, "airportgnd_sfse", "black64", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 2, 10765, "airportgnd_sfse", "black64", 0x00000000);
	SetDynamicObjectMaterial(tmpobjid, 3, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 3022.214843, -829.940368, -4.709159, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18980, 3022.214843, -827.141113, -4.709159, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(18764, 3033.895507, -827.960205, 1.310842, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(tmpobjid, 0, 16640, "a51", "ws_metalpanel1", 0x00000000);
	tmpobjid = CreateDynamicObject(16037, 2964.656250, -791.322448, 13.915699, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(18850, 3060.709472, -766.442993, -2.018148, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(19608, 3028.152832, -756.816589, 10.026026, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2571, 3026.031982, -765.483398, 10.038508, 0.000000, 0.000000, 90.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2571, 3028.398925, -768.891967, 9.988510, 0.000000, 0.000000, 125.599983, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(2571, 3031.671875, -768.793823, 10.038508, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(10244, 3029.439208, -827.801940, 6.508508, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(3361, 3018.929687, -828.545349, 1.935960, 0.000000, 0.000000, -179.099960, -1, -1, -1, 300.00, 300.00); 
	tmpobjid = CreateDynamicObject(17068, 3014.956787, -838.362365, 0.174340, 0.000000, 0.000000, 180.000000, -1, -1, -1, 300.00, 300.00); 

	return 1;
}