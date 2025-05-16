require import AllCore IntDiv CoreMap List Distr StdBigop.

from Jasmin require import JModel_x86.

import SLH64 Bigbool.

from Jasmin require import Jcheck JSafety.

require import
Array1 Array4 Array5 Array6 Array8 Array16 Array24 Array25 Array32 Array128
Array160 Array192 Array256 Array400 Array512 Array800 WArray16 WArray32
WArray192 WArray256 WArray800 BArray1 BArray4 BArray16 BArray32 BArray128
BArray160 BArray192 BArray256 BArray512 BArray800 SBArray4_1 SBArray128_128.

abbrev  pfm_idx_s =
(BArray16.of_list8
[(W8.of_int 0); (W8.of_int 1); (W8.of_int 4); (W8.of_int 5); (W8.of_int 8);
(W8.of_int 9); (W8.of_int 12); (W8.of_int 13); (W8.of_int 2); (W8.of_int 3);
(W8.of_int 6); (W8.of_int 7); (W8.of_int 10); (W8.of_int 11); (W8.of_int 14);
(W8.of_int 15)]).

abbrev  pfm_shift_s =
(BArray16.of_list32
[(W32.of_int 3); (W32.of_int 2); (W32.of_int 1); (W32.of_int 0)]).

abbrev [-printing] pd_shift_s = (W32.of_int 8390656).

abbrev [-printing] pd_mask_s = (W32.of_int 15728655).

abbrev  pd_jshufbidx =
(BArray32.of_list8
[(W8.of_int 0); (W8.of_int 0); (W8.of_int 0); (W8.of_int 0); (W8.of_int 1);
(W8.of_int 1); (W8.of_int 1); (W8.of_int 1); (W8.of_int 2); (W8.of_int 2);
(W8.of_int 2); (W8.of_int 2); (W8.of_int 3); (W8.of_int 3); (W8.of_int 3);
(W8.of_int 3); (W8.of_int 4); (W8.of_int 4); (W8.of_int 4); (W8.of_int 4);
(W8.of_int 5); (W8.of_int 5); (W8.of_int 5); (W8.of_int 5); (W8.of_int 6);
(W8.of_int 6); (W8.of_int 6); (W8.of_int 6); (W8.of_int 7); (W8.of_int 7);
(W8.of_int 7); (W8.of_int 7)]).

abbrev  pc_permidx_s =
(BArray32.of_list32
[(W32.of_int 0); (W32.of_int 4); (W32.of_int 1); (W32.of_int 5);
(W32.of_int 2); (W32.of_int 6); (W32.of_int 3); (W32.of_int 7)]).

abbrev [-printing] pc_shift2_s = (W16.of_int 4097).

abbrev [-printing] pc_mask_s = (W16.of_int 15).

abbrev [-printing] pc_shift1_s = (W16.of_int 512).

abbrev [-printing] rOL8 =
(W256.of_int
13620818001941277694121380808605999856886653716761013959207994299728839901191
).

abbrev [-printing] rOL56 =
(W256.of_int
10910488462195273559651782724632284871561478246514020268633800075540923875841
).

abbrev  kECCAK_RHOTATES_RIGHT =
(BArray192.of_list256
[(W256.of_int 144373339913893657577751063007562604548177214458152943091773);
(W256.of_int 232252764209307188274174373867837442080505530800860351692863);
(W256.of_int 156927543384667019098616994515559168111335794127330162507795);
(W256.of_int 351517697181654122777866749001917765472957616589092975280182);
(W256.of_int 276192476357013953622045746931053922384479139705868246843454);
(W256.of_int 313855086769334038206421612937983674734430261968315659321364)]).

abbrev  kECCAK_RHOTATES_LEFT =
(BArray192.of_list256
[(W256.of_int 257361171150853911329517531560668107745210100483895842570243);
(W256.of_int 169481746855440380633094220700393270212881784141188433969153);
(W256.of_int 244806967680080549808651600052671544182051520814718623154221);
(W256.of_int 50216813883093446129401845566312946820429698352955810381834);
(W256.of_int 125542034707733615285222847637176789908908175236180538818562);
(W256.of_int 87879424295413530700846981630247037558957052973733126340652)]).

abbrev  kECCAK1600_RC =
(BArray192.of_list64
[(W64.of_int 1); (W64.of_int 32898); (W64.of_int (-9223372036854742902));
(W64.of_int (-9223372034707259392)); (W64.of_int 32907);
(W64.of_int 2147483649); (W64.of_int (-9223372034707259263));
(W64.of_int (-9223372036854743031)); (W64.of_int 138); (W64.of_int 136);
(W64.of_int 2147516425); (W64.of_int 2147483658); (W64.of_int 2147516555);
(W64.of_int (-9223372036854775669)); (W64.of_int (-9223372036854742903));
(W64.of_int (-9223372036854743037)); (W64.of_int (-9223372036854743038));
(W64.of_int (-9223372036854775680)); (W64.of_int 32778);
(W64.of_int (-9223372034707292150)); (W64.of_int (-9223372034707259263));
(W64.of_int (-9223372036854742912)); (W64.of_int 2147483649);
(W64.of_int (-9223372034707259384))]).

abbrev  jdmontx16 =
(BArray32.of_list16
[(W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353);
(W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353);
(W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353);
(W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353); (W16.of_int 1353)]).

abbrev  mqinvx16 =
(BArray32.of_list16
[(W16.of_int 15099); (W16.of_int 15099); (W16.of_int 15099);
(W16.of_int 15099); (W16.of_int 15099); (W16.of_int 15099);
(W16.of_int 15099); (W16.of_int 15099); (W16.of_int 15099);
(W16.of_int 15099); (W16.of_int 15099); (W16.of_int 15099);
(W16.of_int 15099); (W16.of_int 15099); (W16.of_int 15099);
(W16.of_int 15099)]).

abbrev  hhqx16 =
(BArray32.of_list16
[(W16.of_int 832); (W16.of_int 832); (W16.of_int 832); (W16.of_int 832);
(W16.of_int 832); (W16.of_int 832); (W16.of_int 832); (W16.of_int 832);
(W16.of_int 832); (W16.of_int 832); (W16.of_int 832); (W16.of_int 832);
(W16.of_int 832); (W16.of_int 832); (W16.of_int 832); (W16.of_int 832)]).

abbrev  hqx16_m1 =
(BArray32.of_list16
[(W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664);
(W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664);
(W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664);
(W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664); (W16.of_int 1664)]).

abbrev  hqx16_p1 =
(BArray32.of_list16
[(W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665);
(W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665);
(W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665);
(W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665); (W16.of_int 1665)]).

abbrev  maskx16 =
(BArray32.of_list16
[(W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095);
(W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095);
(W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095);
(W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095); (W16.of_int 4095)]).

abbrev  jflox16 =
(BArray32.of_list16
[(W16.of_int (-10079)); (W16.of_int (-10079)); (W16.of_int (-10079));
(W16.of_int (-10079)); (W16.of_int (-10079)); (W16.of_int (-10079));
(W16.of_int (-10079)); (W16.of_int (-10079)); (W16.of_int (-10079));
(W16.of_int (-10079)); (W16.of_int (-10079)); (W16.of_int (-10079));
(W16.of_int (-10079)); (W16.of_int (-10079)); (W16.of_int (-10079));
(W16.of_int (-10079))]).

abbrev  jfhix16 =
(BArray32.of_list16
[(W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441);
(W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441);
(W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441);
(W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441); (W16.of_int 1441)]).

abbrev  jvx16 =
(BArray32.of_list16
[(W16.of_int 20159); (W16.of_int 20159); (W16.of_int 20159);
(W16.of_int 20159); (W16.of_int 20159); (W16.of_int 20159);
(W16.of_int 20159); (W16.of_int 20159); (W16.of_int 20159);
(W16.of_int 20159); (W16.of_int 20159); (W16.of_int 20159);
(W16.of_int 20159); (W16.of_int 20159); (W16.of_int 20159);
(W16.of_int 20159)]).

abbrev  jqinvx16 =
(BArray32.of_list16
[(W16.of_int (-3327)); (W16.of_int (-3327)); (W16.of_int (-3327));
(W16.of_int (-3327)); (W16.of_int (-3327)); (W16.of_int (-3327));
(W16.of_int (-3327)); (W16.of_int (-3327)); (W16.of_int (-3327));
(W16.of_int (-3327)); (W16.of_int (-3327)); (W16.of_int (-3327));
(W16.of_int (-3327)); (W16.of_int (-3327)); (W16.of_int (-3327));
(W16.of_int (-3327))]).

abbrev  jqx16 =
(BArray32.of_list16
[(W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329);
(W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329);
(W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329);
(W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329); (W16.of_int 3329)]).

abbrev  jzetas_inv_exp =
(BArray800.of_list16
[(W16.of_int (-23131)); (W16.of_int (-7756)); (W16.of_int 20258);
(W16.of_int 23860); (W16.of_int 17443); (W16.of_int (-23210));
(W16.of_int 20199); (W16.of_int 21498); (W16.of_int (-14469));
(W16.of_int 11045); (W16.of_int 14903); (W16.of_int 6280);
(W16.of_int 32385); (W16.of_int (-15355)); (W16.of_int (-2145));
(W16.of_int (-20296)); (W16.of_int 1701); (W16.of_int 1460);
(W16.of_int 2338); (W16.of_int 308); (W16.of_int 2851); (W16.of_int 854);
(W16.of_int 2535); (W16.of_int 1530); (W16.of_int 1659); (W16.of_int 3109);
(W16.of_int 1335); (W16.of_int 136); (W16.of_int 2945); (W16.of_int 1285);
(W16.of_int 2719); (W16.of_int 2232); (W16.of_int 17423);
(W16.of_int (-23997)); (W16.of_int (-28643)); (W16.of_int (-31636));
(W16.of_int (-10906)); (W16.of_int 22502); (W16.of_int 7934);
(W16.of_int (-10335)); (W16.of_int (-16989)); (W16.of_int (-24214));
(W16.of_int (-10945)); (W16.of_int 20927); (W16.of_int (-24391));
(W16.of_int 7383); (W16.of_int (-25434)); (W16.of_int 31184);
(W16.of_int 1807); (W16.of_int 2371); (W16.of_int 2333); (W16.of_int 108);
(W16.of_int 870); (W16.of_int 1510); (W16.of_int 1278); (W16.of_int 1185);
(W16.of_int 1187); (W16.of_int 874); (W16.of_int 2111); (W16.of_int 1215);
(W16.of_int 1465); (W16.of_int 2007); (W16.of_int 2726); (W16.of_int 2512);
(W16.of_int 17915); (W16.of_int 24156); (W16.of_int (-4311));
(W16.of_int (-16831)); (W16.of_int 12757); (W16.of_int 29156);
(W16.of_int (-14016)); (W16.of_int (-13426)); (W16.of_int (-18249));
(W16.of_int 30199); (W16.of_int (-9075)); (W16.of_int 28310);
(W16.of_int 8899); (W16.of_int 15887); (W16.of_int 28250);
(W16.of_int (-19883)); (W16.of_int 1275); (W16.of_int 2652);
(W16.of_int 1065); (W16.of_int 2881); (W16.of_int 725); (W16.of_int 1508);
(W16.of_int 2368); (W16.of_int 398); (W16.of_int 951); (W16.of_int 247);
(W16.of_int 1421); (W16.of_int 3222); (W16.of_int 2499); (W16.of_int 271);
(W16.of_int 90); (W16.of_int 853); (W16.of_int 16163); (W16.of_int 16163);
(W16.of_int (-26675)); (W16.of_int (-26675)); (W16.of_int (-8858));
(W16.of_int (-8858)); (W16.of_int (-18426)); (W16.of_int (-18426));
(W16.of_int (-8799)); (W16.of_int (-8799)); (W16.of_int 10533);
(W16.of_int 10533); (W16.of_int (-24312)); (W16.of_int (-24312));
(W16.of_int 28073); (W16.of_int 28073); (W16.of_int 1571); (W16.of_int 1571);
(W16.of_int 205); (W16.of_int 205); (W16.of_int 2918); (W16.of_int 2918);
(W16.of_int 1542); (W16.of_int 1542); (W16.of_int 2721); (W16.of_int 2721);
(W16.of_int 2597); (W16.of_int 2597); (W16.of_int 2312); (W16.of_int 2312);
(W16.of_int 681); (W16.of_int 681); (W16.of_int (-31163));
(W16.of_int (-31163)); (W16.of_int (-31163)); (W16.of_int (-31163));
(W16.of_int 11202); (W16.of_int 11202); (W16.of_int 11202);
(W16.of_int 11202); (W16.of_int (-1358)); (W16.of_int (-1358));
(W16.of_int (-1358)); (W16.of_int (-1358)); (W16.of_int (-10689));
(W16.of_int (-10689)); (W16.of_int (-10689)); (W16.of_int (-10689));
(W16.of_int 1861); (W16.of_int 1861); (W16.of_int 1861); (W16.of_int 1861);
(W16.of_int 1474); (W16.of_int 1474); (W16.of_int 1474); (W16.of_int 1474);
(W16.of_int 1202); (W16.of_int 1202); (W16.of_int 1202); (W16.of_int 1202);
(W16.of_int 2367); (W16.of_int 2367); (W16.of_int 2367); (W16.of_int 2367);
(W16.of_int 16695); (W16.of_int 16695); (W16.of_int 16695);
(W16.of_int 16695); (W16.of_int 16695); (W16.of_int 16695);
(W16.of_int 16695); (W16.of_int 16695); (W16.of_int (-28190));
(W16.of_int (-28190)); (W16.of_int (-28190)); (W16.of_int (-28190));
(W16.of_int (-28190)); (W16.of_int (-28190)); (W16.of_int (-28190));
(W16.of_int (-28190)); (W16.of_int 3127); (W16.of_int 3127);
(W16.of_int 3127); (W16.of_int 3127); (W16.of_int 3127); (W16.of_int 3127);
(W16.of_int 3127); (W16.of_int 3127); (W16.of_int 3042); (W16.of_int 3042);
(W16.of_int 3042); (W16.of_int 3042); (W16.of_int 3042); (W16.of_int 3042);
(W16.of_int 3042); (W16.of_int 3042); (W16.of_int (-787));
(W16.of_int (-787)); (W16.of_int 1517); (W16.of_int 1517);
(W16.of_int 12619); (W16.of_int (-19528)); (W16.of_int (-18524));
(W16.of_int (-20099)); (W16.of_int (-12638)); (W16.of_int 18742);
(W16.of_int (-30317)); (W16.of_int 32503); (W16.of_int (-5492));
(W16.of_int (-23092)); (W16.of_int 4587); (W16.of_int (-13130));
(W16.of_int 21656); (W16.of_int 14234); (W16.of_int (-13386));
(W16.of_int (-11181)); (W16.of_int 75); (W16.of_int 3000); (W16.of_int 2980);
(W16.of_int 2685); (W16.of_int 2210); (W16.of_int 1846); (W16.of_int 147);
(W16.of_int 2551); (W16.of_int 1676); (W16.of_int 460); (W16.of_int 235);
(W16.of_int 2742); (W16.of_int 3224); (W16.of_int 2458); (W16.of_int 2486);
(W16.of_int 2899); (W16.of_int 5276); (W16.of_int 14431);
(W16.of_int (-17560)); (W16.of_int 18486); (W16.of_int 28762);
(W16.of_int (-29175)); (W16.of_int (-10630)); (W16.of_int (-32010));
(W16.of_int (-6181)); (W16.of_int 14883); (W16.of_int (-944));
(W16.of_int 27739); (W16.of_int (-20493)); (W16.of_int 32227);
(W16.of_int 11478); (W16.of_int 335); (W16.of_int 156); (W16.of_int 2911);
(W16.of_int 872); (W16.of_int 1590); (W16.of_int 602); (W16.of_int 777);
(W16.of_int 2170); (W16.of_int 246); (W16.of_int 1755); (W16.of_int 291);
(W16.of_int 3152); (W16.of_int 2907); (W16.of_int 1779); (W16.of_int 1251);
(W16.of_int 2774); (W16.of_int 1103); (W16.of_int (-27836));
(W16.of_int 25987); (W16.of_int 650); (W16.of_int (-9134));
(W16.of_int 12442); (W16.of_int (-16064)); (W16.of_int (-26616));
(W16.of_int 12797); (W16.of_int (-25080)); (W16.of_int (-20710));
(W16.of_int (-20178)); (W16.of_int 23565); (W16.of_int (-30966));
(W16.of_int (-1496)); (W16.of_int 6517); (W16.of_int 5690);
(W16.of_int 1860); (W16.of_int 3203); (W16.of_int 1162); (W16.of_int 1618);
(W16.of_int 666); (W16.of_int 320); (W16.of_int 8); (W16.of_int 2813);
(W16.of_int 1544); (W16.of_int 282); (W16.of_int 1838); (W16.of_int 1293);
(W16.of_int 2314); (W16.of_int 552); (W16.of_int 2677); (W16.of_int 2106);
(W16.of_int 26242); (W16.of_int 26242); (W16.of_int (-21438));
(W16.of_int (-21438)); (W16.of_int 1103); (W16.of_int 1103);
(W16.of_int (-5571)); (W16.of_int (-5571)); (W16.of_int 29058);
(W16.of_int 29058); (W16.of_int 26361); (W16.of_int 26361);
(W16.of_int (-17363)); (W16.of_int (-17363)); (W16.of_int 5828);
(W16.of_int 5828); (W16.of_int 130); (W16.of_int 130); (W16.of_int 1602);
(W16.of_int 1602); (W16.of_int 1871); (W16.of_int 1871); (W16.of_int 829);
(W16.of_int 829); (W16.of_int 2946); (W16.of_int 2946); (W16.of_int 3065);
(W16.of_int 3065); (W16.of_int 1325); (W16.of_int 1325); (W16.of_int 2756);
(W16.of_int 2756); (W16.of_int 15691); (W16.of_int 15691);
(W16.of_int 15691); (W16.of_int 15691); (W16.of_int 3800); (W16.of_int 3800);
(W16.of_int 3800); (W16.of_int 3800); (W16.of_int (-27757));
(W16.of_int (-27757)); (W16.of_int (-27757)); (W16.of_int (-27757));
(W16.of_int 20907); (W16.of_int 20907); (W16.of_int 20907);
(W16.of_int 20907); (W16.of_int 3147); (W16.of_int 3147); (W16.of_int 3147);
(W16.of_int 3147); (W16.of_int 1752); (W16.of_int 1752); (W16.of_int 1752);
(W16.of_int 1752); (W16.of_int 2707); (W16.of_int 2707); (W16.of_int 2707);
(W16.of_int 2707); (W16.of_int 171); (W16.of_int 171); (W16.of_int 171);
(W16.of_int 171); (W16.of_int 12403); (W16.of_int 12403); (W16.of_int 12403);
(W16.of_int 12403); (W16.of_int 12403); (W16.of_int 12403);
(W16.of_int 12403); (W16.of_int 12403); (W16.of_int (-13524));
(W16.of_int (-13524)); (W16.of_int (-13524)); (W16.of_int (-13524));
(W16.of_int (-13524)); (W16.of_int (-13524)); (W16.of_int (-13524));
(W16.of_int (-13524)); (W16.of_int 1907); (W16.of_int 1907);
(W16.of_int 1907); (W16.of_int 1907); (W16.of_int 1907); (W16.of_int 1907);
(W16.of_int 1907); (W16.of_int 1907); (W16.of_int 1836); (W16.of_int 1836);
(W16.of_int 1836); (W16.of_int 1836); (W16.of_int 1836); (W16.of_int 1836);
(W16.of_int 1836); (W16.of_int 1836); (W16.of_int (-14745));
(W16.of_int (-14745)); (W16.of_int 359); (W16.of_int 359);
(W16.of_int (-5236)); (W16.of_int (-5236)); (W16.of_int 1932);
(W16.of_int 1932); (W16.of_int 0); (W16.of_int 0); (W16.of_int 0);
(W16.of_int 0)]).

abbrev  jzetas_exp =
(BArray800.of_list16
[(W16.of_int 31499); (W16.of_int 31499); (W16.of_int 2571);
(W16.of_int 2571); (W16.of_int 14746); (W16.of_int 14746); (W16.of_int 2970);
(W16.of_int 2970); (W16.of_int 13525); (W16.of_int 13525);
(W16.of_int 13525); (W16.of_int 13525); (W16.of_int 13525);
(W16.of_int 13525); (W16.of_int 13525); (W16.of_int 13525);
(W16.of_int (-12402)); (W16.of_int (-12402)); (W16.of_int (-12402));
(W16.of_int (-12402)); (W16.of_int (-12402)); (W16.of_int (-12402));
(W16.of_int (-12402)); (W16.of_int (-12402)); (W16.of_int 1493);
(W16.of_int 1493); (W16.of_int 1493); (W16.of_int 1493); (W16.of_int 1493);
(W16.of_int 1493); (W16.of_int 1493); (W16.of_int 1493); (W16.of_int 1422);
(W16.of_int 1422); (W16.of_int 1422); (W16.of_int 1422); (W16.of_int 1422);
(W16.of_int 1422); (W16.of_int 1422); (W16.of_int 1422);
(W16.of_int (-20906)); (W16.of_int (-20906)); (W16.of_int (-20906));
(W16.of_int (-20906)); (W16.of_int 27758); (W16.of_int 27758);
(W16.of_int 27758); (W16.of_int 27758); (W16.of_int (-3799));
(W16.of_int (-3799)); (W16.of_int (-3799)); (W16.of_int (-3799));
(W16.of_int (-15690)); (W16.of_int (-15690)); (W16.of_int (-15690));
(W16.of_int (-15690)); (W16.of_int 3158); (W16.of_int 3158);
(W16.of_int 3158); (W16.of_int 3158); (W16.of_int 622); (W16.of_int 622);
(W16.of_int 622); (W16.of_int 622); (W16.of_int 1577); (W16.of_int 1577);
(W16.of_int 1577); (W16.of_int 1577); (W16.of_int 182); (W16.of_int 182);
(W16.of_int 182); (W16.of_int 182); (W16.of_int (-5827));
(W16.of_int (-5827)); (W16.of_int 17364); (W16.of_int 17364);
(W16.of_int (-26360)); (W16.of_int (-26360)); (W16.of_int (-29057));
(W16.of_int (-29057)); (W16.of_int 5572); (W16.of_int 5572);
(W16.of_int (-1102)); (W16.of_int (-1102)); (W16.of_int 21439);
(W16.of_int 21439); (W16.of_int (-26241)); (W16.of_int (-26241));
(W16.of_int 573); (W16.of_int 573); (W16.of_int 2004); (W16.of_int 2004);
(W16.of_int 264); (W16.of_int 264); (W16.of_int 383); (W16.of_int 383);
(W16.of_int 2500); (W16.of_int 2500); (W16.of_int 1458); (W16.of_int 1458);
(W16.of_int 1727); (W16.of_int 1727); (W16.of_int 3199); (W16.of_int 3199);
(W16.of_int (-5689)); (W16.of_int (-6516)); (W16.of_int 1497);
(W16.of_int 30967); (W16.of_int (-23564)); (W16.of_int 20179);
(W16.of_int 20711); (W16.of_int 25081); (W16.of_int (-12796));
(W16.of_int 26617); (W16.of_int 16065); (W16.of_int (-12441));
(W16.of_int 9135); (W16.of_int (-649)); (W16.of_int (-25986));
(W16.of_int 27837); (W16.of_int 1223); (W16.of_int 652); (W16.of_int 2777);
(W16.of_int 1015); (W16.of_int 2036); (W16.of_int 1491); (W16.of_int 3047);
(W16.of_int 1785); (W16.of_int 516); (W16.of_int 3321); (W16.of_int 3009);
(W16.of_int 2663); (W16.of_int 1711); (W16.of_int 2167); (W16.of_int 126);
(W16.of_int 1469); (W16.of_int (-334)); (W16.of_int (-11477));
(W16.of_int (-32226)); (W16.of_int 20494); (W16.of_int (-27738));
(W16.of_int 945); (W16.of_int (-14882)); (W16.of_int 6182);
(W16.of_int 32011); (W16.of_int 10631); (W16.of_int 29176);
(W16.of_int (-28761)); (W16.of_int (-18485)); (W16.of_int 17561);
(W16.of_int (-14430)); (W16.of_int (-5275)); (W16.of_int 2226);
(W16.of_int 555); (W16.of_int 2078); (W16.of_int 1550); (W16.of_int 422);
(W16.of_int 177); (W16.of_int 3038); (W16.of_int 1574); (W16.of_int 3083);
(W16.of_int 1159); (W16.of_int 2552); (W16.of_int 2727); (W16.of_int 1739);
(W16.of_int 2457); (W16.of_int 418); (W16.of_int 3173); (W16.of_int 11182);
(W16.of_int 13387); (W16.of_int (-14233)); (W16.of_int (-21655));
(W16.of_int 13131); (W16.of_int (-4586)); (W16.of_int 23093);
(W16.of_int 5493); (W16.of_int (-32502)); (W16.of_int 30318);
(W16.of_int (-18741)); (W16.of_int 12639); (W16.of_int 20100);
(W16.of_int 18525); (W16.of_int 19529); (W16.of_int (-12618));
(W16.of_int 430); (W16.of_int 843); (W16.of_int 871); (W16.of_int 105);
(W16.of_int 587); (W16.of_int 3094); (W16.of_int 2869); (W16.of_int 1653);
(W16.of_int 778); (W16.of_int 3182); (W16.of_int 1483); (W16.of_int 1119);
(W16.of_int 644); (W16.of_int 349); (W16.of_int 329); (W16.of_int 3254);
(W16.of_int 788); (W16.of_int 788); (W16.of_int 1812); (W16.of_int 1812);
(W16.of_int 28191); (W16.of_int 28191); (W16.of_int 28191);
(W16.of_int 28191); (W16.of_int 28191); (W16.of_int 28191);
(W16.of_int 28191); (W16.of_int 28191); (W16.of_int (-16694));
(W16.of_int (-16694)); (W16.of_int (-16694)); (W16.of_int (-16694));
(W16.of_int (-16694)); (W16.of_int (-16694)); (W16.of_int (-16694));
(W16.of_int (-16694)); (W16.of_int 287); (W16.of_int 287); (W16.of_int 287);
(W16.of_int 287); (W16.of_int 287); (W16.of_int 287); (W16.of_int 287);
(W16.of_int 287); (W16.of_int 202); (W16.of_int 202); (W16.of_int 202);
(W16.of_int 202); (W16.of_int 202); (W16.of_int 202); (W16.of_int 202);
(W16.of_int 202); (W16.of_int 10690); (W16.of_int 10690); (W16.of_int 10690);
(W16.of_int 10690); (W16.of_int 1359); (W16.of_int 1359); (W16.of_int 1359);
(W16.of_int 1359); (W16.of_int (-11201)); (W16.of_int (-11201));
(W16.of_int (-11201)); (W16.of_int (-11201)); (W16.of_int 31164);
(W16.of_int 31164); (W16.of_int 31164); (W16.of_int 31164); (W16.of_int 962);
(W16.of_int 962); (W16.of_int 962); (W16.of_int 962); (W16.of_int 2127);
(W16.of_int 2127); (W16.of_int 2127); (W16.of_int 2127); (W16.of_int 1855);
(W16.of_int 1855); (W16.of_int 1855); (W16.of_int 1855); (W16.of_int 1468);
(W16.of_int 1468); (W16.of_int 1468); (W16.of_int 1468);
(W16.of_int (-28072)); (W16.of_int (-28072)); (W16.of_int 24313);
(W16.of_int 24313); (W16.of_int (-10532)); (W16.of_int (-10532));
(W16.of_int 8800); (W16.of_int 8800); (W16.of_int 18427); (W16.of_int 18427);
(W16.of_int 8859); (W16.of_int 8859); (W16.of_int 26676); (W16.of_int 26676);
(W16.of_int (-16162)); (W16.of_int (-16162)); (W16.of_int 2648);
(W16.of_int 2648); (W16.of_int 1017); (W16.of_int 1017); (W16.of_int 732);
(W16.of_int 732); (W16.of_int 608); (W16.of_int 608); (W16.of_int 1787);
(W16.of_int 1787); (W16.of_int 411); (W16.of_int 411); (W16.of_int 3124);
(W16.of_int 3124); (W16.of_int 1758); (W16.of_int 1758); (W16.of_int 19884);
(W16.of_int (-28249)); (W16.of_int (-15886)); (W16.of_int (-8898));
(W16.of_int (-28309)); (W16.of_int 9076); (W16.of_int (-30198));
(W16.of_int 18250); (W16.of_int 13427); (W16.of_int 14017);
(W16.of_int (-29155)); (W16.of_int (-12756)); (W16.of_int 16832);
(W16.of_int 4312); (W16.of_int (-24155)); (W16.of_int (-17914));
(W16.of_int 2476); (W16.of_int 3239); (W16.of_int 3058); (W16.of_int 830);
(W16.of_int 107); (W16.of_int 1908); (W16.of_int 3082); (W16.of_int 2378);
(W16.of_int 2931); (W16.of_int 961); (W16.of_int 1821); (W16.of_int 2604);
(W16.of_int 448); (W16.of_int 2264); (W16.of_int 677); (W16.of_int 2054);
(W16.of_int (-31183)); (W16.of_int 25435); (W16.of_int (-7382));
(W16.of_int 24392); (W16.of_int (-20926)); (W16.of_int 10946);
(W16.of_int 24215); (W16.of_int 16990); (W16.of_int 10336);
(W16.of_int (-7933)); (W16.of_int (-22501)); (W16.of_int 10907);
(W16.of_int 31637); (W16.of_int 28644); (W16.of_int 23998);
(W16.of_int (-17422)); (W16.of_int 817); (W16.of_int 603); (W16.of_int 1322);
(W16.of_int 1864); (W16.of_int 2114); (W16.of_int 1218); (W16.of_int 2455);
(W16.of_int 2142); (W16.of_int 2144); (W16.of_int 2051); (W16.of_int 1819);
(W16.of_int 2459); (W16.of_int 3221); (W16.of_int 996); (W16.of_int 958);
(W16.of_int 1522); (W16.of_int 20297); (W16.of_int 2146); (W16.of_int 15356);
(W16.of_int (-32384)); (W16.of_int (-6279)); (W16.of_int (-14902));
(W16.of_int (-11044)); (W16.of_int 14470); (W16.of_int (-21497));
(W16.of_int (-20198)); (W16.of_int 23211); (W16.of_int (-17442));
(W16.of_int (-23859)); (W16.of_int (-20257)); (W16.of_int 7757);
(W16.of_int 23132); (W16.of_int 1097); (W16.of_int 610); (W16.of_int 2044);
(W16.of_int 384); (W16.of_int 3193); (W16.of_int 1994); (W16.of_int 220);
(W16.of_int 1670); (W16.of_int 1799); (W16.of_int 794); (W16.of_int 2475);
(W16.of_int 478); (W16.of_int 3021); (W16.of_int 991); (W16.of_int 1869);
(W16.of_int 1628); (W16.of_int 0); (W16.of_int 0); (W16.of_int 0);
(W16.of_int 0)]).

abbrev  jzetas_inv =
(BArray256.of_list16
[(W16.of_int 1701); (W16.of_int 1807); (W16.of_int 1460); (W16.of_int 2371);
(W16.of_int 2338); (W16.of_int 2333); (W16.of_int 308); (W16.of_int 108);
(W16.of_int 2851); (W16.of_int 870); (W16.of_int 854); (W16.of_int 1510);
(W16.of_int 2535); (W16.of_int 1278); (W16.of_int 1530); (W16.of_int 1185);
(W16.of_int 1659); (W16.of_int 1187); (W16.of_int 3109); (W16.of_int 874);
(W16.of_int 1335); (W16.of_int 2111); (W16.of_int 136); (W16.of_int 1215);
(W16.of_int 2945); (W16.of_int 1465); (W16.of_int 1285); (W16.of_int 2007);
(W16.of_int 2719); (W16.of_int 2726); (W16.of_int 2232); (W16.of_int 2512);
(W16.of_int 75); (W16.of_int 156); (W16.of_int 3000); (W16.of_int 2911);
(W16.of_int 2980); (W16.of_int 872); (W16.of_int 2685); (W16.of_int 1590);
(W16.of_int 2210); (W16.of_int 602); (W16.of_int 1846); (W16.of_int 777);
(W16.of_int 147); (W16.of_int 2170); (W16.of_int 2551); (W16.of_int 246);
(W16.of_int 1676); (W16.of_int 1755); (W16.of_int 460); (W16.of_int 291);
(W16.of_int 235); (W16.of_int 3152); (W16.of_int 2742); (W16.of_int 2907);
(W16.of_int 3224); (W16.of_int 1779); (W16.of_int 2458); (W16.of_int 1251);
(W16.of_int 2486); (W16.of_int 2774); (W16.of_int 2899); (W16.of_int 1103);
(W16.of_int 1275); (W16.of_int 2652); (W16.of_int 1065); (W16.of_int 2881);
(W16.of_int 725); (W16.of_int 1508); (W16.of_int 2368); (W16.of_int 398);
(W16.of_int 951); (W16.of_int 247); (W16.of_int 1421); (W16.of_int 3222);
(W16.of_int 2499); (W16.of_int 271); (W16.of_int 90); (W16.of_int 853);
(W16.of_int 1860); (W16.of_int 3203); (W16.of_int 1162); (W16.of_int 1618);
(W16.of_int 666); (W16.of_int 320); (W16.of_int 8); (W16.of_int 2813);
(W16.of_int 1544); (W16.of_int 282); (W16.of_int 1838); (W16.of_int 1293);
(W16.of_int 2314); (W16.of_int 552); (W16.of_int 2677); (W16.of_int 2106);
(W16.of_int 1571); (W16.of_int 205); (W16.of_int 2918); (W16.of_int 1542);
(W16.of_int 2721); (W16.of_int 2597); (W16.of_int 2312); (W16.of_int 681);
(W16.of_int 130); (W16.of_int 1602); (W16.of_int 1871); (W16.of_int 829);
(W16.of_int 2946); (W16.of_int 3065); (W16.of_int 1325); (W16.of_int 2756);
(W16.of_int 1861); (W16.of_int 1474); (W16.of_int 1202); (W16.of_int 2367);
(W16.of_int 3147); (W16.of_int 1752); (W16.of_int 2707); (W16.of_int 171);
(W16.of_int 3127); (W16.of_int 3042); (W16.of_int 1907); (W16.of_int 1836);
(W16.of_int 1517); (W16.of_int 359); (W16.of_int 758); (W16.of_int 1441)]).

abbrev  jzetas =
(BArray256.of_list16
[(W16.of_int 2285); (W16.of_int 2571); (W16.of_int 2970); (W16.of_int 1812);
(W16.of_int 1493); (W16.of_int 1422); (W16.of_int 287); (W16.of_int 202);
(W16.of_int 3158); (W16.of_int 622); (W16.of_int 1577); (W16.of_int 182);
(W16.of_int 962); (W16.of_int 2127); (W16.of_int 1855); (W16.of_int 1468);
(W16.of_int 573); (W16.of_int 2004); (W16.of_int 264); (W16.of_int 383);
(W16.of_int 2500); (W16.of_int 1458); (W16.of_int 1727); (W16.of_int 3199);
(W16.of_int 2648); (W16.of_int 1017); (W16.of_int 732); (W16.of_int 608);
(W16.of_int 1787); (W16.of_int 411); (W16.of_int 3124); (W16.of_int 1758);
(W16.of_int 1223); (W16.of_int 652); (W16.of_int 2777); (W16.of_int 1015);
(W16.of_int 2036); (W16.of_int 1491); (W16.of_int 3047); (W16.of_int 1785);
(W16.of_int 516); (W16.of_int 3321); (W16.of_int 3009); (W16.of_int 2663);
(W16.of_int 1711); (W16.of_int 2167); (W16.of_int 126); (W16.of_int 1469);
(W16.of_int 2476); (W16.of_int 3239); (W16.of_int 3058); (W16.of_int 830);
(W16.of_int 107); (W16.of_int 1908); (W16.of_int 3082); (W16.of_int 2378);
(W16.of_int 2931); (W16.of_int 961); (W16.of_int 1821); (W16.of_int 2604);
(W16.of_int 448); (W16.of_int 2264); (W16.of_int 677); (W16.of_int 2054);
(W16.of_int 2226); (W16.of_int 430); (W16.of_int 555); (W16.of_int 843);
(W16.of_int 2078); (W16.of_int 871); (W16.of_int 1550); (W16.of_int 105);
(W16.of_int 422); (W16.of_int 587); (W16.of_int 177); (W16.of_int 3094);
(W16.of_int 3038); (W16.of_int 2869); (W16.of_int 1574); (W16.of_int 1653);
(W16.of_int 3083); (W16.of_int 778); (W16.of_int 1159); (W16.of_int 3182);
(W16.of_int 2552); (W16.of_int 1483); (W16.of_int 2727); (W16.of_int 1119);
(W16.of_int 1739); (W16.of_int 644); (W16.of_int 2457); (W16.of_int 349);
(W16.of_int 418); (W16.of_int 329); (W16.of_int 3173); (W16.of_int 3254);
(W16.of_int 817); (W16.of_int 1097); (W16.of_int 603); (W16.of_int 610);
(W16.of_int 1322); (W16.of_int 2044); (W16.of_int 1864); (W16.of_int 384);
(W16.of_int 2114); (W16.of_int 3193); (W16.of_int 1218); (W16.of_int 1994);
(W16.of_int 2455); (W16.of_int 220); (W16.of_int 2142); (W16.of_int 1670);
(W16.of_int 2144); (W16.of_int 1799); (W16.of_int 2051); (W16.of_int 794);
(W16.of_int 1819); (W16.of_int 2475); (W16.of_int 2459); (W16.of_int 478);
(W16.of_int 3221); (W16.of_int 3021); (W16.of_int 996); (W16.of_int 991);
(W16.of_int 958); (W16.of_int 1869); (W16.of_int 1522); (W16.of_int 1628)]).

module M = {
  var tmp__trace : trace
  var tmp___poly_tomsg_1 : BArray32.t
  var tmp___poly_tomsg_1_0 : BArray32.t
  var tmp___poly_tomsg_1_1 : BArray512.t
  var tmp___poly_tomsg_1_2 : BArray512.t
  var tmp___poly_sub : BArray512.t
  var tmp___poly_sub_0 : BArray512.t
  var tmp___poly_getnoise_eta1_4x : BArray512.t
  var tmp___poly_getnoise_eta1_4x_0 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_1 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_2 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_3 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_4 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_5 : BArray512.t
  var tmp___poly_getnoise_eta1_4x_6 : BArray512.t
  var tmp____poly_cbd_eta1 : BArray512.t
  var tmp____poly_cbd_eta1_0 : BArray512.t
  var tmp____cbd2 : BArray512.t
  var tmp____cbd2_0 : BArray512.t
  var tmp___poly_frommsg_1 : BArray512.t
  var tmp___poly_frommsg_1_0 : BArray512.t
  var tmp___poly_frommont : BArray512.t
  var tmp___poly_frommont_0 : BArray512.t
  var tmp___poly_decompress : BArray512.t
  var tmp___poly_decompress_0 : BArray512.t
  var tmp___poly_compress_1 : BArray128.t
  var tmp___poly_compress_1_0 : BArray128.t
  var tmp___poly_compress_1_1 : BArray512.t
  var tmp___poly_compress_1_2 : BArray512.t
  var tmp___poly_compress : BArray512.t
  var tmp___poly_compress_0 : BArray512.t
  var tmp___poly_csubq : BArray512.t
  var tmp___poly_csubq_0 : BArray512.t
  var tmp___shake256x4_A128__A32_A1 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_0 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_1 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_2 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_3 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_4 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_5 : BArray128.t
  var tmp___shake256x4_A128__A32_A1_6 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_0 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_1 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_2 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_3 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_4 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_5 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_6 : BArray128.t
  var tmp__A128____squeeze_array_avx2x4_7 : W64.t
  var tmp__A128____squeeze_array_avx2x4_8 : BArray800.t
  var tmp__A128____squeeze_array_avx2x4_9 : BArray800.t
  var tmp__A128____dumpstate_array_avx2x4 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_0 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_1 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_2 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_3 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_4 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_5 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_6 : BArray128.t
  var tmp__A128____dumpstate_array_avx2x4_7 : W64.t
  var tmp__A128____awrite_subu64 : BArray128.t
  var tmp__A128____awrite_subu64_0 : BArray128.t
  var tmp__A128____awrite_subu64_1 : int
  var tmp__A128____awrite_subu64_2 : int
  var tmp__A32____absorb_bcast_array_avx2x4 : BArray800.t
  var tmp__A32____absorb_bcast_array_avx2x4_0 : BArray800.t
  var tmp__A32____absorb_bcast_array_avx2x4_1 : int
  var tmp__A32____absorb_bcast_array_avx2x4_2 : W64.t
  var tmp__A32____addstate_bcast_array_avx2x4 : BArray800.t
  var tmp__A32____addstate_bcast_array_avx2x4_0 : BArray800.t
  var tmp__A32____addstate_bcast_array_avx2x4_1 : int
  var tmp__A32____addstate_bcast_array_avx2x4_2 : W64.t
  var tmp__A32____aread_bcast_4subu64 : int
  var tmp__A32____aread_bcast_4subu64_0 : int
  var tmp__A32____aread_bcast_4subu64_1 : int
  var tmp__A32____aread_bcast_4subu64_2 : W256.t
  var tmp__A32____aread_subu64 : int
  var tmp__A32____aread_subu64_0 : int
  var tmp__A32____aread_subu64_1 : int
  var tmp__A32____aread_subu64_2 : W64.t
  var tmp__A1____absorb_array_avx2x4 : BArray800.t
  var tmp__A1____absorb_array_avx2x4_0 : BArray800.t
  var tmp__A1____absorb_array_avx2x4_1 : int
  var tmp__A1____absorb_array_avx2x4_2 : W64.t
  var tmp__A1____addstate_array_avx2x4 : BArray800.t
  var tmp__A1____addstate_array_avx2x4_0 : BArray800.t
  var tmp__A1____addstate_array_avx2x4_1 : int
  var tmp__A1____addstate_array_avx2x4_2 : W64.t
  var tmp__A1____aread_subu64 : int
  var tmp__A1____aread_subu64_0 : int
  var tmp__A1____aread_subu64_1 : int
  var tmp__A1____aread_subu64_2 : W64.t
  var tmp____4u64x4_u256x4 : W256.t
  var tmp____4u64x4_u256x4_0 : W256.t
  var tmp____4u64x4_u256x4_1 : W256.t
  var tmp____4u64x4_u256x4_2 : W256.t
  var tmp____addratebit_avx2x4 : BArray800.t
  var tmp____addratebit_avx2x4_0 : BArray800.t
  var tmp____state_init_avx2x4 : BArray800.t
  var tmp____state_init_avx2x4_0 : BArray800.t
  var tmp___keccakf1600_avx2x4 : BArray800.t
  var tmp___keccakf1600_avx2x4_0 : BArray800.t
  var tmp____keccakf1600_avx2x4 : BArray800.t
  var tmp____keccakf1600_avx2x4_0 : BArray800.t
  var tmp___keccakf1600_4x_round : BArray800.t
  var tmp___keccakf1600_4x_round_0 : BArray800.t
  var tmp__keccakf1600_4x_set_row : BArray800.t
  var tmp__keccakf1600_4x_set_row_0 : BArray800.t
  var tmp__keccakf1600_4x_rol_sum : BArray160.t
  var tmp__keccakf1600_4x_rol_sum_0 : BArray160.t
  var tmp__keccakf1600_4x_theta_rol : BArray160.t
  var tmp__keccakf1600_4x_theta_rol_0 : BArray160.t
  var tmp__keccakf1600_4x_rol : BArray160.t
  var tmp__keccakf1600_4x_rol_0 : BArray160.t
  var tmp__keccakf1600_4x_theta_sum : BArray160.t
  var tmp__keccakf1600_4x_theta_sum_0 : BArray160.t
  var tmp__keccakf1600_rhotates : int
  var tmp__keccakf1600_rho_offsets : int
  var tmp__keccakf1600_index : int
  var tmp____fqmulx16 : W256.t
  var tmp____csubq : W256.t
  var tmp__data__poly_tomsg_1 : (BArray32.t * BArray32.t * BArray512.t *
                                BArray512.t)
  var tmp__data__poly_sub : (BArray512.t * BArray512.t)
  var tmp__data__poly_getnoise_eta1_4x : (BArray512.t * BArray512.t *
                                         BArray512.t * BArray512.t *
                                         BArray512.t * BArray512.t *
                                         BArray512.t * BArray512.t)
  var tmp__data___poly_cbd_eta1 : (BArray512.t * BArray512.t)
  var tmp__data___cbd2 : (BArray512.t * BArray512.t)
  var tmp__data__poly_frommsg_1 : (BArray512.t * BArray512.t)
  var tmp__data__poly_frommont : (BArray512.t * BArray512.t)
  var tmp__data__poly_decompress : (BArray512.t * BArray512.t)
  var tmp__data__poly_compress_1 : (BArray128.t * BArray128.t * BArray512.t *
                                   BArray512.t)
  var tmp__data__poly_compress : (BArray512.t * BArray512.t)
  var tmp__data__poly_csubq : (BArray512.t * BArray512.t)
  var tmp__data__shake256x4_A128__A32_A1 : (BArray128.t * BArray128.t *
                                           BArray128.t * BArray128.t *
                                           BArray128.t * BArray128.t *
                                           BArray128.t * BArray128.t)
  var tmp__data_A128____squeeze_array_avx2x4 : (BArray128.t * BArray128.t *
                                               BArray128.t * BArray128.t *
                                               BArray128.t * BArray128.t *
                                               BArray128.t * BArray128.t *
                                               W64.t * BArray800.t *
                                               BArray800.t)
  var tmp__data_A128____dumpstate_array_avx2x4 : (BArray128.t * BArray128.t *
                                                 BArray128.t * BArray128.t *
                                                 BArray128.t * BArray128.t *
                                                 BArray128.t * BArray128.t *
                                                 W64.t)
  var tmp__data_A128____awrite_subu64 : (BArray128.t * BArray128.t * int *
                                        int)
  var tmp__data_A32____absorb_bcast_array_avx2x4 : (BArray800.t *
                                                   BArray800.t * int * W64.t)
  var tmp__data_A32____addstate_bcast_array_avx2x4 : (BArray800.t *
                                                     BArray800.t * int *
                                                     W64.t)
  var tmp__data_A32____aread_bcast_4subu64 : (int * int * int * W256.t)
  var tmp__data_A32____aread_subu64 : (int * int * int * W64.t)
  var tmp__data_A1____absorb_array_avx2x4 : (BArray800.t * BArray800.t *
                                            int * W64.t)
  var tmp__data_A1____addstate_array_avx2x4 : (BArray800.t * BArray800.t *
                                              int * W64.t)
  var tmp__data_A1____aread_subu64 : (int * int * int * W64.t)
  var tmp__data___4u64x4_u256x4 : (W256.t * W256.t * W256.t * W256.t)
  var tmp__data___addratebit_avx2x4 : (BArray800.t * BArray800.t)
  var tmp__data___state_init_avx2x4 : (BArray800.t * BArray800.t)
  var tmp__data__keccakf1600_avx2x4 : (BArray800.t * BArray800.t)
  var tmp__data___keccakf1600_avx2x4 : (BArray800.t * BArray800.t)
  var tmp__data__keccakf1600_4x_round : (BArray800.t * BArray800.t)
  var tmp__data_keccakf1600_4x_set_row : (BArray800.t * BArray800.t)
  var tmp__data_keccakf1600_4x_rol_sum : (BArray160.t * BArray160.t)
  var tmp__data_keccakf1600_4x_theta_rol : (BArray160.t * BArray160.t)
  var tmp__data_keccakf1600_4x_rol : (BArray160.t * BArray160.t)
  var tmp__data_keccakf1600_4x_theta_sum : (BArray160.t * BArray160.t)
  var tmp__data_keccakf1600_rhotates : (int)
  var tmp__data_keccakf1600_rho_offsets : (int)
  var tmp__data_keccakf1600_index : (int)
  var tmp__data___fqmulx16 : (W256.t)
  var tmp__data___csubq : (W256.t)
  proc __csubq (r:W256.t, qx16:W256.t) : ((W256.t) * trace) = {
    var t:W256.t;
    var old_qx16:W256.t;
    var old_r:W256.t;
    var trace___csubq:trace;
    old_qx16 <- qx16;
    old_r <- r;
    trace___csubq <- [];
    r <- (VPSUB_16u16 r qx16);
    t <- (VPSRA_16u16 r (W128.of_int 15));
    t <- (VPAND_256 t qx16);
    r <- (VPADD_16u16 t r);
    return ((r), trace___csubq);
  }
  proc __fqmulx16 (a:W256.t, b:W256.t, qx16:W256.t, qinvx16:W256.t) : 
  ((W256.t) * trace) = {
    var rd:W256.t;
    var rhi:W256.t;
    var rlo:W256.t;
    var old_qinvx16:W256.t;
    var old_qx16:W256.t;
    var old_b:W256.t;
    var old_a:W256.t;
    var trace___fqmulx16:trace;
    old_qinvx16 <- qinvx16;
    old_qx16 <- qx16;
    old_b <- b;
    old_a <- a;
    trace___fqmulx16 <- [];
    rhi <- (VPMULH_16u16 a b);
    rlo <- (VPMULL_16u16 a b);
    rlo <- (VPMULL_16u16 rlo qinvx16);
    rlo <- (VPMULH_16u16 rlo qx16);
    rd <- (VPSUB_16u16 rhi rlo);
    return ((rd), trace___fqmulx16);
  }
  proc keccakf1600_index (x:int, y:int) : ((int) * trace) = {
    var r:int;
    var old_y:int;
    var old_x:int;
    var trace_keccakf1600_index:trace;
    old_y <- y;
    old_x <- x;
    trace_keccakf1600_index <- [];
    r <- ((x %% 5) + (5 * (y %% 5)));
    return ((r), trace_keccakf1600_index);
  }
  proc keccakf1600_rho_offsets (i:int) : ((int) * trace) = {
    var r:int;
    var x:int;
    var y:int;
    var t:int;
    var z:int;
    var old_i:int;
    var trace_keccakf1600_rho_offsets:trace;
    old_i <- i;
    trace_keccakf1600_rho_offsets <- [];
    r <- 0;
    x <- 1;
    y <- 0;
    t <- 0;
    while ((t < 24)) {
      if ((i = (x + (5 * y)))) {
        r <- ((((t + 1) * (t + 2)) %/ 2) %% 64);
      } else {
        
      }
      z <- (((2 * x) + (3 * y)) %% 5);
      x <- y;
      y <- z;
      t <- (t + 1);
    }
    return ((r), trace_keccakf1600_rho_offsets);
  }
  proc keccakf1600_rhotates (x:int, y:int) : ((int) * trace) = {
    var r:int;
    var i:int;
    var old_y:int;
    var old_x:int;
    var trace_keccakf1600_rhotates:trace;
    old_y <- y;
    old_x <- x;
    trace_keccakf1600_rhotates <- [];
    (tmp__data_keccakf1600_index, tmp__trace) <@ keccakf1600_index (x, y);
    tmp__keccakf1600_index <- tmp__data_keccakf1600_index;
    trace_keccakf1600_rhotates <- (trace_keccakf1600_rhotates ++ tmp__trace);
    i <- tmp__keccakf1600_index;
    (tmp__data_keccakf1600_rho_offsets, tmp__trace) <@ keccakf1600_rho_offsets (
    i);
    tmp__keccakf1600_rho_offsets <- tmp__data_keccakf1600_rho_offsets;
    trace_keccakf1600_rhotates <- (trace_keccakf1600_rhotates ++ tmp__trace);
    r <- tmp__keccakf1600_rho_offsets;
    return ((r), trace_keccakf1600_rhotates);
  }
  proc keccakf1600_4x_theta_sum (a:BArray800.t, b_a:BArray800.t) : ((BArray160.t *
                                                                    BArray160.t) *
                                                                   trace) = {
    var c:BArray160.t;
    var x:int;
    var y:int;
    var b_c:BArray160.t;
    var old_b_a:BArray800.t;
    var old_a:BArray800.t;
    var trace_keccakf1600_4x_theta_sum:trace;
    b_c <- witness;
    c <- witness;
    old_b_a <- b_a;
    old_a <- a;
    trace_keccakf1600_4x_theta_sum <- [];
    trace_keccakf1600_4x_theta_sum <-
    (trace_keccakf1600_4x_theta_sum ++ [(Assert, (is_init b_a 0 800))]);
    b_c <- (BArray160.init_arr (W8.of_int 0) 160);
    x <- 0;
    while ((x < 5)) {
      trace_keccakf1600_4x_theta_sum <-
      (trace_keccakf1600_4x_theta_sum ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_theta_sum <-
      (trace_keccakf1600_4x_theta_sum ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 800)))]);
      b_c <-
      (BArray160.set256d b_c (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      c <- (BArray160.set256 c x (BArray800.get256 a x));
      x <- (x + 1);
    }
    y <- 1;
    while ((y < 5)) {
      x <- 0;
      while ((x < 5)) {
        trace_keccakf1600_4x_theta_sum <-
        (trace_keccakf1600_4x_theta_sum ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_theta_sum <-
        (trace_keccakf1600_4x_theta_sum ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_theta_sum <-
        (trace_keccakf1600_4x_theta_sum ++
        [(Assert, (is_init b_c (x * 32) 32))]);
        trace_keccakf1600_4x_theta_sum <-
        (trace_keccakf1600_4x_theta_sum ++
        [(Assert,
         ((0 <= ((x + (y * 5)) * 32)) /\
         ((((x + (y * 5)) * 32) + 32) <= 800)))]);
        b_c <-
        (BArray160.set256d b_c (x * 32)
        (W256.of_int
        115792089237316195423570985008687907853269984665640564039457584007913129639935
        ));
        c <-
        (BArray160.set256 c x
        ((BArray160.get256 c x) `^` (BArray800.get256 a (x + (y * 5)))));
        x <- (x + 1);
      }
      y <- (y + 1);
    }
    return ((c, b_c), trace_keccakf1600_4x_theta_sum);
  }
  proc keccakf1600_4x_rol (a:BArray160.t, b_a:BArray160.t, x:int, r:int,
                           r8:W256.t, r56:W256.t) : ((BArray160.t *
                                                     BArray160.t) *
                                                    trace) = {
    var t:W256.t;
    var old_r56:W256.t;
    var old_r8:W256.t;
    var old_r:int;
    var old_x:int;
    var old_b_a:BArray160.t;
    var old_a:BArray160.t;
    var trace_keccakf1600_4x_rol:trace;
    old_r56 <- r56;
    old_r8 <- r8;
    old_r <- r;
    old_x <- x;
    old_b_a <- b_a;
    old_a <- a;
    trace_keccakf1600_4x_rol <- [];
    trace_keccakf1600_4x_rol <-
    (trace_keccakf1600_4x_rol ++
    [(Assert, (((is_init b_a (x * 32) 32) /\ (0 <= x)) /\ (x < 5)))]);
    if ((r = 8)) {
      trace_keccakf1600_4x_rol <-
      (trace_keccakf1600_4x_rol ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_rol <-
      (trace_keccakf1600_4x_rol ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_rol <-
      (trace_keccakf1600_4x_rol ++ [(Assert, (is_init b_a (x * 32) 32))]);
      b_a <-
      (BArray160.set256d b_a (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      a <- (BArray160.set256 a x (VPSHUFB_256 (BArray160.get256 a x) r8));
    } else {
      if ((r = 56)) {
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++ [(Assert, (is_init b_a (x * 32) 32))]);
        b_a <-
        (BArray160.set256d b_a (x * 32)
        (W256.of_int
        115792089237316195423570985008687907853269984665640564039457584007913129639935
        ));
        a <- (BArray160.set256 a x (VPSHUFB_256 (BArray160.get256 a x) r56));
      } else {
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++ [(Assert, (is_init b_a (x * 32) 32))]);
        t <- (VPSLL_4u64 (BArray160.get256 a x) (W128.of_int r));
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++ [(Assert, (is_init b_a (x * 32) 32))]);
        b_a <-
        (BArray160.set256d b_a (x * 32)
        (W256.of_int
        115792089237316195423570985008687907853269984665640564039457584007913129639935
        ));
        a <-
        (BArray160.set256 a x
        (VPSRL_4u64 (BArray160.get256 a x) (W128.of_int (64 - r))));
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++
        [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
        trace_keccakf1600_4x_rol <-
        (trace_keccakf1600_4x_rol ++ [(Assert, (is_init b_a (x * 32) 32))]);
        b_a <-
        (BArray160.set256d b_a (x * 32)
        (W256.of_int
        115792089237316195423570985008687907853269984665640564039457584007913129639935
        ));
        a <- (BArray160.set256 a x ((BArray160.get256 a x) `|` t));
      }
    }
    return ((a, b_a), trace_keccakf1600_4x_rol);
  }
  proc keccakf1600_4x_theta_rol (c:BArray160.t, b_c:BArray160.t, r8:W256.t,
                                 r56:W256.t) : ((BArray160.t * BArray160.t) *
                                               trace) = {
    var d:BArray160.t;
    var x:int;
    var b_d:BArray160.t;
    var old_r56:W256.t;
    var old_r8:W256.t;
    var old_b_c:BArray160.t;
    var old_c:BArray160.t;
    var trace_keccakf1600_4x_theta_rol:trace;
    b_d <- witness;
    d <- witness;
    old_r56 <- r56;
    old_r8 <- r8;
    old_b_c <- b_c;
    old_c <- c;
    trace_keccakf1600_4x_theta_rol <- [];
    trace_keccakf1600_4x_theta_rol <-
    (trace_keccakf1600_4x_theta_rol ++ [(Assert, (is_init b_c 0 160))]);
    b_d <- (BArray160.init_arr (W8.of_int 0) 160);
    x <- 0;
    while ((x < 5)) {
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert,
       ((0 <= (((x + 1) %% 5) * 32)) /\
       (((((x + 1) %% 5) * 32) + 32) <= 160)))]);
      b_d <-
      (BArray160.set256d b_d (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      d <- (BArray160.set256 d x (BArray160.get256 c ((x + 1) %% 5)));
      (tmp__data_keccakf1600_4x_rol, tmp__trace) <@ keccakf1600_4x_rol (
      d, b_d, x, 1, r8, r56);
      (tmp__keccakf1600_4x_rol, tmp__keccakf1600_4x_rol_0) <-
      tmp__data_keccakf1600_4x_rol;
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++ tmp__trace);
      d <- tmp__keccakf1600_4x_rol;
      b_d <- tmp__keccakf1600_4x_rol_0;
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert, (is_init b_d (x * 32) 32))]);
      trace_keccakf1600_4x_theta_rol <-
      (trace_keccakf1600_4x_theta_rol ++
      [(Assert,
       ((0 <= ((((x - 1) + 5) %% 5) * 32)) /\
       ((((((x - 1) + 5) %% 5) * 32) + 32) <= 160)))]);
      b_d <-
      (BArray160.set256d b_d (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      d <-
      (BArray160.set256 d x
      ((BArray160.get256 d x) `^` (BArray160.get256 c (((x - 1) + 5) %% 5))));
      x <- (x + 1);
    }
    return ((d, b_d), trace_keccakf1600_4x_theta_rol);
  }
  proc keccakf1600_4x_rol_sum (a:BArray800.t, b_a:BArray800.t, d:BArray160.t,
                               b_d:BArray160.t, y:int, r8:W256.t, r56:W256.t) : 
  ((BArray160.t * BArray160.t) * trace) = {
    var b:BArray160.t;
    var x:int;
    var x_:int;
    var y_:int;
    var r:int;
    var b_b:BArray160.t;
    var old_r56:W256.t;
    var old_r8:W256.t;
    var old_y:int;
    var old_b_d:BArray160.t;
    var old_d:BArray160.t;
    var old_b_a:BArray800.t;
    var old_a:BArray800.t;
    var trace_keccakf1600_4x_rol_sum:trace;
    b <- witness;
    b_b <- witness;
    old_r56 <- r56;
    old_r8 <- r8;
    old_y <- y;
    old_b_d <- b_d;
    old_d <- d;
    old_b_a <- b_a;
    old_a <- a;
    trace_keccakf1600_4x_rol_sum <- [];
    trace_keccakf1600_4x_rol_sum <-
    (trace_keccakf1600_4x_rol_sum ++
    [(Assert,
     ((((is_init b_a 0 800) /\ (is_init b_d 0 160)) /\ (0 <= y)) /\ (y < 5)))]);
    b_b <- (BArray160.init_arr (W8.of_int 0) 160);
    x <- 0;
    while ((x < 5)) {
      x_ <- ((x + (3 * y)) %% 5);
      y_ <- x;
      (tmp__data_keccakf1600_rhotates, tmp__trace) <@ keccakf1600_rhotates (
      x_, y_);
      tmp__keccakf1600_rhotates <- tmp__data_keccakf1600_rhotates;
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++ tmp__trace);
      r <- tmp__keccakf1600_rhotates;
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++
      [(Assert,
       ((0 <= ((x_ + (y_ * 5)) * 32)) /\
       ((((x_ + (y_ * 5)) * 32) + 32) <= 800)))]);
      b_b <-
      (BArray160.set256d b_b (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      b <- (BArray160.set256 b x (BArray800.get256 a (x_ + (y_ * 5))));
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++ [(Assert, (is_init b_b (x * 32) 32))]);
      trace_keccakf1600_4x_rol_sum <-
      (trace_keccakf1600_4x_rol_sum ++
      [(Assert, ((0 <= (x_ * 32)) /\ (((x_ * 32) + 32) <= 160)))]);
      b_b <-
      (BArray160.set256d b_b (x * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      b <-
      (BArray160.set256 b x
      ((BArray160.get256 b x) `^` (BArray160.get256 d x_)));
      if ((r <> 0)) {
        (tmp__data_keccakf1600_4x_rol, tmp__trace) <@ keccakf1600_4x_rol (
        b, b_b, x, r, r8, r56);
        (tmp__keccakf1600_4x_rol, tmp__keccakf1600_4x_rol_0) <-
        tmp__data_keccakf1600_4x_rol;
        trace_keccakf1600_4x_rol_sum <-
        (trace_keccakf1600_4x_rol_sum ++ tmp__trace);
        b <- tmp__keccakf1600_4x_rol;
        b_b <- tmp__keccakf1600_4x_rol_0;
      } else {
        
      }
      x <- (x + 1);
    }
    return ((b, b_b), trace_keccakf1600_4x_rol_sum);
  }
  proc keccakf1600_4x_set_row (e:BArray800.t, b_e:BArray800.t, b:BArray160.t,
                               b_b:BArray160.t, y:int, rc:W256.t) : (
                                                                    (BArray800.t *
                                                                    BArray800.t) *
                                                                    trace) = {
    var x:int;
    var x1:int;
    var x2:int;
    var t:W256.t;
    var old_rc:W256.t;
    var old_y:int;
    var old_b_b:BArray160.t;
    var old_b:BArray160.t;
    var old_b_e:BArray800.t;
    var old_e:BArray800.t;
    var trace_keccakf1600_4x_set_row:trace;
    old_rc <- rc;
    old_y <- y;
    old_b_b <- b_b;
    old_b <- b;
    old_b_e <- b_e;
    old_e <- e;
    trace_keccakf1600_4x_set_row <- [];
    trace_keccakf1600_4x_set_row <-
    (trace_keccakf1600_4x_set_row ++
    [(Assert, (((is_init b_b 0 160) /\ (0 <= y)) /\ (y < 5)))]);
    x <- 0;
    while ((x < 5)) {
      x1 <- ((x + 1) %% 5);
      x2 <- ((x + 2) %% 5);
      trace_keccakf1600_4x_set_row <-
      (trace_keccakf1600_4x_set_row ++
      [(Assert, ((0 <= (x1 * 32)) /\ (((x1 * 32) + 32) <= 160)))]);
      trace_keccakf1600_4x_set_row <-
      (trace_keccakf1600_4x_set_row ++
      [(Assert, ((0 <= (x2 * 32)) /\ (((x2 * 32) + 32) <= 160)))]);
      t <- (VPANDN_256 (BArray160.get256 b x1) (BArray160.get256 b x2));
      trace_keccakf1600_4x_set_row <-
      (trace_keccakf1600_4x_set_row ++
      [(Assert, ((0 <= (x * 32)) /\ (((x * 32) + 32) <= 160)))]);
      t <- (t `^` (BArray160.get256 b x));
      if (((x = 0) /\ (y = 0))) {
        t <- (t `^` rc);
      } else {
        
      }
      trace_keccakf1600_4x_set_row <-
      (trace_keccakf1600_4x_set_row ++
      [(Assert,
       ((0 <= ((x + (y * 5)) * 32)) /\ ((((x + (y * 5)) * 32) + 32) <= 800)))]);
      b_e <-
      (BArray800.set256d b_e ((x + (y * 5)) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      e <- (BArray800.set256 e (x + (y * 5)) t);
      x <- (x + 1);
    }
    return ((e, b_e), trace_keccakf1600_4x_set_row);
  }
  proc _keccakf1600_4x_round (e:BArray800.t, b_e:BArray800.t, a:BArray800.t,
                              b_a:BArray800.t, rc:W256.t, r8:W256.t,
                              r56:W256.t) : ((BArray800.t * BArray800.t) *
                                            trace) = {
    var c:BArray160.t;
    var d:BArray160.t;
    var y:int;
    var b:BArray160.t;
    var b_b:BArray160.t;
    var b_d:BArray160.t;
    var b_c:BArray160.t;
    var old_r56:W256.t;
    var old_r8:W256.t;
    var old_rc:W256.t;
    var old_b_a:BArray800.t;
    var old_a:BArray800.t;
    var old_b_e:BArray800.t;
    var old_e:BArray800.t;
    var trace__keccakf1600_4x_round:trace;
    b <- witness;
    b_b <- witness;
    b_c <- witness;
    b_d <- witness;
    c <- witness;
    d <- witness;
    old_r56 <- r56;
    old_r8 <- r8;
    old_rc <- rc;
    old_b_a <- b_a;
    old_a <- a;
    old_b_e <- b_e;
    old_e <- e;
    trace__keccakf1600_4x_round <- [];
    trace__keccakf1600_4x_round <-
    (trace__keccakf1600_4x_round ++ [(Assert, (is_init b_a 0 800))]);
    (tmp__data_keccakf1600_4x_theta_sum, tmp__trace) <@ keccakf1600_4x_theta_sum (
    a, (BArray800.init_arr (W8.of_int (-1)) 800));
    (tmp__keccakf1600_4x_theta_sum, tmp__keccakf1600_4x_theta_sum_0) <-
    tmp__data_keccakf1600_4x_theta_sum;
    trace__keccakf1600_4x_round <-
    (trace__keccakf1600_4x_round ++ tmp__trace);
    c <- tmp__keccakf1600_4x_theta_sum;
    b_c <- tmp__keccakf1600_4x_theta_sum_0;
    trace__keccakf1600_4x_round <-
    (trace__keccakf1600_4x_round ++ [(Assert, (is_init b_c 0 160))]);
    (tmp__data_keccakf1600_4x_theta_rol, tmp__trace) <@ keccakf1600_4x_theta_rol (
    c, (BArray160.init_arr (W8.of_int (-1)) 160), r8, r56);
    (tmp__keccakf1600_4x_theta_rol, tmp__keccakf1600_4x_theta_rol_0) <-
    tmp__data_keccakf1600_4x_theta_rol;
    trace__keccakf1600_4x_round <-
    (trace__keccakf1600_4x_round ++ tmp__trace);
    d <- tmp__keccakf1600_4x_theta_rol;
    b_d <- tmp__keccakf1600_4x_theta_rol_0;
    trace__keccakf1600_4x_round <-
    (trace__keccakf1600_4x_round ++ [(Assert, (is_init b_d 0 160))]);
    y <- 0;
    while ((y < 5)) {
      (tmp__data_keccakf1600_4x_rol_sum, tmp__trace) <@ keccakf1600_4x_rol_sum (
      a, (BArray800.init_arr (W8.of_int (-1)) 800), d,
      (BArray160.init_arr (W8.of_int (-1)) 160), y, r8, r56);
      (tmp__keccakf1600_4x_rol_sum, tmp__keccakf1600_4x_rol_sum_0) <-
      tmp__data_keccakf1600_4x_rol_sum;
      trace__keccakf1600_4x_round <-
      (trace__keccakf1600_4x_round ++ tmp__trace);
      b <- tmp__keccakf1600_4x_rol_sum;
      b_b <- tmp__keccakf1600_4x_rol_sum_0;
      trace__keccakf1600_4x_round <-
      (trace__keccakf1600_4x_round ++ [(Assert, (is_init b_b 0 160))]);
      (tmp__data_keccakf1600_4x_set_row, tmp__trace) <@ keccakf1600_4x_set_row (
      e, b_e, b, (BArray160.init_arr (W8.of_int (-1)) 160), y, rc);
      (tmp__keccakf1600_4x_set_row, tmp__keccakf1600_4x_set_row_0) <-
      tmp__data_keccakf1600_4x_set_row;
      trace__keccakf1600_4x_round <-
      (trace__keccakf1600_4x_round ++ tmp__trace);
      e <- tmp__keccakf1600_4x_set_row;
      b_e <- tmp__keccakf1600_4x_set_row_0;
      y <- (y + 1);
    }
    return ((e, b_e), trace__keccakf1600_4x_round);
  }
  proc __keccakf1600_avx2x4 (a:BArray800.t, b_a:BArray800.t) : ((BArray800.t *
                                                                BArray800.t) *
                                                               trace) = {
    var rC:BArray192.t;
    var s_e:BArray800.t;
    var e:BArray800.t;
    var r8:W256.t;
    var r56:W256.t;
    var c:W64.t;
    var rc:W256.t;
    var a_s:BArray800.t;
    var b_e:BArray800.t;
    var b_s_e:BArray800.t;
    var b_RC:BArray192.t;
    var old_b_a:BArray800.t;
    var old_a:BArray800.t;
    var trace___keccakf1600_avx2x4:trace;
    rC <- witness;
    a_s <- witness;
    b_RC <- witness;
    b_e <- witness;
    b_s_e <- witness;
    e <- witness;
    s_e <- witness;
    old_b_a <- b_a;
    old_a <- a;
    trace___keccakf1600_avx2x4 <- [];
    trace___keccakf1600_avx2x4 <-
    (trace___keccakf1600_avx2x4 ++ [(Assert, (is_init b_a 0 800))]);
    b_s_e <- (BArray800.init_arr (W8.of_int 0) 800);
    b_RC <- (BArray192.init_arr (W8.of_int 255) 192);
    rC <- kECCAK1600_RC;
    b_e <- b_s_e;
    e <- s_e;
    r8 <- rOL8;
    r56 <- rOL56;
    c <- (W64.of_int 0);
    while ((c \ult (W64.of_int 24))) {
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint c) * 8)) /\ ((((W64.to_uint c) * 8) + 8) <= 192)))]);
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++
      [(Assert, (is_init b_RC ((W64.to_uint c) * 8) 8))]);
      rc <- (VPBROADCAST_4u64 (BArray192.get64 rC (W64.to_uint c)));
      (tmp__data__keccakf1600_4x_round, tmp__trace) <@ _keccakf1600_4x_round (
      e, b_e, a, (BArray800.init_arr (W8.of_int (-1)) 800), rc, r8, r56);
      (tmp___keccakf1600_4x_round, tmp___keccakf1600_4x_round_0) <-
      tmp__data__keccakf1600_4x_round;
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++ tmp__trace);
      e <- tmp___keccakf1600_4x_round;
      b_e <- tmp___keccakf1600_4x_round_0;
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++ [(Assert, (is_init b_e 0 800))]);
      a_s <- a;
      s_e <- e;
      a <- a_s;
      e <- s_e;
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++
      [(Assert,
       ((0 <= (((W64.to_uint c) + 1) * 8)) /\
       (((((W64.to_uint c) + 1) * 8) + 8) <= 192)))]);
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++
      [(Assert, (is_init b_RC (((W64.to_uint c) + 1) * 8) 8))]);
      rc <- (VPBROADCAST_4u64 (BArray192.get64 rC ((W64.to_uint c) + 1)));
      (tmp__data__keccakf1600_4x_round, tmp__trace) <@ _keccakf1600_4x_round (
      a, (BArray800.init_arr (W8.of_int (-1)) 800), e,
      (BArray800.init_arr (W8.of_int (-1)) 800), rc, r8, r56);
      (tmp___keccakf1600_4x_round, tmp___keccakf1600_4x_round_0) <-
      tmp__data__keccakf1600_4x_round;
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++ tmp__trace);
      a <- tmp___keccakf1600_4x_round;
      b_a <- tmp___keccakf1600_4x_round_0;
      trace___keccakf1600_avx2x4 <-
      (trace___keccakf1600_avx2x4 ++ [(Assert, (is_init b_a 0 800))]);
      a_s <- a;
      s_e <- e;
      a <- a_s;
      b_e <- (BArray800.init_arr (W8.of_int (-1)) 800);
      e <- s_e;
      c <- (c + (W64.of_int 2));
    }
    b_a <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((a, b_a), trace___keccakf1600_avx2x4);
  }
  proc _keccakf1600_avx2x4 (a:BArray800.t, b_a:BArray800.t) : ((BArray800.t *
                                                               BArray800.t) *
                                                              trace) = {
    var old_b_a:BArray800.t;
    var old_a:BArray800.t;
    var trace__keccakf1600_avx2x4:trace;
    old_b_a <- b_a;
    old_a <- a;
    trace__keccakf1600_avx2x4 <- [];
    trace__keccakf1600_avx2x4 <-
    (trace__keccakf1600_avx2x4 ++ [(Assert, (is_init b_a 0 800))]);
    (tmp__data___keccakf1600_avx2x4, tmp__trace) <@ __keccakf1600_avx2x4 (
    a, (BArray800.init_arr (W8.of_int (-1)) 800));
    (tmp____keccakf1600_avx2x4, tmp____keccakf1600_avx2x4_0) <-
    tmp__data___keccakf1600_avx2x4;
    trace__keccakf1600_avx2x4 <- (trace__keccakf1600_avx2x4 ++ tmp__trace);
    a <- tmp____keccakf1600_avx2x4;
    b_a <- tmp____keccakf1600_avx2x4_0;
    trace__keccakf1600_avx2x4 <-
    (trace__keccakf1600_avx2x4 ++ [(Assert, (is_init b_a 0 800))]);
    b_a <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((a, b_a), trace__keccakf1600_avx2x4);
  }
  proc __state_init_avx2x4 (st:BArray800.t, b_st:BArray800.t) : ((BArray800.t *
                                                                 BArray800.t) *
                                                                trace) = {
    var z256:W256.t;
    var i:W64.t;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace___state_init_avx2x4:trace;
    old_b_st <- b_st;
    old_st <- st;
    trace___state_init_avx2x4 <- [];
    z256 <- (set0_256);
    i <- (W64.of_int 0);
    while ((i \ult (W64.of_int 800))) {
      trace___state_init_avx2x4 <-
      (trace___state_init_avx2x4 ++
      [(Assert, ((0 <= (W64.to_uint i)) /\ (((W64.to_uint i) + 32) <= 800)))]);
      b_st <-
      (BArray800.set256d b_st (W64.to_uint i)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      st <- (BArray800.set256d st (W64.to_uint i) z256);
      i <- (i + (W64.of_int 32));
    }
    return ((st, b_st), trace___state_init_avx2x4);
  }
  proc __addratebit_avx2x4 (st:BArray800.t, b_st:BArray800.t, rATE8:int) : 
  ((BArray800.t * BArray800.t) * trace) = {
    var t64:W64.t;
    var t128:W128.t;
    var t256:W256.t;
    var old_RATE8:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace___addratebit_avx2x4:trace;
    old_RATE8 <- rATE8;
    old_b_st <- b_st;
    old_st <- st;
    trace___addratebit_avx2x4 <- [];
    trace___addratebit_avx2x4 <-
    (trace___addratebit_avx2x4 ++
    [(Assert, (((is_init b_st 0 800) /\ (0 < rATE8)) /\ (rATE8 <= 200)))]);
    t64 <- (W64.of_int 1);
    t64 <- (t64 `<<` (W8.of_int (((8 * rATE8) - 1) %% 64)));
    t128 <- (zeroextu128 t64);
    t256 <- (VPBROADCAST_4u64 (truncateu64 t128));
    trace___addratebit_avx2x4 <-
    (trace___addratebit_avx2x4 ++
    [(Assert,
     ((0 <= (((rATE8 - 1) %/ 8) * 32)) /\
     (((((rATE8 - 1) %/ 8) * 32) + 32) <= 800)))]);
    t256 <- (t256 `^` (BArray800.get256 st ((rATE8 - 1) %/ 8)));
    trace___addratebit_avx2x4 <-
    (trace___addratebit_avx2x4 ++
    [(Assert,
     ((0 <= (((rATE8 - 1) %/ 8) * 32)) /\
     (((((rATE8 - 1) %/ 8) * 32) + 32) <= 800)))]);
    st <- (BArray800.set256 st ((rATE8 - 1) %/ 8) t256);
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((st, b_st), trace___addratebit_avx2x4);
  }
  proc __4u64x4_u256x4 (y0:W256.t, y1:W256.t, y2:W256.t, y3:W256.t) : 
  ((W256.t * W256.t * W256.t * W256.t) * trace) = {
    var x0:W256.t;
    var x1:W256.t;
    var x2:W256.t;
    var x3:W256.t;
    var old_y3:W256.t;
    var old_y2:W256.t;
    var old_y1:W256.t;
    var old_y0:W256.t;
    var trace___4u64x4_u256x4:trace;
    old_y3 <- y3;
    old_y2 <- y2;
    old_y1 <- y1;
    old_y0 <- y0;
    trace___4u64x4_u256x4 <- [];
    x0 <- (VPERM2I128 y0 y2 (W8.of_int 32));
    x1 <- (VPERM2I128 y1 y3 (W8.of_int 32));
    x2 <- (VPERM2I128 y0 y2 (W8.of_int 49));
    x3 <- (VPERM2I128 y1 y3 (W8.of_int 49));
    y0 <- (VPUNPCKL_4u64 x0 x1);
    y1 <- (VPUNPCKH_4u64 x0 x1);
    y2 <- (VPUNPCKL_4u64 x2 x3);
    y3 <- (VPUNPCKH_4u64 x2 x3);
    return ((y0, y1, y2, y3), trace___4u64x4_u256x4);
  }
  proc a1____aread_subu64 (buf:BArray1.t, b_buf:BArray1.t, offset:W64.t,
                           dELTA:int, lEN:int, tRAIL:int) : ((int * int *
                                                             int * W64.t) *
                                                            trace) = {
    var w:W64.t;
    var iLEN:int;
    var t16:W64.t;
    var t8:W64.t;
    var old_TRAIL:int;
    var old_LEN:int;
    var old_DELTA:int;
    var old_offset:W64.t;
    var old_b_buf:BArray1.t;
    var old_buf:BArray1.t;
    var trace_a1____aread_subu64:trace;
    old_TRAIL <- tRAIL;
    old_LEN <- lEN;
    old_DELTA <- dELTA;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    trace_a1____aread_subu64 <- [];
    trace_a1____aread_subu64 <-
    (trace_a1____aread_subu64 ++
    [(Assert,
     ((0 < lEN) ? ((((is_init b_buf
                     (W64.to_uint (offset + (W64.of_int dELTA)))
                     ((lEN < 8) ? lEN : 8)) /\
                    (0 <= dELTA)) /\
                   (0 <= ((W64.to_uint offset) + dELTA))) /\
                  ((((W64.to_uint offset) + dELTA) + ((lEN < 8) ? lEN : 8)) <=
                  1)) : true))]);
    trace_a1____aread_subu64 <-
    (trace_a1____aread_subu64 ++ [(Assert, ((0 <= tRAIL) /\ (tRAIL < 256)))]);
    iLEN <- lEN;
    if ((lEN <= 0)) {
      w <- (W64.of_int (tRAIL %% 256));
      tRAIL <- 0;
    } else {
      if ((8 <= lEN)) {
        trace_a1____aread_subu64 <-
        (trace_a1____aread_subu64 ++
        [(Assert,
         ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
         (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 1)))]);
        trace_a1____aread_subu64 <-
        (trace_a1____aread_subu64 ++
        [(Assert,
         (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
        w <-
        (BArray1.get64d buf (W64.to_uint (offset + (W64.of_int dELTA))));
        dELTA <- (dELTA + 8);
        lEN <- (lEN - 8);
      } else {
        if ((4 <= lEN)) {
          trace_a1____aread_subu64 <-
          (trace_a1____aread_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 4) <= 1)))]);
          trace_a1____aread_subu64 <-
          (trace_a1____aread_subu64 ++
          [(Assert,
           (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 4))]);
          w <-
          (zeroextu64
          (BArray1.get32d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
          dELTA <- (dELTA + 4);
          lEN <- (lEN - 4);
        } else {
          w <- (W64.of_int 0);
        }
        if ((2 <= lEN)) {
          trace_a1____aread_subu64 <-
          (trace_a1____aread_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 2) <= 1)))]);
          trace_a1____aread_subu64 <-
          (trace_a1____aread_subu64 ++
          [(Assert,
           (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 2))]);
          t16 <-
          (zeroextu64
          (BArray1.get16d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
          dELTA <- (dELTA + 2);
          lEN <- (lEN - 2);
        } else {
          t16 <- (W64.of_int 0);
        }
        if (((1 <= lEN) \/ ((tRAIL %% 256) <> 0))) {
          if ((1 <= lEN)) {
            trace_a1____aread_subu64 <-
            (trace_a1____aread_subu64 ++
            [(Assert,
             ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
             (((W64.to_uint (offset + (W64.of_int dELTA))) + 1) <= 1)))]);
            trace_a1____aread_subu64 <-
            (trace_a1____aread_subu64 ++
            [(Assert,
             (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 1))]);
            t8 <-
            (zeroextu64
            (BArray1.get8d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
            if (((tRAIL %% 256) <> 0)) {
              t8 <- (t8 `|` (W64.of_int (256 * (tRAIL %% 256))));
            } else {
              
            }
            dELTA <- (dELTA + 1);
            lEN <- (lEN - 1);
          } else {
            t8 <- (W64.of_int (tRAIL %% 256));
          }
          tRAIL <- 0;
          t8 <- (t8 `<<` (W8.of_int (8 * (2 * ((iLEN %/ 2) %% 2)))));
          t16 <- (t16 `|` t8);
        } else {
          
        }
        t16 <- (t16 `<<` (W8.of_int (8 * (4 * ((iLEN %/ 4) %% 2)))));
        w <- (w `|` t16);
      }
    }
    return ((dELTA, lEN, tRAIL, w), trace_a1____aread_subu64);
  }
  proc a1____addstate_array_avx2x4 (st:BArray800.t, b_st:BArray800.t, aT:int,
                                    buf0:BArray1.t, b_buf0:BArray1.t,
                                    buf1:BArray1.t, b_buf1:BArray1.t,
                                    buf2:BArray1.t, b_buf2:BArray1.t,
                                    buf3:BArray1.t, b_buf3:BArray1.t,
                                    offset:W64.t, lEN:int, tRAILB:int) : 
  ((BArray800.t * BArray800.t * int * W64.t) * trace) = {
    var aLL:int;
    var lO:int;
    var at:W64.t;
    var dELTA:int;
    var t0:W64.t;
    var t1:W64.t;
    var t2:W64.t;
    var t3:W64.t;
    var t256_0:W256.t;
    var t256_1:W256.t;
    var t256_2:W256.t;
    var t256_3:W256.t;
    var  _0:int;
    var  _1:int;
    var  _2:int;
    var  _3:int;
    var  _4:int;
    var  _5:int;
    var  _6:int;
    var  _7:int;
    var  _8:int;
    var  _9:int;
    var  _10:int;
    var  _11:int;
    var  _12:int;
    var  _13:int;
    var  _14:int;
    var  _15:int;
    var  _16:int;
    var  _17:int;
    var  _18:int;
    var  _19:int;
    var  _20:int;
    var  _21:int;
    var  _22:int;
    var  _23:int;
    var  _24:int;
    var  _25:int;
    var  _26:int;
    var  _27:int;
    var  _28:int;
    var  _29:int;
    var  _30:int;
    var  _31:int;
    var  _32:int;
    var old_TRAILB:int;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf3:BArray1.t;
    var old_buf3:BArray1.t;
    var old_b_buf2:BArray1.t;
    var old_buf2:BArray1.t;
    var old_b_buf1:BArray1.t;
    var old_buf1:BArray1.t;
    var old_b_buf0:BArray1.t;
    var old_buf0:BArray1.t;
    var old_AT:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace_a1____addstate_array_avx2x4:trace;
    old_TRAILB <- tRAILB;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf3 <- b_buf3;
    old_buf3 <- buf3;
    old_b_buf2 <- b_buf2;
    old_buf2 <- buf2;
    old_b_buf1 <- b_buf1;
    old_buf1 <- buf1;
    old_b_buf0 <- b_buf0;
    old_buf0 <- buf0;
    old_AT <- aT;
    old_b_st <- b_st;
    old_st <- st;
    trace_a1____addstate_array_avx2x4 <- [];
    trace_a1____addstate_array_avx2x4 <-
    (trace_a1____addstate_array_avx2x4 ++
    [(Assert,
     (((((((((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (0 <= aT)) /\
            (aT < 200)) /\
           (((W64.to_uint offset) + lEN) <= 1)) /\
          (((aT + lEN) + ((tRAILB <> 0) ? 1 : 0)) <= 200)) /\
         (is_init b_buf0 (W64.to_uint offset) lEN)) /\
        (is_init b_buf1 (W64.to_uint offset) lEN)) /\
       (is_init b_buf2 (W64.to_uint offset) lEN)) /\
      (is_init b_buf3 (W64.to_uint offset) lEN)) /\
     (is_init b_st 0 800)))]);
    trace_a1____addstate_array_avx2x4 <-
    (trace_a1____addstate_array_avx2x4 ++
    [(Assert, ((0 <= tRAILB) /\ (tRAILB < 256)))]);
    aLL <- (aT + lEN);
    lO <- (aT %% 8);
    at <- (W64.of_int (4 * (aT %/ 8)));
    dELTA <- 0;
    if ((0 < lO)) {
      if (((lO + lEN) < 8)) {
        if ((tRAILB <> 0)) {
          aLL <- (aLL + 1);
        } else {
          
        }
        (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
        buf0, b_buf0, offset, dELTA, lEN, tRAILB);
        (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
        tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
        tmp__data_A1____aread_subu64;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
         _11 <- tmp__A1____aread_subu64;
         _12 <- tmp__A1____aread_subu64_0;
         _13 <- tmp__A1____aread_subu64_1;
        t0 <- tmp__A1____aread_subu64_2;
        (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
        buf1, b_buf1, offset, dELTA, lEN, tRAILB);
        (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
        tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
        tmp__data_A1____aread_subu64;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
         _14 <- tmp__A1____aread_subu64;
         _15 <- tmp__A1____aread_subu64_0;
         _16 <- tmp__A1____aread_subu64_1;
        t1 <- tmp__A1____aread_subu64_2;
        (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
        buf2, b_buf2, offset, dELTA, lEN, tRAILB);
        (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
        tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
        tmp__data_A1____aread_subu64;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
         _17 <- tmp__A1____aread_subu64;
         _18 <- tmp__A1____aread_subu64_0;
         _19 <- tmp__A1____aread_subu64_1;
        t2 <- tmp__A1____aread_subu64_2;
        (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
        buf3, b_buf3, offset, dELTA, lEN, tRAILB);
        (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
        tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
        tmp__data_A1____aread_subu64;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
        dELTA <- tmp__A1____aread_subu64;
         _20 <- tmp__A1____aread_subu64_0;
         _21 <- tmp__A1____aread_subu64_1;
        t3 <- tmp__A1____aread_subu64_2;
        t0 <- (t0 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        t0 <- (t0 `^` (BArray800.get64 st (W64.to_uint at)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint at) t0);
        t1 <- (t1 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        t1 <-
        (t1 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 1)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 1))) t1);
        t2 <- (t2 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        t2 <-
        (t2 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 2)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 2))) t2);
        t3 <- (t3 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        t3 <-
        (t3 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 3)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 3))) t3);
        aT <- 0;
        lEN <- 0;
        tRAILB <- 0;
      } else {
        if ((8 <= lEN)) {
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 1)))]);
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           (is_init b_buf0 (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
          t0 <-
          (BArray1.get64d buf0 (W64.to_uint (offset + (W64.of_int dELTA))));
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 1)))]);
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           (is_init b_buf1 (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
          t1 <-
          (BArray1.get64d buf1 (W64.to_uint (offset + (W64.of_int dELTA))));
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 1)))]);
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           (is_init b_buf2 (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
          t2 <-
          (BArray1.get64d buf2 (W64.to_uint (offset + (W64.of_int dELTA))));
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 1)))]);
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++
          [(Assert,
           (is_init b_buf3 (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
          t3 <-
          (BArray1.get64d buf3 (W64.to_uint (offset + (W64.of_int dELTA))));
          offset <- (offset + (W64.of_int (8 - lO)));
        } else {
          (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
          buf0, b_buf0, offset, dELTA, (8 - lO), tRAILB);
          (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
          tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
          tmp__data_A1____aread_subu64;
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
           _0 <- tmp__A1____aread_subu64;
           _1 <- tmp__A1____aread_subu64_0;
           _2 <- tmp__A1____aread_subu64_1;
          t0 <- tmp__A1____aread_subu64_2;
          (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
          buf1, b_buf1, offset, dELTA, (8 - lO), tRAILB);
          (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
          tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
          tmp__data_A1____aread_subu64;
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
           _3 <- tmp__A1____aread_subu64;
           _4 <- tmp__A1____aread_subu64_0;
           _5 <- tmp__A1____aread_subu64_1;
          t1 <- tmp__A1____aread_subu64_2;
          (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
          buf2, b_buf2, offset, dELTA, (8 - lO), tRAILB);
          (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
          tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
          tmp__data_A1____aread_subu64;
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
           _6 <- tmp__A1____aread_subu64;
           _7 <- tmp__A1____aread_subu64_0;
           _8 <- tmp__A1____aread_subu64_1;
          t2 <- tmp__A1____aread_subu64_2;
          (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
          buf3, b_buf3, offset, dELTA, (8 - lO), tRAILB);
          (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
          tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
          tmp__data_A1____aread_subu64;
          trace_a1____addstate_array_avx2x4 <-
          (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
          dELTA <- tmp__A1____aread_subu64;
           _9 <- tmp__A1____aread_subu64_0;
           _10 <- tmp__A1____aread_subu64_1;
          t3 <- tmp__A1____aread_subu64_2;
        }
        lEN <- (lEN - (8 - lO));
        aT <- (aT + (8 - lO));
        t0 <- (t0 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        t0 <- (t0 `^` (BArray800.get64 st (W64.to_uint at)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint at) t0);
        t1 <- (t1 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        t1 <-
        (t1 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 1)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 1))) t1);
        t2 <- (t2 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        t2 <-
        (t2 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 2)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 2))) t2);
        t3 <- (t3 `<<` (W8.of_int (8 * lO)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        t3 <-
        (t3 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 3)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 3))) t3);
        at <- (at + (W64.of_int 4));
      }
    } else {
      
    }
    offset <- (offset + (W64.of_int dELTA));
    dELTA <- 0;
    if ((8 <= lEN)) {
      while ((at \ult (W64.of_int ((4 * (aT %/ 8)) + (16 * (lEN %/ 32)))))) {
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf0 (W64.to_uint offset) 32))]);
        t256_0 <- (BArray1.get256d buf0 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf1 (W64.to_uint offset) 32))]);
        t256_1 <- (BArray1.get256d buf1 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf2 (W64.to_uint offset) 32))]);
        t256_2 <- (BArray1.get256d buf2 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf3 (W64.to_uint offset) 32))]);
        t256_3 <- (BArray1.get256d buf3 (W64.to_uint offset));
        offset <- (offset + (W64.of_int 32));
        (tmp__data___4u64x4_u256x4, tmp__trace) <@ __4u64x4_u256x4 (t256_0,
        t256_1, t256_2, t256_3);
        (tmp____4u64x4_u256x4, tmp____4u64x4_u256x4_0,
        tmp____4u64x4_u256x4_1, tmp____4u64x4_u256x4_2) <-
        tmp__data___4u64x4_u256x4;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
        t256_0 <- tmp____4u64x4_u256x4;
        t256_1 <- tmp____4u64x4_u256x4_0;
        t256_2 <- tmp____4u64x4_u256x4_1;
        t256_3 <- tmp____4u64x4_u256x4_2;
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint ((W64.of_int 8) * at))) /\
         (((W64.to_uint ((W64.of_int 8) * at)) + 32) <= 800)))]);
        t256_0 <-
        (t256_0 `^`
        (BArray800.get256d st (W64.to_uint ((W64.of_int 8) * at))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint ((W64.of_int 8) * at))) /\
         (((W64.to_uint ((W64.of_int 8) * at)) + 32) <= 800)))]);
        st <-
        (BArray800.set256d st (W64.to_uint ((W64.of_int 8) * at)) t256_0);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32))) + 32) <=
         800)))]);
        t256_1 <-
        (t256_1 `^`
        (BArray800.get256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32))) + 32) <=
         800)))]);
        st <-
        (BArray800.set256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 32))) t256_1);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64))) + 32) <=
         800)))]);
        t256_2 <-
        (t256_2 `^`
        (BArray800.get256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64))) + 32) <=
         800)))]);
        st <-
        (BArray800.set256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 64))) t256_2);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96))) + 32) <=
         800)))]);
        t256_3 <-
        (t256_3 `^`
        (BArray800.get256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96)))) /\
         (((W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96))) + 32) <=
         800)))]);
        st <-
        (BArray800.set256d st
        (W64.to_uint (((W64.of_int 8) * at) + (W64.of_int 96))) t256_3);
        at <- (at + (W64.of_int 16));
      }
      while ((at \ult (W64.of_int ((4 * (aT %/ 8)) + (4 * (lEN %/ 8)))))) {
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf0 (W64.to_uint offset) 8))]);
        t0 <- (BArray1.get64d buf0 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        t0 <- (t0 `^` (BArray800.get64 st (W64.to_uint at)));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint at) * 8)) /\
         ((((W64.to_uint at) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint at) t0);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf1 (W64.to_uint offset) 8))]);
        t1 <- (BArray1.get64d buf1 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        t1 <-
        (t1 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 1)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 1))) t1);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf2 (W64.to_uint offset) 8))]);
        t2 <- (BArray1.get64d buf2 (W64.to_uint offset));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        t2 <-
        (t2 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 2)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 2))) t2);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 1)))]);
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert, (is_init b_buf3 (W64.to_uint offset) 8))]);
        t3 <- (BArray1.get64d buf3 (W64.to_uint offset));
        offset <- (offset + (W64.of_int 8));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        t3 <-
        (t3 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 3)))));
        trace_a1____addstate_array_avx2x4 <-
        (trace_a1____addstate_array_avx2x4 ++
        [(Assert,
         ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
         ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
        st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 3))) t3);
        at <- (at + (W64.of_int 4));
      }
      lEN <- ((aT + lEN) %% 8);
    } else {
      
    }
    lO <- ((aT + lEN) %% 8);
    if (((0 < lO) \/ (tRAILB <> 0))) {
      (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
      buf0, b_buf0, offset, dELTA, lO, tRAILB);
      (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
      tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
      tmp__data_A1____aread_subu64;
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
       _22 <- tmp__A1____aread_subu64;
       _23 <- tmp__A1____aread_subu64_0;
       _24 <- tmp__A1____aread_subu64_1;
      t0 <- tmp__A1____aread_subu64_2;
      (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
      buf1, b_buf1, offset, dELTA, lO, tRAILB);
      (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
      tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
      tmp__data_A1____aread_subu64;
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
       _25 <- tmp__A1____aread_subu64;
       _26 <- tmp__A1____aread_subu64_0;
       _27 <- tmp__A1____aread_subu64_1;
      t1 <- tmp__A1____aread_subu64_2;
      (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
      buf2, b_buf2, offset, dELTA, lO, tRAILB);
      (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
      tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
      tmp__data_A1____aread_subu64;
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
       _28 <- tmp__A1____aread_subu64;
       _29 <- tmp__A1____aread_subu64_0;
       _30 <- tmp__A1____aread_subu64_1;
      t2 <- tmp__A1____aread_subu64_2;
      (tmp__data_A1____aread_subu64, tmp__trace) <@ a1____aread_subu64 (
      buf3, b_buf3, offset, dELTA, lO, tRAILB);
      (tmp__A1____aread_subu64, tmp__A1____aread_subu64_0,
      tmp__A1____aread_subu64_1, tmp__A1____aread_subu64_2) <-
      tmp__data_A1____aread_subu64;
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++ tmp__trace);
      dELTA <- tmp__A1____aread_subu64;
       _31 <- tmp__A1____aread_subu64_0;
       _32 <- tmp__A1____aread_subu64_1;
      t3 <- tmp__A1____aread_subu64_2;
      offset <- (offset + (W64.of_int dELTA));
      if ((tRAILB <> 0)) {
        aLL <- (aLL + 1);
      } else {
        
      }
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint at) * 8)) /\
       ((((W64.to_uint at) * 8) + 8) <= 800)))]);
      t0 <- (t0 `^` (BArray800.get64 st (W64.to_uint at)));
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint at) * 8)) /\
       ((((W64.to_uint at) * 8) + 8) <= 800)))]);
      st <- (BArray800.set64 st (W64.to_uint at) t0);
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
      t1 <-
      (t1 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 1)))));
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 1))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 1))) * 8) + 8) <= 800)))]);
      st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 1))) t1);
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
      t2 <-
      (t2 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 2)))));
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 2))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 2))) * 8) + 8) <= 800)))]);
      st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 2))) t2);
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
      t3 <-
      (t3 `^` (BArray800.get64 st (W64.to_uint (at + (W64.of_int 3)))));
      trace_a1____addstate_array_avx2x4 <-
      (trace_a1____addstate_array_avx2x4 ++
      [(Assert,
       ((0 <= ((W64.to_uint (at + (W64.of_int 3))) * 8)) /\
       ((((W64.to_uint (at + (W64.of_int 3))) * 8) + 8) <= 800)))]);
      st <- (BArray800.set64 st (W64.to_uint (at + (W64.of_int 3))) t3);
    } else {
      
    }
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((st, b_st, aLL, offset), trace_a1____addstate_array_avx2x4);
  }
  proc a1____absorb_array_avx2x4 (st:BArray800.t, b_st:BArray800.t, aT:int,
                                  buf0:BArray1.t, b_buf0:BArray1.t,
                                  buf1:BArray1.t, b_buf1:BArray1.t,
                                  buf2:BArray1.t, b_buf2:BArray1.t,
                                  buf3:BArray1.t, b_buf3:BArray1.t,
                                  offset:W64.t, lEN:int, rATE8:int,
                                  tRAILB:int) : ((BArray800.t * BArray800.t *
                                                 int * W64.t) *
                                                trace) = {
    var aLL:int;
    var iTERS:int;
    var i:W64.t;
    var  _0:int;
    var  _1:int;
    var old_TRAILB:int;
    var old_RATE8:int;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf3:BArray1.t;
    var old_buf3:BArray1.t;
    var old_b_buf2:BArray1.t;
    var old_buf2:BArray1.t;
    var old_b_buf1:BArray1.t;
    var old_buf1:BArray1.t;
    var old_b_buf0:BArray1.t;
    var old_buf0:BArray1.t;
    var old_AT:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace_a1____absorb_array_avx2x4:trace;
    old_TRAILB <- tRAILB;
    old_RATE8 <- rATE8;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf3 <- b_buf3;
    old_buf3 <- buf3;
    old_b_buf2 <- b_buf2;
    old_buf2 <- buf2;
    old_b_buf1 <- b_buf1;
    old_buf1 <- buf1;
    old_b_buf0 <- b_buf0;
    old_buf0 <- buf0;
    old_AT <- aT;
    old_b_st <- b_st;
    old_st <- st;
    trace_a1____absorb_array_avx2x4 <- [];
    trace_a1____absorb_array_avx2x4 <-
    (trace_a1____absorb_array_avx2x4 ++
    [(Assert,
     (((((((((((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (0 <= aT)) /\
              (aT < rATE8)) /\
             (0 < rATE8)) /\
            (rATE8 <= 200)) /\
           (((W64.to_uint offset) + lEN) <= 1)) /\
          (((aT + lEN) + ((tRAILB <> 0) ? 1 : 0)) <= 200)) /\
         (is_init b_buf0 (W64.to_uint offset) lEN)) /\
        (is_init b_buf1 (W64.to_uint offset) lEN)) /\
       (is_init b_buf2 (W64.to_uint offset) lEN)) /\
      (is_init b_buf3 (W64.to_uint offset) lEN)) /\
     (is_init b_st 0 800)))]);
    trace_a1____absorb_array_avx2x4 <-
    (trace_a1____absorb_array_avx2x4 ++
    [(Assert, ((0 <= tRAILB) /\ (tRAILB < 256)))]);
    aLL <- (aT + lEN);
    if (((aT + lEN) < rATE8)) {
      (tmp__data_A1____addstate_array_avx2x4, tmp__trace) <@ a1____addstate_array_avx2x4 (
      st, (BArray800.init_arr (W8.of_int (-1)) 800), aT, buf0, b_buf0, 
      buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset, lEN, tRAILB);
      (tmp__A1____addstate_array_avx2x4, tmp__A1____addstate_array_avx2x4_0,
      tmp__A1____addstate_array_avx2x4_1, tmp__A1____addstate_array_avx2x4_2) <-
      tmp__data_A1____addstate_array_avx2x4;
      trace_a1____absorb_array_avx2x4 <-
      (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
      st <- tmp__A1____addstate_array_avx2x4;
      b_st <- tmp__A1____addstate_array_avx2x4_0;
      aT <- tmp__A1____addstate_array_avx2x4_1;
      offset <- tmp__A1____addstate_array_avx2x4_2;
      trace_a1____absorb_array_avx2x4 <-
      (trace_a1____absorb_array_avx2x4 ++
      [(Assert,
       ((is_init b_st 0 800) ))]);
      if ((tRAILB <> 0)) {
        (tmp__data___addratebit_avx2x4, tmp__trace) <@ __addratebit_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), rATE8);
        (tmp____addratebit_avx2x4, tmp____addratebit_avx2x4_0) <-
        tmp__data___addratebit_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp____addratebit_avx2x4;
        b_st <- tmp____addratebit_avx2x4_0;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
    } else {
      if ((aT <> 0)) {
        (tmp__data_A1____addstate_array_avx2x4, tmp__trace) <@ a1____addstate_array_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), aT, buf0, b_buf0,
        buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset, (rATE8 - aT), 0);
        (tmp__A1____addstate_array_avx2x4,
        tmp__A1____addstate_array_avx2x4_0,
        tmp__A1____addstate_array_avx2x4_1,
        tmp__A1____addstate_array_avx2x4_2) <-
        tmp__data_A1____addstate_array_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp__A1____addstate_array_avx2x4;
        b_st <- tmp__A1____addstate_array_avx2x4_0;
         _0 <- tmp__A1____addstate_array_avx2x4_1;
        offset <- tmp__A1____addstate_array_avx2x4_2;
        lEN <- (lEN - (rATE8 - aT));
        (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
        st, b_st);
        (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
        tmp__data__keccakf1600_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp___keccakf1600_avx2x4;
        b_st <- tmp___keccakf1600_avx2x4_0;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
      iTERS <- (lEN %/ rATE8);
      i <- (W64.of_int 0);
      while ((i \ult (W64.of_int iTERS))) {
        (tmp__data_A1____addstate_array_avx2x4, tmp__trace) <@ a1____addstate_array_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), 0, buf0, b_buf0, 
        buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset, rATE8, 0);
        (tmp__A1____addstate_array_avx2x4,
        tmp__A1____addstate_array_avx2x4_0,
        tmp__A1____addstate_array_avx2x4_1,
        tmp__A1____addstate_array_avx2x4_2) <-
        tmp__data_A1____addstate_array_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp__A1____addstate_array_avx2x4;
        b_st <- tmp__A1____addstate_array_avx2x4_0;
         _1 <- tmp__A1____addstate_array_avx2x4_1;
        offset <- tmp__A1____addstate_array_avx2x4_2;
        (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
        st, b_st);
        (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
        tmp__data__keccakf1600_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp___keccakf1600_avx2x4;
        b_st <- tmp___keccakf1600_avx2x4_0;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ [(Assert, (is_init b_st 0 800))]);
        i <- (i + (W64.of_int 1));
      }
      lEN <- (aLL %% rATE8);
      (tmp__data_A1____addstate_array_avx2x4, tmp__trace) <@ a1____addstate_array_avx2x4 (
      st, (BArray800.init_arr (W8.of_int (-1)) 800), 0, buf0, b_buf0, 
      buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset, lEN, tRAILB);
      (tmp__A1____addstate_array_avx2x4, tmp__A1____addstate_array_avx2x4_0,
      tmp__A1____addstate_array_avx2x4_1, tmp__A1____addstate_array_avx2x4_2) <-
      tmp__data_A1____addstate_array_avx2x4;
      trace_a1____absorb_array_avx2x4 <-
      (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
      st <- tmp__A1____addstate_array_avx2x4;
      b_st <- tmp__A1____addstate_array_avx2x4_0;
      aT <- tmp__A1____addstate_array_avx2x4_1;
      offset <- tmp__A1____addstate_array_avx2x4_2;
      trace_a1____absorb_array_avx2x4 <-
      (trace_a1____absorb_array_avx2x4 ++
      [(Assert,
       ((is_init b_st 0 800)))]);
      if ((tRAILB <> 0)) {
        (tmp__data___addratebit_avx2x4, tmp__trace) <@ __addratebit_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), rATE8);
        (tmp____addratebit_avx2x4, tmp____addratebit_avx2x4_0) <-
        tmp__data___addratebit_avx2x4;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ tmp__trace);
        st <- tmp____addratebit_avx2x4;
        b_st <- tmp____addratebit_avx2x4_0;
        trace_a1____absorb_array_avx2x4 <-
        (trace_a1____absorb_array_avx2x4 ++ [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
    }
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((st, b_st, aT, offset), trace_a1____absorb_array_avx2x4);
  }
  proc a32____aread_subu64 (buf:BArray32.t, b_buf:BArray32.t, offset:W64.t,
                            dELTA:int, lEN:int, tRAIL:int) : ((int * int *
                                                              int * W64.t) *
                                                             trace) = {
    var w:W64.t;
    var iLEN:int;
    var t16:W64.t;
    var t8:W64.t;
    var old_TRAIL:int;
    var old_LEN:int;
    var old_DELTA:int;
    var old_offset:W64.t;
    var old_b_buf:BArray32.t;
    var old_buf:BArray32.t;
    var trace_a32____aread_subu64:trace;
    old_TRAIL <- tRAIL;
    old_LEN <- lEN;
    old_DELTA <- dELTA;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    trace_a32____aread_subu64 <- [];
    trace_a32____aread_subu64 <-
    (trace_a32____aread_subu64 ++
    [(Assert,
     ((0 < lEN) ? ((((is_init b_buf
                     (W64.to_uint (offset + (W64.of_int dELTA)))
                     ((lEN < 8) ? lEN : 8)) /\
                    (0 <= dELTA)) /\
                   (0 <= ((W64.to_uint offset) + dELTA))) /\
                  ((((W64.to_uint offset) + dELTA) + ((lEN < 8) ? lEN : 8)) <=
                  32)) : true))]);
    trace_a32____aread_subu64 <-
    (trace_a32____aread_subu64 ++
    [(Assert, ((0 <= tRAIL) /\ (tRAIL < 256)))]);
    iLEN <- lEN;
    if ((lEN <= 0)) {
      w <- (W64.of_int (tRAIL %% 256));
      tRAIL <- 0;
    } else {
      if ((8 <= lEN)) {
        trace_a32____aread_subu64 <-
        (trace_a32____aread_subu64 ++
        [(Assert,
         ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
         (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 32)))]);
        trace_a32____aread_subu64 <-
        (trace_a32____aread_subu64 ++
        [(Assert,
         (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
        w <-
        (BArray32.get64d buf (W64.to_uint (offset + (W64.of_int dELTA))));
        dELTA <- (dELTA + 8);
        lEN <- (lEN - 8);
      } else {
        if ((4 <= lEN)) {
          trace_a32____aread_subu64 <-
          (trace_a32____aread_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 4) <= 32)))]);
          trace_a32____aread_subu64 <-
          (trace_a32____aread_subu64 ++
          [(Assert,
           (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 4))]);
          w <-
          (zeroextu64
          (BArray32.get32d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
          dELTA <- (dELTA + 4);
          lEN <- (lEN - 4);
        } else {
          w <- (W64.of_int 0);
        }
        if ((2 <= lEN)) {
          trace_a32____aread_subu64 <-
          (trace_a32____aread_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 2) <= 32)))]);
          trace_a32____aread_subu64 <-
          (trace_a32____aread_subu64 ++
          [(Assert,
           (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 2))]);
          t16 <-
          (zeroextu64
          (BArray32.get16d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
          dELTA <- (dELTA + 2);
          lEN <- (lEN - 2);
        } else {
          t16 <- (W64.of_int 0);
        }
        if (((1 <= lEN) \/ ((tRAIL %% 256) <> 0))) {
          if ((1 <= lEN)) {
            trace_a32____aread_subu64 <-
            (trace_a32____aread_subu64 ++
            [(Assert,
             ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
             (((W64.to_uint (offset + (W64.of_int dELTA))) + 1) <= 32)))]);
            trace_a32____aread_subu64 <-
            (trace_a32____aread_subu64 ++
            [(Assert,
             (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 1))]);
            t8 <-
            (zeroextu64
            (BArray32.get8d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
            if (((tRAIL %% 256) <> 0)) {
              t8 <- (t8 `|` (W64.of_int (256 * (tRAIL %% 256))));
            } else {
              
            }
            dELTA <- (dELTA + 1);
            lEN <- (lEN - 1);
          } else {
            t8 <- (W64.of_int (tRAIL %% 256));
          }
          tRAIL <- 0;
          t8 <- (t8 `<<` (W8.of_int (8 * (2 * ((iLEN %/ 2) %% 2)))));
          t16 <- (t16 `|` t8);
        } else {
          
        }
        t16 <- (t16 `<<` (W8.of_int (8 * (4 * ((iLEN %/ 4) %% 2)))));
        w <- (w `|` t16);
      }
    }
    return ((dELTA, lEN, tRAIL, w), trace_a32____aread_subu64);
  }
  proc a32____aread_bcast_4subu64 (buf:BArray32.t, b_buf:BArray32.t,
                                   offset:W64.t, dELTA:int, lEN:int,
                                   tRAIL:int) : ((int * int * int * W256.t) *
                                                trace) = {
    var w:W256.t;
    var t64:W64.t;
    var t128:W128.t;
    var old_TRAIL:int;
    var old_LEN:int;
    var old_DELTA:int;
    var old_offset:W64.t;
    var old_b_buf:BArray32.t;
    var old_buf:BArray32.t;
    var trace_a32____aread_bcast_4subu64:trace;
    old_TRAIL <- tRAIL;
    old_LEN <- lEN;
    old_DELTA <- dELTA;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    trace_a32____aread_bcast_4subu64 <- [];
    trace_a32____aread_bcast_4subu64 <-
    (trace_a32____aread_bcast_4subu64 ++
    [(Assert,
     ((0 < lEN) ? ((((is_init b_buf
                     (W64.to_uint (offset + (W64.of_int dELTA)))
                     ((lEN < 8) ? lEN : 8)) /\
                    (0 <= dELTA)) /\
                   (0 <= ((W64.to_uint offset) + dELTA))) /\
                  ((((W64.to_uint offset) + dELTA) + ((lEN < 8) ? lEN : 8)) <=
                  32)) : true))]);
    trace_a32____aread_bcast_4subu64 <-
    (trace_a32____aread_bcast_4subu64 ++
    [(Assert, ((0 <= tRAIL) /\ (tRAIL < 256)))]);
    if (((lEN <= 0) /\ ((tRAIL %% 256) = 0))) {
      w <- (set0_256);
    } else {
      if ((8 <= lEN)) {
        trace_a32____aread_bcast_4subu64 <-
        (trace_a32____aread_bcast_4subu64 ++
        [(Assert,
         ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
         (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 32)))]);
        trace_a32____aread_bcast_4subu64 <-
        (trace_a32____aread_bcast_4subu64 ++
        [(Assert,
         (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
        w <-
        (VPBROADCAST_4u64
        (BArray32.get64d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
        dELTA <- (dELTA + 8);
        lEN <- (lEN - 8);
      } else {
        (tmp__data_A32____aread_subu64, tmp__trace) <@ a32____aread_subu64 (
        buf, b_buf, offset, dELTA, lEN, tRAIL);
        (tmp__A32____aread_subu64, tmp__A32____aread_subu64_0,
        tmp__A32____aread_subu64_1, tmp__A32____aread_subu64_2) <-
        tmp__data_A32____aread_subu64;
        trace_a32____aread_bcast_4subu64 <-
        (trace_a32____aread_bcast_4subu64 ++ tmp__trace);
        dELTA <- tmp__A32____aread_subu64;
        lEN <- tmp__A32____aread_subu64_0;
        tRAIL <- tmp__A32____aread_subu64_1;
        t64 <- tmp__A32____aread_subu64_2;
        t128 <- (zeroextu128 t64);
        w <- (VPBROADCAST_4u64 (truncateu64 t128));
      }
    }
    return ((dELTA, lEN, tRAIL, w), trace_a32____aread_bcast_4subu64);
  }
  proc a32____addstate_bcast_array_avx2x4 (st:BArray800.t, b_st:BArray800.t,
                                           aT:int, buf:BArray32.t,
                                           b_buf:BArray32.t, offset:W64.t,
                                           lEN:int, tRAILB:int) : ((BArray800.t *
                                                                   BArray800.t *
                                                                   int *
                                                                   W64.t) *
                                                                  trace) = {
    var aLL:int;
    var lO:int;
    var at:W64.t;
    var dELTA:int;
    var t256:W256.t;
    var  _0:int;
    var  _1:int;
    var  _2:int;
    var  _3:int;
    var old_TRAILB:int;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf:BArray32.t;
    var old_buf:BArray32.t;
    var old_AT:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace_a32____addstate_bcast_array_avx2x4:trace;
    old_TRAILB <- tRAILB;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    old_AT <- aT;
    old_b_st <- b_st;
    old_st <- st;
    trace_a32____addstate_bcast_array_avx2x4 <- [];
    trace_a32____addstate_bcast_array_avx2x4 <-
    (trace_a32____addstate_bcast_array_avx2x4 ++
    [(Assert,
     ((((((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (0 <= aT)) /\
         (aT < 200)) /\
        (((W64.to_uint offset) + lEN) <= 32)) /\
       (((aT + lEN) + ((tRAILB <> 0) ? 1 : 0)) <= 200)) /\
      (is_init b_buf (W64.to_uint offset) lEN)) /\
     (is_init b_st 0 800)))]);
    trace_a32____addstate_bcast_array_avx2x4 <-
    (trace_a32____addstate_bcast_array_avx2x4 ++
    [(Assert, ((0 <= tRAILB) /\ (tRAILB < 256)))]);
    aLL <- (aT + lEN);
    lO <- (aT %% 8);
    at <- (W64.of_int (32 * (aT %/ 8)));
    dELTA <- 0;
    if ((0 < lO)) {
      if (((lO + lEN) < 8)) {
        if ((tRAILB <> 0)) {
          aLL <- (aLL + 1);
        } else {
          
        }
        (tmp__data_A32____aread_bcast_4subu64, tmp__trace) <@ a32____aread_bcast_4subu64 (
        buf, b_buf, offset, dELTA, lEN, tRAILB);
        (tmp__A32____aread_bcast_4subu64, tmp__A32____aread_bcast_4subu64_0,
        tmp__A32____aread_bcast_4subu64_1, tmp__A32____aread_bcast_4subu64_2) <-
        tmp__data_A32____aread_bcast_4subu64;
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++ tmp__trace);
        dELTA <- tmp__A32____aread_bcast_4subu64;
         _2 <- tmp__A32____aread_bcast_4subu64_0;
        tRAILB <- tmp__A32____aread_bcast_4subu64_1;
        t256 <- tmp__A32____aread_bcast_4subu64_2;
        t256 <- (VPSLL_4u64 t256 (W128.of_int (8 * lO)));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        t256 <- (t256 `^` (BArray800.get256d st (W64.to_uint at)));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        st <- (BArray800.set256d st (W64.to_uint at) t256);
        aT <- 0;
        lEN <- 0;
      } else {
        if ((8 <= lEN)) {
          trace_a32____addstate_bcast_array_avx2x4 <-
          (trace_a32____addstate_bcast_array_avx2x4 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 32)))]);
          trace_a32____addstate_bcast_array_avx2x4 <-
          (trace_a32____addstate_bcast_array_avx2x4 ++
          [(Assert,
           (is_init b_buf (W64.to_uint (offset + (W64.of_int dELTA))) 8))]);
          t256 <-
          (VPBROADCAST_4u64
          (BArray32.get64d buf (W64.to_uint (offset + (W64.of_int dELTA)))));
          dELTA <- (dELTA + (8 - lO));
        } else {
          (tmp__data_A32____aread_bcast_4subu64, tmp__trace) <@ a32____aread_bcast_4subu64 (
          buf, b_buf, offset, dELTA, (8 - lO), 0);
          (tmp__A32____aread_bcast_4subu64,
          tmp__A32____aread_bcast_4subu64_0,
          tmp__A32____aread_bcast_4subu64_1,
          tmp__A32____aread_bcast_4subu64_2) <-
          tmp__data_A32____aread_bcast_4subu64;
          trace_a32____addstate_bcast_array_avx2x4 <-
          (trace_a32____addstate_bcast_array_avx2x4 ++ tmp__trace);
          dELTA <- tmp__A32____aread_bcast_4subu64;
           _0 <- tmp__A32____aread_bcast_4subu64_0;
           _1 <- tmp__A32____aread_bcast_4subu64_1;
          t256 <- tmp__A32____aread_bcast_4subu64_2;
        }
        lEN <- (lEN - (8 - lO));
        aT <- (aT + (8 - lO));
        t256 <- (VPSLL_4u64 t256 (W128.of_int (8 * lO)));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        t256 <- (t256 `^` (BArray800.get256d st (W64.to_uint at)));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        st <- (BArray800.set256d st (W64.to_uint at) t256);
        at <- (at + (W64.of_int 32));
      }
      offset <- (offset + (W64.of_int dELTA));
      dELTA <- 0;
    } else {
      
    }
    if ((8 <= lEN)) {
      while ((at \ult (W64.of_int ((32 * (aT %/ 8)) + (32 * (lEN %/ 8)))))) {
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 32)))]);
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert, (is_init b_buf (W64.to_uint offset) 8))]);
        t256 <-
        (VPBROADCAST_4u64 (BArray32.get64d buf (W64.to_uint offset)));
        offset <- (offset + (W64.of_int 8));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        t256 <- (t256 `^` (BArray800.get256d st (W64.to_uint at)));
        trace_a32____addstate_bcast_array_avx2x4 <-
        (trace_a32____addstate_bcast_array_avx2x4 ++
        [(Assert,
         ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
        st <- (BArray800.set256d st (W64.to_uint at) t256);
        at <- (at + (W64.of_int 32));
      }
      lEN <- ((aT + lEN) %% 8);
    } else {
      
    }
    lO <- ((aT + lEN) %% 8);
    if (((0 < lO) \/ (tRAILB <> 0))) {
      if ((tRAILB <> 0)) {
        aLL <- (aLL + 1);
      } else {
        
      }
      (tmp__data_A32____aread_bcast_4subu64, tmp__trace) <@ a32____aread_bcast_4subu64 (
      buf, b_buf, offset, dELTA, lO, tRAILB);
      (tmp__A32____aread_bcast_4subu64, tmp__A32____aread_bcast_4subu64_0,
      tmp__A32____aread_bcast_4subu64_1, tmp__A32____aread_bcast_4subu64_2) <-
      tmp__data_A32____aread_bcast_4subu64;
      trace_a32____addstate_bcast_array_avx2x4 <-
      (trace_a32____addstate_bcast_array_avx2x4 ++ tmp__trace);
      dELTA <- tmp__A32____aread_bcast_4subu64;
       _3 <- tmp__A32____aread_bcast_4subu64_0;
      tRAILB <- tmp__A32____aread_bcast_4subu64_1;
      t256 <- tmp__A32____aread_bcast_4subu64_2;
      offset <- (offset + (W64.of_int dELTA));
      trace_a32____addstate_bcast_array_avx2x4 <-
      (trace_a32____addstate_bcast_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
      t256 <- (t256 `^` (BArray800.get256d st (W64.to_uint at)));
      trace_a32____addstate_bcast_array_avx2x4 <-
      (trace_a32____addstate_bcast_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint at)) /\ (((W64.to_uint at) + 32) <= 800)))]);
      st <- (BArray800.set256d st (W64.to_uint at) t256);
    } else {
      
    }
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((st, b_st, aLL, offset),
           trace_a32____addstate_bcast_array_avx2x4);
  }
  proc a32____absorb_bcast_array_avx2x4 (st:BArray800.t, b_st:BArray800.t,
                                         aT:int, buf:BArray32.t,
                                         b_buf:BArray32.t, offset:W64.t,
                                         lEN:int, rATE8:int, tRAILB:int) : 
  ((BArray800.t * BArray800.t * int * W64.t) * trace) = {
    var aLL:int;
    var iTERS:int;
    var i:W64.t;
    var  _0:int;
    var  _1:int;
    var old_TRAILB:int;
    var old_RATE8:int;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf:BArray32.t;
    var old_buf:BArray32.t;
    var old_AT:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var trace_a32____absorb_bcast_array_avx2x4:trace;
    old_TRAILB <- tRAILB;
    old_RATE8 <- rATE8;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    old_AT <- aT;
    old_b_st <- b_st;
    old_st <- st;
    trace_a32____absorb_bcast_array_avx2x4 <- [];
    trace_a32____absorb_bcast_array_avx2x4 <-
    (trace_a32____absorb_bcast_array_avx2x4 ++
    [(Assert,
     ((((((((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (0 <= aT)) /\
           (aT < rATE8)) /\
          (((W64.to_uint offset) + lEN) <= 32)) /\
         (((aT + lEN) + ((tRAILB <> 0) ? 1 : 0)) <= 200)) /\
        (0 < rATE8)) /\
       (rATE8 <= 200)) /\
      (is_init b_buf (W64.to_uint offset) lEN)) /\
     (is_init b_st 0 800)))]);
    trace_a32____absorb_bcast_array_avx2x4 <-
    (trace_a32____absorb_bcast_array_avx2x4 ++
    [(Assert, ((0 <= tRAILB) /\ (tRAILB < 256)))]);
    aLL <- (aT + lEN);
    if (((aT + lEN) < rATE8)) {
      (tmp__data_A32____addstate_bcast_array_avx2x4, tmp__trace) <@ a32____addstate_bcast_array_avx2x4 (
      st, (BArray800.init_arr (W8.of_int (-1)) 800), aT, buf, b_buf, 
      offset, lEN, tRAILB);
      (tmp__A32____addstate_bcast_array_avx2x4,
      tmp__A32____addstate_bcast_array_avx2x4_0,
      tmp__A32____addstate_bcast_array_avx2x4_1,
      tmp__A32____addstate_bcast_array_avx2x4_2) <-
      tmp__data_A32____addstate_bcast_array_avx2x4;
      trace_a32____absorb_bcast_array_avx2x4 <-
      (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
      st <- tmp__A32____addstate_bcast_array_avx2x4;
      b_st <- tmp__A32____addstate_bcast_array_avx2x4_0;
      aT <- tmp__A32____addstate_bcast_array_avx2x4_1;
      offset <- tmp__A32____addstate_bcast_array_avx2x4_2;
      trace_a32____absorb_bcast_array_avx2x4 <-
      (trace_a32____absorb_bcast_array_avx2x4 ++
      [(Assert,
       ((is_init b_st 0 800)))]);
      if ((tRAILB <> 0)) {
        (tmp__data___addratebit_avx2x4, tmp__trace) <@ __addratebit_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), rATE8);
        (tmp____addratebit_avx2x4, tmp____addratebit_avx2x4_0) <-
        tmp__data___addratebit_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp____addratebit_avx2x4;
        b_st <- tmp____addratebit_avx2x4_0;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++
        [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
    } else {
      if ((aT <> 0)) {
        (tmp__data_A32____addstate_bcast_array_avx2x4, tmp__trace) <@ 
        a32____addstate_bcast_array_avx2x4 (st,
        (BArray800.init_arr (W8.of_int (-1)) 800), aT, buf, b_buf, offset,
        (rATE8 - aT), 0);
        (tmp__A32____addstate_bcast_array_avx2x4,
        tmp__A32____addstate_bcast_array_avx2x4_0,
        tmp__A32____addstate_bcast_array_avx2x4_1,
        tmp__A32____addstate_bcast_array_avx2x4_2) <-
        tmp__data_A32____addstate_bcast_array_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp__A32____addstate_bcast_array_avx2x4;
        b_st <- tmp__A32____addstate_bcast_array_avx2x4_0;
         _0 <- tmp__A32____addstate_bcast_array_avx2x4_1;
        offset <- tmp__A32____addstate_bcast_array_avx2x4_2;
        lEN <- (lEN - (rATE8 - aT));
        (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
        st, b_st);
        (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
        tmp__data__keccakf1600_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp___keccakf1600_avx2x4;
        b_st <- tmp___keccakf1600_avx2x4_0;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++
        [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
      iTERS <- (lEN %/ rATE8);
      i <- (W64.of_int 0);
      while ((i \ult (W64.of_int iTERS))) {
        (tmp__data_A32____addstate_bcast_array_avx2x4, tmp__trace) <@ 
        a32____addstate_bcast_array_avx2x4 (st,
        (BArray800.init_arr (W8.of_int (-1)) 800), 0, buf, b_buf, offset,
        rATE8, 0);
        (tmp__A32____addstate_bcast_array_avx2x4,
        tmp__A32____addstate_bcast_array_avx2x4_0,
        tmp__A32____addstate_bcast_array_avx2x4_1,
        tmp__A32____addstate_bcast_array_avx2x4_2) <-
        tmp__data_A32____addstate_bcast_array_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp__A32____addstate_bcast_array_avx2x4;
        b_st <- tmp__A32____addstate_bcast_array_avx2x4_0;
         _1 <- tmp__A32____addstate_bcast_array_avx2x4_1;
        offset <- tmp__A32____addstate_bcast_array_avx2x4_2;
        (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
        st, b_st);
        (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
        tmp__data__keccakf1600_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp___keccakf1600_avx2x4;
        b_st <- tmp___keccakf1600_avx2x4_0;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++
        [(Assert, (is_init b_st 0 800))]);
        i <- (i + (W64.of_int 1));
      }
      lEN <- (aLL %% rATE8);
      (tmp__data_A32____addstate_bcast_array_avx2x4, tmp__trace) <@ a32____addstate_bcast_array_avx2x4 (
      st, (BArray800.init_arr (W8.of_int (-1)) 800), 0, buf, b_buf, offset,
      lEN, tRAILB);
      (tmp__A32____addstate_bcast_array_avx2x4,
      tmp__A32____addstate_bcast_array_avx2x4_0,
      tmp__A32____addstate_bcast_array_avx2x4_1,
      tmp__A32____addstate_bcast_array_avx2x4_2) <-
      tmp__data_A32____addstate_bcast_array_avx2x4;
      trace_a32____absorb_bcast_array_avx2x4 <-
      (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
      st <- tmp__A32____addstate_bcast_array_avx2x4;
      b_st <- tmp__A32____addstate_bcast_array_avx2x4_0;
      aT <- tmp__A32____addstate_bcast_array_avx2x4_1;
      offset <- tmp__A32____addstate_bcast_array_avx2x4_2;
      trace_a32____absorb_bcast_array_avx2x4 <-
      (trace_a32____absorb_bcast_array_avx2x4 ++
      [(Assert,
       (is_init b_st 0 800))]);
      if ((tRAILB <> 0)) {
        (tmp__data___addratebit_avx2x4, tmp__trace) <@ __addratebit_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800), rATE8);
        (tmp____addratebit_avx2x4, tmp____addratebit_avx2x4_0) <-
        tmp__data___addratebit_avx2x4;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++ tmp__trace);
        st <- tmp____addratebit_avx2x4;
        b_st <- tmp____addratebit_avx2x4_0;
        trace_a32____absorb_bcast_array_avx2x4 <-
        (trace_a32____absorb_bcast_array_avx2x4 ++
        [(Assert, (is_init b_st 0 800))]);
      } else {
        
      }
    }
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((st, b_st, aT, offset), trace_a32____absorb_bcast_array_avx2x4);
  }
  proc a128____awrite_subu64 (buf:BArray128.t, b_buf:BArray128.t,
                              offset:W64.t, dELTA:int, lEN:int, w:W64.t) : 
  ((BArray128.t * BArray128.t * int * int) * trace) = {
    var old_w:W64.t;
    var old_LEN:int;
    var old_DELTA:int;
    var old_offset:W64.t;
    var old_b_buf:BArray128.t;
    var old_buf:BArray128.t;
    var trace_a128____awrite_subu64:trace;
    old_w <- w;
    old_LEN <- lEN;
    old_DELTA <- dELTA;
    old_offset <- offset;
    old_b_buf <- b_buf;
    old_buf <- buf;
    trace_a128____awrite_subu64 <- [];
    trace_a128____awrite_subu64 <-
    (trace_a128____awrite_subu64 ++
    [(Assert,
     ((0 < lEN) ? (((0 <= ((W64.to_uint offset) + dELTA)) /\ (0 <= dELTA)) /\
                  ((((W64.to_uint offset) + dELTA) + ((lEN < 8) ? lEN : 8)) <=
                  128)) : true))]);
    if ((0 < lEN)) {
      if ((8 <= lEN)) {
        trace_a128____awrite_subu64 <-
        (trace_a128____awrite_subu64 ++
        [(Assert,
         ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
         (((W64.to_uint (offset + (W64.of_int dELTA))) + 8) <= 128)))]);
        b_buf <-
        (BArray128.set64d b_buf (W64.to_uint (offset + (W64.of_int dELTA)))
        (W64.of_int 18446744073709551615));
        buf <-
        (BArray128.set64d buf (W64.to_uint (offset + (W64.of_int dELTA))) w);
        dELTA <- (dELTA + 8);
        lEN <- (lEN - 8);
      } else {
        if ((4 <= lEN)) {
          trace_a128____awrite_subu64 <-
          (trace_a128____awrite_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 4) <= 128)))]);
          b_buf <-
          (BArray128.set32d b_buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (W32.of_int 4294967295));
          buf <-
          (BArray128.set32d buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (truncateu32 w));
          w <- (w `>>` (W8.of_int 32));
          dELTA <- (dELTA + 4);
          lEN <- (lEN - 4);
        } else {
          
        }
        if ((2 <= lEN)) {
          trace_a128____awrite_subu64 <-
          (trace_a128____awrite_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 2) <= 128)))]);
          b_buf <-
          (BArray128.set16d b_buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (W16.of_int 65535));
          buf <-
          (BArray128.set16d buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (truncateu16 w));
          w <- (w `>>` (W8.of_int 16));
          dELTA <- (dELTA + 2);
          lEN <- (lEN - 2);
        } else {
          
        }
        if ((1 <= lEN)) {
          trace_a128____awrite_subu64 <-
          (trace_a128____awrite_subu64 ++
          [(Assert,
           ((0 <= (W64.to_uint (offset + (W64.of_int dELTA)))) /\
           (((W64.to_uint (offset + (W64.of_int dELTA))) + 1) <= 128)))]);
          b_buf <-
          (BArray128.set8d b_buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (W8.of_int 255));
          buf <-
          (BArray128.set8d buf (W64.to_uint (offset + (W64.of_int dELTA)))
          (truncateu8 w));
          dELTA <- (dELTA + 1);
          lEN <- (lEN - 1);
        } else {
          
        }
      }
    } else {
      
    }
    return ((buf, b_buf, dELTA, lEN), trace_a128____awrite_subu64);
  }
  proc a128____dumpstate_array_avx2x4 (buf0:BArray128.t, b_buf0:BArray128.t,
                                       buf1:BArray128.t, b_buf1:BArray128.t,
                                       buf2:BArray128.t, b_buf2:BArray128.t,
                                       buf3:BArray128.t, b_buf3:BArray128.t,
                                       offset:W64.t, lEN:int, st:BArray800.t,
                                       b_st:BArray800.t) : ((BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            BArray128.t *
                                                            W64.t) *
                                                           trace) = {
    var i:W64.t;
    var x0:W256.t;
    var x1:W256.t;
    var x2:W256.t;
    var x3:W256.t;
    var t0:W64.t;
    var t1:W64.t;
    var t2:W64.t;
    var t3:W64.t;
    var  _0:int;
    var  _1:int;
    var  _2:int;
    var  _3:int;
    var  _4:int;
    var  _5:int;
    var  _6:int;
    var  _7:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf3:BArray128.t;
    var old_buf3:BArray128.t;
    var old_b_buf2:BArray128.t;
    var old_buf2:BArray128.t;
    var old_b_buf1:BArray128.t;
    var old_buf1:BArray128.t;
    var old_b_buf0:BArray128.t;
    var old_buf0:BArray128.t;
    var trace_a128____dumpstate_array_avx2x4:trace;
    old_b_st <- b_st;
    old_st <- st;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf3 <- b_buf3;
    old_buf3 <- buf3;
    old_b_buf2 <- b_buf2;
    old_buf2 <- buf2;
    old_b_buf1 <- b_buf1;
    old_buf1 <- buf1;
    old_b_buf0 <- b_buf0;
    old_buf0 <- buf0;
    trace_a128____dumpstate_array_avx2x4 <- [];
    trace_a128____dumpstate_array_avx2x4 <-
    (trace_a128____dumpstate_array_avx2x4 ++
    [(Assert,
     ((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (is_init b_st 0 800)) /\
     (((W64.to_uint offset) + lEN) <= 128)))]);
    i <- (W64.of_int 0);
    while ((i \slt (W64.of_int (32 * (lEN %/ 32))))) {
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint ((W64.of_int 4) * i))) /\
       (((W64.to_uint ((W64.of_int 4) * i)) + 32) <= 800)))]);
      x0 <- (BArray800.get256d st (W64.to_uint ((W64.of_int 4) * i)));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 32)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 32))) + 32) <= 800)))]);
      x1 <-
      (BArray800.get256d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 32))));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 64)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 64))) + 32) <= 800)))]);
      x2 <-
      (BArray800.get256d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 64))));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 96)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 96))) + 32) <= 800)))]);
      x3 <-
      (BArray800.get256d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 96))));
      i <- (i + (W64.of_int 32));
      (tmp__data___4u64x4_u256x4, tmp__trace) <@ __4u64x4_u256x4 (x0, 
      x1, x2, x3);
      (tmp____4u64x4_u256x4, tmp____4u64x4_u256x4_0, tmp____4u64x4_u256x4_1,
      tmp____4u64x4_u256x4_2) <- tmp__data___4u64x4_u256x4;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++ tmp__trace);
      x0 <- tmp____4u64x4_u256x4;
      x1 <- tmp____4u64x4_u256x4_0;
      x2 <- tmp____4u64x4_u256x4_1;
      x3 <- tmp____4u64x4_u256x4_2;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 128)))]);
      b_buf0 <-
      (BArray128.set256d b_buf0 (W64.to_uint offset)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      buf0 <- (BArray128.set256d buf0 (W64.to_uint offset) x0);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 128)))]);
      b_buf1 <-
      (BArray128.set256d b_buf1 (W64.to_uint offset)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      buf1 <- (BArray128.set256d buf1 (W64.to_uint offset) x1);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 128)))]);
      b_buf2 <-
      (BArray128.set256d b_buf2 (W64.to_uint offset)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      buf2 <- (BArray128.set256d buf2 (W64.to_uint offset) x2);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 32) <= 128)))]);
      b_buf3 <-
      (BArray128.set256d b_buf3 (W64.to_uint offset)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      buf3 <- (BArray128.set256d buf3 (W64.to_uint offset) x3);
      offset <- (offset + (W64.of_int 32));
    }
    while ((i \slt (W64.of_int (8 * (lEN %/ 8))))) {
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint ((W64.of_int 4) * i))) /\
       (((W64.to_uint ((W64.of_int 4) * i)) + 8) <= 800)))]);
      t0 <- (BArray800.get64d st (W64.to_uint ((W64.of_int 4) * i)));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 128)))]);
      b_buf0 <-
      (BArray128.set64d b_buf0 (W64.to_uint offset)
      (W64.of_int 18446744073709551615));
      buf0 <- (BArray128.set64d buf0 (W64.to_uint offset) t0);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8))) + 8) <= 800)))]);
      t1 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8))));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 128)))]);
      b_buf1 <-
      (BArray128.set64d b_buf1 (W64.to_uint offset)
      (W64.of_int 18446744073709551615));
      buf1 <- (BArray128.set64d buf1 (W64.to_uint offset) t1);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16))) + 8) <= 800)))]);
      t2 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16))));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 128)))]);
      b_buf2 <-
      (BArray128.set64d b_buf2 (W64.to_uint offset)
      (W64.of_int 18446744073709551615));
      buf2 <- (BArray128.set64d buf2 (W64.to_uint offset) t2);
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24))) + 8) <= 800)))]);
      t3 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24))));
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint offset)) /\ (((W64.to_uint offset) + 8) <= 128)))]);
      b_buf3 <-
      (BArray128.set64d b_buf3 (W64.to_uint offset)
      (W64.of_int 18446744073709551615));
      buf3 <- (BArray128.set64d buf3 (W64.to_uint offset) t3);
      i <- (i + (W64.of_int 8));
      offset <- (offset + (W64.of_int 8));
    }
    if ((0 < (lEN %% 8))) {
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint ((W64.of_int 4) * i))) /\
       (((W64.to_uint ((W64.of_int 4) * i)) + 8) <= 800)))]);
      t0 <- (BArray800.get64d st (W64.to_uint ((W64.of_int 4) * i)));
      (tmp__data_A128____awrite_subu64, tmp__trace) <@ a128____awrite_subu64 (
      buf0, b_buf0, offset, 0, (lEN %% 8), t0);
      (tmp__A128____awrite_subu64, tmp__A128____awrite_subu64_0,
      tmp__A128____awrite_subu64_1, tmp__A128____awrite_subu64_2) <-
      tmp__data_A128____awrite_subu64;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++ tmp__trace);
      buf0 <- tmp__A128____awrite_subu64;
      b_buf0 <- tmp__A128____awrite_subu64_0;
       _0 <- tmp__A128____awrite_subu64_1;
       _1 <- tmp__A128____awrite_subu64_2;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8))) + 8) <= 800)))]);
      t1 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 8))));
      (tmp__data_A128____awrite_subu64, tmp__trace) <@ a128____awrite_subu64 (
      buf1, b_buf1, offset, 0, (lEN %% 8), t1);
      (tmp__A128____awrite_subu64, tmp__A128____awrite_subu64_0,
      tmp__A128____awrite_subu64_1, tmp__A128____awrite_subu64_2) <-
      tmp__data_A128____awrite_subu64;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++ tmp__trace);
      buf1 <- tmp__A128____awrite_subu64;
      b_buf1 <- tmp__A128____awrite_subu64_0;
       _2 <- tmp__A128____awrite_subu64_1;
       _3 <- tmp__A128____awrite_subu64_2;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16))) + 8) <= 800)))]);
      t2 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 16))));
      (tmp__data_A128____awrite_subu64, tmp__trace) <@ a128____awrite_subu64 (
      buf2, b_buf2, offset, 0, (lEN %% 8), t2);
      (tmp__A128____awrite_subu64, tmp__A128____awrite_subu64_0,
      tmp__A128____awrite_subu64_1, tmp__A128____awrite_subu64_2) <-
      tmp__data_A128____awrite_subu64;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++ tmp__trace);
      buf2 <- tmp__A128____awrite_subu64;
      b_buf2 <- tmp__A128____awrite_subu64_0;
       _4 <- tmp__A128____awrite_subu64_1;
       _5 <- tmp__A128____awrite_subu64_2;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++
      [(Assert,
       ((0 <= (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24)))) /\
       (((W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24))) + 8) <= 800)))]);
      t3 <-
      (BArray800.get64d st
      (W64.to_uint (((W64.of_int 4) * i) + (W64.of_int 24))));
      (tmp__data_A128____awrite_subu64, tmp__trace) <@ a128____awrite_subu64 (
      buf3, b_buf3, offset, 0, (lEN %% 8), t3);
      (tmp__A128____awrite_subu64, tmp__A128____awrite_subu64_0,
      tmp__A128____awrite_subu64_1, tmp__A128____awrite_subu64_2) <-
      tmp__data_A128____awrite_subu64;
      trace_a128____dumpstate_array_avx2x4 <-
      (trace_a128____dumpstate_array_avx2x4 ++ tmp__trace);
      buf3 <- tmp__A128____awrite_subu64;
      b_buf3 <- tmp__A128____awrite_subu64_0;
       _6 <- tmp__A128____awrite_subu64_1;
       _7 <- tmp__A128____awrite_subu64_2;
      offset <- (offset + (W64.of_int (lEN %% 8)));
    } else {
      
    }
    return ((buf0, b_buf0, buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset),
           trace_a128____dumpstate_array_avx2x4);
  }
  proc a128____squeeze_array_avx2x4 (buf0:BArray128.t, b_buf0:BArray128.t,
                                     buf1:BArray128.t, b_buf1:BArray128.t,
                                     buf2:BArray128.t, b_buf2:BArray128.t,
                                     buf3:BArray128.t, b_buf3:BArray128.t,
                                     offset:W64.t, lEN:int, st:BArray800.t,
                                     b_st:BArray800.t, rATE8:int) : (
                                                                    (BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    BArray128.t *
                                                                    W64.t *
                                                                    BArray800.t *
                                                                    BArray800.t) *
                                                                    trace) = {
    var iTERS:int;
    var lO:int;
    var i:W64.t;
    var old_RATE8:int;
    var old_b_st:BArray800.t;
    var old_st:BArray800.t;
    var old_LEN:int;
    var old_offset:W64.t;
    var old_b_buf3:BArray128.t;
    var old_buf3:BArray128.t;
    var old_b_buf2:BArray128.t;
    var old_buf2:BArray128.t;
    var old_b_buf1:BArray128.t;
    var old_buf1:BArray128.t;
    var old_b_buf0:BArray128.t;
    var old_buf0:BArray128.t;
    var trace_a128____squeeze_array_avx2x4:trace;
    old_RATE8 <- rATE8;
    old_b_st <- b_st;
    old_st <- st;
    old_LEN <- lEN;
    old_offset <- offset;
    old_b_buf3 <- b_buf3;
    old_buf3 <- buf3;
    old_b_buf2 <- b_buf2;
    old_buf2 <- buf2;
    old_b_buf1 <- b_buf1;
    old_buf1 <- buf1;
    old_b_buf0 <- b_buf0;
    old_buf0 <- buf0;
    trace_a128____squeeze_array_avx2x4 <- [];
    trace_a128____squeeze_array_avx2x4 <-
    (trace_a128____squeeze_array_avx2x4 ++
    [(Assert,
     ((((((0 <= (W64.to_uint offset)) /\ (0 <= lEN)) /\ (is_init b_st 0 800)) /\
       (((W64.to_uint offset) + lEN) <= 128)) /\
      (0 < rATE8)) /\
     (rATE8 <= 200)))]);
    iTERS <- (lEN %/ rATE8);
    lO <- (lEN %% rATE8);
    if ((0 < lEN)) {
      if ((0 < iTERS)) {
        i <- (W64.of_int 0);
        while ((i \ult (W64.of_int iTERS))) {
          (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
          st, (BArray800.init_arr (W8.of_int (-1)) 800));
          (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
          tmp__data__keccakf1600_avx2x4;
          trace_a128____squeeze_array_avx2x4 <-
          (trace_a128____squeeze_array_avx2x4 ++ tmp__trace);
          st <- tmp___keccakf1600_avx2x4;
          b_st <- tmp___keccakf1600_avx2x4_0;
          trace_a128____squeeze_array_avx2x4 <-
          (trace_a128____squeeze_array_avx2x4 ++
          [(Assert, (is_init b_st 0 800))]);
          (tmp__data_A128____dumpstate_array_avx2x4, tmp__trace) <@ a128____dumpstate_array_avx2x4 (
          buf0, b_buf0, buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset,
          rATE8, st, (BArray800.init_arr (W8.of_int (-1)) 800));
          (tmp__A128____dumpstate_array_avx2x4,
          tmp__A128____dumpstate_array_avx2x4_0,
          tmp__A128____dumpstate_array_avx2x4_1,
          tmp__A128____dumpstate_array_avx2x4_2,
          tmp__A128____dumpstate_array_avx2x4_3,
          tmp__A128____dumpstate_array_avx2x4_4,
          tmp__A128____dumpstate_array_avx2x4_5,
          tmp__A128____dumpstate_array_avx2x4_6,
          tmp__A128____dumpstate_array_avx2x4_7) <-
          tmp__data_A128____dumpstate_array_avx2x4;
          trace_a128____squeeze_array_avx2x4 <-
          (trace_a128____squeeze_array_avx2x4 ++ tmp__trace);
          buf0 <- tmp__A128____dumpstate_array_avx2x4;
          b_buf0 <- tmp__A128____dumpstate_array_avx2x4_0;
          buf1 <- tmp__A128____dumpstate_array_avx2x4_1;
          b_buf1 <- tmp__A128____dumpstate_array_avx2x4_2;
          buf2 <- tmp__A128____dumpstate_array_avx2x4_3;
          b_buf2 <- tmp__A128____dumpstate_array_avx2x4_4;
          buf3 <- tmp__A128____dumpstate_array_avx2x4_5;
          b_buf3 <- tmp__A128____dumpstate_array_avx2x4_6;
          offset <- tmp__A128____dumpstate_array_avx2x4_7;
          i <- (i + (W64.of_int 1));
        }
      } else {
        
      }
      if ((0 < lO)) {
        (tmp__data__keccakf1600_avx2x4, tmp__trace) <@ _keccakf1600_avx2x4 (
        st, (BArray800.init_arr (W8.of_int (-1)) 800));
        (tmp___keccakf1600_avx2x4, tmp___keccakf1600_avx2x4_0) <-
        tmp__data__keccakf1600_avx2x4;
        trace_a128____squeeze_array_avx2x4 <-
        (trace_a128____squeeze_array_avx2x4 ++ tmp__trace);
        st <- tmp___keccakf1600_avx2x4;
        b_st <- tmp___keccakf1600_avx2x4_0;
        trace_a128____squeeze_array_avx2x4 <-
        (trace_a128____squeeze_array_avx2x4 ++
        [(Assert, (is_init b_st 0 800))]);
        (tmp__data_A128____dumpstate_array_avx2x4, tmp__trace) <@ a128____dumpstate_array_avx2x4 (
        buf0, b_buf0, buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, offset, 
        lO, st, (BArray800.init_arr (W8.of_int (-1)) 800));
        (tmp__A128____dumpstate_array_avx2x4,
        tmp__A128____dumpstate_array_avx2x4_0,
        tmp__A128____dumpstate_array_avx2x4_1,
        tmp__A128____dumpstate_array_avx2x4_2,
        tmp__A128____dumpstate_array_avx2x4_3,
        tmp__A128____dumpstate_array_avx2x4_4,
        tmp__A128____dumpstate_array_avx2x4_5,
        tmp__A128____dumpstate_array_avx2x4_6,
        tmp__A128____dumpstate_array_avx2x4_7) <-
        tmp__data_A128____dumpstate_array_avx2x4;
        trace_a128____squeeze_array_avx2x4 <-
        (trace_a128____squeeze_array_avx2x4 ++ tmp__trace);
        buf0 <- tmp__A128____dumpstate_array_avx2x4;
        b_buf0 <- tmp__A128____dumpstate_array_avx2x4_0;
        buf1 <- tmp__A128____dumpstate_array_avx2x4_1;
        b_buf1 <- tmp__A128____dumpstate_array_avx2x4_2;
        buf2 <- tmp__A128____dumpstate_array_avx2x4_3;
        b_buf2 <- tmp__A128____dumpstate_array_avx2x4_4;
        buf3 <- tmp__A128____dumpstate_array_avx2x4_5;
        b_buf3 <- tmp__A128____dumpstate_array_avx2x4_6;
        offset <- tmp__A128____dumpstate_array_avx2x4_7;
      } else {
        
      }
    } else {
      
    }
    b_st <- (BArray800.init_arr (W8.of_int (-1)) 800);
    return ((buf0, b_buf0, buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, 
            offset, st, b_st),
           trace_a128____squeeze_array_avx2x4);
  }
  proc _shake256x4_A128__A32_A1 (out0:BArray128.t, b_out0:BArray128.t,
                                 out1:BArray128.t, b_out1:BArray128.t,
                                 out2:BArray128.t, b_out2:BArray128.t,
                                 out3:BArray128.t, b_out3:BArray128.t,
                                 seed:BArray32.t, b_seed:BArray32.t,
                                 nonces:BArray4.t, b_nonces:BArray4.t) : 
  ((BArray128.t * BArray128.t * BArray128.t * BArray128.t * BArray128.t *
   BArray128.t * BArray128.t * BArray128.t) *
  trace) = {
    var st_s:BArray800.t;
    var st:BArray800.t;
    var offset:W64.t;
    var b_st_s:BArray800.t;
    var b_st:BArray800.t;
    var  _0:int;
    var  _1:W64.t;
    var  _2:int;
    var  _3:W64.t;
    var  _4:W64.t;
    var old_b_nonces:BArray4.t;
    var old_nonces:BArray4.t;
    var old_b_seed:BArray32.t;
    var old_seed:BArray32.t;
    var old_b_out3:BArray128.t;
    var old_out3:BArray128.t;
    var old_b_out2:BArray128.t;
    var old_out2:BArray128.t;
    var old_b_out1:BArray128.t;
    var old_out1:BArray128.t;
    var old_b_out0:BArray128.t;
    var old_out0:BArray128.t;
    var trace__shake256x4_A128__A32_A1:trace;
    b_st <- witness;
    b_st_s <- witness;
    st <- witness;
    st_s <- witness;
    old_b_nonces <- b_nonces;
    old_nonces <- nonces;
    old_b_seed <- b_seed;
    old_seed <- seed;
    old_b_out3 <- b_out3;
    old_out3 <- out3;
    old_b_out2 <- b_out2;
    old_out2 <- out2;
    old_b_out1 <- b_out1;
    old_out1 <- out1;
    old_b_out0 <- b_out0;
    old_out0 <- out0;
    trace__shake256x4_A128__A32_A1 <- [];
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++
    [(Assert, ((is_init b_seed 0 32) /\ (is_init b_nonces 0 4)))]);
    b_st_s <- (BArray800.init_arr (W8.of_int 0) 800);
    b_st <- b_st_s;
    st <- st_s;
    (tmp__data___state_init_avx2x4, tmp__trace) <@ __state_init_avx2x4 (
    st, b_st);
    (tmp____state_init_avx2x4, tmp____state_init_avx2x4_0) <-
    tmp__data___state_init_avx2x4;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ tmp__trace);
    st <- tmp____state_init_avx2x4;
    b_st <- tmp____state_init_avx2x4_0;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ [(Assert, (is_init b_st 0 800))]);
    offset <- (W64.of_int 0);
    (tmp__data_A32____absorb_bcast_array_avx2x4, tmp__trace) <@ a32____absorb_bcast_array_avx2x4 (
    st, (BArray800.init_arr (W8.of_int (-1)) 800), 0, seed,
    (BArray32.init_arr (W8.of_int (-1)) 32), offset, 32, 136, 0);
    (tmp__A32____absorb_bcast_array_avx2x4,
    tmp__A32____absorb_bcast_array_avx2x4_0,
    tmp__A32____absorb_bcast_array_avx2x4_1,
    tmp__A32____absorb_bcast_array_avx2x4_2) <-
    tmp__data_A32____absorb_bcast_array_avx2x4;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ tmp__trace);
    st <- tmp__A32____absorb_bcast_array_avx2x4;
    b_st <- tmp__A32____absorb_bcast_array_avx2x4_0;
     _0 <- tmp__A32____absorb_bcast_array_avx2x4_1;
     _1 <- tmp__A32____absorb_bcast_array_avx2x4_2;
    offset <- (W64.of_int 0);
    (tmp__data_A1____absorb_array_avx2x4, tmp__trace) <@ a1____absorb_array_avx2x4 (
    st, b_st, 32, (SBArray4_1.get_sub8 nonces 0),
    (SBArray4_1.get_sub8 b_nonces 0), (SBArray4_1.get_sub8 nonces 1),
    (SBArray4_1.get_sub8 b_nonces 1), (SBArray4_1.get_sub8 nonces 2),
    (SBArray4_1.get_sub8 b_nonces 2), (SBArray4_1.get_sub8 nonces 3),
    (SBArray4_1.get_sub8 b_nonces 3), offset, 1, 136, 31);
    (tmp__A1____absorb_array_avx2x4, tmp__A1____absorb_array_avx2x4_0,
    tmp__A1____absorb_array_avx2x4_1, tmp__A1____absorb_array_avx2x4_2) <-
    tmp__data_A1____absorb_array_avx2x4;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ tmp__trace);
    st <- tmp__A1____absorb_array_avx2x4;
    b_st <- tmp__A1____absorb_array_avx2x4_0;
     _2 <- tmp__A1____absorb_array_avx2x4_1;
     _3 <- tmp__A1____absorb_array_avx2x4_2;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ [(Assert, (is_init b_st 0 800))]);
    offset <- (W64.of_int 0);
    (tmp__data_A128____squeeze_array_avx2x4, tmp__trace) <@ a128____squeeze_array_avx2x4 (
    out0, b_out0, out1, b_out1, out2, b_out2, out3, b_out3, offset, 128, 
    st, (BArray800.init_arr (W8.of_int (-1)) 800), 136);
    (tmp__A128____squeeze_array_avx2x4, tmp__A128____squeeze_array_avx2x4_0,
    tmp__A128____squeeze_array_avx2x4_1, tmp__A128____squeeze_array_avx2x4_2,
    tmp__A128____squeeze_array_avx2x4_3, tmp__A128____squeeze_array_avx2x4_4,
    tmp__A128____squeeze_array_avx2x4_5, tmp__A128____squeeze_array_avx2x4_6,
    tmp__A128____squeeze_array_avx2x4_7, tmp__A128____squeeze_array_avx2x4_8,
    tmp__A128____squeeze_array_avx2x4_9) <-
    tmp__data_A128____squeeze_array_avx2x4;
    trace__shake256x4_A128__A32_A1 <-
    (trace__shake256x4_A128__A32_A1 ++ tmp__trace);
    out0 <- tmp__A128____squeeze_array_avx2x4;
    b_out0 <- tmp__A128____squeeze_array_avx2x4_0;
    out1 <- tmp__A128____squeeze_array_avx2x4_1;
    b_out1 <- tmp__A128____squeeze_array_avx2x4_2;
    out2 <- tmp__A128____squeeze_array_avx2x4_3;
    b_out2 <- tmp__A128____squeeze_array_avx2x4_4;
    out3 <- tmp__A128____squeeze_array_avx2x4_5;
    b_out3 <- tmp__A128____squeeze_array_avx2x4_6;
     _4 <- tmp__A128____squeeze_array_avx2x4_7;
    st <- tmp__A128____squeeze_array_avx2x4_8;
    b_st <- tmp__A128____squeeze_array_avx2x4_9;
    return ((out0, b_out0, out1, b_out1, out2, b_out2, out3, b_out3),
           trace__shake256x4_A128__A32_A1);
  }
  proc _poly_csubq (rp:BArray512.t, b_rp:BArray512.t) : ((BArray512.t *
                                                         BArray512.t) *
                                                        trace) = {
    var qx16:W256.t;
    var i:int;
    var r:W256.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_csubq:trace;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_csubq <- [];
    trace__poly_csubq <-
    (trace__poly_csubq ++ [(Assert, (is_init b_rp 0 512))]);
    qx16 <- (BArray32.get256 jqx16 0);
    i <- 0;
    while ((i < 16)) {
      trace__poly_csubq <-
      (trace__poly_csubq ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      r <- (BArray512.get256d rp (32 * i));
      (tmp__data___csubq, tmp__trace) <@ __csubq (r, qx16);
      tmp____csubq <- tmp__data___csubq;
      trace__poly_csubq <- (trace__poly_csubq ++ tmp__trace);
      r <- tmp____csubq;
      trace__poly_csubq <-
      (trace__poly_csubq ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (32 * i) r);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace__poly_csubq);
  }
  proc _poly_compress (rp:W64.t, a:BArray512.t, b_a:BArray512.t) : ((BArray512.t *
                                                                    BArray512.t) *
                                                                   trace) = {
    var x16p:BArray32.t;
    var v:W256.t;
    var shift1:W256.t;
    var mask:W256.t;
    var shift2:W256.t;
    var permidx:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var f2:W256.t;
    var f3:W256.t;
    var b_x16p:BArray32.t;
    var old_b_a:BArray512.t;
    var old_a:BArray512.t;
    var old_rp:W64.t;
    var trace__poly_compress:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_rp <- rp;
    trace__poly_compress <- [];
    trace__poly_compress <-
    (trace__poly_compress ++
    [(Assert, ((is_init b_a 0 512) /\ (is_valid (W64.to_uint rp) 128)))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq (a,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace__poly_compress <- (trace__poly_compress ++ tmp__trace);
    a <- tmp___poly_csubq;
    b_a <- tmp___poly_csubq_0;
    trace__poly_compress <-
    (trace__poly_compress ++ [(Assert, (is_init b_a 0 512))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jvx16;
    trace__poly_compress <-
    (trace__poly_compress ++ [(Assert, (is_init b_x16p 0 32))]);
    v <- (BArray32.get256 x16p 0);
    shift1 <- (VPBROADCAST_16u16 pc_shift1_s);
    mask <- (VPBROADCAST_16u16 pc_mask_s);
    shift2 <- (VPBROADCAST_16u16 pc_shift2_s);
    permidx <- (BArray32.get256 pc_permidx_s 0);
    i <- 0;
    while ((i < 4)) {
      trace__poly_compress <-
      (trace__poly_compress ++
      [(Assert, ((0 <= ((4 * i) * 32)) /\ ((((4 * i) * 32) + 32) <= 512)))]);
      f0 <- (BArray512.get256 a (4 * i));
      trace__poly_compress <-
      (trace__poly_compress ++
      [(Assert,
       ((0 <= (((4 * i) + 1) * 32)) /\ (((((4 * i) + 1) * 32) + 32) <= 512)))]);
      f1 <- (BArray512.get256 a ((4 * i) + 1));
      trace__poly_compress <-
      (trace__poly_compress ++
      [(Assert,
       ((0 <= (((4 * i) + 2) * 32)) /\ (((((4 * i) + 2) * 32) + 32) <= 512)))]);
      f2 <- (BArray512.get256 a ((4 * i) + 2));
      trace__poly_compress <-
      (trace__poly_compress ++
      [(Assert,
       ((0 <= (((4 * i) + 3) * 32)) /\ (((((4 * i) + 3) * 32) + 32) <= 512)))]);
      f3 <- (BArray512.get256 a ((4 * i) + 3));
      f0 <- (VPMULH_16u16 f0 v);
      f1 <- (VPMULH_16u16 f1 v);
      f2 <- (VPMULH_16u16 f2 v);
      f3 <- (VPMULH_16u16 f3 v);
      f0 <- (VPMULHRS_16u16 f0 shift1);
      f1 <- (VPMULHRS_16u16 f1 shift1);
      f2 <- (VPMULHRS_16u16 f2 shift1);
      f3 <- (VPMULHRS_16u16 f3 shift1);
      f0 <- (VPAND_256 f0 mask);
      f1 <- (VPAND_256 f1 mask);
      f2 <- (VPAND_256 f2 mask);
      f3 <- (VPAND_256 f3 mask);
      f0 <- (VPACKUS_16u16 f0 f1);
      f2 <- (VPACKUS_16u16 f2 f3);
      f0 <- (VPMADDUBSW_256 f0 shift2);
      f2 <- (VPMADDUBSW_256 f2 shift2);
      f0 <- (VPACKUS_16u16 f0 f2);
      f0 <- (VPERMD permidx f0);
      trace__poly_compress <-
      (trace__poly_compress ++
      [(Assert, (is_valid (W64.to_uint (rp + (W64.of_int (32 * i)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int (32 * i)))) f0);
      i <- (i + 1);
    }
    b_a <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((a, b_a), trace__poly_compress);
  }
  proc _poly_compress_1 (rp:BArray128.t, b_rp:BArray128.t, a:BArray512.t,
                         b_a:BArray512.t) : ((BArray128.t * BArray128.t *
                                             BArray512.t * BArray512.t) *
                                            trace) = {
    var x16p:BArray32.t;
    var v:W256.t;
    var shift1:W256.t;
    var mask:W256.t;
    var shift2:W256.t;
    var permidx:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var f2:W256.t;
    var f3:W256.t;
    var b_x16p:BArray32.t;
    var old_b_a:BArray512.t;
    var old_a:BArray512.t;
    var old_b_rp:BArray128.t;
    var old_rp:BArray128.t;
    var trace__poly_compress_1:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_compress_1 <- [];
    trace__poly_compress_1 <-
    (trace__poly_compress_1 ++ [(Assert, (is_init b_a 0 512))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq (a,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace__poly_compress_1 <- (trace__poly_compress_1 ++ tmp__trace);
    a <- tmp___poly_csubq;
    b_a <- tmp___poly_csubq_0;
    trace__poly_compress_1 <-
    (trace__poly_compress_1 ++ [(Assert, (is_init b_a 0 512))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jvx16;
    trace__poly_compress_1 <-
    (trace__poly_compress_1 ++ [(Assert, (is_init b_x16p 0 32))]);
    v <- (BArray32.get256 x16p 0);
    shift1 <- (VPBROADCAST_16u16 pc_shift1_s);
    mask <- (VPBROADCAST_16u16 pc_mask_s);
    shift2 <- (VPBROADCAST_16u16 pc_shift2_s);
    permidx <- (BArray32.get256 pc_permidx_s 0);
    i <- 0;
    while ((i < 4)) {
      trace__poly_compress_1 <-
      (trace__poly_compress_1 ++
      [(Assert, ((0 <= ((4 * i) * 32)) /\ ((((4 * i) * 32) + 32) <= 512)))]);
      f0 <- (BArray512.get256 a (4 * i));
      trace__poly_compress_1 <-
      (trace__poly_compress_1 ++
      [(Assert,
       ((0 <= (((4 * i) + 1) * 32)) /\ (((((4 * i) + 1) * 32) + 32) <= 512)))]);
      f1 <- (BArray512.get256 a ((4 * i) + 1));
      trace__poly_compress_1 <-
      (trace__poly_compress_1 ++
      [(Assert,
       ((0 <= (((4 * i) + 2) * 32)) /\ (((((4 * i) + 2) * 32) + 32) <= 512)))]);
      f2 <- (BArray512.get256 a ((4 * i) + 2));
      trace__poly_compress_1 <-
      (trace__poly_compress_1 ++
      [(Assert,
       ((0 <= (((4 * i) + 3) * 32)) /\ (((((4 * i) + 3) * 32) + 32) <= 512)))]);
      f3 <- (BArray512.get256 a ((4 * i) + 3));
      f0 <- (VPMULH_16u16 f0 v);
      f1 <- (VPMULH_16u16 f1 v);
      f2 <- (VPMULH_16u16 f2 v);
      f3 <- (VPMULH_16u16 f3 v);
      f0 <- (VPMULHRS_16u16 f0 shift1);
      f1 <- (VPMULHRS_16u16 f1 shift1);
      f2 <- (VPMULHRS_16u16 f2 shift1);
      f3 <- (VPMULHRS_16u16 f3 shift1);
      f0 <- (VPAND_256 f0 mask);
      f1 <- (VPAND_256 f1 mask);
      f2 <- (VPAND_256 f2 mask);
      f3 <- (VPAND_256 f3 mask);
      f0 <- (VPACKUS_16u16 f0 f1);
      f2 <- (VPACKUS_16u16 f2 f3);
      f0 <- (VPMADDUBSW_256 f0 shift2);
      f2 <- (VPMADDUBSW_256 f2 shift2);
      f0 <- (VPACKUS_16u16 f0 f2);
      f0 <- (VPERMD permidx f0);
      trace__poly_compress_1 <-
      (trace__poly_compress_1 ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 128)))]);
      b_rp <-
      (BArray128.set256d b_rp (32 * i)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray128.set256d rp (32 * i) f0);
      i <- (i + 1);
    }
    b_a <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp, a, b_a), trace__poly_compress_1);
  }
  proc _poly_decompress (rp:BArray512.t, b_rp:BArray512.t, ap:W64.t) : 
  ((BArray512.t * BArray512.t) * trace) = {
    var x16p:BArray32.t;
    var q:W256.t;
    var x32p:BArray32.t;
    var shufbidx:W256.t;
    var mask:W256.t;
    var shift:W256.t;
    var f:W256.t;
    var i:int;
    var h:W128.t;
    var sh:W128.t;
    var b_x32p:BArray32.t;
    var b_x16p:BArray32.t;
    var old_ap:W64.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_decompress:trace;
    b_x16p <- witness;
    b_x32p <- witness;
    x16p <- witness;
    x32p <- witness;
    old_ap <- ap;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_decompress <- [];
    trace__poly_decompress <-
    (trace__poly_decompress ++ [(Assert, (is_valid (W64.to_uint ap) 128))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jqx16;
    trace__poly_decompress <-
    (trace__poly_decompress ++ [(Assert, (is_init b_x16p 0 32))]);
    q <- (BArray32.get256 x16p 0);
    b_x32p <- (BArray32.init_arr (W8.of_int 255) 32);
    x32p <- pd_jshufbidx;
    trace__poly_decompress <-
    (trace__poly_decompress ++ [(Assert, (is_init b_x32p 0 32))]);
    shufbidx <- (BArray32.get256 x32p 0);
    mask <- (VPBROADCAST_8u32 pd_mask_s);
    shift <- (VPBROADCAST_8u32 pd_shift_s);
    f <- (set0_256);
    i <- 0;
    while ((i < 16)) {
      trace__poly_decompress <-
      (trace__poly_decompress ++
      [(Assert, (is_valid (W64.to_uint (ap + (W64.of_int (8 * i)))) 8))]);
      h <-
      (zeroextu128
      (loadW64 Glob.mem (W64.to_uint (ap + (W64.of_int (8 * i))))));
      sh <- h;
      f <- (VPBROADCAST_2u128 sh);
      f <- (VPSHUFB_256 f shufbidx);
      f <- (VPAND_256 f mask);
      f <- (VPMULL_16u16 f shift);
      f <- (VPMULHRS_16u16 f q);
      trace__poly_decompress <-
      (trace__poly_decompress ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (i * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp i f);
      i <- (i + 1);
    }
    return ((rp, b_rp), trace__poly_decompress);
  }
  proc _poly_frommont (rp:BArray512.t, b_rp:BArray512.t) : ((BArray512.t *
                                                            BArray512.t) *
                                                           trace) = {
    var x16p:BArray32.t;
    var qx16:W256.t;
    var qinvx16:W256.t;
    var dmontx16:W256.t;
    var i:int;
    var t:W256.t;
    var b_x16p:BArray32.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_frommont:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_frommont <- [];
    trace__poly_frommont <-
    (trace__poly_frommont ++ [(Assert, (is_init b_rp 0 512))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jqx16;
    trace__poly_frommont <-
    (trace__poly_frommont ++ [(Assert, (is_init b_x16p 0 32))]);
    qx16 <- (BArray32.get256 x16p 0);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jqinvx16;
    trace__poly_frommont <-
    (trace__poly_frommont ++ [(Assert, (is_init b_x16p 0 32))]);
    qinvx16 <- (BArray32.get256 x16p 0);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jdmontx16;
    trace__poly_frommont <-
    (trace__poly_frommont ++ [(Assert, (is_init b_x16p 0 32))]);
    dmontx16 <- (BArray32.get256 x16p 0);
    i <- 0;
    while ((i < 16)) {
      trace__poly_frommont <-
      (trace__poly_frommont ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 512)))]);
      t <- (BArray512.get256 rp i);
      (tmp__data___fqmulx16, tmp__trace) <@ __fqmulx16 (t, dmontx16, 
      qx16, qinvx16);
      tmp____fqmulx16 <- tmp__data___fqmulx16;
      trace__poly_frommont <- (trace__poly_frommont ++ tmp__trace);
      t <- tmp____fqmulx16;
      trace__poly_frommont <-
      (trace__poly_frommont ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 512)))]);
      rp <- (BArray512.set256 rp i t);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace__poly_frommont);
  }
  proc _poly_frommsg_1 (rp:BArray512.t, b_rp:BArray512.t, ap:BArray32.t,
                        b_ap:BArray32.t) : ((BArray512.t * BArray512.t) *
                                           trace) = {
    var x16p:BArray32.t;
    var hqs:W256.t;
    var shift:W256.t;
    var idx:W256.t;
    var f:W256.t;
    var i:int;
    var g3:W256.t;
    var g0:W256.t;
    var g1:W256.t;
    var g2:W256.t;
    var h0:W256.t;
    var h2:W256.t;
    var h1:W256.t;
    var h3:W256.t;
    var b_x16p:BArray32.t;
    var old_b_ap:BArray32.t;
    var old_ap:BArray32.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_frommsg_1:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_ap <- b_ap;
    old_ap <- ap;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_frommsg_1 <- [];
    trace__poly_frommsg_1 <-
    (trace__poly_frommsg_1 ++ [(Assert, (is_init b_ap 0 32))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- hqx16_p1;
    trace__poly_frommsg_1 <-
    (trace__poly_frommsg_1 ++ [(Assert, (is_init b_x16p 0 32))]);
    hqs <- (BArray32.get256 x16p 0);
    shift <- (VPBROADCAST_2u128 (BArray16.get128 pfm_shift_s 0));
    idx <- (VPBROADCAST_2u128 (BArray16.get128 pfm_idx_s 0));
    f <- (BArray32.get256 ap 0);
    i <- 0;
    while ((i < 4)) {
      g3 <- (VPSHUFD_256 f (W8.of_int (85 * i)));
      g3 <- (VPSLLV_8u32 g3 shift);
      g3 <- (VPSHUFB_256 g3 idx);
      g0 <- (VPSLL_16u16 g3 (W128.of_int 12));
      g1 <- (VPSLL_16u16 g3 (W128.of_int 8));
      g2 <- (VPSLL_16u16 g3 (W128.of_int 4));
      g0 <- (VPSRA_16u16 g0 (W128.of_int 15));
      g1 <- (VPSRA_16u16 g1 (W128.of_int 15));
      g2 <- (VPSRA_16u16 g2 (W128.of_int 15));
      g3 <- (VPSRA_16u16 g3 (W128.of_int 15));
      g0 <- (VPAND_256 g0 hqs);
      g1 <- (VPAND_256 g1 hqs);
      g2 <- (VPAND_256 g2 hqs);
      g3 <- (VPAND_256 g3 hqs);
      h0 <- (VPUNPCKL_4u64 g0 g1);
      h2 <- (VPUNPCKH_4u64 g0 g1);
      h1 <- (VPUNPCKL_4u64 g2 g3);
      h3 <- (VPUNPCKH_4u64 g2 g3);
      g0 <- (VPERM2I128 h0 h1 (W8.of_int 32));
      g2 <- (VPERM2I128 h0 h1 (W8.of_int 49));
      g1 <- (VPERM2I128 h2 h3 (W8.of_int 32));
      g3 <- (VPERM2I128 h2 h3 (W8.of_int 49));
      trace__poly_frommsg_1 <-
      (trace__poly_frommsg_1 ++
      [(Assert, ((0 <= ((2 * i) * 32)) /\ ((((2 * i) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp ((2 * i) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp (2 * i) g0);
      trace__poly_frommsg_1 <-
      (trace__poly_frommsg_1 ++
      [(Assert,
       ((0 <= (((2 * i) + 1) * 32)) /\ (((((2 * i) + 1) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((2 * i) + 1) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((2 * i) + 1) g1);
      trace__poly_frommsg_1 <-
      (trace__poly_frommsg_1 ++
      [(Assert,
       ((0 <= (((2 * i) + 8) * 32)) /\ (((((2 * i) + 8) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((2 * i) + 8) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((2 * i) + 8) g2);
      trace__poly_frommsg_1 <-
      (trace__poly_frommsg_1 ++
      [(Assert,
       ((0 <= ((((2 * i) + 8) + 1) * 32)) /\
       ((((((2 * i) + 8) + 1) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp ((((2 * i) + 8) + 1) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp (((2 * i) + 8) + 1) g3);
      i <- (i + 1);
    }
    return ((rp, b_rp), trace__poly_frommsg_1);
  }
  proc __cbd2 (rp:BArray512.t, b_rp:BArray512.t, buf:BArray128.t,
               b_buf:BArray128.t) : ((BArray512.t * BArray512.t) * trace) = {
    var mask55_s:W32.t;
    var mask33_s:W32.t;
    var mask03_s:W32.t;
    var mask0F_s:W32.t;
    var mask55:W256.t;
    var mask33:W256.t;
    var mask03:W256.t;
    var mask0F:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var f2:W256.t;
    var f3:W256.t;
    var t:W128.t;
    var old_b_buf:BArray128.t;
    var old_buf:BArray128.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace___cbd2:trace;
    old_b_buf <- b_buf;
    old_buf <- buf;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace___cbd2 <- [];
    trace___cbd2 <- (trace___cbd2 ++ [(Assert, (is_init b_buf 0 128))]);
    mask55_s <- (W32.of_int 1431655765);
    mask33_s <- (W32.of_int 858993459);
    mask03_s <- (W32.of_int 50529027);
    mask0F_s <- (W32.of_int 252645135);
    mask55 <- (VPBROADCAST_8u32 mask55_s);
    mask33 <- (VPBROADCAST_8u32 mask33_s);
    mask03 <- (VPBROADCAST_8u32 mask03_s);
    mask0F <- (VPBROADCAST_8u32 mask0F_s);
    i <- 0;
    while ((i < 4)) {
      trace___cbd2 <-
      (trace___cbd2 ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 128)))]);
      f0 <- (BArray128.get256 buf i);
      f1 <- (VPSRL_16u16 f0 (W128.of_int 1));
      f0 <- (VPAND_256 mask55 f0);
      f1 <- (VPAND_256 mask55 f1);
      f0 <- (VPADD_32u8 f0 f1);
      f1 <- (VPSRL_16u16 f0 (W128.of_int 2));
      f0 <- (VPAND_256 mask33 f0);
      f1 <- (VPAND_256 mask33 f1);
      f0 <- (VPADD_32u8 f0 mask33);
      f0 <- (VPSUB_32u8 f0 f1);
      f1 <- (VPSRL_16u16 f0 (W128.of_int 4));
      f0 <- (VPAND_256 mask0F f0);
      f1 <- (VPAND_256 mask0F f1);
      f0 <- (VPSUB_32u8 f0 mask03);
      f1 <- (VPSUB_32u8 f1 mask03);
      f2 <- (VPUNPCKL_32u8 f0 f1);
      f3 <- (VPUNPCKH_32u8 f0 f1);
      t <- (truncateu128 f2);
      f0 <- (VPMOVSX_16u8_16u16 t);
      t <- (VEXTRACTI128 f2 (W8.of_int 1));
      f1 <- (VPMOVSX_16u8_16u16 t);
      t <- (truncateu128 f3);
      f2 <- (VPMOVSX_16u8_16u16 t);
      t <- (VEXTRACTI128 f3 (W8.of_int 1));
      f3 <- (VPMOVSX_16u8_16u16 t);
      trace___cbd2 <-
      (trace___cbd2 ++
      [(Assert, ((0 <= ((4 * i) * 32)) /\ ((((4 * i) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp ((4 * i) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp (4 * i) f0);
      trace___cbd2 <-
      (trace___cbd2 ++
      [(Assert,
       ((0 <= (((4 * i) + 1) * 32)) /\ (((((4 * i) + 1) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((4 * i) + 1) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((4 * i) + 1) f2);
      trace___cbd2 <-
      (trace___cbd2 ++
      [(Assert,
       ((0 <= (((4 * i) + 2) * 32)) /\ (((((4 * i) + 2) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((4 * i) + 2) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((4 * i) + 2) f1);
      trace___cbd2 <-
      (trace___cbd2 ++
      [(Assert,
       ((0 <= (((4 * i) + 3) * 32)) /\ (((((4 * i) + 3) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((4 * i) + 3) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((4 * i) + 3) f3);
      i <- (i + 1);
    }
    return ((rp, b_rp), trace___cbd2);
  }
  proc __poly_cbd_eta1 (rp:BArray512.t, b_rp:BArray512.t, buf:BArray128.t,
                        b_buf:BArray128.t) : ((BArray512.t * BArray512.t) *
                                             trace) = {
    var old_b_buf:BArray128.t;
    var old_buf:BArray128.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace___poly_cbd_eta1:trace;
    old_b_buf <- b_buf;
    old_buf <- buf;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace___poly_cbd_eta1 <- [];
    trace___poly_cbd_eta1 <-
    (trace___poly_cbd_eta1 ++ [(Assert, (is_init b_buf 0 128))]);
    (tmp__data___cbd2, tmp__trace) <@ __cbd2 (rp, b_rp,
    (SBArray128_128.get_sub8 buf 0), (SBArray128_128.get_sub8 b_buf 0));
    (tmp____cbd2, tmp____cbd2_0) <- tmp__data___cbd2;
    trace___poly_cbd_eta1 <- (trace___poly_cbd_eta1 ++ tmp__trace);
    rp <- tmp____cbd2;
    b_rp <- tmp____cbd2_0;
    trace___poly_cbd_eta1 <-
    (trace___poly_cbd_eta1 ++ [(Assert, (is_init b_rp 0 512))]);
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace___poly_cbd_eta1);
  }
  proc _poly_getnoise_eta1_4x (r0:BArray512.t, b_r0:BArray512.t,
                               r1:BArray512.t, b_r1:BArray512.t,
                               r2:BArray512.t, b_r2:BArray512.t,
                               r3:BArray512.t, b_r3:BArray512.t,
                               seed:BArray32.t, b_seed:BArray32.t, nonce:W8.t) : 
  ((BArray512.t * BArray512.t * BArray512.t * BArray512.t * BArray512.t *
   BArray512.t * BArray512.t * BArray512.t) *
  trace) = {
    var buf0_s:BArray128.t;
    var buf0:BArray128.t;
    var buf1_s:BArray128.t;
    var buf1:BArray128.t;
    var buf2_s:BArray128.t;
    var buf2:BArray128.t;
    var buf3_s:BArray128.t;
    var buf3:BArray128.t;
    var nonces:BArray4.t;
    var b_buf3:BArray128.t;
    var b_buf2:BArray128.t;
    var b_buf1:BArray128.t;
    var b_buf0:BArray128.t;
    var b_nonces:BArray4.t;
    var b_buf3_s:BArray128.t;
    var b_buf2_s:BArray128.t;
    var b_buf1_s:BArray128.t;
    var b_buf0_s:BArray128.t;
    var old_nonce:W8.t;
    var old_b_seed:BArray32.t;
    var old_seed:BArray32.t;
    var old_b_r3:BArray512.t;
    var old_r3:BArray512.t;
    var old_b_r2:BArray512.t;
    var old_r2:BArray512.t;
    var old_b_r1:BArray512.t;
    var old_r1:BArray512.t;
    var old_b_r0:BArray512.t;
    var old_r0:BArray512.t;
    var trace__poly_getnoise_eta1_4x:trace;
    b_buf0 <- witness;
    b_buf0_s <- witness;
    b_buf1 <- witness;
    b_buf1_s <- witness;
    b_buf2 <- witness;
    b_buf2_s <- witness;
    b_buf3 <- witness;
    b_buf3_s <- witness;
    b_nonces <- witness;
    buf0 <- witness;
    buf0_s <- witness;
    buf1 <- witness;
    buf1_s <- witness;
    buf2 <- witness;
    buf2_s <- witness;
    buf3 <- witness;
    buf3_s <- witness;
    nonces <- witness;
    old_nonce <- nonce;
    old_b_seed <- b_seed;
    old_seed <- seed;
    old_b_r3 <- b_r3;
    old_r3 <- r3;
    old_b_r2 <- b_r2;
    old_r2 <- r2;
    old_b_r1 <- b_r1;
    old_r1 <- r1;
    old_b_r0 <- b_r0;
    old_r0 <- r0;
    trace__poly_getnoise_eta1_4x <- [];
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ [(Assert, (is_init b_seed 0 32))]);
    b_nonces <- (BArray4.init_arr (W8.of_int 0) 4);
    b_buf0_s <- (BArray128.init_arr (W8.of_int 0) 128);
    b_buf1_s <- (BArray128.init_arr (W8.of_int 0) 128);
    b_buf2_s <- (BArray128.init_arr (W8.of_int 0) 128);
    b_buf3_s <- (BArray128.init_arr (W8.of_int 0) 128);
    b_buf0 <- b_buf0_s;
    buf0 <- buf0_s;
    b_buf1 <- b_buf1_s;
    buf1 <- buf1_s;
    b_buf2 <- b_buf2_s;
    buf2 <- buf2_s;
    b_buf3 <- b_buf3_s;
    buf3 <- buf3_s;
    (* Erased call to spill *)
    b_nonces <- (BArray4.set8d b_nonces 0 (W8.of_int 255));
    nonces <- (BArray4.set8 nonces 0 nonce);
    nonce <- (nonce + (W8.of_int 1));
    b_nonces <- (BArray4.set8d b_nonces 1 (W8.of_int 255));
    nonces <- (BArray4.set8 nonces 1 nonce);
    nonce <- (nonce + (W8.of_int 1));
    b_nonces <- (BArray4.set8d b_nonces 2 (W8.of_int 255));
    nonces <- (BArray4.set8 nonces 2 nonce);
    nonce <- (nonce + (W8.of_int 1));
    b_nonces <- (BArray4.set8d b_nonces 3 (W8.of_int 255));
    nonces <- (BArray4.set8 nonces 3 nonce);
    (tmp__data__shake256x4_A128__A32_A1, tmp__trace) <@ _shake256x4_A128__A32_A1 (
    buf0, b_buf0, buf1, b_buf1, buf2, b_buf2, buf3, b_buf3, seed,
    (BArray32.init_arr (W8.of_int (-1)) 32), nonces, b_nonces);
    (tmp___shake256x4_A128__A32_A1, tmp___shake256x4_A128__A32_A1_0,
    tmp___shake256x4_A128__A32_A1_1, tmp___shake256x4_A128__A32_A1_2,
    tmp___shake256x4_A128__A32_A1_3, tmp___shake256x4_A128__A32_A1_4,
    tmp___shake256x4_A128__A32_A1_5, tmp___shake256x4_A128__A32_A1_6) <-
    tmp__data__shake256x4_A128__A32_A1;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ tmp__trace);
    buf0 <- tmp___shake256x4_A128__A32_A1;
    b_buf0 <- tmp___shake256x4_A128__A32_A1_0;
    buf1 <- tmp___shake256x4_A128__A32_A1_1;
    b_buf1 <- tmp___shake256x4_A128__A32_A1_2;
    buf2 <- tmp___shake256x4_A128__A32_A1_3;
    b_buf2 <- tmp___shake256x4_A128__A32_A1_4;
    buf3 <- tmp___shake256x4_A128__A32_A1_5;
    b_buf3 <- tmp___shake256x4_A128__A32_A1_6;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++
    [(Assert,
     ((((is_init b_buf0 0 128) /\ (is_init b_buf1 0 128)) /\
      (is_init b_buf2 0 128)) /\
     (is_init b_buf3 0 128)))]);
    (* Erased call to unspill *)
    (tmp__data___poly_cbd_eta1, tmp__trace) <@ __poly_cbd_eta1 (r0, b_r0,
    buf0, (BArray128.init_arr (W8.of_int (-1)) 128));
    (tmp____poly_cbd_eta1, tmp____poly_cbd_eta1_0) <-
    tmp__data___poly_cbd_eta1;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ tmp__trace);
    r0 <- tmp____poly_cbd_eta1;
    b_r0 <- tmp____poly_cbd_eta1_0;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ [(Assert, (is_init b_r0 0 512))]);
    (tmp__data___poly_cbd_eta1, tmp__trace) <@ __poly_cbd_eta1 (r1, b_r1,
    buf1, (BArray128.init_arr (W8.of_int (-1)) 128));
    (tmp____poly_cbd_eta1, tmp____poly_cbd_eta1_0) <-
    tmp__data___poly_cbd_eta1;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ tmp__trace);
    r1 <- tmp____poly_cbd_eta1;
    b_r1 <- tmp____poly_cbd_eta1_0;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ [(Assert, (is_init b_r1 0 512))]);
    (tmp__data___poly_cbd_eta1, tmp__trace) <@ __poly_cbd_eta1 (r2, b_r2,
    buf2, (BArray128.init_arr (W8.of_int (-1)) 128));
    (tmp____poly_cbd_eta1, tmp____poly_cbd_eta1_0) <-
    tmp__data___poly_cbd_eta1;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ tmp__trace);
    r2 <- tmp____poly_cbd_eta1;
    b_r2 <- tmp____poly_cbd_eta1_0;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ [(Assert, (is_init b_r2 0 512))]);
    (tmp__data___poly_cbd_eta1, tmp__trace) <@ __poly_cbd_eta1 (r3, b_r3,
    buf3, (BArray128.init_arr (W8.of_int (-1)) 128));
    (tmp____poly_cbd_eta1, tmp____poly_cbd_eta1_0) <-
    tmp__data___poly_cbd_eta1;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ tmp__trace);
    r3 <- tmp____poly_cbd_eta1;
    b_r3 <- tmp____poly_cbd_eta1_0;
    trace__poly_getnoise_eta1_4x <-
    (trace__poly_getnoise_eta1_4x ++ [(Assert, (is_init b_r3 0 512))]);
    b_r0 <- (BArray512.init_arr (W8.of_int (-1)) 512);
    b_r1 <- (BArray512.init_arr (W8.of_int (-1)) 512);
    b_r2 <- (BArray512.init_arr (W8.of_int (-1)) 512);
    b_r3 <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((r0, b_r0, r1, b_r1, r2, b_r2, r3, b_r3),
           trace__poly_getnoise_eta1_4x);
  }
  proc _poly_sub (rp:BArray512.t, b_rp:BArray512.t, ap:BArray512.t,
                  b_ap:BArray512.t, bp:BArray512.t, b_bp:BArray512.t) : 
  ((BArray512.t * BArray512.t) * trace) = {
    var i:int;
    var a:W256.t;
    var b:W256.t;
    var r:W256.t;
    var old_b_bp:BArray512.t;
    var old_bp:BArray512.t;
    var old_b_ap:BArray512.t;
    var old_ap:BArray512.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_sub:trace;
    old_b_bp <- b_bp;
    old_bp <- bp;
    old_b_ap <- b_ap;
    old_ap <- ap;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_sub <- [];
    trace__poly_sub <-
    (trace__poly_sub ++
    [(Assert, ((is_init b_ap 0 512) /\ (is_init b_bp 0 512)))]);
    i <- 0;
    while ((i < 16)) {
      trace__poly_sub <-
      (trace__poly_sub ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      a <- (BArray512.get256d ap (32 * i));
      trace__poly_sub <-
      (trace__poly_sub ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      b <- (BArray512.get256d bp (32 * i));
      r <- (VPSUB_16u16 a b);
      trace__poly_sub <-
      (trace__poly_sub ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (32 * i)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256d rp (32 * i) r);
      i <- (i + 1);
    }
    return ((rp, b_rp), trace__poly_sub);
  }
  proc _poly_tomsg_1 (rp:BArray32.t, b_rp:BArray32.t, a:BArray512.t,
                      b_a:BArray512.t) : ((BArray32.t * BArray32.t *
                                          BArray512.t * BArray512.t) *
                                         trace) = {
    var px16:BArray32.t;
    var hq:W256.t;
    var hhq:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var g0:W256.t;
    var g1:W256.t;
    var c:W32.t;
    var b_px16:BArray32.t;
    var old_b_a:BArray512.t;
    var old_a:BArray512.t;
    var old_b_rp:BArray32.t;
    var old_rp:BArray32.t;
    var trace__poly_tomsg_1:trace;
    b_px16 <- witness;
    px16 <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_tomsg_1 <- [];
    trace__poly_tomsg_1 <-
    (trace__poly_tomsg_1 ++ [(Assert, (is_init b_a 0 512))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq (a,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace__poly_tomsg_1 <- (trace__poly_tomsg_1 ++ tmp__trace);
    a <- tmp___poly_csubq;
    b_a <- tmp___poly_csubq_0;
    trace__poly_tomsg_1 <-
    (trace__poly_tomsg_1 ++ [(Assert, (is_init b_a 0 512))]);
    b_px16 <- (BArray32.init_arr (W8.of_int 255) 32);
    px16 <- hqx16_m1;
    trace__poly_tomsg_1 <-
    (trace__poly_tomsg_1 ++ [(Assert, (is_init b_px16 0 32))]);
    hq <- (BArray32.get256 px16 0);
    b_px16 <- (BArray32.init_arr (W8.of_int 255) 32);
    px16 <- hhqx16;
    trace__poly_tomsg_1 <-
    (trace__poly_tomsg_1 ++ [(Assert, (is_init b_px16 0 32))]);
    hhq <- (BArray32.get256 px16 0);
    i <- 0;
    while ((i < 8)) {
      trace__poly_tomsg_1 <-
      (trace__poly_tomsg_1 ++
      [(Assert, ((0 <= ((2 * i) * 32)) /\ ((((2 * i) * 32) + 32) <= 512)))]);
      f0 <- (BArray512.get256 a (2 * i));
      trace__poly_tomsg_1 <-
      (trace__poly_tomsg_1 ++
      [(Assert,
       ((0 <= (((2 * i) + 1) * 32)) /\ (((((2 * i) + 1) * 32) + 32) <= 512)))]);
      f1 <- (BArray512.get256 a ((2 * i) + 1));
      f0 <- (VPSUB_16u16 hq f0);
      f1 <- (VPSUB_16u16 hq f1);
      g0 <- (VPSRA_16u16 f0 (W128.of_int 15));
      g1 <- (VPSRA_16u16 f1 (W128.of_int 15));
      f0 <- (VPXOR_256 f0 g0);
      f1 <- (VPXOR_256 f1 g1);
      f0 <- (VPSUB_16u16 f0 hhq);
      f1 <- (VPSUB_16u16 f1 hhq);
      f0 <- (VPACKSS_16u16 f0 f1);
      f0 <- (VPERMQ f0 (W8.of_int 216));
      c <- (VPMOVMSKB_u256u32 f0);
      trace__poly_tomsg_1 <-
      (trace__poly_tomsg_1 ++
      [(Assert, ((0 <= (i * 4)) /\ (((i * 4) + 4) <= 32)))]);
      b_rp <- (BArray32.set32d b_rp (i * 4) (W32.of_int 4294967295));
      rp <- (BArray32.set32 rp i c);
      i <- (i + 1);
    }
    b_a <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp, a, b_a), trace__poly_tomsg_1);
  }
}.

(* The post and trace are valid. *)

lemma __csubq_trace  :
      hoare [M.__csubq : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __fqmulx16_trace  :
      hoare [M.__fqmulx16 : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma keccakf1600_index_trace  :
      hoare [M.keccakf1600_index :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *. auto .
qed .

lemma keccakf1600_rho_offsets_trace  :
      hoare [M.keccakf1600_rho_offsets :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
  proc; inline *.
  while(true); by auto .
qed .

lemma keccakf1600_rhotates_trace  :
      hoare [M.keccakf1600_rhotates :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
  proc; inline *; auto.
  while(true); by auto .
qed .

lemma keccakf1600_4x_theta_sum_trace _a _b_a :
      hoare [M.keccakf1600_4x_theta_sum :
      (((_b_a = b_a) /\ (_a = a)) /\ (is_init _b_a 0 800)) ==>
      ((is_init res.`1.`2 0 160) /\ (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_c 0 (32*5) /\ 0<=y /\ is_init b_a 0 800 /\ valid trace_keccakf1600_4x_theta_sum).
  + auto.
    while(is_init b_c 0 (32*5) /\ 0<=y /\ is_init b_a 0 800 /\
          valid trace_keccakf1600_4x_theta_sum /\ 0<=x  /\ y<5);
    auto; rewrite /is_init /valid /trace /=; smt(all_cat).
  auto.
  while(is_init b_c 0 (32*x) /\ 0<=x /\ x<=5 /\  is_init b_a 0 800 /\ valid trace_keccakf1600_4x_theta_sum);
  auto; rewrite /is_init /trace /valid /=; smt(all_cat).
qed.


lemma keccakf1600_4x_rol_trace _a _b_a _x _r _r8 _r56 :
      hoare [M.keccakf1600_4x_rol :
      (((_r56 = r56) /\
       ((_r8 = r8) /\ ((_r = r) /\ ((_x = x) /\ ((_b_a = b_a) /\ (_a = a)))))) /\
      (((is_init _b_a (_x * 32) 32) /\ (0 <= _x)) /\ (_x < 5))) ==>
      ((BBAnd.big (fun _ => true)
       (fun k => ((is_init res.`1.`2 k 1) = (is_init _b_a k 1)))
       (iota_ 0 160)) /\
      (valid (trace res)))].
proof.
  proc;auto.
  rewrite /is_init /valid /trace /=.
  move => &m. rewrite !and_iota.
  smt().
qed.


lemma keccakf1600_4x_theta_rol_trace _c _b_c _r8 _r56 :
      hoare [M.keccakf1600_4x_theta_rol :
      (((_r56 = r56) /\ ((_r8 = r8) /\ ((_b_c = b_c) /\ (_c = c)))) /\
      (is_init _b_c 0 160)) ==>
      ((is_init res.`1.`2 0 160) /\ (valid (trace res)))].
proof.
  proc;auto.
  while ( is_init b_d 0 (x*32) /\ 0<=x /\ x<=5 /\ valid  trace_keccakf1600_4x_theta_rol).
  + auto. ecall (keccakf1600_4x_rol_trace d b_d x 1 r8 r56).
    auto. rewrite /is_init /valid /trace /=. move => &m /> 7?.
    rewrite and_iota /= => h *.
    split. move=> i h1 h2.
    have := h i _; smt().
    split. smt().
    split. smt().
    rewrite !all_cat /=. 
    split. split. smt().
    + move=> i h1 h2.
      have := h i _; smt().
    smt().
  auto. rewrite /is_init /trace /valid /=. smt().
qed.

lemma keccakf1600_4x_rol_sum_trace _a _b_a _d _b_d _y _r8 _r56 :
      hoare [M.keccakf1600_4x_rol_sum :
      (((_r56 = r56) /\
       ((_r8 = r8) /\
       ((_y = y) /\
       ((_b_d = b_d) /\ ((_d = d) /\ ((_b_a = b_a) /\ (_a = a))))))) /\
      ((((is_init _b_a 0 800) /\ (is_init _b_d 0 160)) /\ (0 <= _y)) /\
      (_y < 5))) ==> ((is_init res.`1.`2 0 160) /\ (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_b 0 (x*32) /\ 0 <= x /\ x <= 5 /\ valid trace_keccakf1600_4x_rol_sum).
  + seq 16: (is_init b_b 0 ((x+1)*32) /\ 0 <= x /\ x < 5 /\ valid trace_keccakf1600_4x_rol_sum).
    + auto. ecall(keccakf1600_rhotates_trace). auto.
      rewrite /is_init /valid /trace /=. smt(all_cat).
    if.
    + auto. ecall(keccakf1600_4x_rol_trace b b_b x r r8 r56). auto.
      rewrite /is_init /valid /trace /=.
      move => &m *. split. smt().
      move => /> 4?. rewrite and_iota /=.
      move => h *.
      split. move => i h1 h2. have := h i _; smt().
      smt(all_cat).
    auto. smt().
  auto. rewrite /is_init /trace /valid /=. smt().
qed. 


lemma keccakf1600_4x_set_row_trace _e _b_e _b _b_b _y _rc :
      hoare [M.keccakf1600_4x_set_row :
      (((_rc = rc) /\
       ((_y = y) /\
       ((_b_b = b_b) /\ ((_b = b) /\ ((_b_e = b_e) /\ (_e = e)))))) /\
      (((is_init _b_b 0 160) /\ (0 <= _y)) /\ (_y < 5))) ==>
      ((BBAnd.big (fun _ => true)
       (fun k =>
       ((is_init res.`1.`2 k 1) =
       ((is_init _b_e k 1) \/
       ((((_y * 5) * 32) <= k) /\ (k < (((_y + 1) * 5) * 32))))))
       (iota_ 0 800)) /\
      (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_e (32*y*5) (32*x) /\ 0 <= x /\ x <= 5 /\ valid trace_keccakf1600_4x_set_row /\ 0<=y /\ y<5 /\ forall k, (k < (32*y*5) \/ (32*(y+1)*5) <= k) => is_init b_e k 1 = is_init _b_e k 1).
  + auto. rewrite /is_init /valid /trace /=. smt(all_cat).
  auto. rewrite /is_init /valid /trace /=. move => &m /> *.
  split. smt().
  move => *. rewrite and_iota. smt().
qed.


lemma _keccakf1600_4x_round_trace _e _b_e _a _b_a _rc _r8 _r56 :
      hoare [M._keccakf1600_4x_round :
      (((_r56 = r56) /\
       ((_r8 = r8) /\
       ((_rc = rc) /\
       ((_b_a = b_a) /\ ((_a = a) /\ ((_b_e = b_e) /\ (_e = e))))))) /\
      (is_init _b_a 0 800)) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_e 0 (y*160) /\ 0<=y /\ y<=5 /\ valid  trace__keccakf1600_4x_round).
  + auto.
    ecall(keccakf1600_4x_set_row_trace e b_e b (BArray160.init_arr (W8.of_int (-1)) 160)  y rc).
    auto. ecall(keccakf1600_4x_rol_sum_trace a (BArray800.init_arr (W8.of_int (-1)) 800) d
    ( BArray160.init_arr (W8.of_int (-1)) 160)  y r8 r56). auto.
    rewrite /is_init /valid /trace /=. move => &m /> *.
    split. smt(BArray800.init_arrP BArray160.init_arrP).
    move => /> 6?. rewrite and_iota /=. move =>  h ? .
    split. move => i ? ?.
    + have := h i _; smt().
    smt(all_cat).
  auto.
  ecall(keccakf1600_4x_theta_rol_trace c (BArray160.init_arr (W8.of_int (-1)) 160) r8 r56);auto.
  ecall(keccakf1600_4x_theta_sum_trace a (BArray800.init_arr (W8.of_int (-1)) 800));auto.
  smt(all_cat BArray800.init_arrP BArray160.init_arrP).
qed.


lemma __keccakf1600_avx2x4_trace _a _b_a :
      hoare [M.__keccakf1600_avx2x4 :
      (((_b_a = b_a) /\ (_a = a)) /\ (is_init _b_a 0 800)) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_a 0 800 /\ is_init b_RC 0 192 /\ 0 <= to_uint c /\ (to_uint c) %% 2 = 0 /\ valid trace___keccakf1600_avx2x4).
  + auto. ecall(_keccakf1600_4x_round_trace a (BArray800.init_arr (W8.of_int (-1)) 800) e (BArray800.init_arr (W8.of_int (-1)) 800) rc r8 r56). auto.
   ecall(_keccakf1600_4x_round_trace e  b_e a (BArray800.init_arr (W8.of_int (-1)) 800) rc r8 r56).
   auto. rewrite /is_init /valid /trace /=  => &m.
   rewrite ultE /=. move => /> *. split.  smt(BArray800.init_arrP).
   move => /> *.
   split. rewrite to_uintD_small /= /#.
   split. rewrite to_uintD_small /= /#.
   smt(all_cat).
  auto. rewrite /valid /trace /=. move => *.
  smt(BArray192.init_arrP BArray800.init_arrP ).
qed.

lemma _keccakf1600_avx2x4_trace _a _b_a :
      hoare [M._keccakf1600_avx2x4 :
      (((_b_a = b_a) /\ (_a = a)) /\ (is_init _b_a 0 800)) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
  proc;auto. ecall(__keccakf1600_avx2x4_trace a (BArray800.init_arr (W8.of_int (-1)) 800)). auto.
  move => &m.
  rewrite  /valid /trace /is_init /=. smt(BArray800.init_arrP all_cat).
qed.

lemma __state_init_avx2x4_trace _st _b_st :
      hoare [M.__state_init_avx2x4 :
      (((_b_st = b_st) /\ (_st = st)) /\ true) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
 proc;auto.
  while(0 <= to_uint i /\ is_init b_st 0 (to_uint i) /\ (to_uint i) <= 800 /\ valid trace___state_init_avx2x4 /\ (to_uint i %% 32) = 0).
  + auto. move => &m />. rewrite ultE /is_init /valid /trace /=.
    move => *. rewrite to_uintD_small /=; smt(all_cat).
  auto. rewrite /is_init /trace /valid /=.
  move => &m /> *.
  split. smt().
  move => 3?. rewrite ultE /=. smt().
qed.

lemma __addratebit_avx2x4_trace _st _b_st _rATE8 :
      hoare [M.__addratebit_avx2x4 :
      (((_rATE8 = rATE8) /\ ((_b_st = b_st) /\ (_st = st))) /\
      (((is_init _b_st 0 800) /\ (0 < _rATE8)) /\ (_rATE8 <= 200))) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
  proc;auto. rewrite /is_init /valid /trace /=. smt(BArray800.init_arrP).
qed.

lemma __4u64x4_u256x4_trace  :
      hoare [M.__4u64x4_u256x4 :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma a1____aread_subu64_trace _buf _b_buf _offset _dELTA _lEN _tRAIL :
      hoare [M.a1____aread_subu64 :
      (((_tRAIL = tRAIL) /\
       ((_lEN = lEN) /\
       ((_dELTA = dELTA) /\
       ((_offset = offset) /\ ((_b_buf = b_buf) /\ (_buf = buf)))))) /\
      (((0 <= _tRAIL) /\ (_tRAIL < 256)) /\
      ((0 < _lEN) ? ((((is_init _b_buf
                       (W64.to_uint (_offset + (W64.of_int _dELTA)))
                       ((_lEN < 8) ? _lEN : 8)) /\
                      (0 <= _dELTA)) /\
                     (0 <= ((W64.to_uint _offset) + _dELTA))) /\
                    ((((W64.to_uint _offset) + _dELTA) +
                     ((_lEN < 8) ? _lEN : 8)) <=
                    1)) : true))) ==>
      ((((res.`1.`1 =
         (_dELTA +
         ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8)))) /\
        (res.`1.`2 =
        (_lEN -
        ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8))))) /\
       (res.`1.`3 = ((8 <= _lEN) ? _tRAIL : 0))) /\
      (valid (trace res)))].
proof.
  proc. rewrite /=.
  case (1 < _lEN). exfalso. smt().
  seq 9:  (#pre /\ _lEN <= 1 /\ valid trace_a1____aread_subu64).
  + auto. smt().
  sp 1.
  if.
  + auto. smt(all_cat).
  if. exfalso. smt().
  if. exfalso. smt().
  sp 1. if. exfalso. smt().
  auto. move => &m /> . rewrite /valid /trace /=. move => 2? h *.
  case(lEN{m} = 1).
  + move => *. split.
    + move => *. split.
      + move => *. split.
        + move => *.  split. smt().
          rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
          smt().
        move => *. split. smt().  
        rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
        smt().
      smt().
    smt().
  auto. smt().
qed.


lemma a1____addstate_array_avx2x4_trace _st _b_st _aT _buf0 _b_buf0 _buf1 _b_buf1 _buf2 _b_buf2 _buf3 _b_buf3 _offset _lEN _tRAILB :
      hoare [M.a1____addstate_array_avx2x4 :
      (((_tRAILB = tRAILB) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf3 = b_buf3) /\
       ((_buf3 = buf3) /\
       ((_b_buf2 = b_buf2) /\
       ((_buf2 = buf2) /\
       ((_b_buf1 = b_buf1) /\
       ((_buf1 = buf1) /\
       ((_b_buf0 = b_buf0) /\
       ((_buf0 = buf0) /\ ((_aT = aT) /\ ((_b_st = b_st) /\ (_st = st)))))))))))))) /\
      (((0 <= _tRAILB) /\ (_tRAILB < 256)) /\
      (((((((((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\ (0 <= _aT)) /\
             (_aT < 200)) /\
            (((W64.to_uint _offset) + _lEN) <= 1)) /\
           (((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)) <= 200)) /\
          (is_init _b_buf0 (W64.to_uint _offset) _lEN)) /\
         (is_init _b_buf1 (W64.to_uint _offset) _lEN)) /\
        (is_init _b_buf2 (W64.to_uint _offset) _lEN)) /\
       (is_init _b_buf3 (W64.to_uint _offset) _lEN)) /\
      (is_init _b_st 0 800)))) ==>
      ((((is_init res.`1.`2 0 800) /\
        (res.`1.`3 = ((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)))) /\
       (res.`1.`4 = (_offset + (W64.of_int _lEN)))) /\
      (valid (trace res)))].
proof.
  proc. rewrite /=.
  case (1 < _lEN). exfalso. smt().
  seq 17: (#pre /\ _lEN <= 1 /\ valid  trace_a1____addstate_array_avx2x4).
  + auto. smt().
  sp. if.
  + seq 1: ( _lEN <= 1  /\ valid  trace_a1____addstate_array_avx2x4 /\ lO = _aT %% 8 /\
           _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
           is_init _b_buf0 (to_uint _offset) _lEN /\ offset = _offset /\
           is_init _b_buf1 (to_uint _offset) _lEN /\  0 <= _aT /\ _aT < 200 /\
           is_init _b_buf2 (to_uint _offset) _lEN /\
           is_init _b_buf3 (to_uint _offset) _lEN /\ 0 <= _tRAILB /\ _tRAILB < 256 /\
           aLL =  _aT + _lEN + (if (lO + _lEN < 8 && _tRAILB <> 0) then 1 else 0) /\
           tRAILB =  (if (lO + _lEN < 8 && _tRAILB <> 0) then 0 else _tRAILB) /\
           at = W64.of_int (4 * (_aT %/ 8) + (if (!(lO + _lEN < 8)) then 4 else 0)) /\ 
           aT = (if(lO + _lEN < 8) then 0 else _aT + 8 - lO) /\
           lEN = (if(lO + _lEN < 8) then 0 else _lEN - 8 + lO) /\
           dELTA = (if(lO + _lEN < 8) then _lEN else 8-lO)).
    + if.
      + auto. ecall(a1____aread_subu64_trace buf3 b_buf3 offset dELTA lEN tRAILB).    
        auto. ecall(a1____aread_subu64_trace buf2 b_buf2 offset dELTA lEN tRAILB).
        auto. ecall(a1____aread_subu64_trace buf1 b_buf1 offset dELTA lEN tRAILB).   
        auto. ecall(a1____aread_subu64_trace buf0 b_buf0 offset dELTA lEN tRAILB). auto.
        move => &m /> . rewrite /valid /trace /= => *.
        split.
        + move => *. split. smt().
          move => *. split. smt(). 
          move => *. split. smt().
          move => *. split. smt().
          move => *. split. rewrite !to_uintK_small /=; smt(all_cat).
          smt().
        move => *. split. smt().
        move => *. split. smt().
        move => *. split. smt().
        move => *. split. smt().
        move => *. split. rewrite !to_uintK_small /=; smt(all_cat).
        smt().
      if. exfalso. smt().   
      auto. ecall(a1____aread_subu64_trace buf3 b_buf3 offset dELTA (8-lO) tRAILB).    
      auto. ecall(a1____aread_subu64_trace buf2 b_buf2 offset dELTA (8-lO) tRAILB).
      auto. ecall(a1____aread_subu64_trace buf1 b_buf1 offset dELTA (8-lO) tRAILB).   
      auto. ecall(a1____aread_subu64_trace buf0 b_buf0 offset dELTA (8-lO) tRAILB). auto.
      move => &m /> . rewrite /valid /trace /= => *. 
      split.
      + move => *. split. smt().
        move => *. smt(). 
      move => *. split. smt().
      move => *. split. smt().
      move => *. split. smt().
      move => *. split. rewrite !to_uintK_small /=; smt(all_cat).
      smt().
    sp.  
    if. exfalso. smt().
    sp.
    if. 
    + auto. ecall(a1____aread_subu64_trace buf3 b_buf3 offset dELTA lO tRAILB).    
      auto. ecall(a1____aread_subu64_trace buf2 b_buf2 offset dELTA lO tRAILB).
      auto. ecall(a1____aread_subu64_trace buf1 b_buf1 offset dELTA lO tRAILB).   
      auto. ecall(a1____aread_subu64_trace buf0 b_buf0 offset dELTA lO tRAILB). auto.
      move => &m /> . rewrite /valid /trace /is_init /= => *. 
      split.
      + split. smt(). move => *.
        rewrite !to_uintD_small !to_uintK_small /=; smt(). 
      move => /> *. split. smt().
      move => *. split. smt().
      move => *. split. smt().
      move => *. split. move => *.
      + split. split. smt(BArray800.init_arrP). smt().
      rewrite !all_cat !to_uintK_small /= ; smt(). 
      rewrite !all_cat !to_uintK_small /=; smt(). 
    auto.  
    smt( BArray800.init_arrP).
  sp. if. exfalso. smt().
  sp. if. 
  + auto. ecall(a1____aread_subu64_trace buf3 b_buf3 offset dELTA lO tRAILB).    
    auto. ecall(a1____aread_subu64_trace buf2 b_buf2 offset dELTA lO tRAILB).
    auto. ecall(a1____aread_subu64_trace buf1 b_buf1 offset dELTA lO tRAILB).   
    auto. ecall(a1____aread_subu64_trace buf0 b_buf0 offset dELTA lO tRAILB). auto.
    move => &m /> . rewrite /valid /trace /is_init /= => *. 
    split. smt().
    move => *. split. smt().
    move => *. split. smt().
    move => *. split. smt().
    move => *. split. move => *.
    + split. split. smt(BArray800.init_arrP). smt().
    rewrite !all_cat !to_uintK_small /= ; smt(). 
    rewrite !all_cat !to_uintK_small /= ; smt(BArray800.init_arrP). 
  auto.  
  smt( BArray800.init_arrP).   
qed.

lemma a1____absorb_array_avx2x4_trace _st _b_st _aT _buf0 _b_buf0 _buf1 _b_buf1 _buf2 _b_buf2 _buf3 _b_buf3 _offset _lEN _rATE8 _tRAILB :
      hoare [M.a1____absorb_array_avx2x4 :
      (((_tRAILB = tRAILB) /\
       ((_rATE8 = rATE8) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf3 = b_buf3) /\
       ((_buf3 = buf3) /\
       ((_b_buf2 = b_buf2) /\
       ((_buf2 = buf2) /\
       ((_b_buf1 = b_buf1) /\
       ((_buf1 = buf1) /\
       ((_b_buf0 = b_buf0) /\
       ((_buf0 = buf0) /\ ((_aT = aT) /\ ((_b_st = b_st) /\ (_st = st))))))))))))))) /\
      (((0 <= _tRAILB) /\ (_tRAILB < 256)) /\
      (((((((((((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\ (0 <= _aT)) /\
               (_aT < _rATE8)) /\
              (0 < _rATE8)) /\
             (_rATE8 <= 200)) /\
            (((W64.to_uint _offset) + _lEN) <= 1)) /\
           (((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)) <= 200)) /\
          (is_init _b_buf0 (W64.to_uint _offset) _lEN)) /\
         (is_init _b_buf1 (W64.to_uint _offset) _lEN)) /\
        (is_init _b_buf2 (W64.to_uint _offset) _lEN)) /\
       (is_init _b_buf3 (W64.to_uint _offset) _lEN)) /\
      (is_init _b_st 0 800)))) ==>
      ((is_init res.`1.`2 0 800) /\ (valid (trace res)))].
proof.
 proc. rewrite /=.
  case (1 < _lEN). exfalso. smt().
  seq 18: (valid trace_a1____absorb_array_avx2x4 /\ #pre /\ _lEN <= 1).
  + auto. smt().
  sp. if.
  + seq 8: (valid trace_a1____absorb_array_avx2x4 /\ 0<rATE8 /\ rATE8 <= 200).
    + auto. ecall(a1____addstate_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800)
 aT buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 buf3 b_buf3 offset lEN tRAILB). auto.
      move => &m />. rewrite /valid /trace /= => *. smt(all_cat BArray800.init_arrP).
    if. auto.
    + ecall(__addratebit_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) rATE8). auto.
      move => &m />. rewrite /valid /trace /= => *. smt(all_cat BArray800.init_arrP).
    auto. smt(BArray800.init_arrP).
  seq 13: (valid trace_a1____absorb_array_avx2x4 /\ 0<rATE8 /\ rATE8 <= 200).
  + wp. ecall(a1____addstate_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) 0 buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 buf3 b_buf3 offset lEN tRAILB). auto.
    pose offset0 :=  to_uint _offset +  (if _aT <> 0 then (_rATE8-_aT) else 0).
    while (valid trace_a1____absorb_array_avx2x4 /\ 0<rATE8 /\ rATE8 <= 200 /\ _lEN <=1 /\
           0 <= offset0 /\ 0 <= to_uint i /\ to_uint i <=iTERS /\ 0 <= to_uint _offset /\
           to_uint offset =  offset0 +  to_uint i* rATE8 /\ iTERS <= 1 /\
           (to_uint i < iTERS => to_uint offset + rATE8 <= _lEN) /\ to_uint _offset <= offset0 /\
           is_init b_buf0  (to_uint _offset) _lEN /\ is_init b_buf1 (to_uint _offset)  _lEN /\
           is_init b_buf2  (to_uint _offset) _lEN /\ is_init b_buf3 (to_uint _offset)  _lEN).
    + auto. ecall(_keccakf1600_avx2x4_trace st b_st). auto.
      ecall(a1____addstate_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) 0 buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 buf3 b_buf3 offset rATE8 0). auto. 
      move => &m />. rewrite /valid /trace /is_init /= => 12?.
      rewrite ultE to_uintK_small /=. smt(). move => *.
      split.  smt(BArray800.init_arrP). move => 11? h *.
      split. smt(all_cat).
      rewrite !to_uintD_small !to_uintK_small /=;1..3: smt().
      split. smt(). split. smt().
      split. move: h. rewrite W64.to_uint_eq to_uintD_small to_uintK_small /=; 1..3:smt().
      + rewrite Ring.IntID.mulrDl. smt().
      smt().
    if.
    + auto. ecall(_keccakf1600_avx2x4_trace st b_st). auto.
      ecall(a1____addstate_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) aT buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 buf3 b_buf3 offset (rATE8 - aT) 0). auto.       
      move => &m />. rewrite /valid /trace /is_init /= => *. 
      split. smt(BArray800.init_arrP). move => 12? h *. 
      split. move : h. rewrite to_uint_eq to_uintD_small to_uintK_small /=;smt(all_cat). 
      move => /> /= *. split. split;smt(). move => *.
      smt(all_cat).
    auto.  move => &m />. rewrite /valid /trace /is_init /= => *. 
    split. smt(all_cat). move => *.
    split. smt(BArray800.init_arrP). move => *.
    smt(all_cat).
  auto. if. auto. ecall(__addratebit_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) rATE8). auto. smt(all_cat BArray800.init_arrP).
  auto. smt(BArray800.init_arrP).
qed.

lemma a32____aread_subu64_trace _buf _b_buf _offset _dELTA _lEN _tRAIL :
      hoare [M.a32____aread_subu64 :
      (((_tRAIL = tRAIL) /\
       ((_lEN = lEN) /\
       ((_dELTA = dELTA) /\
       ((_offset = offset) /\ ((_b_buf = b_buf) /\ (_buf = buf)))))) /\
      (((0 <= _tRAIL) /\ (_tRAIL < 256)) /\
      ((0 < _lEN) ? ((((is_init _b_buf
                       (W64.to_uint (_offset + (W64.of_int _dELTA)))
                       ((_lEN < 8) ? _lEN : 8)) /\
                      (0 <= _dELTA)) /\
                     (0 <= ((W64.to_uint _offset) + _dELTA))) /\
                    ((((W64.to_uint _offset) + _dELTA) +
                     ((_lEN < 8) ? _lEN : 8)) <=
                    32)) : true))) ==>
      ((((res.`1.`1 =
         (_dELTA +
         ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8)))) /\
        (res.`1.`2 =
        (_lEN -
        ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8))))) /\
       (res.`1.`3 = ((8 <= _lEN) ? _tRAIL : 0))) /\
      (valid (trace res)))].
proof.
 proc. rewrite /=.
  seq 10: (#pre /\ valid  trace_a32____aread_subu64).
  + by auto.
  if.
  + auto. smt().
  if. (* 8 <= len*)
  + auto. move => &m /> . rewrite /valid /trace /=. move => *.
    split. smt().
    rewrite !all_cat /=. split. split. smt().
    + rewrite to_uintD_small of_uintK /=; smt(W64.to_uint_cmp).
    smt().
  if. (* 4 <= len < 8*)
  + auto. move => &m /> . rewrite /valid /trace /=. move => 2? h *.
    case(lEN{m} = 4). 
    + move => *. split. smt().
      move => *. split. move => *.
      + split. smt().
        rewrite !all_cat /=. move => *.
        split. smt().
        split. rewrite to_uintD_small of_uintK /=; smt(W64.to_uint_cmp).
        smt().
      move => *. split. smt().
      rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK /=; smt(W64.to_uint_cmp).
      smt().
    case(lEN{m} = 5).
    + move => *. split. smt(). 
      move => *. split. move => *.
      + split. move => *.
        + split.
          + rewrite !all_cat /=. move => *.
            split. smt().
            split.
            + split.
              + split.
                + rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
                smt().
              rewrite to_uintD_small of_uintK /=; smt(W64.to_uint_cmp).
            rewrite /is_init in h.  
            rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
            + rewrite to_uintD_small of_uintK /=; smt().
            smt().
          move => *. split. smt().
          rewrite !all_cat /=. split. 
          + split.
            + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
              smt().
            rewrite to_uintD_small of_uintK /=; smt(W64.to_uint_cmp).
          rewrite /is_init in h.  
          rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
          + rewrite to_uintD_small of_uintK /=; smt().
          smt().
        smt().  
      move => *. split. smt().  
      rewrite !all_cat /=. split.  rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
     smt().
   case(lEN{m} = 6).
    + move => *. split. 
      + move => *. split.
        + move => *. split. smt().
          move => *. split. smt().
          rewrite !all_cat /=. split.
          + split. 
            + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
              smt().
            rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
          rewrite /is_init in h.  
          rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
          + rewrite to_uintD_small of_uintK /=; smt().
          smt().
        move => *. split. smt().
        rewrite !all_cat /=. split.
        + split. 
          + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
          smt().
        rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
      rewrite /is_init in h.  
      rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
      + rewrite to_uintD_small of_uintK /=; smt().
      smt().  
    smt().
  case(lEN{m} = 7).
  + move => *. split. 
    + move => *. split.
      + move => *. split.
        + move => *. split.
          + move => *. split. smt().
            rewrite !all_cat /=. split.
            + split.
              + split. 
                + split.
                  + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
                    smt().
                  rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
                rewrite /is_init in h.  
                rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
                + rewrite to_uintD_small of_uintK /=; smt().
                smt().  
              rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
            rewrite /is_init in h.  
            rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
            + rewrite to_uintD_small of_uintK /=; smt().
            smt().  
          move => *. split. smt().  
          rewrite !all_cat /=. split.
          + split.
            + split. 
              + split.
                + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
                  smt().
                rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
              rewrite /is_init in h.  
              rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
              + rewrite to_uintD_small of_uintK /=; smt().
              smt().  
            rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
          rewrite /is_init in h.  
          rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
          + rewrite to_uintD_small of_uintK /=; smt().
          smt().  
        smt().
      smt().
    smt().
  smt().
  sp 1.
  if. (* 2 <= len < 4*)
  + auto. move => &m /> . rewrite /valid /trace /=. move => 2? h *.
    case(lEN{m} = 2).
    + move => *. split.
      + move => *. split. smt().
        move => *. split. smt().
        rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
        smt().
      move => *. split. smt().
      rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
      smt().
    case(lEN{m} = 3).
    + move => *. split.
      + move => *. split.  
        + move => *. split.
          + move => *. split. smt().
            rewrite !all_cat /=. split.
            + split. 
              + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
                smt().
              rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
            rewrite /is_init in h.  
            rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
            + rewrite to_uintD_small of_uintK /=; smt().
            smt().
          move => *. split. smt().  
          rewrite !all_cat /=. split.
          + split. 
            + split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).  
              smt().
            rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
          rewrite /is_init in h.  
          rewrite /is_init /= of_intD W64.WRingA.addrA to_uintD_small /=.
          + rewrite to_uintD_small of_uintK /=; smt().
          smt().
        smt().  
      smt().   
   smt().
  sp 1.
  if. (* 1 = len*)
  + auto. move => &m /> . rewrite /valid /trace /=. move => 2? h *.
    case(lEN{m} = 1).
    + move => *. split.
      + move => *. split.
        + move => *. split. smt().
          rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
          smt().
        move => *. split. smt().  
        rewrite !all_cat /=. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
        smt().
      smt().
    smt().
  auto. smt().
qed.

lemma a32____aread_bcast_4subu64_trace _buf _b_buf _offset _dELTA _lEN _tRAIL :
      hoare [M.a32____aread_bcast_4subu64 :
      (((_tRAIL = tRAIL) /\
       ((_lEN = lEN) /\
       ((_dELTA = dELTA) /\
       ((_offset = offset) /\ ((_b_buf = b_buf) /\ (_buf = buf)))))) /\
      (((0 <= _tRAIL) /\ (_tRAIL < 256)) /\
      ((0 < _lEN) ? ((((is_init _b_buf
                       (W64.to_uint (_offset + (W64.of_int _dELTA)))
                       ((_lEN < 8) ? _lEN : 8)) /\
                      (0 <= _dELTA)) /\
                     (0 <= ((W64.to_uint _offset) + _dELTA))) /\
                    ((((W64.to_uint _offset) + _dELTA) +
                     ((_lEN < 8) ? _lEN : 8)) <=
                    32)) : true))) ==>
      ((((res.`1.`1 =
         (_dELTA +
         ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8)))) /\
        (res.`1.`2 =
        (_lEN -
        ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8))))) /\
       (res.`1.`3 = ((8 <= _lEN) ? _tRAIL : 0))) /\
      (valid (trace res)))].
proof.
  proc.
  seq 9: (#pre /\ valid trace_a32____aread_bcast_4subu64).
  + by auto.
  if.
  + auto. smt().
  if.
  + auto. move => &m. rewrite /valid /trace /=. move => *. 
    split. smt().
    rewrite !all_cat. split. rewrite to_uintD_small of_uintK ; smt(W64.to_uint_cmp).
    smt().
  auto. ecall (a32____aread_subu64_trace buf b_buf offset dELTA lEN tRAIL).
  auto. move => &m. rewrite /valid /trace /=. move => /> *.
  rewrite !all_cat /=. 
  smt().
qed.


lemma a32____addstate_bcast_array_avx2x4_trace _st _b_st _aT _buf _b_buf _offset _lEN _tRAILB :
      hoare [M.a32____addstate_bcast_array_avx2x4 :
      (((_tRAILB = tRAILB) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf = b_buf) /\
       ((_buf = buf) /\ ((_aT = aT) /\ ((_b_st = b_st) /\ (_st = st)))))))) /\
      (((0 <= _tRAILB) /\ (_tRAILB < 256)) /\
      ((((((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\ (0 <= _aT)) /\
          (_aT < 200)) /\
         (((W64.to_uint _offset) + _lEN) <= 32)) /\
        (((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)) <= 200)) /\
       (is_init _b_buf (W64.to_uint _offset) _lEN)) /\
      (is_init _b_st 0 800)))) ==>
      ((((is_init res.`1.`2 0 800) /\
        (res.`1.`3 = ((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)))) /\
       (res.`1.`4 = (_offset + (W64.of_int _lEN)))) /\
      (valid (trace res)))].
proof.
proc. rewrite /=.
  seq 11: (#pre /\ valid trace_a32____addstate_bcast_array_avx2x4).
  + by auto.
  sp.
  case (_aT%%8 + _lEN < 8).
  + case (0 < _aT%%8).
    + seq 1: (valid trace_a32____addstate_bcast_array_avx2x4 /\
               lEN < 8 /\ tRAILB = 0 /\ aT + lEN = 0 /\ aLL = ((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0))  /\ offset = _offset + W64.of_int _lEN).
      + if.
        + if.
          + auto. ecall (a32____aread_bcast_4subu64_trace buf b_buf offset dELTA lEN tRAILB). auto.
            move => &m /> /=. rewrite /trace /valid /is_init /= => *. 
            rewrite !to_uintK_small /=; smt(all_cat).
          exfalso. smt().
        by auto. 
      if. exfalso. smt().  
      sp. if. exfalso. smt().
      auto. smt(BArray800.init_arrP all_cat).
    seq 1: (valid trace_a32____addstate_bcast_array_avx2x4 /\ #pre /\  lEN < 8).      
    if. exfalso. smt().
    auto. smt(all_cat).
    if. exfalso. smt().
    sp.
    if.
    + auto. ecall (a32____aread_bcast_4subu64_trace buf b_buf offset dELTA lO tRAILB). auto.
      move => &m /> /=. rewrite /trace /valid /is_init /= => *.
      have h: ((aT{m} + lEN{m}) %% 8 = lEN{m}). move => *. rewrite -modzDm.
      + have h2: (aT{m} %% 8 + lEN{m} %% 8 = lEN{m} %% 8). smt(). rewrite h2 /=. smt().
      split. move => *.
      + split. move => *. smt().
        move => *. split. smt(BArray800.init_arrP).
        rewrite !to_uintK_small /=; smt(all_cat).
      move => *. split. smt().
      move => *. rewrite !to_uintK_small /=; smt(all_cat BArray800.init_arrP).
    auto. move => &m /> /=. rewrite /trace /valid /is_init /= => *.
    smt(BArray800.init_arrP  W64.WRingA.addr0).
  case(_aT%%8 = 0). 
  + if. exfalso. smt().
    seq 1: (valid trace_a32____addstate_bcast_array_avx2x4 /\
          offset = _offset + W64.of_int(_lEN - _lEN%%8) /\
          at =  W64.of_int (32 * (_aT %/ 8) + 32 * (_lEN %/ 8)) /\
          aLL = _aT + _lEN /\ lEN =( _lEN + _aT) %% 8 /\
          dELTA = 0 /\ _tRAILB = tRAILB /\ aT = _aT /\
          _b_buf = b_buf /\ (0 <= _tRAILB /\ _tRAILB < 256) /\
          0 <= to_uint _offset /\ 0 <= _lEN /\ 0 <= _aT /\ _aT < 200 /\
          to_uint _offset + _lEN <= 32 /\
          _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
          is_init _b_buf (to_uint _offset) _lEN /\
          ! _aT %% 8 + _lEN < 8 /\  _aT %% 8 = 0 ).
    + if. wp.
      + while(
          valid trace_a32____addstate_bcast_array_avx2x4 /\
          to_uint at <=  32 * (aT %/ 8) + 32 * (lEN %/ 8) /\ to_uint at %% 32 = 0 /\
          aLL = aT + lEN /\ offset = _offset + W64.of_int((to_uint at - (32 * (aT %/ 8)))%/4) /\
          dELTA = 0 /\ _tRAILB = tRAILB /\  _lEN = lEN /\ 32 * (aT %/ 8) <= to_uint at /\
          _b_buf = b_buf /\ (0 <= _tRAILB /\ _tRAILB < 256)  /\ lEN = _lEN /\
          0 <= to_uint _offset /\ 0 <= _lEN /\ 0 <= _aT /\ _aT < 200 /\
          to_uint _offset + _lEN <= 32 /\ _aT = aT /\ _lEN = lEN /\
          _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
          is_init _b_buf (to_uint _offset) _lEN /\
          ! _aT %% 8 + _lEN < 8 /\  _aT %% 8 = 0 ).
        + auto. move => &m /> /=. rewrite /trace /valid /is_init /=. move => 14?.
          rewrite ultE to_uintK_small /=. smt(). move => *.
          split. rewrite !all_cat to_uintD_small to_uintK_small/=; smt().
          rewrite to_uintD_small to_uintK_small/=; smt().
        auto. move => &m /> /=. rewrite /trace /valid /is_init /=. move => *.
        split. rewrite to_uintK_small/=; smt().
        move => 2?. rewrite ultE to_uintK_small /=. smt(). move => *.
        split. smt().
        rewrite to_uint_eq to_uintK_small /=; smt().
      auto.  move => &m /> /=. rewrite /trace /valid /is_init /=. move => *. smt().
    sp.
    if.
    + auto.  ecall (a32____aread_bcast_4subu64_trace buf b_buf offset dELTA lEN tRAILB). auto.
      move => &m /> /=. rewrite /trace /valid /is_init /= => *.
      split. move => *.
      + split. split. smt(modzDm). move => *.
        + rewrite !to_uintD_small !to_uintK_small /=; smt().
        move => *. split. smt(BArray800.init_arrP).
        rewrite to_uintK_small /=; smt(all_cat).
      move => *.
      split. split. smt(modzDm). move => *.
      + rewrite !to_uintD_small !to_uintK_small /=; smt().
      move => *. split. smt(BArray800.init_arrP).
      rewrite to_uintK_small /=; smt(all_cat).
    auto.  smt(BArray800.init_arrP all_cat).
  if.
  + if. exfalso. smt().
    seq 11: ( aLL = _aT + _lEN /\ at = W64.of_int (32 * (_aT %/ 8) + 32) /\
              dELTA = 0 /\ _tRAILB = tRAILB /\ lEN = _lEN -8 + (_aT %% 8)  /\
             offset = _offset + W64.of_int( 8 - (_aT %% 8)) /\
             _b_buf = b_buf /\ aT = _aT + 8 - (_aT %% 8) /\
             (0 <= _tRAILB /\ _tRAILB < 256) /\
             0 <= to_uint _offset /\ 0 <= _lEN /\ 0 <= _aT /\ _aT < 200 /\
             to_uint _offset + _lEN <= 32 /\
             _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
             is_init _b_buf (to_uint _offset) _lEN /\
             valid trace_a32____addstate_bcast_array_avx2x4 /\
             ! _aT %% 8 + _lEN < 8 /\
             aT %% 8 = 0).
    + if.
      + auto.  move => &m /> /=. rewrite /trace /valid /is_init /= => *.
        rewrite !all_cat !to_uintK_small /=; smt().
      auto. ecall(a32____aread_bcast_4subu64_trace buf b_buf offset dELTA (8 - lO) 0).
      auto.  move => &m /> /=. rewrite /trace /valid /is_init /= => *.
      split. smt(). move => *. 
      rewrite !all_cat !to_uintK_small /=; smt().
    seq 1: (valid trace_a32____addstate_bcast_array_avx2x4 /\
          offset = _offset + W64.of_int(_lEN - lEN) /\
          at =  W64.of_int (32 * (( _aT + 8 - (_aT %% 8)) %/ 8) + 32 * (( _lEN -8 + (_aT %% 8)) %/ 8)) /\
          aLL = _aT + _lEN /\ lEN =( _lEN + _aT) %% 8 /\
          dELTA = 0 /\ _tRAILB = tRAILB /\ aT%%8 = 0 /\
          _b_buf = b_buf /\ (0 <= _tRAILB /\ _tRAILB < 256) /\
          0 <= to_uint _offset /\ 0 <= _lEN /\ 0 <= _aT /\ _aT < 200 /\
          to_uint _offset + _lEN <= 32 /\
          _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
          is_init _b_buf (to_uint _offset) _lEN /\
          ! _aT %% 8 + _lEN < 8 /\  aT %% 8 = 0 ).
    + if. wp.
      + while(
          valid trace_a32____addstate_bcast_array_avx2x4 /\
          to_uint at <=  32 * (aT %/ 8) + 32 * (lEN %/ 8) /\ to_uint at %% 32 = 0 /\
          aLL = _aT + _lEN /\ offset = _offset + W64.of_int( 8 - (_aT %% 8)) + W64.of_int((to_uint at - (32 * (aT %/ 8)))%/4) /\
           dELTA = 0 /\ _tRAILB = tRAILB /\  lEN =  _lEN -8 + (_aT %% 8) /\
           32 * (aT %/ 8) <= to_uint at /\  aT = _aT + 8 - (_aT %% 8) /\
          _b_buf = b_buf /\ (0 <= _tRAILB /\ _tRAILB < 256)  /\
          0 <= to_uint _offset /\ 0 <= _lEN /\ 0 <= _aT /\ _aT < 200 /\
          to_uint _offset + _lEN <= 32 /\
          _aT + _lEN + (if _tRAILB <> 0 then 1 else 0) <= 200 /\
          is_init _b_buf (to_uint _offset) _lEN /\
          ! _aT %% 8 + _lEN < 8 /\  aT %% 8 = 0).
        + auto. move => &m /> /=. rewrite /trace /valid /is_init /=. move => 15?.
          rewrite ultE to_uintK_small /=. smt(). move => *.
          split. rewrite !all_cat to_uintD_small to_uintK_small/=; smt().
          rewrite to_uintD_small to_uintK_small/=; smt().
        auto. move => &m /> /=. rewrite /trace /valid /is_init /=. move => *.
        split. move => *. rewrite !to_uintK_small/=; smt().
        move => 2?. rewrite ultE to_uintK_small /=. smt(). move => *.
        split. smt().
        rewrite to_uint_eq to_uintK_small /=; smt().
      auto.  move => &m /> /=. rewrite /trace /valid /is_init /=. move => *. smt().
    sp. wp.
    if.
     + auto.  ecall (a32____aread_bcast_4subu64_trace buf b_buf offset dELTA lEN tRAILB). auto.
      move => &m /> /=. rewrite /trace /valid /is_init /= => *.
      split. move => *.
      + split. split. smt(modzDm). move => *.
        + rewrite !to_uintD_small !to_uintK_small /=; smt().
        move => *. split. smt(BArray800.init_arrP).
        rewrite to_uintK_small /=; smt(all_cat).
      move => *.
      split. split. smt(modzDm). move => *.
      + rewrite !to_uintD_small !to_uintK_small /=; smt().
      move => *. split. smt(BArray800.init_arrP).
      rewrite to_uintK_small /=; smt(all_cat).
    auto.  smt(BArray800.init_arrP all_cat).     
  exfalso. smt().
qed.

lemma a32____absorb_bcast_array_avx2x4_trace _st _b_st _aT _buf _b_buf _offset _lEN _rATE8 _tRAILB :
      hoare [M.a32____absorb_bcast_array_avx2x4 :
      (((_tRAILB = tRAILB) /\
       ((_rATE8 = rATE8) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf = b_buf) /\
       ((_buf = buf) /\ ((_aT = aT) /\ ((_b_st = b_st) /\ (_st = st))))))))) /\
      (((0 <= _tRAILB) /\ (_tRAILB < 256)) /\
      ((((((((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\ (0 <= _aT)) /\
            (_aT < _rATE8)) /\
           (((W64.to_uint _offset) + _lEN) <= 32)) /\
          (((_aT + _lEN) + ((_tRAILB <> 0) ? 1 : 0)) <= 200)) /\
         (0 < _rATE8)) /\
        (_rATE8 <= 200)) /\
       (is_init _b_buf (W64.to_uint _offset) _lEN)) /\
      (is_init _b_st 0 800)))) ==>
      (((is_init res.`1.`2 0 800) /\ (res.`1.`3 = ((_aT + _lEN) %% _rATE8) + (if _tRAILB <> 0 then 1 else 0))) /\
      (valid (trace res)))].
proof.
  proc. rewrite /=.
  seq 12:(#pre /\ valid trace_a32____absorb_bcast_array_avx2x4 ).
  + by auto.
  sp.
  if.
  + seq 8: (valid trace_a32____absorb_bcast_array_avx2x4 /\ 0 < rATE8 /\ rATE8 <= 200 /\ aT = (_aT + _lEN)%%_rATE8 + (if _tRAILB <> 0 then 1 else 0)).
    + auto. ecall (a32____addstate_bcast_array_avx2x4_trace st  (BArray800.init_arr (W8.of_int (-1)) 800) aT buf b_buf offset lEN  tRAILB). auto.
      move => &m /> /=. rewrite /trace /valid /=. move => *. smt(all_cat BArray800.init_arrP).
    if. 
    + auto. ecall(__addratebit_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) rATE8).
      auto. move => &m /> /=. rewrite /trace /valid /=. smt(all_cat BArray800.init_arrP).
    auto. smt(BArray800.init_arrP).
  seq 13: ( valid trace_a32____absorb_bcast_array_avx2x4 /\ 0 < rATE8 /\ rATE8 <= 200 /\
           aT = (_aT + _lEN)%%_rATE8 + (if _tRAILB <> 0 then 1 else 0)).
  + auto. ecall(a32____addstate_bcast_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) 0 buf b_buf offset lEN tRAILB). auto.
    pose offset0 :=  to_uint _offset +  (if _aT <> 0 then (_rATE8 - _aT) else 0).
    pose len0 :=  _lEN -  (if _aT <> 0 then (_rATE8 - _aT) else 0).
    while( valid trace_a32____absorb_bcast_array_avx2x4 /\ 0 < rATE8 /\ rATE8 <= 200 /\
           _aT < rATE8 /\ 0 <= to_uint i /\ to_uint i <=iTERS /\ 0 <= to_uint _offset /\
           to_uint offset =  offset0 +  to_uint i* rATE8 /\
            _rATE8 = rATE8 /\ iTERS <=_lEN /\ to_uint offset + len0%%rATE8 <= len0 + offset0  /\
           is_init b_buf (to_uint _offset) _lEN /\ aLL = _aT + _lEN /\ iTERS = len0%/rATE8 /\
           to_uint _offset + _lEN <= 32).
    + auto. ecall(_keccakf1600_avx2x4_trace st b_st). auto.
      ecall(a32____addstate_bcast_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) 0 buf b_buf offset rATE8 0). auto. 
      move => &m />. rewrite /valid /trace /is_init /= => 12?.
      rewrite ultE to_uintK_small /=. smt(). move => *.
      split. smt(BArray800.init_arrP). move => 8? h *.
      split. smt(all_cat).
      rewrite !to_uintD_small !to_uintK_small /=;1..3: smt().
      split. smt(). split. smt().
      move: h. rewrite W64.to_uint_eq to_uintD_small to_uintK_small /=; 1..3:smt().
      rewrite Ring.IntID.mulrDl. smt().
    if.
    + auto. ecall(_keccakf1600_avx2x4_trace st b_st). auto.
      ecall(a32____addstate_bcast_array_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) aT buf b_buf offset (rATE8 - aT) 0). auto.
      move => &m />. rewrite /valid /trace /is_init /= => *. 
      split. smt(BArray800.init_arrP). move => 9? h *. 
      split. move : h. rewrite to_uint_eq to_uintD_small to_uintK_small /=;1..3: smt().
      + move => *.  smt(all_cat).
      move => /> /= ? offset1 ?. rewrite ultE to_uintK_small /=. smt(). move => *.
      have: (len0 %% rATE8{m} = (aT{m} + lEN{m}) %% rATE8{m}). 
  + have /= ? := modzMDr (-1) (lEN{m} + aT{m}) (rATE8{m}).
smt().
      move => ?.
      split; smt(all_cat).
    auto.  move => &m />. rewrite /valid /trace /is_init /= => *. 
    split. smt(all_cat). move => 3?.  rewrite ultE to_uintK_small /=. smt(). move => *.
    split. smt(BArray800.init_arrP). move => *.
    smt(all_cat).
  auto. if. auto. ecall(__addratebit_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800) rATE8). auto. smt(all_cat BArray800.init_arrP).
  auto. smt(BArray800.init_arrP).
qed.

lemma a128____awrite_subu64_trace _buf _b_buf _offset _dELTA _lEN _w :
      hoare [M.a128____awrite_subu64 :
      (((_w = w) /\
       ((_lEN = lEN) /\
       ((_dELTA = dELTA) /\
       ((_offset = offset) /\ ((_b_buf = b_buf) /\ (_buf = buf)))))) /\
      ((0 < _lEN) ? (((0 <= ((W64.to_uint _offset) + _dELTA)) /\
                     (0 <= _dELTA)) /\
                    ((((W64.to_uint _offset) + _dELTA) +
                     ((_lEN < 8) ? _lEN : 8)) <=
                    128)) : true)) ==>
      ((((BBAnd.big (fun _ => true)
        (fun k =>
        (((is_init res.`1.`2 k 1) = ((is_init _b_buf k 1) \/
        ((((W64.to_uint _offset) + _dELTA) <= k) /\
        (k <
        (((W64.to_uint _offset) + _dELTA) +
        ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8)))))))))
        (iota_ 0 128)) /\
       ((res.`1.`3 =
        (_dELTA +
        ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8)))) /\
       (res.`1.`4 =
       (_lEN - ((((_lEN < 8) ? _lEN : 8) < 0) ? 0 : ((_lEN < 8) ? _lEN : 8))))))) /\
      (valid (trace res)))].
proof.
  proc.
  seq 8: (#pre /\ valid  trace_a128____awrite_subu64).
  + by auto.
  if. 
  + if.
    + auto. move => &m /> . rewrite /is_init /valid /trace and_iota /= => h *.
      rewrite to_uintD_small of_uintK ;smt(all_cat W64.to_uint_cmp).
    if.
    + auto. move => &m />.  rewrite /is_init /valid /trace and_iota /=.
      case(lEN{m} = 4).
      + move => /> *.
        rewrite and_iota !all_cat /= to_uintD_small of_uintK ;smt(W64.to_uint_cmp).
      case(lEN{m} = 5).
      + move => /> *. rewrite and_iota !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
      case(lEN{m} = 6).
      + move => /> *. rewrite and_iota !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
      case(lEN{m} = 7).
      + move => /> *. rewrite !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
      smt().
    if.   
    + auto. move => &m />.  rewrite /is_init /valid /trace and_iota /=.
      case(lEN{m} = 3).
      + move => /> *. rewrite !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
      case(lEN{m} = 2).
      + move => /> *. rewrite and_iota !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
      smt().
    if.
    + auto. move => &m />.  rewrite /is_init /valid /trace and_iota /=.
      case(lEN{m} = 1).
      + move => /> *. rewrite !all_cat /=.
        rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
    smt().
  auto. smt().  
  auto. move => &m />.  rewrite /is_init /valid /trace and_iota /=.
  smt().
qed.


lemma a128____dumpstate_array_avx2x4_trace _buf0 _b_buf0 _buf1 _b_buf1 _buf2 _b_buf2 _buf3 _b_buf3 _offset _lEN _st _b_st :
      hoare [M.a128____dumpstate_array_avx2x4 :
      (((_b_st = b_st) /\
       ((_st = st) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf3 = b_buf3) /\
       ((_buf3 = buf3) /\
       ((_b_buf2 = b_buf2) /\
       ((_buf2 = buf2) /\
       ((_b_buf1 = b_buf1) /\
       ((_buf1 = buf1) /\ ((_b_buf0 = b_buf0) /\ (_buf0 = buf0)))))))))))) /\
      ((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\
       (is_init _b_st 0 800)) /\
      (((W64.to_uint _offset) + _lEN) <= 128))) ==>
      (((res.`1.`9 = (_offset + (W64.of_int _lEN))) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`8 k 1) =
        ((is_init _b_buf3 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`6 k 1) =
        ((is_init _b_buf2 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`4 k 1) =
        ((is_init _b_buf1 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       (BBAnd.big (fun _ => true)
       (fun k =>
       ((is_init res.`1.`2 k 1) =
       ((is_init _b_buf0 k 1) \/
       (((W64.to_uint _offset) <= k) /\ (k < ((W64.to_uint _offset) + _lEN))))))
       (iota_ 0 128)))))) /\
      (valid (trace res)))].
proof.
  proc. rewrite /=.
  seq 14: (#pre /\ valid trace_a128____dumpstate_array_avx2x4).
  + by auto. 
  seq 3: (0 <= to_uint _offset /\ 0 <= _lEN /\ valid trace_a128____dumpstate_array_avx2x4 /\
          to_uint _offset + _lEN <= 128 /\
          0 <= to_uint i /\ to_uint i <= 192 /\
          offset = _offset + W64.of_int (_lEN - _lEN%%8) /\
          lEN = _lEN /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf0 k 1 = (is_init _b_buf0 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  _offset + (_lEN - _lEN%%8)))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf1 k 1 = (is_init _b_buf1 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  _offset + (_lEN - _lEN%%8) ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf2 k 1 = (is_init _b_buf2 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  _offset + (_lEN - _lEN%%8) ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf3 k 1 = (is_init _b_buf3 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  _offset + (_lEN - _lEN%%8) ))) (iota_ 0 128)).
  + while(0 <= to_uint _offset /\ 0 <= _lEN /\ valid trace_a128____dumpstate_array_avx2x4 /\
          to_uint _offset + _lEN <= 128 /\
          0 <= to_sint i /\ to_sint i<=  8*(lEN%/8) /\ to_uint i%%8 = 0 /\
          offset = _offset + i /\ lEN = _lEN /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf0 k 1 = (is_init _b_buf0 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  offset))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf1 k 1 = (is_init _b_buf1 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf2 k 1 = (is_init _b_buf2 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf3 k 1 = (is_init _b_buf3 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset))) (iota_ 0 128)).
    + auto. move => &m /> /=.
      rewrite /is_init /valid /trace !and_iota  !all_cat /= => 7? h1 h2 h3 h4. 
      rewrite sltE to_sint_unsigned /=. by auto. rewrite to_sintK_small /=. smt(). move => ?.
      split.
      + rewrite !to_uintM_small /=. smt().
        rewrite !to_uintD_small /=. smt(). rewrite !to_uintM_small /=; smt().
        + rewrite !to_uintM_small /=; smt().  rewrite !to_uintM_small /=; smt().
         rewrite !to_uintM_small /=. smt().
        smt(W64.to_uint_cmp).
      split. rewrite !to_sintD_small to_sintK_small /=; smt().
      split. rewrite !to_sintD_small to_sintK_small /= ; 1,3:smt(); rewrite to_sint_unsigned; smt(W64.to_uint_cmp).
      split. rewrite !to_uintD_small  /=; smt().
      split. smt(W64.WRingA.addrA).
      split. move => k ?. have:= h1 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      split. move => k ?. have:= h2 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      split. move => k ?. have:= h3 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      move => k ?. have:= h4 k _. by auto.
      rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
    sp.
    while(0 <= to_uint _offset /\ 0 <= _lEN /\ valid trace_a128____dumpstate_array_avx2x4 /\
          to_uint _offset + _lEN <= 128 /\
          0 <= to_sint i /\ to_sint i<=  32*(lEN%/32) /\ to_uint i%%32 = 0 /\
          offset = _offset + i /\ lEN = _lEN /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf0 k 1 = (is_init _b_buf0 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint  offset))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf1 k 1 = (is_init _b_buf1 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf2 k 1 = (is_init _b_buf2 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset ))) (iota_ 0 128) /\
          BBAnd.big (fun (_ : int) => true)
            (fun (k : int) =>
               is_init b_buf3 k 1 = (is_init _b_buf3 k 1 \/ (to_uint _offset <=  k) /\
                (k < to_uint offset))) (iota_ 0 128)).
    + auto. ecall(__4u64x4_u256x4_trace). auto.   move => &m /> /=.
      rewrite /is_init /valid /trace !and_iota /= => 7? h1 h2 h3 h4. 
      rewrite sltE to_sint_unsigned /=. by auto. rewrite to_sintK_small /=. smt(). move => *.
      rewrite !all_cat /=. 
      split.
      + rewrite !to_uintM_small /=. smt().
        rewrite !to_uintD_small /=. rewrite !to_uintM_small /=; smt(). 
        + rewrite !to_uintM_small /=; smt().  rewrite !to_uintM_small /=; smt(). smt().
          rewrite !to_uintM_small /=. smt().
        smt(W64.to_uint_cmp).
      split. rewrite !to_sintD_small to_sintK_small /=; smt().
      split. rewrite !to_sintD_small to_sintK_small /= ; 1,3:smt(); rewrite to_sint_unsigned; smt(W64.to_uint_cmp).
      split. rewrite !to_uintD_small  /=; smt().
      split. smt(W64.WRingA.addrA).
      split. move => k ?. have:= h1 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      split. move => k ?. have:= h2 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      split. move => k ?. have:= h3 k _. by auto.
      + rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
      move => k ?. have:= h4 k _. by auto.
      rewrite !to_uintD_small /=; smt(W64.to_uint_cmp).
    auto.
    move => &m /> . rewrite /is_init /valid /trace !and_iota /= => *. 
    rewrite !to_sintK_small /=. by auto. split. smt().
    move => 6?. rewrite !and_iota /=. move => *.
    split. smt().
    move => 4? i1 ?.  rewrite !and_iota /=. move => h1 2? h2 ? h3 h4 h5 h6.
    split. smt(W64.to_uint_cmp).
    split. move: h2. rewrite to_sint_unsigned; smt().
    split. move : h1 h2. rewrite sltE to_sint_unsigned /=. by auto.
    + rewrite to_sintK_small /=. smt().
      have: ( to_uint i1 = 8 * (lEN{m} %/ 8) => i1 = W64.of_int (lEN{m} - lEN{m} %% 8) ).
      + rewrite to_uint_eq /= to_uintK_small /=; smt(). 
      smt(). 
    move : h1 h2. rewrite sltE to_sint_unsigned /=. by auto.
    rewrite to_sintK_small /=. smt().
    have: ( to_uint i1 = 8 * (lEN{m} %/ 8) => to_uint i1 = lEN{m} - lEN{m} %% 8). smt().
    move => *.
    split. move => k ?. have:= h3 k _. smt(). rewrite to_uintD_small /=; smt().
    split. move => k ?. have:= h4 k _. smt(). rewrite to_uintD_small /=; smt().
    split. move => k ?. have:= h5 k _. smt(). rewrite to_uintD_small /=; smt().
    move => k ?. have:= h6 k _. smt(). rewrite to_uintD_small /=; smt().
  if.
  + auto.
    ecall(a128____awrite_subu64_trace buf3 b_buf3 offset 0 (_lEN %% 8) t3). auto.
    ecall(a128____awrite_subu64_trace buf2 b_buf2 offset 0 (_lEN %% 8) t2). auto.
    ecall(a128____awrite_subu64_trace buf1 b_buf1 offset 0 (_lEN %% 8) t1). auto.
    ecall(a128____awrite_subu64_trace buf0 b_buf0 offset 0 (_lEN %% 8) t0). auto.
    move => &m />  /= 6?. rewrite /valid /trace /is_init !and_iota  /=  => h0 h1 h2 h3 *.
    split. rewrite !to_uintD_small !of_uintK /=; smt(W64.to_uint_cmp).
    move => 2? r0.
    rewrite !and_iota; move => h0' 3? r1.
    rewrite !and_iota; move => h1'  3? r2.
    rewrite !and_iota; move => h2'  3? r3.
    rewrite !and_iota; move => h3' *.
    split. split. smt().
    + split.  move => k ?. have := h3 k _. smt(). have := h3' k _. smt().
      + rewrite !to_uintD_small !to_uintK_small /=; smt(W64.to_uint_cmp).
      split.  move => k ?. have := h2 k _. smt(). have := h2' k _. smt().
      + rewrite !to_uintD_small !to_uintK_small /=; smt(W64.to_uint_cmp).
      split.  move => k ?. have := h1 k _. smt(). have := h1' k _. smt().
      + rewrite !to_uintD_small !to_uintK_small /=; smt(W64.to_uint_cmp).
      move => k ?. have := h0 k _. smt(). have := h0' k _. smt().
      rewrite !to_uintD_small !to_uintK_small /=; smt(W64.to_uint_cmp).     
    rewrite !all_cat !to_uintD_small !to_uintM_small /=;  smt(W64.to_uint_cmp).
  auto. move => &m /> /=. rewrite !and_iota.  smt().
qed.




lemma a128____squeeze_array_avx2x4_trace _buf0 _b_buf0 _buf1 _b_buf1 _buf2 _b_buf2 _buf3 _b_buf3 _offset _lEN _st _b_st _rATE8 :
      hoare [M.a128____squeeze_array_avx2x4 :
      (((_rATE8 = rATE8) /\
       ((_b_st = b_st) /\
       ((_st = st) /\
       ((_lEN = lEN) /\
       ((_offset = offset) /\
       ((_b_buf3 = b_buf3) /\
       ((_buf3 = buf3) /\
       ((_b_buf2 = b_buf2) /\
       ((_buf2 = buf2) /\
       ((_b_buf1 = b_buf1) /\
       ((_buf1 = buf1) /\ ((_b_buf0 = b_buf0) /\ (_buf0 = buf0))))))))))))) /\
      (((((0 <= (W64.to_uint _offset)) /\ (0 <= _lEN)) /\
        (is_init _b_st 0 800)) /\
       (((W64.to_uint _offset) + _lEN) <= 128)) /\
      (0 < _rATE8) /\ _rATE8 <=200 )) ==>
      (((is_init res.`1.`11 0 800) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`8 k 1) =
        ((is_init _b_buf3 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`6 k 1) =
        ((is_init _b_buf2 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       ((BBAnd.big (fun _ => true)
        (fun k =>
        ((is_init res.`1.`4 k 1) =
        ((is_init _b_buf1 k 1) \/
        (((W64.to_uint _offset) <= k) /\
        (k < ((W64.to_uint _offset) + _lEN)))))) (iota_ 0 128)) /\
       (BBAnd.big (fun _ => true)
       (fun k =>
       ((is_init res.`1.`2 k 1) =
       ((is_init _b_buf0 k 1) \/
       (((W64.to_uint _offset) <= k) /\ (k < ((W64.to_uint _offset) + _lEN))))))
       (iota_ 0 128)))))) /\
      (valid (trace res)))].
proof.
proc. rewrite /=.
  seq 15: (valid trace_a128____squeeze_array_avx2x4 /\ #pre).
  + by auto.
  sp.
  if.
  + seq 1: ( valid trace_a128____squeeze_array_avx2x4 /\ lO = _lEN %% _rATE8 /\
             0 <= to_uint _offset /\  0 < _rATE8 /\ _rATE8 <= 200 /\
             offset = _offset + W64.of_int (_rATE8 * (_lEN%/_rATE8)) /\
             to_uint _offset + _lEN <= 128 /\ 0 < _lEN /\
      BBAnd.big (fun (_ : int) => true)
       (fun (k : int) =>
        is_init b_buf3 k 1 =
        (is_init _b_buf3 k 1 \/
         to_uint _offset <= k /\ k < to_uint _offset + (_rATE8 * (_lEN%/_rATE8)))) (iota_ 0 128) /\
      BBAnd.big (fun (_ : int) => true)
       (fun (k : int) =>
        is_init b_buf2 k 1 =
        (is_init _b_buf2 k 1 \/
         to_uint _offset <= k /\ k < to_uint _offset + (_rATE8 * (_lEN%/_rATE8)))) (iota_ 0 128) /\
      BBAnd.big (fun (_ : int) => true)
       (fun (k : int) =>
        is_init b_buf1 k 1 =
        (is_init _b_buf1 k 1 \/
         to_uint _offset <= k /\ k < to_uint _offset + (_rATE8 * (_lEN%/_rATE8)))) (iota_ 0 128) /\
      BBAnd.big (fun (_ : int) => true)
       (fun (k : int) =>
        is_init b_buf0 k 1 =
        (is_init _b_buf0 k 1 \/
         to_uint _offset <= k /\ k < to_uint _offset + (_rATE8 * (_lEN%/_rATE8)))) (iota_ 0 128)).
    + if. sp.
      + while(0 <= to_uint i /\ to_uint i <= iTERS /\ valid trace_a128____squeeze_array_avx2x4 /\
              iTERS = _lEN %/ _rATE8 /\ lO = _lEN %% _rATE8 /\  0 < iTERS /\ _rATE8 <= _lEN
          /\ 0 <= to_uint _offset /\ 0 < rATE8 /\ _rATE8 <= 200 /\ rATE8 = _rATE8 /\ lEN = _lEN /\
      offset = _offset + i * W64.of_int (_rATE8) /\  to_uint _offset + _lEN <= 128 /\
         ( to_uint i < iTERS => to_uint i * _rATE8 <= _lEN) /\
         BBAnd.big (fun (_ : int) => true)
          (fun (k : int) =>
           is_init b_buf3 k 1 =
          (is_init _b_buf3 k 1 \/
           to_uint _offset <= k /\ k < to_uint _offset + (to_uint i * _rATE8))) (iota_ 0 128) /\
         BBAnd.big (fun (_ : int) => true)
          (fun (k : int) =>
           is_init b_buf2 k 1 =
           (is_init _b_buf2 k 1 \/
            to_uint _offset <= k /\ k < to_uint _offset + (to_uint i * _rATE8))) (iota_ 0 128) /\
         BBAnd.big (fun (_ : int) => true)
          (fun (k : int) =>
           is_init b_buf1 k 1 =
           (is_init _b_buf1 k 1 \/
            to_uint _offset <= k /\ k < to_uint _offset + (to_uint i * _rATE8))) (iota_ 0 128) /\
         BBAnd.big (fun (_ : int) => true)
          (fun (k : int) =>
           is_init b_buf0 k 1 =
           (is_init _b_buf0 k 1 \/
             to_uint _offset <= k /\ k < to_uint _offset + (to_uint i * _rATE8))) (iota_ 0 128)).
        + auto. ecall(a128____dumpstate_array_avx2x4_trace buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 
      buf3 b_buf3 offset rATE8 st (BArray800.init_arr (W8.of_int (-1)) 800)). auto.
          ecall(_keccakf1600_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800)). auto.
          move => &m /> /=. rewrite /valid /trace /is_init !and_iota /= => 9?.
          rewrite ultE to_uintK_small /=. smt().  move => ? h0 h1 h2 h3 *.
          split. smt(BArray800.init_arrP). move => *.
          split. rewrite !to_uintD_small !to_uintM_small to_uintK_small /=; smt().
          move => 5?. rewrite !and_iota /=. move => h0' h1' h2' h3' *.
          rewrite !to_uintD_small /=. smt().
          split. smt(). split. smt().
          split. rewrite !all_cat /=. smt().
          split. rewrite W64.WRingA.mulrDl mul1r_s W64.WRingA.addrA. smt().
          split. smt().
          split. move => k ?.  have:= h0 k _. smt(). have:= h0' k _. smt().
          + rewrite !to_uintD_small !to_uintM_small !to_uintK_small /=; smt(W64.to_uint_cmp).
          split. move => k ?.  have:= h1 k _. smt(). have:= h1' k _. smt().
          + rewrite !to_uintD_small !to_uintM_small !to_uintK_small /=; smt(W64.to_uint_cmp).
          split. move => k ?.  have:= h2 k _. smt(). have:= h2' k _. smt().
          + rewrite !to_uintD_small !to_uintM_small !to_uintK_small /=; smt(W64.to_uint_cmp).
          move => k ?.  have:= h3 k _. smt(). have:= h3' k _. smt().
          rewrite !to_uintD_small !to_uintM_small !to_uintK_small /=; smt(W64.to_uint_cmp).
        auto. move => &m /> /=. rewrite /valid /trace /is_init !and_iota /= => *.
        split. smt(all_cat).
        move => 4? i ?. rewrite !and_iota ultE to_uintK_small /=. smt(). 
        move => *. rewrite  -W64.of_intM. rewrite W64.WRingA.mulrC.
        have: (i = W64.of_int (lEN{m} %/ rATE8{m})). 
        + rewrite to_uint_eq to_uintK_small /=; smt(). move => hi.
        split. move: hi. by auto. smt( W64.WRingA.mulrDl).
      auto. move => &m /> /=  *.
      split. have: (lEN{m} %/ rATE8{m} = 0). smt().
      + have:(offset{m} = offset{m} + W64.of_int (_rATE8{m} * 0)). rewrite Ring.IntID.mulr0. by auto.
      move => *. smt().
    rewrite  !and_iota. smt().
    if. 
    + auto. ecall(a128____dumpstate_array_avx2x4_trace buf0 b_buf0 buf1 b_buf1 buf2 b_buf2
 buf3 b_buf3 offset lO st (BArray800.init_arr (W8.of_int (-1)) 800)). auto.
      ecall(_keccakf1600_avx2x4_trace st (BArray800.init_arr (W8.of_int (-1)) 800)). auto.
      move => &m /> /=. rewrite /valid /trace /is_init !and_iota /= => 6? h0 h1 h2 h3 *.
      split. smt(BArray800.init_arrP). move => /> *.
      split. rewrite !to_uintD_small !to_uintK_small /=; smt().
      move => 5?. rewrite !and_iota  /= => h0' h1' h2' h3' *. 
      have hh: (to_uint _offset + _rATE8 * (_lEN %/ _rATE8) + _lEN %% _rATE8 = to_uint _offset + _lEN). smt(). split.
      + split. move => k ?.  have:= h0 k _. smt(). have:= h0' k _. smt().
        + rewrite !to_uintD_small  !to_uintK_small /=; 1..3: smt().
          rewrite hh. smt(W64.to_uint_cmp).
        split. move => k ?.  have:= h1 k _. smt(). have:= h1' k _. smt().
        + rewrite !to_uintD_small  !to_uintK_small /=; 1..3: smt().
          rewrite hh. smt(W64.to_uint_cmp).
        split. move => k ?.  have:= h2 k _. smt(). have:= h2' k _. smt().
        + rewrite !to_uintD_small  !to_uintK_small /=; 1..3: smt().
          rewrite hh. smt(W64.to_uint_cmp).
        move => k ?.  have:= h3 k _. smt(). have:= h3' k _. smt().
        rewrite !to_uintD_small  !to_uintK_small /=; 1..3: smt().
        rewrite hh. smt(W64.to_uint_cmp).
      rewrite !all_cat. smt().
    auto. move => &m /> /=. rewrite /valid /trace /is_init !and_iota /= => 6? h0 h1 h2 h3 *.
    split. smt(BArray800.init_arrP).
    have h:( _lEN %% _rATE8 = 0 => _rATE8{m} * (_lEN %/ _rATE8) = _lEN). smt(divzpMr).
    split.  move => k ?.  have:= h0 k _. smt().  smt().
    split.  move => k ?.  have:= h1 k _; smt().
    split.  move => k ?.  have:= h2 k _; smt().
    move => k ?.  have:= h3 k _; smt().
  auto.  move => &m /> /=. rewrite /valid /trace /is_init !and_iota /= => *.
  smt(BArray800.init_arrP all_cat).
qed.

       
lemma _shake256x4_A128__A32_A1_trace _out0 _b_out0 _out1 _b_out1 _out2 _b_out2 _out3 _b_out3 _seed _b_seed _nonces _b_nonces :
      hoare [M._shake256x4_A128__A32_A1 :
      (((_b_nonces = b_nonces) /\
       ((_nonces = nonces) /\
       ((_b_seed = b_seed) /\
       ((_seed = seed) /\
       ((_b_out3 = b_out3) /\
       ((_out3 = out3) /\
       ((_b_out2 = b_out2) /\
       ((_out2 = out2) /\
       ((_b_out1 = b_out1) /\
       ((_out1 = out1) /\ ((_b_out0 = b_out0) /\ (_out0 = out0)))))))))))) /\
      ((is_init _b_seed 0 32) /\ (is_init _b_nonces 0 4))) ==>
      (((((is_init res.`1.`2 0 128) /\ (is_init res.`1.`4 0 128)) /\
        (is_init res.`1.`6 0 128)) /\
       (is_init res.`1.`8 0 128)) /\
      (valid (trace res)))].
proof.
  proc;auto.
  ecall(a128____squeeze_array_avx2x4_trace out0 b_out0 out1 b_out1 out2 b_out2 out3 b_out3 offset 128 st (BArray800.init_arr (W8.of_int (-1)) 800) 136); auto.
  ecall(a1____absorb_array_avx2x4_trace st b_st 32 (SBArray4_1.get_sub nonces 0)
  (SBArray4_1.get_sub b_nonces 0) (SBArray4_1.get_sub nonces 1)
  (SBArray4_1.get_sub b_nonces 1) (SBArray4_1.get_sub nonces 2)         
  (SBArray4_1.get_sub b_nonces 2) (SBArray4_1.get_sub nonces 3)         
  (SBArray4_1.get_sub b_nonces 3) offset 1 136 31). auto. 
  ecall(a32____absorb_bcast_array_avx2x4_trace st                          
  (BArray800.init_arr (W8.of_int (-1)) 800) 0 seed             
  (BArray32.init_arr (W8.of_int (-1)) 32) offset 32 136 0);auto.
  ecall(__state_init_avx2x4_trace st b_st); auto.
  rewrite /valid /is_init /trace /=. move => &m /> *.
  split. smt(BArray32.init_arrP BArray800.init_arrP).
  move =>  /> *. split. smt(SBArray4_1.is_init_cell_get).
  move => 9?. rewrite !and_iota /=. move => h1 h2 h3 h4 ?.
  have: (forall k, 0<=k /\ k<128 => (((W64.zero \ule W64.of_int k) /\ (W64.of_int k \ult W64.of_int 128)) <=>  ((0 <= k) /\ ( k <  128)))).
  + move => ?. rewrite uleE ultE /= W64.of_uintK /=. smt(). 
  move => h5.
  split.
  + split.
    + split.
      + split.  
        + move => i ? ?.
          have:= h4 i _; smt().
        move => i ? ?.
        have:= h3 i _; smt().
      move => i ? ?.
      have:= h2 i _; smt().
    move => i ? ?.
    have:= h1 i _; smt().
  smt(all_cat).
qed.



lemma _poly_csubq_trace _rp _b_rp :
      hoare [M._poly_csubq :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
proc;wp; inline *; auto.
  while (valid trace__poly_csubq /\ 0 <= i).
  + auto. smt(all_cat).
  auto. smt(BArray512.init_arrP).
qed.


lemma _poly_compress_trace _rp _a _b_a :
      hoare [M._poly_compress :
      (((_b_a = b_a) /\ ((_a = a) /\ (_rp = rp))) /\
      ((is_init _b_a 0 512) /\ (is_valid (W64.to_uint _rp) 128))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
 proc; auto.
  while ( 0 <= i /\ is_valid (to_uint rp) 128 /\ valid trace__poly_compress).
  + auto. rewrite /is_init /trace /valid /=. move => &m /> ? h *.
    have:= is_valid_bound _ _ h. move => /= *.
    rewrite !all_cat  W64.to_uintD_small;rewrite W64.to_uintK_small; smt(is_validP).
  auto. ecall(_poly_csubq_trace a (BArray512.init_arr (W8.of_int (-1)) 512)).  auto.
  rewrite /is_init /trace /valid  /=.
  smt(all_cat BArray512.init_arrP BArray32.init_arrP).
qed.

lemma _poly_compress_1_trace _rp _b_rp _a _b_a :
      hoare [M._poly_compress_1 :
      (((_b_a = b_a) /\ ((_a = a) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_a 0 512)) ==>
      (((is_init res.`1.`2 0 128) /\ (is_init res.`1.`4 0 512)) /\
      (valid (trace res)))].
proof.
  proc; auto.
  while (valid trace__poly_compress_1 /\ is_init b_rp 0 (i*32)  /\ 0 <= i /\ i<=4).
  + auto. rewrite /is_init /trace /valid /=. move => &m /> *.
    rewrite !all_cat /#.
  auto. ecall (_poly_csubq_trace a (BArray512.init_arr (W8.of_int (-1)) 512)). auto.
  rewrite /is_init /trace /valid /=.
  smt(all_cat BArray512.init_arrP  BArray32.init_arrP).
qed.

lemma _poly_decompress_trace _rp _b_rp _ap :
      hoare [M._poly_decompress :
      (((_ap = ap) /\ ((_b_rp = b_rp) /\ (_rp = rp))) /\
      (is_valid (W64.to_uint _ap) 128)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;auto.
  while (valid trace__poly_decompress /\ is_valid (to_uint ap) 128 /\ is_init b_rp 0 (i*32) /\ 0 <=i /\ i<=16).
  + auto. rewrite /is_init /trace /valid /=. move => &m /> ? h  *. rewrite !all_cat.
    have := is_valid_bound _ _ h. move => /= ?.
    rewrite W64.to_uintD_small to_uintK_small; smt(is_validP).
  auto. rewrite /is_init /trace /valid /=.  smt(BArray32.init_arrP).
qed.

lemma _poly_frommont_trace _rp _b_rp :
      hoare [M._poly_frommont :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
 proc;wp.
  while (0 <= i /\ valid trace__poly_frommont).
  + auto. ecall(__fqmulx16_trace). auto. smt(all_cat).
  auto. rewrite /is_init /trace /valid /=.  smt(BArray32.init_arrP BArray512.init_arrP ).
qed.

lemma _poly_frommsg_1_trace _rp _b_rp _ap _b_ap :
      hoare [M._poly_frommsg_1 :
      (((_b_ap = b_ap) /\ ((_ap = ap) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_ap 0 32)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;wp.
  while(0 <= i /\ i <= 4 /\ valid trace__poly_frommsg_1 /\
        is_init b_rp 0 (32*i*2) /\ is_init b_rp (8*32) (32*i*2)  ).
  + auto. rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto. rewrite /is_init /trace /valid /=.  smt(BArray32.init_arrP).
qed.

lemma __cbd2_trace _rp _b_rp _buf _b_buf :
      hoare [M.__cbd2 :
      (((_b_buf = b_buf) /\ ((_buf = buf) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_buf 0 128)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;auto.
  while ( 0 <= i /\ i <= 4 /\ is_init b_rp 0 (32 * i * 4) /\ valid trace___cbd2).
  + auto.  rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto. rewrite /is_init /trace /valid /=.  smt(BArray32.init_arrP).
qed.

lemma __poly_cbd_eta1_trace _rp _b_rp _buf _b_buf :
      hoare [M.__poly_cbd_eta1 :
      (((_b_buf = b_buf) /\ ((_buf = buf) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_buf 0 128)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
 proc;auto.
  ecall(__cbd2_trace rp b_rp (SBArray128_128.get_sub buf 0) (SBArray128_128.get_sub b_buf 0)).
  auto.  rewrite /is_init /trace /valid /=.
  smt(all_cat SBArray128_128.is_init_cell_get BArray512.init_arrP).
qed.

lemma _poly_getnoise_eta1_4x_trace _r0 _b_r0 _r1 _b_r1 _r2 _b_r2 _r3 _b_r3 _seed _b_seed _nonce :
      hoare [M._poly_getnoise_eta1_4x :
      (((_nonce = nonce) /\
       ((_b_seed = b_seed) /\
       ((_seed = seed) /\
       ((_b_r3 = b_r3) /\
       ((_r3 = r3) /\
       ((_b_r2 = b_r2) /\
       ((_r2 = r2) /\
       ((_b_r1 = b_r1) /\ ((_r1 = r1) /\ ((_b_r0 = b_r0) /\ (_r0 = r0))))))))))) /\
      (is_init _b_seed 0 32)) ==>
      (((((is_init res.`1.`2 0 512) /\ (is_init res.`1.`4 0 512)) /\
        (is_init res.`1.`6 0 512)) /\
       (is_init res.`1.`8 0 512)) /\
      (valid (trace res)))].
proof.
  proc;wp.
  ecall(__poly_cbd_eta1_trace r3 b_r3 buf3 (BArray128.init_arr (W8.of_int (-1)) 128));auto.
  ecall(__poly_cbd_eta1_trace r2 b_r2 buf2 (BArray128.init_arr (W8.of_int (-1)) 128));auto.
  ecall(__poly_cbd_eta1_trace r1 b_r1 buf1 (BArray128.init_arr (W8.of_int (-1)) 128));auto.
  ecall(__poly_cbd_eta1_trace r0 b_r0 buf0 (BArray128.init_arr (W8.of_int (-1)) 128));auto.
  ecall(_shake256x4_A128__A32_A1_trace buf0 b_buf0 buf1 b_buf1 buf2 b_buf2 buf3 b_buf3 seed (BArray32.init_arr (W8.of_int (-1)) 32) nonces b_nonces);auto.
  rewrite /is_init /trace /valid /=.
  smt(all_cat BArray32.init_arrP BArray128.init_arrP  BArray512.init_arrP).
qed.

lemma _poly_sub_trace _rp _b_rp _ap _b_ap _bp _b_bp :
      hoare [M._poly_sub :
      (((_b_bp = b_bp) /\
       ((_bp = bp) /\
       ((_b_ap = b_ap) /\ ((_ap = ap) /\ ((_b_rp = b_rp) /\ (_rp = rp)))))) /\
      ((is_init _b_ap 0 512) /\ (is_init _b_bp 0 512))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
 proc; auto.
  while (is_init b_rp 0 (32*i) /\ 0 <= i /\ i <= 16 /\ valid trace__poly_sub).
  + auto.  rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto. smt().
qed.

lemma _poly_tomsg_1_trace _rp _b_rp _a _b_a :
      hoare [M._poly_tomsg_1 :
      (((_b_a = b_a) /\ ((_a = a) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_a 0 512)) ==>
      (((is_init res.`1.`2 0 32) /\ (is_init res.`1.`4 0 512)) /\
      (valid (trace res)))].
proof.
proc; auto.
  while (is_init b_a 0 512 /\ is_init b_rp 0 (i*4) /\ 0 <= i /\ i <= 8 /\ valid trace__poly_tomsg_1).
  + auto. rewrite /is_init /trace /valid /=. smt(all_cat).
  auto. ecall( _poly_csubq_trace a (BArray512.init_arr (W8.of_int (-1)) 512)). auto. rewrite /is_init /valid /trace /=.
  smt(all_cat BArray32.init_arrP BArray512.init_arrP).
qed.
