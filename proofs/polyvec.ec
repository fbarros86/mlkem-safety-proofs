require import AllCore IntDiv CoreMap List Distr.

from Jasmin require import JModel_x86.

import SLH64.

from Jasmin require import Jcheck.

require import
Array4 Array8 Array16 Array32 Array128 Array256 Array400 Array512 Array768
Array800 Array960 Array1536 WArray16 WArray32 WArray256 WArray800 BArray16
BArray32 BArray256 BArray512 BArray800 BArray960 BArray1536 SBArray1536_512.

abbrev  pvc_shufbidx_s = 
(BArray32.of_list8
[(W8.of_int 0); (W8.of_int 1); (W8.of_int 2); (W8.of_int 3); (W8.of_int 4);
(W8.of_int 8); (W8.of_int 9); (W8.of_int 10); (W8.of_int 11); (W8.of_int 12);
(W8.of_int (-1)); (W8.of_int (-1)); (W8.of_int (-1)); (W8.of_int (-1));
(W8.of_int (-1)); (W8.of_int (-1)); (W8.of_int 9); (W8.of_int 10);
(W8.of_int 11); (W8.of_int 12); (W8.of_int (-1)); (W8.of_int (-1));
(W8.of_int (-1)); (W8.of_int (-1)); (W8.of_int (-1)); (W8.of_int (-1));
(W8.of_int 0); (W8.of_int 1); (W8.of_int 2); (W8.of_int 3); (W8.of_int 4);
(W8.of_int 8)]).

abbrev [-printing] pvc_sllvdidx_s = (W64.of_int 12).

abbrev [-printing] pvc_shift2_s = (W64.of_int 288230380513787905).

abbrev [-printing] pvc_mask_s = (W16.of_int 1023).

abbrev [-printing] pvc_shift1_s = (W16.of_int 4096).

abbrev [-printing] pvc_off_s = (W16.of_int 15).

abbrev [-printing] pvd_mask_s = (W32.of_int 2145394680).

abbrev [-printing] pvd_sllvdidx_s = (W64.of_int 4).

abbrev  pvd_shufbdidx_s =
(BArray32.of_list8
[(W8.of_int 0); (W8.of_int 1); (W8.of_int 1); (W8.of_int 2); (W8.of_int 2);
(W8.of_int 3); (W8.of_int 3); (W8.of_int 4); (W8.of_int 5); (W8.of_int 6);
(W8.of_int 6); (W8.of_int 7); (W8.of_int 7); (W8.of_int 8); (W8.of_int 8);
(W8.of_int 9); (W8.of_int 2); (W8.of_int 3); (W8.of_int 3); (W8.of_int 4);
(W8.of_int 4); (W8.of_int 5); (W8.of_int 5); (W8.of_int 6); (W8.of_int 7);
(W8.of_int 8); (W8.of_int 8); (W8.of_int 9); (W8.of_int 9); (W8.of_int 10);
(W8.of_int 10); (W8.of_int 11)]).

abbrev [-printing] pvd_q_s = (W32.of_int 218182660).

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
  var tmp____polyvec_pointwise_acc : BArray512.t
  var tmp____polyvec_pointwise_acc_0 : BArray512.t
  var tmp____polyvec_reduce : BArray1536.t
  var tmp____polyvec_reduce_0 : BArray1536.t
  var tmp____polyvec_ntt : BArray1536.t
  var tmp____polyvec_ntt_0 : BArray1536.t
  var tmp____polyvec_invntt : BArray1536.t
  var tmp____polyvec_invntt_0 : BArray1536.t
  var tmp____polyvec_frombytes : BArray1536.t
  var tmp____polyvec_frombytes_0 : BArray1536.t
  var tmp____polyvec_compress_1 : BArray960.t
  var tmp____polyvec_compress_1_0 : BArray960.t
  var tmp____polyvec_decompress : BArray1536.t
  var tmp____polyvec_decompress_0 : BArray1536.t
  var tmp____polyvec_csubq : BArray1536.t
  var tmp____polyvec_csubq_0 : BArray1536.t
  var tmp____polyvec_add2 : BArray1536.t
  var tmp____polyvec_add2_0 : BArray1536.t
  var tmp___poly_tobytes : BArray512.t
  var tmp___poly_tobytes_0 : BArray512.t
  var tmp____poly_reduce : BArray512.t
  var tmp____poly_reduce_0 : BArray512.t
  var tmp___poly_ntt : BArray512.t
  var tmp___poly_ntt_0 : BArray512.t
  var tmp____butterfly64x : W256.t
  var tmp____butterfly64x_0 : W256.t
  var tmp____butterfly64x_1 : W256.t
  var tmp____butterfly64x_2 : W256.t
  var tmp____butterfly64x_3 : W256.t
  var tmp____butterfly64x_4 : W256.t
  var tmp____butterfly64x_5 : W256.t
  var tmp____butterfly64x_6 : W256.t
  var tmp___poly_invntt : BArray512.t
  var tmp___poly_invntt_0 : BArray512.t
  var tmp____invntt___butterfly64x : W256.t
  var tmp____invntt___butterfly64x_0 : W256.t
  var tmp____invntt___butterfly64x_1 : W256.t
  var tmp____invntt___butterfly64x_2 : W256.t
  var tmp____invntt___butterfly64x_3 : W256.t
  var tmp____invntt___butterfly64x_4 : W256.t
  var tmp____invntt___butterfly64x_5 : W256.t
  var tmp____invntt___butterfly64x_6 : W256.t
  var tmp___poly_frombytes : BArray512.t
  var tmp___poly_frombytes_0 : BArray512.t
  var tmp___poly_basemul : BArray512.t
  var tmp___poly_basemul_0 : BArray512.t
  var tmp____schoolbook16x : W256.t
  var tmp____schoolbook16x_0 : W256.t
  var tmp____wmul_16u16 : W256.t
  var tmp____wmul_16u16_0 : W256.t
  var tmp____mont_red : W256.t
  var tmp____w256_deinterleave_u16 : W256.t
  var tmp____w256_deinterleave_u16_0 : W256.t
  var tmp____w256_interleave_u16 : W256.t
  var tmp____w256_interleave_u16_0 : W256.t
  var tmp___poly_csubq : BArray512.t
  var tmp___poly_csubq_0 : BArray512.t
  var tmp___poly_add2 : BArray512.t
  var tmp___poly_add2_0 : BArray512.t
  var tmp____fqmulprecomp16x : W256.t
  var tmp____red16x : W256.t
  var tmp____csubq : W256.t
  var tmp____shuffle1 : W256.t
  var tmp____shuffle1_0 : W256.t
  var tmp____shuffle2 : W256.t
  var tmp____shuffle2_0 : W256.t
  var tmp____shuffle4 : W256.t
  var tmp____shuffle4_0 : W256.t
  var tmp____shuffle8 : W256.t
  var tmp____shuffle8_0 : W256.t
  var tmp__data___polyvec_tobytes : unit
  var tmp__data___polyvec_pointwise_acc : (BArray512.t * BArray512.t)
  var tmp__data___polyvec_reduce : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_ntt : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_invntt : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_frombytes : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_compress_1 : (BArray960.t * BArray960.t)
  var tmp__data___polyvec_compress : unit
  var tmp__data___polyvec_decompress : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_csubq : (BArray1536.t * BArray1536.t)
  var tmp__data___polyvec_add2 : (BArray1536.t * BArray1536.t)
  var tmp__data__poly_tobytes : (BArray512.t * BArray512.t)
  var tmp__data___poly_reduce : (BArray512.t * BArray512.t)
  var tmp__data__poly_ntt : (BArray512.t * BArray512.t)
  var tmp__data___butterfly64x : (W256.t * W256.t * W256.t * W256.t *
                                 W256.t * W256.t * W256.t * W256.t)
  var tmp__data__poly_invntt : (BArray512.t * BArray512.t)
  var tmp__data___invntt___butterfly64x : (W256.t * W256.t * W256.t *
                                          W256.t * W256.t * W256.t * W256.t *
                                          W256.t)
  var tmp__data__poly_frombytes : (BArray512.t * BArray512.t)
  var tmp__data__poly_basemul : (BArray512.t * BArray512.t)
  var tmp__data___schoolbook16x : (W256.t * W256.t)
  var tmp__data___wmul_16u16 : (W256.t * W256.t)
  var tmp__data___mont_red : (W256.t)
  var tmp__data___w256_deinterleave_u16 : (W256.t * W256.t)
  var tmp__data___w256_interleave_u16 : (W256.t * W256.t)
  var tmp__data__poly_csubq : (BArray512.t * BArray512.t)
  var tmp__data__poly_add2 : (BArray512.t * BArray512.t)
  var tmp__data___fqmulprecomp16x : (W256.t)
  var tmp__data___red16x : (W256.t)
  var tmp__data___csubq : (W256.t)
  var tmp__data___shuffle1 : (W256.t * W256.t)
  var tmp__data___shuffle2 : (W256.t * W256.t)
  var tmp__data___shuffle4 : (W256.t * W256.t)
  var tmp__data___shuffle8 : (W256.t * W256.t)
  proc __shuffle8 (a:W256.t, b:W256.t) : ((W256.t * W256.t) * trace) = {
    var r0:W256.t;
    var r1:W256.t;
    var old_b:W256.t;
    var old_a:W256.t;
    var trace___shuffle8:trace;
    old_b <- b;
    old_a <- a;
    trace___shuffle8 <- [];
    r0 <- (VPERM2I128 a b (W8.of_int 32));
    r1 <- (VPERM2I128 a b (W8.of_int 49));
    return ((r0, r1), trace___shuffle8);
  }
  proc __shuffle4 (a:W256.t, b:W256.t) : ((W256.t * W256.t) * trace) = {
    var r0:W256.t;
    var r1:W256.t;
    var old_b:W256.t;
    var old_a:W256.t;
    var trace___shuffle4:trace;
    old_b <- b;
    old_a <- a;
    trace___shuffle4 <- [];
    r0 <- (VPUNPCKL_4u64 a b);
    r1 <- (VPUNPCKH_4u64 a b);
    return ((r0, r1), trace___shuffle4);
  }
  proc __shuffle2 (a:W256.t, b:W256.t) : ((W256.t * W256.t) * trace) = {
    var t0:W256.t;
    var t1:W256.t;
    var old_b:W256.t;
    var old_a:W256.t;
    var trace___shuffle2:trace;
    old_b <- b;
    old_a <- a;
    trace___shuffle2 <- [];
    t0 <- (VMOVSLDUP_256 b);
    t0 <- (VPBLEND_8u32 a t0 (W8.of_int 170));
    a <- (VPSRL_4u64 a (W128.of_int 32));
    t1 <- (VPBLEND_8u32 a b (W8.of_int 170));
    return ((t0, t1), trace___shuffle2);
  }
  proc __shuffle1 (a:W256.t, b:W256.t) : ((W256.t * W256.t) * trace) = {
    var r0:W256.t;
    var r1:W256.t;
    var t0:W256.t;
    var t1:W256.t;
    var old_b:W256.t;
    var old_a:W256.t;
    var trace___shuffle1:trace;
    old_b <- b;
    old_a <- a;
    trace___shuffle1 <- [];
    t0 <- (VPSLL_8u32 b (W128.of_int 16));
    r0 <- (VPBLEND_16u16 a t0 (W8.of_int 170));
    t1 <- (VPSRL_8u32 a (W128.of_int 16));
    r1 <- (VPBLEND_16u16 t1 b (W8.of_int 170));
    return ((r0, r1), trace___shuffle1);
  }
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
  proc __red16x (r:W256.t, qx16:W256.t, vx16:W256.t) : ((W256.t) * trace) = {
    var x:W256.t;
    var old_vx16:W256.t;
    var old_qx16:W256.t;
    var old_r:W256.t;
    var trace___red16x:trace;
    old_vx16 <- vx16;
    old_qx16 <- qx16;
    old_r <- r;
    trace___red16x <- [];
    x <- (VPMULH_16u16 r vx16);
    x <- (VPSRA_16u16 x (W128.of_int 10));
    x <- (VPMULL_16u16 x qx16);
    r <- (VPSUB_16u16 r x);
    return ((r), trace___red16x);
  }
  proc __fqmulprecomp16x (b:W256.t, al:W256.t, ah:W256.t, qx16:W256.t) : 
  ((W256.t) * trace) = {
    var x:W256.t;
    var old_qx16:W256.t;
    var old_ah:W256.t;
    var old_al:W256.t;
    var old_b:W256.t;
    var trace___fqmulprecomp16x:trace;
    old_qx16 <- qx16;
    old_ah <- ah;
    old_al <- al;
    old_b <- b;
    trace___fqmulprecomp16x <- [];
    x <- (VPMULL_16u16 al b);
    b <- (VPMULH_16u16 ah b);
    x <- (VPMULH_16u16 x qx16);
    b <- (VPSUB_16u16 b x);
    return ((b), trace___fqmulprecomp16x);
  }
  proc _poly_add2 (rp:BArray512.t, b_rp:BArray512.t, bp:BArray512.t,
                   b_bp:BArray512.t) : ((BArray512.t * BArray512.t) * trace) = {
    var i:int;
    var a:W256.t;
    var b:W256.t;
    var r:W256.t;
    var old_b_bp:BArray512.t;
    var old_bp:BArray512.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_add2:trace;
    old_b_bp <- b_bp;
    old_bp <- bp;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_add2 <- [];
    trace__poly_add2 <-
    (trace__poly_add2 ++
    [(Assert, ((is_init b_rp 0 512) /\ (is_init b_bp 0 512)))]);
    i <- 0;
    while ((i < 16)) {
      trace__poly_add2 <-
      (trace__poly_add2 ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      a <- (BArray512.get256d rp (32 * i));
      trace__poly_add2 <-
      (trace__poly_add2 ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      b <- (BArray512.get256d bp (32 * i));
      r <- (VPADD_16u16 a b);
      trace__poly_add2 <-
      (trace__poly_add2 ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (32 * i) r);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace__poly_add2);
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
  proc __w256_interleave_u16 (al:W256.t, ah:W256.t) : ((W256.t * W256.t) *
                                                      trace) = {
    var a0:W256.t;
    var a1:W256.t;
    var old_ah:W256.t;
    var old_al:W256.t;
    var trace___w256_interleave_u16:trace;
    old_ah <- ah;
    old_al <- al;
    trace___w256_interleave_u16 <- [];
    a0 <- (VPUNPCKL_16u16 al ah);
    a1 <- (VPUNPCKH_16u16 al ah);
    return ((a0, a1), trace___w256_interleave_u16);
  }
  proc __w256_deinterleave_u16 (_zero:W256.t, a0:W256.t, a1:W256.t) : 
  ((W256.t * W256.t) * trace) = {
    var al:W256.t;
    var ah:W256.t;
    var old_a1:W256.t;
    var old_a0:W256.t;
    var old__zero:W256.t;
    var trace___w256_deinterleave_u16:trace;
    old_a1 <- a1;
    old_a0 <- a0;
    old__zero <- _zero;
    trace___w256_deinterleave_u16 <- [];
    al <- (VPBLEND_16u16 a0 _zero (W8.of_int 170));
    ah <- (VPBLEND_16u16 a1 _zero (W8.of_int 170));
    al <- (VPACKUS_8u32 al ah);
    a0 <- (VPSRL_8u32 a0 (W128.of_int 16));
    a1 <- (VPSRL_8u32 a1 (W128.of_int 16));
    ah <- (VPACKUS_8u32 a0 a1);
    return ((al, ah), trace___w256_deinterleave_u16);
  }
  proc __mont_red (lo:W256.t, hi:W256.t, qx16:W256.t, qinvx16:W256.t) : 
  ((W256.t) * trace) = {
    var m:W256.t;
    var old_qinvx16:W256.t;
    var old_qx16:W256.t;
    var old_hi:W256.t;
    var old_lo:W256.t;
    var trace___mont_red:trace;
    old_qinvx16 <- qinvx16;
    old_qx16 <- qx16;
    old_hi <- hi;
    old_lo <- lo;
    trace___mont_red <- [];
    m <- (VPMULL_16u16 lo qinvx16);
    m <- (VPMULH_16u16 m qx16);
    lo <- (VPSUB_16u16 hi m);
    return ((lo), trace___mont_red);
  }
  proc __wmul_16u16 (x:W256.t, y:W256.t) : ((W256.t * W256.t) * trace) = {
    var xy0:W256.t;
    var xy1:W256.t;
    var xyL:W256.t;
    var xyH:W256.t;
    var old_y:W256.t;
    var old_x:W256.t;
    var trace___wmul_16u16:trace;
    old_y <- y;
    old_x <- x;
    trace___wmul_16u16 <- [];
    xyL <- (VPMULL_16u16 x y);
    xyH <- (VPMULH_16u16 x y);
    (tmp__data___w256_interleave_u16, tmp__trace) <@ __w256_interleave_u16 (
    xyL, xyH);
    (tmp____w256_interleave_u16, tmp____w256_interleave_u16_0) <-
    tmp__data___w256_interleave_u16;
    trace___wmul_16u16 <- (trace___wmul_16u16 ++ tmp__trace);
    xy0 <- tmp____w256_interleave_u16;
    xy1 <- tmp____w256_interleave_u16_0;
    return ((xy0, xy1), trace___wmul_16u16);
  }
  proc __schoolbook16x (are:W256.t, aim:W256.t, bre:W256.t, bim:W256.t,
                        zeta_0:W256.t, zetaqinv:W256.t, qx16:W256.t,
                        qinvx16:W256.t, sign:int) : ((W256.t * W256.t) *
                                                    trace) = {
    var x0:W256.t;
    var y0:W256.t;
    var zaim:W256.t;
    var ac0:W256.t;
    var ac1:W256.t;
    var ad0:W256.t;
    var ad1:W256.t;
    var bc0:W256.t;
    var bc1:W256.t;
    var zbd0:W256.t;
    var zbd1:W256.t;
    var x1:W256.t;
    var y1:W256.t;
    var _zero:W256.t;
    var old_sign:int;
    var old_qinvx16:W256.t;
    var old_qx16:W256.t;
    var old_zetaqinv:W256.t;
    var old_zeta:W256.t;
    var old_bim:W256.t;
    var old_bre:W256.t;
    var old_aim:W256.t;
    var old_are:W256.t;
    var trace___schoolbook16x:trace;
    old_sign <- sign;
    old_qinvx16 <- qinvx16;
    old_qx16 <- qx16;
    old_zetaqinv <- zetaqinv;
    old_zeta <- zeta_0;
    old_bim <- bim;
    old_bre <- bre;
    old_aim <- aim;
    old_are <- are;
    trace___schoolbook16x <- [];
    (tmp__data___fqmulprecomp16x, tmp__trace) <@ __fqmulprecomp16x (aim,
    zetaqinv, zeta_0, qx16);
    tmp____fqmulprecomp16x <- tmp__data___fqmulprecomp16x;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    zaim <- tmp____fqmulprecomp16x;
    (tmp__data___wmul_16u16, tmp__trace) <@ __wmul_16u16 (are, bre);
    (tmp____wmul_16u16, tmp____wmul_16u16_0) <- tmp__data___wmul_16u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    ac0 <- tmp____wmul_16u16;
    ac1 <- tmp____wmul_16u16_0;
    (tmp__data___wmul_16u16, tmp__trace) <@ __wmul_16u16 (are, bim);
    (tmp____wmul_16u16, tmp____wmul_16u16_0) <- tmp__data___wmul_16u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    ad0 <- tmp____wmul_16u16;
    ad1 <- tmp____wmul_16u16_0;
    (tmp__data___wmul_16u16, tmp__trace) <@ __wmul_16u16 (aim, bre);
    (tmp____wmul_16u16, tmp____wmul_16u16_0) <- tmp__data___wmul_16u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    bc0 <- tmp____wmul_16u16;
    bc1 <- tmp____wmul_16u16_0;
    (tmp__data___wmul_16u16, tmp__trace) <@ __wmul_16u16 (zaim, bim);
    (tmp____wmul_16u16, tmp____wmul_16u16_0) <- tmp__data___wmul_16u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    zbd0 <- tmp____wmul_16u16;
    zbd1 <- tmp____wmul_16u16_0;
    if ((sign = 0)) {
      x0 <- (VPADD_8u32 ac0 zbd0);
      x1 <- (VPADD_8u32 ac1 zbd1);
    } else {
      x0 <- (VPSUB_8u32 ac0 zbd0);
      x1 <- (VPSUB_8u32 ac1 zbd1);
    }
    y0 <- (VPADD_8u32 bc0 ad0);
    y1 <- (VPADD_8u32 bc1 ad1);
    _zero <- (set0_256);
    (tmp__data___w256_deinterleave_u16, tmp__trace) <@ __w256_deinterleave_u16 (
    _zero, x0, x1);
    (tmp____w256_deinterleave_u16, tmp____w256_deinterleave_u16_0) <-
    tmp__data___w256_deinterleave_u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    x0 <- tmp____w256_deinterleave_u16;
    x1 <- tmp____w256_deinterleave_u16_0;
    (tmp__data___w256_deinterleave_u16, tmp__trace) <@ __w256_deinterleave_u16 (
    _zero, y0, y1);
    (tmp____w256_deinterleave_u16, tmp____w256_deinterleave_u16_0) <-
    tmp__data___w256_deinterleave_u16;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    y0 <- tmp____w256_deinterleave_u16;
    y1 <- tmp____w256_deinterleave_u16_0;
    (tmp__data___mont_red, tmp__trace) <@ __mont_red (x0, x1, qx16, qinvx16);
    tmp____mont_red <- tmp__data___mont_red;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    x0 <- tmp____mont_red;
    (tmp__data___mont_red, tmp__trace) <@ __mont_red (y0, y1, qx16, qinvx16);
    tmp____mont_red <- tmp__data___mont_red;
    trace___schoolbook16x <- (trace___schoolbook16x ++ tmp__trace);
    y0 <- tmp____mont_red;
    return ((x0, y0), trace___schoolbook16x);
  }
  proc _poly_basemul (rp:BArray512.t, b_rp:BArray512.t, ap:BArray512.t,
                      b_ap:BArray512.t, bp:BArray512.t, b_bp:BArray512.t) : 
  ((BArray512.t * BArray512.t) * trace) = {
    var qx16:W256.t;
    var qinvx16:W256.t;
    var zetaqinv:W256.t;
    var zeta_0:W256.t;
    var are:W256.t;
    var aim:W256.t;
    var bre:W256.t;
    var bim:W256.t;
    var old_b_bp:BArray512.t;
    var old_bp:BArray512.t;
    var old_b_ap:BArray512.t;
    var old_ap:BArray512.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_basemul:trace;
    old_b_bp <- b_bp;
    old_bp <- bp;
    old_b_ap <- b_ap;
    old_ap <- ap;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_basemul <- [];
    trace__poly_basemul <-
    (trace__poly_basemul ++
    [(Assert, ((is_init b_ap 0 512) /\ (is_init b_bp 0 512)))]);
    qx16 <- (BArray32.get256d jqx16 0);
    qinvx16 <- (BArray32.get256d jqinvx16 0);
    zetaqinv <- (BArray800.get256d jzetas_exp 272);
    zeta_0 <- (BArray800.get256d jzetas_exp 304);
    are <- (BArray512.get256d ap 0);
    aim <- (BArray512.get256d ap 32);
    bre <- (BArray512.get256d bp 0);
    bim <- (BArray512.get256d bp 32);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 0);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 0
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 0 are);
    b_rp <-
    (BArray512.set256d b_rp 32
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 32 aim);
    are <- (BArray512.get256d ap 64);
    aim <- (BArray512.get256d ap 96);
    bre <- (BArray512.get256d bp 64);
    bim <- (BArray512.get256d bp 96);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 1);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 64
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 64 are);
    b_rp <-
    (BArray512.set256d b_rp 96
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 96 aim);
    zetaqinv <- (BArray800.get256d jzetas_exp 336);
    zeta_0 <- (BArray800.get256d jzetas_exp 368);
    are <- (BArray512.get256d ap 128);
    aim <- (BArray512.get256d ap 160);
    bre <- (BArray512.get256d bp 128);
    bim <- (BArray512.get256d bp 160);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 0);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 128
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 128 are);
    b_rp <-
    (BArray512.set256d b_rp 160
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 160 aim);
    are <- (BArray512.get256d ap 192);
    aim <- (BArray512.get256d ap 224);
    bre <- (BArray512.get256d bp 192);
    bim <- (BArray512.get256d bp 224);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 1);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 192
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 192 are);
    b_rp <-
    (BArray512.set256d b_rp 224
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 224 aim);
    zetaqinv <- (BArray800.get256d jzetas_exp 664);
    zeta_0 <- (BArray800.get256d jzetas_exp 696);
    are <- (BArray512.get256d ap 256);
    aim <- (BArray512.get256d ap 288);
    bre <- (BArray512.get256d bp 256);
    bim <- (BArray512.get256d bp 288);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 0);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 256
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 256 are);
    b_rp <-
    (BArray512.set256d b_rp 288
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 288 aim);
    are <- (BArray512.get256d ap 320);
    aim <- (BArray512.get256d ap 352);
    bre <- (BArray512.get256d bp 320);
    bim <- (BArray512.get256d bp 352);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 1);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 320
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 320 are);
    b_rp <-
    (BArray512.set256d b_rp 352
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 352 aim);
    zetaqinv <- (BArray800.get256d jzetas_exp 728);
    zeta_0 <- (BArray800.get256d jzetas_exp 760);
    are <- (BArray512.get256d ap 384);
    aim <- (BArray512.get256d ap 416);
    bre <- (BArray512.get256d bp 384);
    bim <- (BArray512.get256d bp 416);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 0);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 384
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 384 are);
    b_rp <-
    (BArray512.set256d b_rp 416
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 416 aim);
    are <- (BArray512.get256d ap 448);
    aim <- (BArray512.get256d ap 480);
    bre <- (BArray512.get256d bp 448);
    bim <- (BArray512.get256d bp 480);
    (tmp__data___schoolbook16x, tmp__trace) <@ __schoolbook16x (are, 
    aim, bre, bim, zeta_0, zetaqinv, qx16, qinvx16, 1);
    (tmp____schoolbook16x, tmp____schoolbook16x_0) <-
    tmp__data___schoolbook16x;
    trace__poly_basemul <- (trace__poly_basemul ++ tmp__trace);
    are <- tmp____schoolbook16x;
    aim <- tmp____schoolbook16x_0;
    b_rp <-
    (BArray512.set256d b_rp 448
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 448 are);
    b_rp <-
    (BArray512.set256d b_rp 480
    (W256.of_int
    115792089237316195423570985008687907853269984665640564039457584007913129639935
    ));
    rp <- (BArray512.set256d rp 480 aim);
    return ((rp, b_rp), trace__poly_basemul);
  }
  proc _poly_frombytes (rp:BArray512.t, b_rp:BArray512.t, ap:W64.t) : 
  ((BArray512.t * BArray512.t) * trace) = {
    var maskp:BArray32.t;
    var mask:W256.t;
    var i:int;
    var t0:W256.t;
    var t1:W256.t;
    var t2:W256.t;
    var t3:W256.t;
    var t4:W256.t;
    var t5:W256.t;
    var tt:W256.t;
    var t6:W256.t;
    var t7:W256.t;
    var t8:W256.t;
    var t9:W256.t;
    var t10:W256.t;
    var t11:W256.t;
    var b_maskp:BArray32.t;
    var old_ap:W64.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_frombytes:trace;
    b_maskp <- witness;
    maskp <- witness;
    old_ap <- ap;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_frombytes <- [];
    trace__poly_frombytes <-
    (trace__poly_frombytes ++ [(Assert, (is_valid (W64.to_uint ap) 384))]);
    b_maskp <- (BArray32.init_arr (W8.of_int 255) 32);
    maskp <- maskx16;
    trace__poly_frombytes <-
    (trace__poly_frombytes ++ [(Assert, (is_init b_maskp 0 32))]);
    mask <- (BArray32.get256 maskp 0);
    i <- 0;
    while ((i < 2)) {
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert, (is_valid (W64.to_uint (ap + (W64.of_int (192 * i)))) 32))]);
      t0 <- (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int (192 * i)))));
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       (is_valid (W64.to_uint (ap + (W64.of_int ((192 * i) + 32)))) 32))]);
      t1 <-
      (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int ((192 * i) + 32)))));
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       (is_valid (W64.to_uint (ap + (W64.of_int ((192 * i) + 64)))) 32))]);
      t2 <-
      (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int ((192 * i) + 64)))));
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       (is_valid (W64.to_uint (ap + (W64.of_int ((192 * i) + 96)))) 32))]);
      t3 <-
      (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int ((192 * i) + 96)))));
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       (is_valid (W64.to_uint (ap + (W64.of_int ((192 * i) + 128)))) 32))]);
      t4 <-
      (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int ((192 * i) + 128)))));
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       (is_valid (W64.to_uint (ap + (W64.of_int ((192 * i) + 160)))) 32))]);
      t5 <-
      (loadW256 Glob.mem (W64.to_uint (ap + (W64.of_int ((192 * i) + 160)))));
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (t0, t3);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      tt <- tmp____shuffle8;
      t3 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (t1, t4);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t0 <- tmp____shuffle8;
      t4 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (t2, t5);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t1 <- tmp____shuffle8;
      t5 <- tmp____shuffle8_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (tt, t4);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t2 <- tmp____shuffle4;
      t4 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (t3, t1);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      tt <- tmp____shuffle4;
      t1 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (t0, t5);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t3 <- tmp____shuffle4;
      t5 <- tmp____shuffle4_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (t2, t1);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t0 <- tmp____shuffle2;
      t1 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (t4, t3);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t2 <- tmp____shuffle2;
      t3 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (tt, t5);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t4 <- tmp____shuffle2;
      t5 <- tmp____shuffle2_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (t0, t3);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t6 <- tmp____shuffle1;
      t3 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (t1, t4);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t0 <- tmp____shuffle1;
      t4 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (t2, t5);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_frombytes <- (trace__poly_frombytes ++ tmp__trace);
      t1 <- tmp____shuffle1;
      t5 <- tmp____shuffle1_0;
      t7 <- (VPSRL_16u16 t6 (W128.of_int 12));
      t8 <- (VPSLL_16u16 t3 (W128.of_int 4));
      t7 <- (VPOR_256 t7 t8);
      t6 <- (VPAND_256 mask t6);
      t7 <- (VPAND_256 mask t7);
      t8 <- (VPSRL_16u16 t3 (W128.of_int 8));
      t9 <- (VPSLL_16u16 t0 (W128.of_int 8));
      t8 <- (VPOR_256 t8 t9);
      t8 <- (VPAND_256 mask t8);
      t9 <- (VPSRL_16u16 t0 (W128.of_int 4));
      t9 <- (VPAND_256 mask t9);
      t10 <- (VPSRL_16u16 t4 (W128.of_int 12));
      t11 <- (VPSLL_16u16 t1 (W128.of_int 4));
      t10 <- (VPOR_256 t10 t11);
      t4 <- (VPAND_256 mask t4);
      t10 <- (VPAND_256 mask t10);
      t11 <- (VPSRL_16u16 t1 (W128.of_int 8));
      tt <- (VPSLL_16u16 t5 (W128.of_int 8));
      t11 <- (VPOR_256 t11 tt);
      t11 <- (VPAND_256 mask t11);
      tt <- (VPSRL_16u16 t5 (W128.of_int 4));
      tt <- (VPAND_256 mask tt);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert, ((0 <= ((8 * i) * 32)) /\ ((((8 * i) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp ((8 * i) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp (8 * i) t6);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 1) * 32)) /\ (((((8 * i) + 1) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 1) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 1) t7);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 2) * 32)) /\ (((((8 * i) + 2) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 2) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 2) t8);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 3) * 32)) /\ (((((8 * i) + 3) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 3) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 3) t9);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 4) * 32)) /\ (((((8 * i) + 4) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 4) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 4) t4);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 5) * 32)) /\ (((((8 * i) + 5) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 5) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 5) t10);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 6) * 32)) /\ (((((8 * i) + 6) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 6) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 6) t11);
      trace__poly_frombytes <-
      (trace__poly_frombytes ++
      [(Assert,
       ((0 <= (((8 * i) + 7) * 32)) /\ (((((8 * i) + 7) * 32) + 32) <= 512)))]);
      b_rp <-
      (BArray512.set256d b_rp (((8 * i) + 7) * 32)
      (W256.of_int
      115792089237316195423570985008687907853269984665640564039457584007913129639935
      ));
      rp <- (BArray512.set256 rp ((8 * i) + 7) tt);
      i <- (i + 1);
    }
    return ((rp, b_rp), trace__poly_frombytes);
  }
  proc __invntt___butterfly64x (rl0:W256.t, rl1:W256.t, rl2:W256.t,
                                rl3:W256.t, rh0:W256.t, rh1:W256.t,
                                rh2:W256.t, rh3:W256.t, zl0:W256.t,
                                zl1:W256.t, zh0:W256.t, zh1:W256.t,
                                qx16:W256.t) : ((W256.t * W256.t * W256.t *
                                                W256.t * W256.t * W256.t *
                                                W256.t * W256.t) *
                                               trace) = {
    var t0:W256.t;
    var t1:W256.t;
    var t2:W256.t;
    var t3:W256.t;
    var old_qx16:W256.t;
    var old_zh1:W256.t;
    var old_zh0:W256.t;
    var old_zl1:W256.t;
    var old_zl0:W256.t;
    var old_rh3:W256.t;
    var old_rh2:W256.t;
    var old_rh1:W256.t;
    var old_rh0:W256.t;
    var old_rl3:W256.t;
    var old_rl2:W256.t;
    var old_rl1:W256.t;
    var old_rl0:W256.t;
    var trace___invntt___butterfly64x:trace;
    old_qx16 <- qx16;
    old_zh1 <- zh1;
    old_zh0 <- zh0;
    old_zl1 <- zl1;
    old_zl0 <- zl0;
    old_rh3 <- rh3;
    old_rh2 <- rh2;
    old_rh1 <- rh1;
    old_rh0 <- rh0;
    old_rl3 <- rl3;
    old_rl2 <- rl2;
    old_rl1 <- rl1;
    old_rl0 <- rl0;
    trace___invntt___butterfly64x <- [];
    t0 <- (VPSUB_16u16 rl0 rh0);
    t1 <- (VPSUB_16u16 rl1 rh1);
    t2 <- (VPSUB_16u16 rl2 rh2);
    rl0 <- (VPADD_16u16 rh0 rl0);
    rl1 <- (VPADD_16u16 rh1 rl1);
    rh0 <- (VPMULL_16u16 zl0 t0);
    rl2 <- (VPADD_16u16 rh2 rl2);
    rh1 <- (VPMULL_16u16 zl0 t1);
    t3 <- (VPSUB_16u16 rl3 rh3);
    rl3 <- (VPADD_16u16 rh3 rl3);
    rh2 <- (VPMULL_16u16 zl1 t2);
    rh3 <- (VPMULL_16u16 zl1 t3);
    t0 <- (VPMULH_16u16 zh0 t0);
    t1 <- (VPMULH_16u16 zh0 t1);
    t2 <- (VPMULH_16u16 zh1 t2);
    t3 <- (VPMULH_16u16 zh1 t3);
    rh0 <- (VPMULH_16u16 qx16 rh0);
    rh1 <- (VPMULH_16u16 qx16 rh1);
    rh2 <- (VPMULH_16u16 qx16 rh2);
    rh3 <- (VPMULH_16u16 qx16 rh3);
    rh0 <- (VPSUB_16u16 t0 rh0);
    rh1 <- (VPSUB_16u16 t1 rh1);
    rh2 <- (VPSUB_16u16 t2 rh2);
    rh3 <- (VPSUB_16u16 t3 rh3);
    return ((rl0, rl1, rl2, rl3, rh0, rh1, rh2, rh3),
           trace___invntt___butterfly64x);
  }
  proc _poly_invntt (rp:BArray512.t, b_rp:BArray512.t) : ((BArray512.t *
                                                          BArray512.t) *
                                                         trace) = {
    var zetasp:BArray800.t;
    var qx16:W256.t;
    var i:int;
    var zeta0:W256.t;
    var zeta1:W256.t;
    var zeta2:W256.t;
    var zeta3:W256.t;
    var r0:W256.t;
    var r1:W256.t;
    var r2:W256.t;
    var r3:W256.t;
    var r4:W256.t;
    var r5:W256.t;
    var r6:W256.t;
    var r7:W256.t;
    var vx16:W256.t;
    var flox16:W256.t;
    var fhix16:W256.t;
    var b_r2:bool;
    var b_r0:bool;
    var b_r6:bool;
    var b_r4:bool;
    var b_zetasp:BArray800.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_invntt:trace;
    b_zetasp <- witness;
    zetasp <- witness;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_invntt <- [];
    trace__poly_invntt <-
    (trace__poly_invntt ++ [(Assert, (is_init b_rp 0 512))]);
    b_r0 <- false;
    b_r2 <- false;
    b_r4 <- false;
    b_r6 <- false;
    b_zetasp <- (BArray800.init_arr (W8.of_int 255) 800);
    zetasp <- jzetas_inv_exp;
    qx16 <- (BArray32.get256 jqx16 0);
    i <- 0;
    while ((i < 2)) {
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, ((0 <= (392 * i)) /\ (((392 * i) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++ [(Assert, (is_init b_zetasp (392 * i) 32))]);
      zeta0 <- (BArray800.get256d zetasp (392 * i));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (64 + (392 * i))) /\ (((64 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (64 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (64 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (32 + (392 * i))) /\ (((32 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (32 + (392 * i)) 32))]);
      zeta2 <- (BArray800.get256d zetasp (32 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (96 + (392 * i))) /\ (((96 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (96 + (392 * i)) 32))]);
      zeta3 <- (BArray800.get256d zetasp (96 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, ((0 <= (256 * i)) /\ (((256 * i) + 32) <= 512)))]);
      r0 <- (BArray512.get256d rp (256 * i));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (32 + (256 * i))) /\ (((32 + (256 * i)) + 32) <= 512)))]);
      r1 <- (BArray512.get256d rp (32 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (64 + (256 * i))) /\ (((64 + (256 * i)) + 32) <= 512)))]);
      r2 <- (BArray512.get256d rp (64 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (96 + (256 * i))) /\ (((96 + (256 * i)) + 32) <= 512)))]);
      r3 <- (BArray512.get256d rp (96 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (128 + (256 * i))) /\ (((128 + (256 * i)) + 32) <= 512)))]);
      r4 <- (BArray512.get256d rp (128 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (160 + (256 * i))) /\ (((160 + (256 * i)) + 32) <= 512)))]);
      r5 <- (BArray512.get256d rp (160 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (192 + (256 * i))) /\ (((192 + (256 * i)) + 32) <= 512)))]);
      r6 <- (BArray512.get256d rp (192 + (256 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (224 + (256 * i))) /\ (((224 + (256 * i)) + 32) <= 512)))]);
      r7 <- (BArray512.get256d rp (224 + (256 * i)));
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r1, r4, r5, r2, r3, r6, r7, zeta0, zeta1, zeta2, zeta3, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r1 <- tmp____invntt___butterfly64x_0;
      r4 <- tmp____invntt___butterfly64x_1;
      r5 <- tmp____invntt___butterfly64x_2;
      r2 <- tmp____invntt___butterfly64x_3;
      r3 <- tmp____invntt___butterfly64x_4;
      r6 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      vx16 <- (BArray32.get256 jvx16 0);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (128 + (392 * i))) /\ (((128 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (128 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (128 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (160 + (392 * i))) /\ (((160 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (160 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (160 + (392 * i)));
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r1, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r1 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r4, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r4 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r5, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r5 <- tmp____red16x;
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r1, r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r1 <- tmp____invntt___butterfly64x_0;
      r2 <- tmp____invntt___butterfly64x_1;
      r3 <- tmp____invntt___butterfly64x_2;
      r4 <- tmp____invntt___butterfly64x_3;
      r5 <- tmp____invntt___butterfly64x_4;
      r6 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r0, r1);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____shuffle1;
      r1 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r2, r3);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r2 <- tmp____shuffle1;
      r3 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r4, r5);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r4 <- tmp____shuffle1;
      r5 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r6, r7);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r6 <- tmp____shuffle1;
      r7 <- tmp____shuffle1_0;
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (192 + (392 * i))) /\ (((192 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (192 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (192 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (224 + (392 * i))) /\ (((224 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (224 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (224 + (392 * i)));
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r2, r4, r6, r1, r3, r5, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r2 <- tmp____invntt___butterfly64x_0;
      r4 <- tmp____invntt___butterfly64x_1;
      r6 <- tmp____invntt___butterfly64x_2;
      r1 <- tmp____invntt___butterfly64x_3;
      r3 <- tmp____invntt___butterfly64x_4;
      r5 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____red16x;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r0, r2);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____shuffle2;
      r2 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r4, r6);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r4 <- tmp____shuffle2;
      r6 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r1, r3);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r1 <- tmp____shuffle2;
      r3 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r5, r7);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r5 <- tmp____shuffle2;
      r7 <- tmp____shuffle2_0;
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (256 + (392 * i))) /\ (((256 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (256 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (256 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (288 + (392 * i))) /\ (((288 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (288 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (288 + (392 * i)));
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r4, r1, r5, r2, r6, r3, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r4 <- tmp____invntt___butterfly64x_0;
      r1 <- tmp____invntt___butterfly64x_1;
      r5 <- tmp____invntt___butterfly64x_2;
      r2 <- tmp____invntt___butterfly64x_3;
      r6 <- tmp____invntt___butterfly64x_4;
      r3 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____red16x;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r0, r4);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____shuffle4;
      r4 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r1, r5);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r1 <- tmp____shuffle4;
      r5 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r2, r6);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r2 <- tmp____shuffle4;
      r6 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r3, r7);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r3 <- tmp____shuffle4;
      r7 <- tmp____shuffle4_0;
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (320 + (392 * i))) /\ (((320 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (320 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (320 + (392 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (352 + (392 * i))) /\ (((352 + (392 * i)) + 32) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (352 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (352 + (392 * i)));
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r1, r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r1 <- tmp____invntt___butterfly64x_0;
      r2 <- tmp____invntt___butterfly64x_1;
      r3 <- tmp____invntt___butterfly64x_2;
      r4 <- tmp____invntt___butterfly64x_3;
      r5 <- tmp____invntt___butterfly64x_4;
      r6 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____red16x;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r0, r1);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____shuffle8;
      r1 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r2, r3);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r2 <- tmp____shuffle8;
      r3 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r4, r5);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r4 <- tmp____shuffle8;
      r5 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r6, r7);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r6 <- tmp____shuffle8;
      r7 <- tmp____shuffle8_0;
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (384 + (392 * i))) /\ (((384 + (392 * i)) + 4) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (384 + (392 * i)) 4))]);
      zeta0 <-
      (VPBROADCAST_8u32 (BArray800.get32d zetasp (384 + (392 * i))));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (388 + (392 * i))) /\ (((388 + (392 * i)) + 4) <= 800)))]);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, (is_init b_zetasp (388 + (392 * i)) 4))]);
      zeta1 <-
      (VPBROADCAST_8u32 (BArray800.get32d zetasp (388 + (392 * i))));
      b_r2 <- true;
      b_r4 <- true;
      b_r6 <- true;
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r2, r4, r6, r1, r3, r5, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r2 <- tmp____invntt___butterfly64x_0;
      r4 <- tmp____invntt___butterfly64x_1;
      r6 <- tmp____invntt___butterfly64x_2;
      r1 <- tmp____invntt___butterfly64x_3;
      r3 <- tmp____invntt___butterfly64x_4;
      r5 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      b_r0 <- true;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____red16x;
      if ((i = 0)) {
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert, ((0 <= (256 * i)) /\ (((256 * i) + 32) <= 512)))]);
        rp <- (BArray512.set256d rp (256 * i) r0);
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (32 + (256 * i))) /\ (((32 + (256 * i)) + 32) <= 512)))]);
        rp <- (BArray512.set256d rp (32 + (256 * i)) r2);
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (64 + (256 * i))) /\ (((64 + (256 * i)) + 32) <= 512)))]);
        rp <- (BArray512.set256d rp (64 + (256 * i)) r4);
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (96 + (256 * i))) /\ (((96 + (256 * i)) + 32) <= 512)))]);
        rp <- (BArray512.set256d rp (96 + (256 * i)) r6);
      } else {
        
      }
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (128 + (256 * i))) /\ (((128 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (128 + (256 * i)) r1);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (160 + (256 * i))) /\ (((160 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (160 + (256 * i)) r3);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (192 + (256 * i))) /\ (((192 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (192 + (256 * i)) r5);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (224 + (256 * i))) /\ (((224 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (224 + (256 * i)) r7);
      i <- (i + 1);
    }
    trace__poly_invntt <-
    (trace__poly_invntt ++ [(Assert, (is_init b_zetasp 784 4))]);
    zeta0 <- (VPBROADCAST_8u32 (BArray800.get32d zetasp 784));
    trace__poly_invntt <-
    (trace__poly_invntt ++ [(Assert, (is_init b_zetasp 788 4))]);
    zeta1 <- (VPBROADCAST_8u32 (BArray800.get32d zetasp 788));
    i <- 0;
    while ((i < 2)) {
      if ((i = 0)) {
        trace__poly_invntt <- (trace__poly_invntt ++ [(Assert, b_r6)]);
        r7 <- r6;
        trace__poly_invntt <- (trace__poly_invntt ++ [(Assert, b_r4)]);
        r6 <- r4;
        trace__poly_invntt <- (trace__poly_invntt ++ [(Assert, b_r2)]);
        r5 <- r2;
        trace__poly_invntt <- (trace__poly_invntt ++ [(Assert, b_r0)]);
        r4 <- r0;
      } else {
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (256 + (128 * i))) /\ (((256 + (128 * i)) + 32) <= 512)))]);
        r4 <- (BArray512.get256d rp (256 + (128 * i)));
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (288 + (128 * i))) /\ (((288 + (128 * i)) + 32) <= 512)))]);
        r5 <- (BArray512.get256d rp (288 + (128 * i)));
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (320 + (128 * i))) /\ (((320 + (128 * i)) + 32) <= 512)))]);
        r6 <- (BArray512.get256d rp (320 + (128 * i)));
        trace__poly_invntt <-
        (trace__poly_invntt ++
        [(Assert,
         ((0 <= (352 + (128 * i))) /\ (((352 + (128 * i)) + 32) <= 512)))]);
        r7 <- (BArray512.get256d rp (352 + (128 * i)));
      }
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, ((0 <= (128 * i)) /\ (((128 * i) + 32) <= 512)))]);
      r0 <- (BArray512.get256d rp (128 * i));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (32 + (128 * i))) /\ (((32 + (128 * i)) + 32) <= 512)))]);
      r1 <- (BArray512.get256d rp (32 + (128 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (64 + (128 * i))) /\ (((64 + (128 * i)) + 32) <= 512)))]);
      r2 <- (BArray512.get256d rp (64 + (128 * i)));
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (96 + (128 * i))) /\ (((96 + (128 * i)) + 32) <= 512)))]);
      r3 <- (BArray512.get256d rp (96 + (128 * i)));
      b_r4 <- true;
      b_r6 <- true;
      (tmp__data___invntt___butterfly64x, tmp__trace) <@ __invntt___butterfly64x (
      r0, r1, r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____invntt___butterfly64x, tmp____invntt___butterfly64x_0,
      tmp____invntt___butterfly64x_1, tmp____invntt___butterfly64x_2,
      tmp____invntt___butterfly64x_3, tmp____invntt___butterfly64x_4,
      tmp____invntt___butterfly64x_5, tmp____invntt___butterfly64x_6) <-
      tmp__data___invntt___butterfly64x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____invntt___butterfly64x;
      r1 <- tmp____invntt___butterfly64x_0;
      r2 <- tmp____invntt___butterfly64x_1;
      r3 <- tmp____invntt___butterfly64x_2;
      r4 <- tmp____invntt___butterfly64x_3;
      r5 <- tmp____invntt___butterfly64x_4;
      r6 <- tmp____invntt___butterfly64x_5;
      r7 <- tmp____invntt___butterfly64x_6;
      flox16 <- (BArray32.get256 jflox16 0);
      fhix16 <- (BArray32.get256 jfhix16 0);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (256 + (128 * i))) /\ (((256 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (256 + (128 * i)) r4);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (288 + (128 * i))) /\ (((288 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (288 + (128 * i)) r5);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (320 + (128 * i))) /\ (((320 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (320 + (128 * i)) r6);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (352 + (128 * i))) /\ (((352 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (352 + (128 * i)) r7);
      b_r0 <- true;
      (tmp__data___fqmulprecomp16x, tmp__trace) <@ __fqmulprecomp16x (
      r0, flox16, fhix16, qx16);
      tmp____fqmulprecomp16x <- tmp__data___fqmulprecomp16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r0 <- tmp____fqmulprecomp16x;
      (tmp__data___fqmulprecomp16x, tmp__trace) <@ __fqmulprecomp16x (
      r1, flox16, fhix16, qx16);
      tmp____fqmulprecomp16x <- tmp__data___fqmulprecomp16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r1 <- tmp____fqmulprecomp16x;
      b_r2 <- true;
      (tmp__data___fqmulprecomp16x, tmp__trace) <@ __fqmulprecomp16x (
      r2, flox16, fhix16, qx16);
      tmp____fqmulprecomp16x <- tmp__data___fqmulprecomp16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r2 <- tmp____fqmulprecomp16x;
      (tmp__data___fqmulprecomp16x, tmp__trace) <@ __fqmulprecomp16x (
      r3, flox16, fhix16, qx16);
      tmp____fqmulprecomp16x <- tmp__data___fqmulprecomp16x;
      trace__poly_invntt <- (trace__poly_invntt ++ tmp__trace);
      r3 <- tmp____fqmulprecomp16x;
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert, ((0 <= (128 * i)) /\ (((128 * i) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (128 * i) r0);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (32 + (128 * i))) /\ (((32 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (32 + (128 * i)) r1);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (64 + (128 * i))) /\ (((64 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (64 + (128 * i)) r2);
      trace__poly_invntt <-
      (trace__poly_invntt ++
      [(Assert,
       ((0 <= (96 + (128 * i))) /\ (((96 + (128 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (96 + (128 * i)) r3);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace__poly_invntt);
  }
  proc __butterfly64x (rl0:W256.t, rl1:W256.t, rl2:W256.t, rl3:W256.t,
                       rh0:W256.t, rh1:W256.t, rh2:W256.t, rh3:W256.t,
                       zl0:W256.t, zl1:W256.t, zh0:W256.t, zh1:W256.t,
                       qx16:W256.t) : ((W256.t * W256.t * W256.t * W256.t *
                                       W256.t * W256.t * W256.t * W256.t) *
                                      trace) = {
    var t0:W256.t;
    var t1:W256.t;
    var t2:W256.t;
    var t3:W256.t;
    var t4:W256.t;
    var t5:W256.t;
    var t6:W256.t;
    var t7:W256.t;
    var old_qx16:W256.t;
    var old_zh1:W256.t;
    var old_zh0:W256.t;
    var old_zl1:W256.t;
    var old_zl0:W256.t;
    var old_rh3:W256.t;
    var old_rh2:W256.t;
    var old_rh1:W256.t;
    var old_rh0:W256.t;
    var old_rl3:W256.t;
    var old_rl2:W256.t;
    var old_rl1:W256.t;
    var old_rl0:W256.t;
    var trace___butterfly64x:trace;
    old_qx16 <- qx16;
    old_zh1 <- zh1;
    old_zh0 <- zh0;
    old_zl1 <- zl1;
    old_zl0 <- zl0;
    old_rh3 <- rh3;
    old_rh2 <- rh2;
    old_rh1 <- rh1;
    old_rh0 <- rh0;
    old_rl3 <- rl3;
    old_rl2 <- rl2;
    old_rl1 <- rl1;
    old_rl0 <- rl0;
    trace___butterfly64x <- [];
    t0 <- (VPMULL_16u16 zl0 rh0);
    t1 <- (VPMULH_16u16 zh0 rh0);
    t2 <- (VPMULL_16u16 zl0 rh1);
    t3 <- (VPMULH_16u16 zh0 rh1);
    t4 <- (VPMULL_16u16 zl1 rh2);
    t5 <- (VPMULH_16u16 zh1 rh2);
    t6 <- (VPMULL_16u16 zl1 rh3);
    t7 <- (VPMULH_16u16 zh1 rh3);
    t0 <- (VPMULH_16u16 t0 qx16);
    t2 <- (VPMULH_16u16 t2 qx16);
    t4 <- (VPMULH_16u16 t4 qx16);
    t6 <- (VPMULH_16u16 t6 qx16);
    rh1 <- (VPSUB_16u16 rl1 t3);
    rl1 <- (VPADD_16u16 t3 rl1);
    rh0 <- (VPSUB_16u16 rl0 t1);
    rl0 <- (VPADD_16u16 t1 rl0);
    rh3 <- (VPSUB_16u16 rl3 t7);
    rl3 <- (VPADD_16u16 t7 rl3);
    rh2 <- (VPSUB_16u16 rl2 t5);
    rl2 <- (VPADD_16u16 t5 rl2);
    rh0 <- (VPADD_16u16 t0 rh0);
    rl0 <- (VPSUB_16u16 rl0 t0);
    rh1 <- (VPADD_16u16 t2 rh1);
    rl1 <- (VPSUB_16u16 rl1 t2);
    rh2 <- (VPADD_16u16 t4 rh2);
    rl2 <- (VPSUB_16u16 rl2 t4);
    rh3 <- (VPADD_16u16 t6 rh3);
    rl3 <- (VPSUB_16u16 rl3 t6);
    return ((rl0, rl1, rl2, rl3, rh0, rh1, rh2, rh3), trace___butterfly64x);
  }
  proc _poly_ntt (rp:BArray512.t, b_rp:BArray512.t) : ((BArray512.t *
                                                       BArray512.t) *
                                                      trace) = {
    var zetasp:BArray800.t;
    var qx16:W256.t;
    var zeta0:W256.t;
    var zeta1:W256.t;
    var r0:W256.t;
    var r1:W256.t;
    var r2:W256.t;
    var r3:W256.t;
    var r4:W256.t;
    var r5:W256.t;
    var r6:W256.t;
    var r7:W256.t;
    var i:int;
    var zeta2:W256.t;
    var zeta3:W256.t;
    var vx16:W256.t;
    var b_zetasp:BArray800.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace__poly_ntt:trace;
    b_zetasp <- witness;
    zetasp <- witness;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace__poly_ntt <- [];
    trace__poly_ntt <- (trace__poly_ntt ++ [(Assert, (is_init b_rp 0 512))]);
    b_zetasp <- (BArray800.init_arr (W8.of_int 255) 800);
    zetasp <- jzetas_exp;
    qx16 <- (BArray32.get256 jqx16 0);
    trace__poly_ntt <-
    (trace__poly_ntt ++ [(Assert, (is_init b_zetasp 0 4))]);
    zeta0 <- (VPBROADCAST_8u32 (BArray800.get32 zetasp 0));
    trace__poly_ntt <-
    (trace__poly_ntt ++ [(Assert, (is_init b_zetasp 4 4))]);
    zeta1 <- (VPBROADCAST_8u32 (BArray800.get32 zetasp 1));
    r0 <- (BArray512.get256d rp 0);
    r1 <- (BArray512.get256d rp 32);
    r2 <- (BArray512.get256d rp 64);
    r3 <- (BArray512.get256d rp 96);
    r4 <- (BArray512.get256d rp 256);
    r5 <- (BArray512.get256d rp 288);
    r6 <- (BArray512.get256d rp 320);
    r7 <- (BArray512.get256d rp 352);
    (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r1, 
    r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
    (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
    tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
    tmp____butterfly64x_5, tmp____butterfly64x_6) <-
    tmp__data___butterfly64x;
    trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
    r0 <- tmp____butterfly64x;
    r1 <- tmp____butterfly64x_0;
    r2 <- tmp____butterfly64x_1;
    r3 <- tmp____butterfly64x_2;
    r4 <- tmp____butterfly64x_3;
    r5 <- tmp____butterfly64x_4;
    r6 <- tmp____butterfly64x_5;
    r7 <- tmp____butterfly64x_6;
    rp <- (BArray512.set256d rp 0 r0);
    rp <- (BArray512.set256d rp 32 r1);
    rp <- (BArray512.set256d rp 64 r2);
    rp <- (BArray512.set256d rp 96 r3);
    rp <- (BArray512.set256d rp 256 r4);
    rp <- (BArray512.set256d rp 288 r5);
    rp <- (BArray512.set256d rp 320 r6);
    rp <- (BArray512.set256d rp 352 r7);
    r0 <- (BArray512.get256d rp 128);
    r1 <- (BArray512.get256d rp 160);
    r2 <- (BArray512.get256d rp 192);
    r3 <- (BArray512.get256d rp 224);
    r4 <- (BArray512.get256d rp 384);
    r5 <- (BArray512.get256d rp 416);
    r6 <- (BArray512.get256d rp 448);
    r7 <- (BArray512.get256d rp 480);
    (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r1, 
    r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
    (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
    tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
    tmp____butterfly64x_5, tmp____butterfly64x_6) <-
    tmp__data___butterfly64x;
    trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
    r0 <- tmp____butterfly64x;
    r1 <- tmp____butterfly64x_0;
    r2 <- tmp____butterfly64x_1;
    r3 <- tmp____butterfly64x_2;
    r4 <- tmp____butterfly64x_3;
    r5 <- tmp____butterfly64x_4;
    r6 <- tmp____butterfly64x_5;
    r7 <- tmp____butterfly64x_6;
    rp <- (BArray512.set256d rp 384 r4);
    rp <- (BArray512.set256d rp 416 r5);
    rp <- (BArray512.set256d rp 448 r6);
    rp <- (BArray512.set256d rp 480 r7);
    i <- 0;
    while ((i < 2)) {
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, ((0 <= (8 + (392 * i))) /\ (((8 + (392 * i)) + 4) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++ [(Assert, (is_init b_zetasp (8 + (392 * i)) 4))]);
      zeta0 <- (VPBROADCAST_8u32 (BArray800.get32d zetasp (8 + (392 * i))));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, ((0 <= (12 + (392 * i))) /\ (((12 + (392 * i)) + 4) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++ [(Assert, (is_init b_zetasp (12 + (392 * i)) 4))]);
      zeta1 <- (VPBROADCAST_8u32 (BArray800.get32d zetasp (12 + (392 * i))));
      if ((i = 0)) {
        r4 <- r0;
        r5 <- r1;
        r6 <- r2;
        r7 <- r3;
      } else {
        trace__poly_ntt <-
        (trace__poly_ntt ++
        [(Assert,
         ((0 <= (128 + (256 * i))) /\ (((128 + (256 * i)) + 32) <= 512)))]);
        r4 <- (BArray512.get256d rp (128 + (256 * i)));
        trace__poly_ntt <-
        (trace__poly_ntt ++
        [(Assert,
         ((0 <= (160 + (256 * i))) /\ (((160 + (256 * i)) + 32) <= 512)))]);
        r5 <- (BArray512.get256d rp (160 + (256 * i)));
        trace__poly_ntt <-
        (trace__poly_ntt ++
        [(Assert,
         ((0 <= (192 + (256 * i))) /\ (((192 + (256 * i)) + 32) <= 512)))]);
        r6 <- (BArray512.get256d rp (192 + (256 * i)));
        trace__poly_ntt <-
        (trace__poly_ntt ++
        [(Assert,
         ((0 <= (224 + (256 * i))) /\ (((224 + (256 * i)) + 32) <= 512)))]);
        r7 <- (BArray512.get256d rp (224 + (256 * i)));
      }
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, ((0 <= (256 * i)) /\ (((256 * i) + 32) <= 512)))]);
      r0 <- (BArray512.get256d rp (256 * i));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (32 + (256 * i))) /\ (((32 + (256 * i)) + 32) <= 512)))]);
      r1 <- (BArray512.get256d rp (32 + (256 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (64 + (256 * i))) /\ (((64 + (256 * i)) + 32) <= 512)))]);
      r2 <- (BArray512.get256d rp (64 + (256 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (96 + (256 * i))) /\ (((96 + (256 * i)) + 32) <= 512)))]);
      r3 <- (BArray512.get256d rp (96 + (256 * i)));
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r1, 
      r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r1 <- tmp____butterfly64x_0;
      r2 <- tmp____butterfly64x_1;
      r3 <- tmp____butterfly64x_2;
      r4 <- tmp____butterfly64x_3;
      r5 <- tmp____butterfly64x_4;
      r6 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (16 + (392 * i))) /\ (((16 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++ [(Assert, (is_init b_zetasp (16 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (16 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (48 + (392 * i))) /\ (((48 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++ [(Assert, (is_init b_zetasp (48 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (48 + (392 * i)));
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r0, r4);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____shuffle8;
      r4 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r1, r5);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r1 <- tmp____shuffle8;
      r5 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r2, r6);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r2 <- tmp____shuffle8;
      r6 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (r3, r7);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r3 <- tmp____shuffle8;
      r7 <- tmp____shuffle8_0;
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r4, 
      r1, r5, r2, r6, r3, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r4 <- tmp____butterfly64x_0;
      r1 <- tmp____butterfly64x_1;
      r5 <- tmp____butterfly64x_2;
      r2 <- tmp____butterfly64x_3;
      r6 <- tmp____butterfly64x_4;
      r3 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (80 + (392 * i))) /\ (((80 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++ [(Assert, (is_init b_zetasp (80 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (80 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (112 + (392 * i))) /\ (((112 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (112 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (112 + (392 * i)));
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r0, r2);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____shuffle4;
      r2 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r4, r6);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r4 <- tmp____shuffle4;
      r6 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r1, r3);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r1 <- tmp____shuffle4;
      r3 <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (r5, r7);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r5 <- tmp____shuffle4;
      r7 <- tmp____shuffle4_0;
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r2, 
      r4, r6, r1, r3, r5, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r2 <- tmp____butterfly64x_0;
      r4 <- tmp____butterfly64x_1;
      r6 <- tmp____butterfly64x_2;
      r1 <- tmp____butterfly64x_3;
      r3 <- tmp____butterfly64x_4;
      r5 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (144 + (392 * i))) /\ (((144 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (144 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (144 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (176 + (392 * i))) /\ (((176 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (176 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (176 + (392 * i)));
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r0, r1);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____shuffle2;
      r1 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r2, r3);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r2 <- tmp____shuffle2;
      r3 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r4, r5);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r4 <- tmp____shuffle2;
      r5 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (r6, r7);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r6 <- tmp____shuffle2;
      r7 <- tmp____shuffle2_0;
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r1, 
      r2, r3, r4, r5, r6, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r1 <- tmp____butterfly64x_0;
      r2 <- tmp____butterfly64x_1;
      r3 <- tmp____butterfly64x_2;
      r4 <- tmp____butterfly64x_3;
      r5 <- tmp____butterfly64x_4;
      r6 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (208 + (392 * i))) /\ (((208 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (208 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (208 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (240 + (392 * i))) /\ (((240 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (240 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (240 + (392 * i)));
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r0, r4);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____shuffle1;
      r4 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r1, r5);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r1 <- tmp____shuffle1;
      r5 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r2, r6);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r2 <- tmp____shuffle1;
      r6 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (r3, r7);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r3 <- tmp____shuffle1;
      r7 <- tmp____shuffle1_0;
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r4, 
      r1, r5, r2, r6, r3, r7, zeta0, zeta0, zeta1, zeta1, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r4 <- tmp____butterfly64x_0;
      r1 <- tmp____butterfly64x_1;
      r5 <- tmp____butterfly64x_2;
      r2 <- tmp____butterfly64x_3;
      r6 <- tmp____butterfly64x_4;
      r3 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (272 + (392 * i))) /\ (((272 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (272 + (392 * i)) 32))]);
      zeta0 <- (BArray800.get256d zetasp (272 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (304 + (392 * i))) /\ (((304 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (304 + (392 * i)) 32))]);
      zeta2 <- (BArray800.get256d zetasp (304 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (336 + (392 * i))) /\ (((336 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (336 + (392 * i)) 32))]);
      zeta1 <- (BArray800.get256d zetasp (336 + (392 * i)));
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (368 + (392 * i))) /\ (((368 + (392 * i)) + 32) <= 800)))]);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, (is_init b_zetasp (368 + (392 * i)) 32))]);
      zeta3 <- (BArray800.get256d zetasp (368 + (392 * i)));
      (tmp__data___butterfly64x, tmp__trace) <@ __butterfly64x (r0, r4, 
      r2, r6, r1, r5, r3, r7, zeta0, zeta1, zeta2, zeta3, qx16);
      (tmp____butterfly64x, tmp____butterfly64x_0, tmp____butterfly64x_1,
      tmp____butterfly64x_2, tmp____butterfly64x_3, tmp____butterfly64x_4,
      tmp____butterfly64x_5, tmp____butterfly64x_6) <-
      tmp__data___butterfly64x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____butterfly64x;
      r4 <- tmp____butterfly64x_0;
      r2 <- tmp____butterfly64x_1;
      r6 <- tmp____butterfly64x_2;
      r1 <- tmp____butterfly64x_3;
      r5 <- tmp____butterfly64x_4;
      r3 <- tmp____butterfly64x_5;
      r7 <- tmp____butterfly64x_6;
      vx16 <- (BArray32.get256 jvx16 0);
      (tmp__data___red16x, tmp__trace) <@ __red16x (r0, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r0 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r4, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r4 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r2, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r2 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r6, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r6 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r1, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r1 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r5, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r5 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r3, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r3 <- tmp____red16x;
      (tmp__data___red16x, tmp__trace) <@ __red16x (r7, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace__poly_ntt <- (trace__poly_ntt ++ tmp__trace);
      r7 <- tmp____red16x;
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert, ((0 <= (256 * i)) /\ (((256 * i) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (256 * i) r0);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (32 + (256 * i))) /\ (((32 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (32 + (256 * i)) r4);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (64 + (256 * i))) /\ (((64 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (64 + (256 * i)) r1);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (96 + (256 * i))) /\ (((96 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (96 + (256 * i)) r5);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (128 + (256 * i))) /\ (((128 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (128 + (256 * i)) r2);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (160 + (256 * i))) /\ (((160 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (160 + (256 * i)) r6);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (192 + (256 * i))) /\ (((192 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (192 + (256 * i)) r3);
      trace__poly_ntt <-
      (trace__poly_ntt ++
      [(Assert,
       ((0 <= (224 + (256 * i))) /\ (((224 + (256 * i)) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (224 + (256 * i)) r7);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace__poly_ntt);
  }
  proc __poly_reduce (rp:BArray512.t, b_rp:BArray512.t) : ((BArray512.t *
                                                           BArray512.t) *
                                                          trace) = {
    var qx16:W256.t;
    var vx16:W256.t;
    var i:int;
    var r:W256.t;
    var old_b_rp:BArray512.t;
    var old_rp:BArray512.t;
    var trace___poly_reduce:trace;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace___poly_reduce <- [];
    trace___poly_reduce <-
    (trace___poly_reduce ++ [(Assert, (is_init b_rp 0 512))]);
    qx16 <- (BArray32.get256 jqx16 0);
    vx16 <- (BArray32.get256 jvx16 0);
    i <- 0;
    while ((i < 16)) {
      trace___poly_reduce <-
      (trace___poly_reduce ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      r <- (BArray512.get256d rp (32 * i));
      (tmp__data___red16x, tmp__trace) <@ __red16x (r, qx16, vx16);
      tmp____red16x <- tmp__data___red16x;
      trace___poly_reduce <- (trace___poly_reduce ++ tmp__trace);
      r <- tmp____red16x;
      trace___poly_reduce <-
      (trace___poly_reduce ++
      [(Assert, ((0 <= (32 * i)) /\ (((32 * i) + 32) <= 512)))]);
      rp <- (BArray512.set256d rp (32 * i) r);
      i <- (i + 1);
    }
    b_rp <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((rp, b_rp), trace___poly_reduce);
  }
  proc _poly_tobytes (rp:W64.t, a:BArray512.t, b_a:BArray512.t) : ((BArray512.t *
                                                                   BArray512.t) *
                                                                  trace) = {
    var i:int;
    var t0:W256.t;
    var t1:W256.t;
    var t2:W256.t;
    var t3:W256.t;
    var t4:W256.t;
    var t5:W256.t;
    var t6:W256.t;
    var t7:W256.t;
    var tt:W256.t;
    var ttt:W256.t;
    var b_jqx16_p:BArray32.t;
    var old_b_a:BArray512.t;
    var old_a:BArray512.t;
    var old_rp:W64.t;
    var trace__poly_tobytes:trace;
    b_jqx16_p <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_rp <- rp;
    trace__poly_tobytes <- [];
    trace__poly_tobytes <-
    (trace__poly_tobytes ++
    [(Assert, ((is_init b_a 0 512) /\ (is_valid (W64.to_uint rp) 384)))]);
    b_jqx16_p <- (BArray32.init_arr (W8.of_int 255) 32);
    trace__poly_tobytes <-
    (trace__poly_tobytes ++ [(Assert, (is_init b_jqx16_p 0 32))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq (a,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
    a <- tmp___poly_csubq;
    b_a <- tmp___poly_csubq_0;
    trace__poly_tobytes <-
    (trace__poly_tobytes ++ [(Assert, (is_init b_a 0 512))]);
    i <- 0;
    while ((i < 2)) {
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert, ((0 <= ((8 * i) * 32)) /\ ((((8 * i) * 32) + 32) <= 512)))]);
      t0 <- (BArray512.get256 a (8 * i));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 1) * 32)) /\ (((((8 * i) + 1) * 32) + 32) <= 512)))]);
      t1 <- (BArray512.get256 a ((8 * i) + 1));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 2) * 32)) /\ (((((8 * i) + 2) * 32) + 32) <= 512)))]);
      t2 <- (BArray512.get256 a ((8 * i) + 2));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 3) * 32)) /\ (((((8 * i) + 3) * 32) + 32) <= 512)))]);
      t3 <- (BArray512.get256 a ((8 * i) + 3));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 4) * 32)) /\ (((((8 * i) + 4) * 32) + 32) <= 512)))]);
      t4 <- (BArray512.get256 a ((8 * i) + 4));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 5) * 32)) /\ (((((8 * i) + 5) * 32) + 32) <= 512)))]);
      t5 <- (BArray512.get256 a ((8 * i) + 5));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 6) * 32)) /\ (((((8 * i) + 6) * 32) + 32) <= 512)))]);
      t6 <- (BArray512.get256 a ((8 * i) + 6));
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       ((0 <= (((8 * i) + 7) * 32)) /\ (((((8 * i) + 7) * 32) + 32) <= 512)))]);
      t7 <- (BArray512.get256 a ((8 * i) + 7));
      tt <- (VPSLL_16u16 t1 (W128.of_int 12));
      tt <- (tt `|` t0);
      t0 <- (VPSRL_16u16 t1 (W128.of_int 4));
      t1 <- (VPSLL_16u16 t2 (W128.of_int 8));
      t0 <- (t0 `|` t1);
      t1 <- (VPSRL_16u16 t2 (W128.of_int 8));
      t2 <- (VPSLL_16u16 t3 (W128.of_int 4));
      t1 <- (t1 `|` t2);
      t2 <- (VPSLL_16u16 t5 (W128.of_int 12));
      t2 <- (t2 `|` t4);
      t3 <- (VPSRL_16u16 t5 (W128.of_int 4));
      t4 <- (VPSLL_16u16 t6 (W128.of_int 8));
      t3 <- (t3 `|` t4);
      t4 <- (VPSRL_16u16 t6 (W128.of_int 8));
      t5 <- (VPSLL_16u16 t7 (W128.of_int 4));
      t4 <- (t4 `|` t5);
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (tt, t0);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      ttt <- tmp____shuffle1;
      t0 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (t1, t2);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      tt <- tmp____shuffle1;
      t2 <- tmp____shuffle1_0;
      (tmp__data___shuffle1, tmp__trace) <@ __shuffle1 (t3, t4);
      (tmp____shuffle1, tmp____shuffle1_0) <- tmp__data___shuffle1;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t1 <- tmp____shuffle1;
      t4 <- tmp____shuffle1_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (ttt, tt);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t3 <- tmp____shuffle2;
      tt <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (t1, t0);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      ttt <- tmp____shuffle2;
      t0 <- tmp____shuffle2_0;
      (tmp__data___shuffle2, tmp__trace) <@ __shuffle2 (t2, t4);
      (tmp____shuffle2, tmp____shuffle2_0) <- tmp__data___shuffle2;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t1 <- tmp____shuffle2;
      t4 <- tmp____shuffle2_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (t3, ttt);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t2 <- tmp____shuffle4;
      ttt <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (t1, tt);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t3 <- tmp____shuffle4;
      tt <- tmp____shuffle4_0;
      (tmp__data___shuffle4, tmp__trace) <@ __shuffle4 (t0, t4);
      (tmp____shuffle4, tmp____shuffle4_0) <- tmp__data___shuffle4;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t1 <- tmp____shuffle4;
      t4 <- tmp____shuffle4_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (t2, t3);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t0 <- tmp____shuffle8;
      t3 <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (t1, ttt);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t2 <- tmp____shuffle8;
      ttt <- tmp____shuffle8_0;
      (tmp__data___shuffle8, tmp__trace) <@ __shuffle8 (tt, t4);
      (tmp____shuffle8, tmp____shuffle8_0) <- tmp__data___shuffle8;
      trace__poly_tobytes <- (trace__poly_tobytes ++ tmp__trace);
      t1 <- tmp____shuffle8;
      t4 <- tmp____shuffle8_0;
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert, (is_valid (W64.to_uint (rp + (W64.of_int (192 * i)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int (192 * i)))) t0);
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((192 * i) + 32)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int ((192 * i) + 32))))
      t2);
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((192 * i) + 64)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int ((192 * i) + 64))))
      t1);
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((192 * i) + 96)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int ((192 * i) + 96))))
      t3);
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((192 * i) + 128)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int ((192 * i) + 128))))
      ttt);
      trace__poly_tobytes <-
      (trace__poly_tobytes ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((192 * i) + 160)))) 32))]);
      Glob.mem <-
      (storeW256 Glob.mem (W64.to_uint (rp + (W64.of_int ((192 * i) + 160))))
      t4);
      i <- (i + 1);
    }
    b_a <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((a, b_a), trace__poly_tobytes);
  }
  proc __polyvec_add2 (r:BArray1536.t, b_r:BArray1536.t, b:BArray1536.t,
                       b_b:BArray1536.t) : ((BArray1536.t * BArray1536.t) *
                                           trace) = {
    var old_b_b:BArray1536.t;
    var old_b:BArray1536.t;
    var old_b_r:BArray1536.t;
    var old_r:BArray1536.t;
    var trace___polyvec_add2:trace;
    old_b_b <- b_b;
    old_b <- b;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_add2 <- [];
    trace___polyvec_add2 <-
    (trace___polyvec_add2 ++
    [(Assert, ((is_init b_r 0 1536) /\ (is_init b_b 0 1536)))]);
    (tmp__data__poly_add2, tmp__trace) <@ _poly_add2 ((
                                                      SBArray1536_512.get_sub16
                                                      r 0),
    (SBArray1536_512.get_sub16 b_r 0), (SBArray1536_512.get_sub16 b 0),
    (SBArray1536_512.get_sub16 b_b 0));
    (tmp___poly_add2, tmp___poly_add2_0) <- tmp__data__poly_add2;
    trace___polyvec_add2 <- (trace___polyvec_add2 ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp___poly_add2);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp___poly_add2_0);
    trace___polyvec_add2 <-
    (trace___polyvec_add2 ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_add2, tmp__trace) <@ _poly_add2 ((
                                                      SBArray1536_512.get_sub16
                                                      r 256),
    (SBArray1536_512.get_sub16 b_r 256), (SBArray1536_512.get_sub16 b 256),
    (SBArray1536_512.get_sub16 b_b 256));
    (tmp___poly_add2, tmp___poly_add2_0) <- tmp__data__poly_add2;
    trace___polyvec_add2 <- (trace___polyvec_add2 ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp___poly_add2);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp___poly_add2_0);
    trace___polyvec_add2 <-
    (trace___polyvec_add2 ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_add2, tmp__trace) <@ _poly_add2 ((
                                                      SBArray1536_512.get_sub16
                                                      r 512),
    (SBArray1536_512.get_sub16 b_r 512), (SBArray1536_512.get_sub16 b 512),
    (SBArray1536_512.get_sub16 b_b 512));
    (tmp___poly_add2, tmp___poly_add2_0) <- tmp__data__poly_add2;
    trace___polyvec_add2 <- (trace___polyvec_add2 ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp___poly_add2);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp___poly_add2_0);
    trace___polyvec_add2 <-
    (trace___polyvec_add2 ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_add2);
  }
  proc __polyvec_csubq (r:BArray1536.t, b_r:BArray1536.t) : ((BArray1536.t *
                                                             BArray1536.t) *
                                                            trace) = {
    var old_b_r:BArray1536.t;
    var old_r:BArray1536.t;
    var trace___polyvec_csubq:trace;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_csubq <- [];
    trace___polyvec_csubq <-
    (trace___polyvec_csubq ++ [(Assert, (is_init b_r 0 1536))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq ((
                                                        SBArray1536_512.get_sub16
                                                        r 0),
    (SBArray1536_512.get_sub16 b_r 0));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace___polyvec_csubq <- (trace___polyvec_csubq ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp___poly_csubq);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp___poly_csubq_0);
    trace___polyvec_csubq <-
    (trace___polyvec_csubq ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq ((
                                                        SBArray1536_512.get_sub16
                                                        r 256),
    (SBArray1536_512.get_sub16 b_r 256));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace___polyvec_csubq <- (trace___polyvec_csubq ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp___poly_csubq);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp___poly_csubq_0);
    trace___polyvec_csubq <-
    (trace___polyvec_csubq ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_csubq, tmp__trace) <@ _poly_csubq ((
                                                        SBArray1536_512.get_sub16
                                                        r 512),
    (SBArray1536_512.get_sub16 b_r 512));
    (tmp___poly_csubq, tmp___poly_csubq_0) <- tmp__data__poly_csubq;
    trace___polyvec_csubq <- (trace___polyvec_csubq ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp___poly_csubq);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp___poly_csubq_0);
    trace___polyvec_csubq <-
    (trace___polyvec_csubq ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_csubq);
  }
  proc __polyvec_decompress (rp:W64.t) : ((BArray1536.t * BArray1536.t) *
                                         trace) = {
    var r:BArray1536.t;
    var q:W256.t;
    var shufbidx:W256.t;
    var sllvdidx:W256.t;
    var mask:W256.t;
    var i:int;
    var k:int;
    var f:W256.t;
    var b_r:BArray1536.t;
    var old_rp:W64.t;
    var trace___polyvec_decompress:trace;
    b_r <- witness;
    r <- witness;
    old_rp <- rp;
    trace___polyvec_decompress <- [];
    trace___polyvec_decompress <-
    (trace___polyvec_decompress ++
    [(Assert, (is_valid (W64.to_uint rp) 972))]);
    b_r <- (BArray1536.init_arr (W8.of_int 0) 1536);
    q <- (VPBROADCAST_8u32 pvd_q_s);
    shufbidx <- (BArray32.get256 pvd_shufbdidx_s 0);
    sllvdidx <- (VPBROADCAST_4u64 pvd_sllvdidx_s);
    mask <- (VPBROADCAST_8u32 pvd_mask_s);
    k <- 0;
    while ((k < 3)) {
      i <- 0;
      while ((i < 16)) {
        trace___polyvec_decompress <-
        (trace___polyvec_decompress ++
        [(Assert,
         (is_valid (W64.to_uint (rp + (W64.of_int ((320 * k) + (20 * i)))))
         32))]);
        f <-
        (loadW256 Glob.mem
        (W64.to_uint (rp + (W64.of_int ((320 * k) + (20 * i))))));
        f <- (VPERMQ f (W8.of_int 148));
        f <- (VPSHUFB_256 f shufbidx);
        f <- (VPSLLV_8u32 f sllvdidx);
        f <- (VPSRL_16u16 f (W128.of_int 1));
        f <- (VPAND_256 f mask);
        f <- (VPMULHRS_16u16 f q);
        trace___polyvec_decompress <-
        (trace___polyvec_decompress ++
        [(Assert,
         ((0 <= (((16 * k) + i) * 32)) /\
         (((((16 * k) + i) * 32) + 32) <= 1536)))]);
        b_r <-
        (BArray1536.set256d b_r (((16 * k) + i) * 32)
        (W256.of_int
        115792089237316195423570985008687907853269984665640564039457584007913129639935
        ));
        r <- (BArray1536.set256 r ((16 * k) + i) f);
        i <- (i + 1);
      }
      k <- (k + 1);
    }
    return ((r, b_r), trace___polyvec_decompress);
  }
  proc __polyvec_compress (rp:W64.t, a:BArray1536.t, b_a:BArray1536.t) : 
  (unit * trace) = {
    var x16p:BArray32.t;
    var v:W256.t;
    var v8:W256.t;
    var off:W256.t;
    var shift1:W256.t;
    var mask:W256.t;
    var shift2:W256.t;
    var sllvdidx:W256.t;
    var shufbidx:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var f2:W256.t;
    var t0:W128.t;
    var t1:W128.t;
    var b_x16p:BArray32.t;
    var old_b_a:BArray1536.t;
    var old_a:BArray1536.t;
    var old_rp:W64.t;
    var trace___polyvec_compress:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_rp <- rp;
    trace___polyvec_compress <- [];
    trace___polyvec_compress <-
    (trace___polyvec_compress ++
    [(Assert, ((is_init b_a 0 1536) /\ (is_valid (W64.to_uint rp) 960)))]);
    (tmp__data___polyvec_csubq, tmp__trace) <@ __polyvec_csubq (a,
    (BArray1536.init_arr (W8.of_int (-1)) 1536));
    (tmp____polyvec_csubq, tmp____polyvec_csubq_0) <-
    tmp__data___polyvec_csubq;
    trace___polyvec_compress <- (trace___polyvec_compress ++ tmp__trace);
    a <- tmp____polyvec_csubq;
    b_a <- tmp____polyvec_csubq_0;
    trace___polyvec_compress <-
    (trace___polyvec_compress ++ [(Assert, (is_init b_a 0 1536))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jvx16;
    trace___polyvec_compress <-
    (trace___polyvec_compress ++ [(Assert, (is_init b_x16p 0 32))]);
    v <- (BArray32.get256 x16p 0);
    v8 <- (VPSLL_16u16 v (W128.of_int 3));
    off <- (VPBROADCAST_16u16 pvc_off_s);
    shift1 <- (VPBROADCAST_16u16 pvc_shift1_s);
    mask <- (VPBROADCAST_16u16 pvc_mask_s);
    shift2 <- (VPBROADCAST_4u64 pvc_shift2_s);
    sllvdidx <- (VPBROADCAST_4u64 pvc_sllvdidx_s);
    shufbidx <- (BArray32.get256 pvc_shufbidx_s 0);
    i <- 0;
    while ((i < 48)) {
      trace___polyvec_compress <-
      (trace___polyvec_compress ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 1536)))]);
      f0 <- (BArray1536.get256 a i);
      f1 <- (VPMULL_16u16 f0 v8);
      f2 <- (VPADD_16u16 f0 off);
      f0 <- (VPSLL_16u16 f0 (W128.of_int 3));
      f0 <- (VPMULH_16u16 f0 v);
      f2 <- (VPSUB_16u16 f1 f2);
      f1 <- (VPANDN_256 f1 f2);
      f1 <- (VPSRL_16u16 f1 (W128.of_int 15));
      f0 <- (VPSUB_16u16 f0 f1);
      f0 <- (VPMULHRS_16u16 f0 shift1);
      f0 <- (VPAND_256 f0 mask);
      f0 <- (VPMADDWD_256 f0 shift2);
      f0 <- (VPSLLV_8u32 f0 sllvdidx);
      f0 <- (VPSRL_4u64 f0 (W128.of_int 12));
      f0 <- (VPSHUFB_256 f0 shufbidx);
      t0 <- (truncateu128 f0);
      t1 <- (VEXTRACTI128 f0 (W8.of_int 1));
      t0 <- (VPBLEND_8u16 t0 t1 (W8.of_int 224));
      trace___polyvec_compress <-
      (trace___polyvec_compress ++
      [(Assert, (is_valid (W64.to_uint (rp + (W64.of_int (20 * i)))) 16))]);
      Glob.mem <-
      (storeW128 Glob.mem (W64.to_uint (rp + (W64.of_int (20 * i)))) t0);
      trace___polyvec_compress <-
      (trace___polyvec_compress ++
      [(Assert,
       (is_valid (W64.to_uint (rp + (W64.of_int ((20 * i) + 16)))) 4))]);
      Glob.mem <-
      (storeW32 Glob.mem (W64.to_uint (rp + (W64.of_int ((20 * i) + 16))))
      (VPEXTR_32 t1 (W8.of_int 0)));
      i <- (i + 1);
    }
    return ((), trace___polyvec_compress);
  }
  proc __polyvec_compress_1 (rp:BArray960.t, b_rp:BArray960.t,
                             a:BArray1536.t, b_a:BArray1536.t) : ((BArray960.t *
                                                                  BArray960.t) *
                                                                 trace) = {
    var x16p:BArray32.t;
    var v:W256.t;
    var v8:W256.t;
    var off:W256.t;
    var shift1:W256.t;
    var mask:W256.t;
    var shift2:W256.t;
    var sllvdidx:W256.t;
    var shufbidx:W256.t;
    var i:int;
    var f0:W256.t;
    var f1:W256.t;
    var f2:W256.t;
    var t0:W128.t;
    var t1:W128.t;
    var b_x16p:BArray32.t;
    var old_b_a:BArray1536.t;
    var old_a:BArray1536.t;
    var old_b_rp:BArray960.t;
    var old_rp:BArray960.t;
    var trace___polyvec_compress_1:trace;
    b_x16p <- witness;
    x16p <- witness;
    old_b_a <- b_a;
    old_a <- a;
    old_b_rp <- b_rp;
    old_rp <- rp;
    trace___polyvec_compress_1 <- [];
    trace___polyvec_compress_1 <-
    (trace___polyvec_compress_1 ++ [(Assert, (is_init b_a 0 1536))]);
    (tmp__data___polyvec_csubq, tmp__trace) <@ __polyvec_csubq (a,
    (BArray1536.init_arr (W8.of_int (-1)) 1536));
    (tmp____polyvec_csubq, tmp____polyvec_csubq_0) <-
    tmp__data___polyvec_csubq;
    trace___polyvec_compress_1 <- (trace___polyvec_compress_1 ++ tmp__trace);
    a <- tmp____polyvec_csubq;
    b_a <- tmp____polyvec_csubq_0;
    trace___polyvec_compress_1 <-
    (trace___polyvec_compress_1 ++ [(Assert, (is_init b_a 0 1536))]);
    b_x16p <- (BArray32.init_arr (W8.of_int 255) 32);
    x16p <- jvx16;
    trace___polyvec_compress_1 <-
    (trace___polyvec_compress_1 ++ [(Assert, (is_init b_x16p 0 32))]);
    v <- (BArray32.get256 x16p 0);
    v8 <- (VPSLL_16u16 v (W128.of_int 3));
    off <- (VPBROADCAST_16u16 pvc_off_s);
    shift1 <- (VPBROADCAST_16u16 pvc_shift1_s);
    mask <- (VPBROADCAST_16u16 pvc_mask_s);
    shift2 <- (VPBROADCAST_4u64 pvc_shift2_s);
    sllvdidx <- (VPBROADCAST_4u64 pvc_sllvdidx_s);
    shufbidx <- (BArray32.get256 pvc_shufbidx_s 0);
    i <- 0;
    while ((i < 48)) {
      trace___polyvec_compress_1 <-
      (trace___polyvec_compress_1 ++
      [(Assert, ((0 <= (i * 32)) /\ (((i * 32) + 32) <= 1536)))]);
      f0 <- (BArray1536.get256 a i);
      f1 <- (VPMULL_16u16 f0 v8);
      f2 <- (VPADD_16u16 f0 off);
      f0 <- (VPSLL_16u16 f0 (W128.of_int 3));
      f0 <- (VPMULH_16u16 f0 v);
      f2 <- (VPSUB_16u16 f1 f2);
      f1 <- (VPANDN_256 f1 f2);
      f1 <- (VPSRL_16u16 f1 (W128.of_int 15));
      f0 <- (VPSUB_16u16 f0 f1);
      f0 <- (VPMULHRS_16u16 f0 shift1);
      f0 <- (VPAND_256 f0 mask);
      f0 <- (VPMADDWD_256 f0 shift2);
      f0 <- (VPSLLV_8u32 f0 sllvdidx);
      f0 <- (VPSRL_4u64 f0 (W128.of_int 12));
      f0 <- (VPSHUFB_256 f0 shufbidx);
      t0 <- (truncateu128 f0);
      t1 <- (VEXTRACTI128 f0 (W8.of_int 1));
      t0 <- (VPBLEND_8u16 t0 t1 (W8.of_int 224));
      trace___polyvec_compress_1 <-
      (trace___polyvec_compress_1 ++
      [(Assert, ((0 <= (20 * i)) /\ (((20 * i) + 16) <= 960)))]);
      b_rp <-
      (BArray960.set128d b_rp (20 * i)
      (W128.of_int 340282366920938463463374607431768211455));
      rp <- (BArray960.set128d rp (20 * i) t0);
      trace___polyvec_compress_1 <-
      (trace___polyvec_compress_1 ++
      [(Assert, ((0 <= ((20 * i) + 16)) /\ ((((20 * i) + 16) + 4) <= 960)))]);
      b_rp <-
      (BArray960.set32d b_rp ((20 * i) + 16) (W32.of_int 4294967295));
      rp <-
      (BArray960.set32d rp ((20 * i) + 16) (VPEXTR_32 t1 (W8.of_int 0)));
      i <- (i + 1);
    }
    return ((rp, b_rp), trace___polyvec_compress_1);
  }
  proc __polyvec_frombytes (ap:W64.t) : ((BArray1536.t * BArray1536.t) *
                                        trace) = {
    var r:BArray1536.t;
    var pp:W64.t;
    var b_r:BArray1536.t;
    var old_ap:W64.t;
    var trace___polyvec_frombytes:trace;
    b_r <- witness;
    r <- witness;
    old_ap <- ap;
    trace___polyvec_frombytes <- [];
    trace___polyvec_frombytes <-
    (trace___polyvec_frombytes ++
    [(Assert, (is_valid (W64.to_uint ap) 1152))]);
    b_r <- (BArray1536.init_arr (W8.of_int 0) 1536);
    pp <- ap;
    (tmp__data__poly_frombytes, tmp__trace) <@ _poly_frombytes ((
                                                                SBArray1536_512.get_sub16
                                                                r 0),
    (SBArray1536_512.get_sub16 b_r 0), pp);
    (tmp___poly_frombytes, tmp___poly_frombytes_0) <-
    tmp__data__poly_frombytes;
    trace___polyvec_frombytes <- (trace___polyvec_frombytes ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp___poly_frombytes);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp___poly_frombytes_0);
    trace___polyvec_frombytes <-
    (trace___polyvec_frombytes ++ [(Assert, (is_init b_r 0 512))]);
    pp <- (pp + (W64.of_int 384));
    (tmp__data__poly_frombytes, tmp__trace) <@ _poly_frombytes ((
                                                                SBArray1536_512.get_sub16
                                                                r 256),
    (SBArray1536_512.get_sub16 b_r 256), pp);
    (tmp___poly_frombytes, tmp___poly_frombytes_0) <-
    tmp__data__poly_frombytes;
    trace___polyvec_frombytes <- (trace___polyvec_frombytes ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp___poly_frombytes);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp___poly_frombytes_0);
    trace___polyvec_frombytes <-
    (trace___polyvec_frombytes ++ [(Assert, (is_init b_r 0 512))]);
    pp <- (pp + (W64.of_int 384));
    (tmp__data__poly_frombytes, tmp__trace) <@ _poly_frombytes ((
                                                                SBArray1536_512.get_sub16
                                                                r 512),
    (SBArray1536_512.get_sub16 b_r 512), pp);
    (tmp___poly_frombytes, tmp___poly_frombytes_0) <-
    tmp__data__poly_frombytes;
    trace___polyvec_frombytes <- (trace___polyvec_frombytes ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp___poly_frombytes);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp___poly_frombytes_0);
    trace___polyvec_frombytes <-
    (trace___polyvec_frombytes ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_frombytes);
  }
  proc __polyvec_invntt (r:BArray1536.t, b_r:BArray1536.t) : ((BArray1536.t *
                                                              BArray1536.t) *
                                                             trace) = {
    var old_b_r:BArray1536.t;
    var old_r:BArray1536.t;
    var trace___polyvec_invntt:trace;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_invntt <- [];
    trace___polyvec_invntt <-
    (trace___polyvec_invntt ++ [(Assert, (is_init b_r 0 1536))]);
    (tmp__data__poly_invntt, tmp__trace) <@ _poly_invntt ((
                                                          SBArray1536_512.get_sub16
                                                          r 0),
    (SBArray1536_512.get_sub16 b_r 0));
    (tmp___poly_invntt, tmp___poly_invntt_0) <- tmp__data__poly_invntt;
    trace___polyvec_invntt <- (trace___polyvec_invntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp___poly_invntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp___poly_invntt_0);
    trace___polyvec_invntt <-
    (trace___polyvec_invntt ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_invntt, tmp__trace) <@ _poly_invntt ((
                                                          SBArray1536_512.get_sub16
                                                          r 256),
    (SBArray1536_512.get_sub16 b_r 256));
    (tmp___poly_invntt, tmp___poly_invntt_0) <- tmp__data__poly_invntt;
    trace___polyvec_invntt <- (trace___polyvec_invntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp___poly_invntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp___poly_invntt_0);
    trace___polyvec_invntt <-
    (trace___polyvec_invntt ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_invntt, tmp__trace) <@ _poly_invntt ((
                                                          SBArray1536_512.get_sub16
                                                          r 512),
    (SBArray1536_512.get_sub16 b_r 512));
    (tmp___poly_invntt, tmp___poly_invntt_0) <- tmp__data__poly_invntt;
    trace___polyvec_invntt <- (trace___polyvec_invntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp___poly_invntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp___poly_invntt_0);
    trace___polyvec_invntt <-
    (trace___polyvec_invntt ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_invntt);
  }
  proc __polyvec_ntt (r:BArray1536.t, b_r:BArray1536.t) : ((BArray1536.t *
                                                           BArray1536.t) *
                                                          trace) = {
    var old_b_r:BArray1536.t;
    var old_r:BArray1536.t;
    var trace___polyvec_ntt:trace;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_ntt <- [];
    trace___polyvec_ntt <-
    (trace___polyvec_ntt ++ [(Assert, (is_init b_r 0 1536))]);
    (tmp__data__poly_ntt, tmp__trace) <@ _poly_ntt ((
                                                    SBArray1536_512.get_sub16
                                                    r 0),
    (SBArray1536_512.get_sub16 b_r 0));
    (tmp___poly_ntt, tmp___poly_ntt_0) <- tmp__data__poly_ntt;
    trace___polyvec_ntt <- (trace___polyvec_ntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp___poly_ntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp___poly_ntt_0);
    trace___polyvec_ntt <-
    (trace___polyvec_ntt ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_ntt, tmp__trace) <@ _poly_ntt ((
                                                    SBArray1536_512.get_sub16
                                                    r 256),
    (SBArray1536_512.get_sub16 b_r 256));
    (tmp___poly_ntt, tmp___poly_ntt_0) <- tmp__data__poly_ntt;
    trace___polyvec_ntt <- (trace___polyvec_ntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp___poly_ntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp___poly_ntt_0);
    trace___polyvec_ntt <-
    (trace___polyvec_ntt ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_ntt, tmp__trace) <@ _poly_ntt ((
                                                    SBArray1536_512.get_sub16
                                                    r 512),
    (SBArray1536_512.get_sub16 b_r 512));
    (tmp___poly_ntt, tmp___poly_ntt_0) <- tmp__data__poly_ntt;
    trace___polyvec_ntt <- (trace___polyvec_ntt ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp___poly_ntt);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp___poly_ntt_0);
    trace___polyvec_ntt <-
    (trace___polyvec_ntt ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_ntt);
  }
  proc __polyvec_reduce (r:BArray1536.t, b_r:BArray1536.t) : ((BArray1536.t *
                                                              BArray1536.t) *
                                                             trace) = {
    var old_b_r:BArray1536.t;
    var old_r:BArray1536.t;
    var trace___polyvec_reduce:trace;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_reduce <- [];
    trace___polyvec_reduce <-
    (trace___polyvec_reduce ++ [(Assert, (is_init b_r 0 1536))]);
    (tmp__data___poly_reduce, tmp__trace) <@ __poly_reduce ((
                                                            SBArray1536_512.get_sub16
                                                            r 0),
    (SBArray1536_512.get_sub16 b_r 0));
    (tmp____poly_reduce, tmp____poly_reduce_0) <- tmp__data___poly_reduce;
    trace___polyvec_reduce <- (trace___polyvec_reduce ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 0 tmp____poly_reduce);
    b_r <- (SBArray1536_512.set_sub16 b_r 0 tmp____poly_reduce_0);
    trace___polyvec_reduce <-
    (trace___polyvec_reduce ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data___poly_reduce, tmp__trace) <@ __poly_reduce ((
                                                            SBArray1536_512.get_sub16
                                                            r 256),
    (SBArray1536_512.get_sub16 b_r 256));
    (tmp____poly_reduce, tmp____poly_reduce_0) <- tmp__data___poly_reduce;
    trace___polyvec_reduce <- (trace___polyvec_reduce ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 256 tmp____poly_reduce);
    b_r <- (SBArray1536_512.set_sub16 b_r 256 tmp____poly_reduce_0);
    trace___polyvec_reduce <-
    (trace___polyvec_reduce ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data___poly_reduce, tmp__trace) <@ __poly_reduce ((
                                                            SBArray1536_512.get_sub16
                                                            r 512),
    (SBArray1536_512.get_sub16 b_r 512));
    (tmp____poly_reduce, tmp____poly_reduce_0) <- tmp__data___poly_reduce;
    trace___polyvec_reduce <- (trace___polyvec_reduce ++ tmp__trace);
    r <- (SBArray1536_512.set_sub16 r 512 tmp____poly_reduce);
    b_r <- (SBArray1536_512.set_sub16 b_r 512 tmp____poly_reduce_0);
    trace___polyvec_reduce <-
    (trace___polyvec_reduce ++ [(Assert, (is_init b_r 0 512))]);
    return ((r, b_r), trace___polyvec_reduce);
  }
  proc __polyvec_pointwise_acc (r:BArray512.t, b_r:BArray512.t,
                                a:BArray1536.t, b_a:BArray1536.t,
                                b:BArray1536.t, b_b:BArray1536.t) : (
                                                                    (BArray512.t *
                                                                    BArray512.t) *
                                                                    trace) = {
    var t:BArray512.t;
    var b_t:BArray512.t;
    var old_b_b:BArray1536.t;
    var old_b:BArray1536.t;
    var old_b_a:BArray1536.t;
    var old_a:BArray1536.t;
    var old_b_r:BArray512.t;
    var old_r:BArray512.t;
    var trace___polyvec_pointwise_acc:trace;
    b_t <- witness;
    t <- witness;
    old_b_b <- b_b;
    old_b <- b;
    old_b_a <- b_a;
    old_a <- a;
    old_b_r <- b_r;
    old_r <- r;
    trace___polyvec_pointwise_acc <- [];
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++
    [(Assert, ((is_init b_a 0 1536) /\ (is_init b_b 0 1536)))]);
    b_t <- (BArray512.init_arr (W8.of_int 0) 512);
    (tmp__data__poly_basemul, tmp__trace) <@ _poly_basemul (r, b_r,
    (SBArray1536_512.get_sub16 a 0), (SBArray1536_512.get_sub16 b_a 0),
    (SBArray1536_512.get_sub16 b 0), (SBArray1536_512.get_sub16 b_b 0));
    (tmp___poly_basemul, tmp___poly_basemul_0) <- tmp__data__poly_basemul;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ tmp__trace);
    r <- tmp___poly_basemul;
    b_r <- tmp___poly_basemul_0;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_basemul, tmp__trace) <@ _poly_basemul (t, b_t,
    (SBArray1536_512.get_sub16 a 256), (SBArray1536_512.get_sub16 b_a 256),
    (SBArray1536_512.get_sub16 b 256), (SBArray1536_512.get_sub16 b_b 256));
    (tmp___poly_basemul, tmp___poly_basemul_0) <- tmp__data__poly_basemul;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ tmp__trace);
    t <- tmp___poly_basemul;
    b_t <- tmp___poly_basemul_0;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ [(Assert, (is_init b_t 0 512))]);
    (tmp__data__poly_add2, tmp__trace) <@ _poly_add2 (r,
    (BArray512.init_arr (W8.of_int (-1)) 512), t,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_add2, tmp___poly_add2_0) <- tmp__data__poly_add2;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ tmp__trace);
    r <- tmp___poly_add2;
    b_r <- tmp___poly_add2_0;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ [(Assert, (is_init b_r 0 512))]);
    (tmp__data__poly_basemul, tmp__trace) <@ _poly_basemul (t,
    (BArray512.init_arr (W8.of_int (-1)) 512),
    (SBArray1536_512.get_sub16 a 512), (SBArray1536_512.get_sub16 b_a 512),
    (SBArray1536_512.get_sub16 b 512), (SBArray1536_512.get_sub16 b_b 512));
    (tmp___poly_basemul, tmp___poly_basemul_0) <- tmp__data__poly_basemul;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ tmp__trace);
    t <- tmp___poly_basemul;
    b_t <- tmp___poly_basemul_0;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ [(Assert, (is_init b_t 0 512))]);
    (tmp__data__poly_add2, tmp__trace) <@ _poly_add2 (r,
    (BArray512.init_arr (W8.of_int (-1)) 512), t,
    (BArray512.init_arr (W8.of_int (-1)) 512));
    (tmp___poly_add2, tmp___poly_add2_0) <- tmp__data__poly_add2;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ tmp__trace);
    r <- tmp___poly_add2;
    b_r <- tmp___poly_add2_0;
    trace___polyvec_pointwise_acc <-
    (trace___polyvec_pointwise_acc ++ [(Assert, (is_init b_r 0 512))]);
    b_r <- (BArray512.init_arr (W8.of_int (-1)) 512);
    return ((r, b_r), trace___polyvec_pointwise_acc);
  }
  proc __polyvec_tobytes (rp:W64.t, a:BArray1536.t, b_a:BArray1536.t) : 
  (unit * trace) = {
    var pp:W64.t;
    var old_b_a:BArray1536.t;
    var old_a:BArray1536.t;
    var old_rp:W64.t;
    var trace___polyvec_tobytes:trace;
    old_b_a <- b_a;
    old_a <- a;
    old_rp <- rp;
    trace___polyvec_tobytes <- [];
    trace___polyvec_tobytes <-
    (trace___polyvec_tobytes ++
    [(Assert, ((is_valid (W64.to_uint rp) 1152) /\ (is_init b_a 0 1536)))]);
    pp <- rp;
    (tmp__data__poly_tobytes, tmp__trace) <@ _poly_tobytes (pp,
    (SBArray1536_512.get_sub16 a 0), (SBArray1536_512.get_sub16 b_a 0));
    (tmp___poly_tobytes, tmp___poly_tobytes_0) <- tmp__data__poly_tobytes;
    trace___polyvec_tobytes <- (trace___polyvec_tobytes ++ tmp__trace);
    a <- (SBArray1536_512.set_sub16 a 0 tmp___poly_tobytes);
    b_a <- (SBArray1536_512.set_sub16 b_a 0 tmp___poly_tobytes_0);
    trace___polyvec_tobytes <-
    (trace___polyvec_tobytes ++ [(Assert, (is_init b_a 0 512))]);
    pp <- (pp + (W64.of_int 384));
    (tmp__data__poly_tobytes, tmp__trace) <@ _poly_tobytes (pp,
    (SBArray1536_512.get_sub16 a 256), (SBArray1536_512.get_sub16 b_a 256));
    (tmp___poly_tobytes, tmp___poly_tobytes_0) <- tmp__data__poly_tobytes;
    trace___polyvec_tobytes <- (trace___polyvec_tobytes ++ tmp__trace);
    a <- (SBArray1536_512.set_sub16 a 256 tmp___poly_tobytes);
    b_a <- (SBArray1536_512.set_sub16 b_a 256 tmp___poly_tobytes_0);
    trace___polyvec_tobytes <-
    (trace___polyvec_tobytes ++ [(Assert, (is_init b_a 0 512))]);
    pp <- (pp + (W64.of_int 384));
    (tmp__data__poly_tobytes, tmp__trace) <@ _poly_tobytes (pp,
    (SBArray1536_512.get_sub16 a 512), (SBArray1536_512.get_sub16 b_a 512));
    (tmp___poly_tobytes, tmp___poly_tobytes_0) <- tmp__data__poly_tobytes;
    trace___polyvec_tobytes <- (trace___polyvec_tobytes ++ tmp__trace);
    a <- (SBArray1536_512.set_sub16 a 512 tmp___poly_tobytes);
    b_a <- (SBArray1536_512.set_sub16 b_a 512 tmp___poly_tobytes_0);
    trace___polyvec_tobytes <-
    (trace___polyvec_tobytes ++ [(Assert, (is_init b_a 0 512))]);
    return ((), trace___polyvec_tobytes);
  }
}.

(* The post and trace are valid. *)

lemma __shuffle8_trace  :
      hoare [M.__shuffle8 : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __shuffle4_trace  :
      hoare [M.__shuffle4 : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __shuffle2_trace  :
      hoare [M.__shuffle2 : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __shuffle1_trace  :
      hoare [M.__shuffle1 : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __csubq_trace  :
      hoare [M.__csubq : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __red16x_trace  :
      hoare [M.__red16x : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __fqmulprecomp16x_trace  :
      hoare [M.__fqmulprecomp16x :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma _poly_add2_trace _rp _b_rp _bp _b_bp :
      hoare [M._poly_add2 :
      (((_b_bp = b_bp) /\ ((_bp = bp) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      ((is_init _b_rp 0 512) /\ (is_init _b_bp 0 512))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc; wp.
  while( valid trace__poly_add2 /\ 0 <=i).
  + auto. smt(all_cat).
  auto. smt(BArray512.init_arrP).
qed.

lemma _poly_csubq_trace _rp _b_rp :
      hoare [M._poly_csubq :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;wp.
  while (valid trace__poly_csubq /\ 0 <= i).
  + auto. ecall(__csubq_trace). auto. smt(all_cat).
  auto. smt(BArray512.init_arrP).
qed.

lemma __w256_interleave_u16_trace  :
      hoare [M.__w256_interleave_u16 :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __w256_deinterleave_u16_trace  :
      hoare [M.__w256_deinterleave_u16 :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __mont_red_trace  :
      hoare [M.__mont_red : (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __wmul_16u16_trace  :
      hoare [M.__wmul_16u16 :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma __schoolbook16x_trace  :
      hoare [M.__schoolbook16x :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma _poly_basemul_trace _rp _b_rp _ap _b_ap _bp _b_bp :
      hoare [M._poly_basemul :
      (((_b_bp = b_bp) /\
       ((_bp = bp) /\
       ((_b_ap = b_ap) /\ ((_ap = ap) /\ ((_b_rp = b_rp) /\ (_rp = rp)))))) /\
      ((is_init _b_ap 0 512) /\ (is_init _b_bp 0 512))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc; wp. do ! (ecall(__schoolbook16x_trace); auto).
  rewrite /is_init /valid /trace /=.
  smt(all_cat).
qed.


lemma add_of_int (a:W64.t) z :
    a + (W64.of_int z) = W64.of_int (W64.to_uint a + z).
proof.
  by rewrite of_intD to_uintK.
qed.

lemma _poly_frombytes_trace _rp _b_rp _ap :
      hoare [M._poly_frombytes :
      (((_ap = ap) /\ ((_b_rp = b_rp) /\ (_rp = rp))) /\
      (is_valid (W64.to_uint _ap) 384)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc. auto.
  while (valid trace__poly_frombytes /\ is_init b_rp 0 (32*8*i) /\  is_valid (to_uint ap) 384  /\ 0 <=i /\ i<=16).
  + inline *; auto. rewrite /is_init /trace /valid /=. move => &m /> ? h1 h2  *. rewrite !all_cat.
    have := is_valid_bound _ _ h2. move => /= ?.
    rewrite !add_of_int.
    have ? := W64.to_uint_cmp ap{m}.
    rewrite !to_uintK_small/=; smt(is_validP).
  auto. rewrite /is_init /trace /valid /=.  smt(BArray32.init_arrP).
qed.


lemma __invntt___butterfly64x_trace  :
      hoare [M.__invntt___butterfly64x :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma _poly_invntt_trace _rp _b_rp :
      hoare [M._poly_invntt :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;wp.
  while ( 0 <= i /\ is_init b_rp 0 512 /\ valid trace__poly_invntt /\ b_r6 /\ b_r4 /\ b_r2 /\ b_r0).
  + inline *. auto. rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto.
  conseq (:is_init b_rp 0 512 /\ is_init b_zetasp 0 800 /\  b_r6 /\ b_r4 /\ b_r2 /\ b_r0  /\ valid trace__poly_invntt).
  + rewrite /is_init /trace /valid /= . smt(all_cat BArray512.init_arrP).
  while ( 0 <= i /\ is_init b_rp 0 512 /\ valid trace__poly_invntt /\ is_init b_zetasp 0 800
          /\ (!(i<2) => (b_r6 /\ b_r4 /\ b_r2 /\ b_r0))).
  + wp. ecall(__red16x_trace). wp. ecall(__invntt___butterfly64x_trace).
    do ! (wp; ecall(__shuffle8_trace)).
    wp. ecall(__red16x_trace).  wp. ecall(__invntt___butterfly64x_trace).
    do ! (wp; ecall(__shuffle4_trace)).
    wp. ecall(__red16x_trace).  wp. ecall(__invntt___butterfly64x_trace).
    do ! (wp; ecall(__shuffle2_trace)).
    wp. ecall(__red16x_trace).  wp. ecall(__invntt___butterfly64x_trace).
    do ! (wp; ecall(__shuffle1_trace)).
    wp. ecall(__invntt___butterfly64x_trace).
    do ! (wp; ecall(__red16x_trace)).
    wp. ecall(__invntt___butterfly64x_trace).
    auto.  rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto. rewrite /is_init /trace /valid /=.
  smt(BArray800.init_arrP).
qed.

lemma __butterfly64x_trace  :
      hoare [M.__butterfly64x :
      (true /\ true) ==> (true /\ (valid (trace res)))].
proof.
proc; inline *; auto .
qed .

lemma _poly_ntt_trace _rp _b_rp :
      hoare [M._poly_ntt :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;auto.
  while(is_init b_rp 0 512 /\ 0 <= i /\ valid trace__poly_ntt /\ is_init b_zetasp 0 800).
  + do ! (wp; ecall(__red16x_trace)).
    do ! (wp; ecall(__butterfly64x_trace)).
    do ! (wp; ecall(__shuffle1_trace)).
    wp; ecall(__butterfly64x_trace).
    do ! (wp; ecall(__shuffle2_trace)).
    wp; ecall(__butterfly64x_trace).
    do ! (wp; ecall(__shuffle4_trace)).
    wp; ecall(__butterfly64x_trace).
    do ! (wp; ecall(__shuffle8_trace)).
    wp; ecall(__butterfly64x_trace).
    auto.  rewrite /is_init /trace /valid /=.
    smt(all_cat).
  auto.
  do ! (wp; ecall(__butterfly64x_trace)). auto.
  rewrite /is_init /trace /valid /=.
  smt(all_cat BArray800.init_arrP BArray512.init_arrP).
qed.

lemma __poly_reduce_trace _rp _b_rp :
      hoare [M.__poly_reduce :
      (((_b_rp = b_rp) /\ (_rp = rp)) /\ (is_init _b_rp 0 512)) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
 proc;wp.
  while( 0<= i /\ valid trace___poly_reduce).
  + wp. ecall (__red16x_trace). auto. smt(all_cat).
  auto. smt(BArray512.init_arrP).
qed.

lemma _poly_tobytes_trace _rp _a _b_a :
      hoare [M._poly_tobytes :
      (((_b_a = b_a) /\ ((_a = a) /\ (_rp = rp))) /\
      ((is_init _b_a 0 512) /\ (is_valid (W64.to_uint _rp) 384))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;auto.
  while( 0 <= i /\ is_valid (W64.to_uint rp) 384 /\ valid trace__poly_tobytes).
  + inline *; auto. move => &m /> ? h *.
    have := is_valid_bound _ _ h. move => /= ?.
    rewrite !W64.to_uintD_small !to_uintK_small; smt(is_validP all_cat).
  auto. ecall( _poly_csubq_trace a (BArray512.init_arr (W8.of_int (-1)) 512)). auto.
  rewrite /is_init /valid /trace /=.
  smt(all_cat BArray32.init_arrP BArray512.init_arrP).
qed.

lemma __polyvec_add2_trace _r _b_r _b _b_b :
      hoare [M.__polyvec_add2 :
      (((_b_b = b_b) /\ ((_b = b) /\ ((_b_r = b_r) /\ (_r = r)))) /\
      ((is_init _b_r 0 1536) /\ (is_init _b_b 0 1536))) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto.
  ecall (_poly_add2_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512))
                          (SBArray1536_512.get_sub b (2 * 512))
                          (SBArray1536_512.get_sub b_b (2 * 512))); wp.
  ecall (_poly_add2_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256))
                          (SBArray1536_512.get_sub b (2 * 256))
                          (SBArray1536_512.get_sub b_b (2 * 256))); wp.
  ecall (_poly_add2_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0))
                          (SBArray1536_512.get_sub b (2 * 0))
                          (SBArray1536_512.get_sub b_b (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set all_cat).
qed.

lemma __polyvec_csubq_trace _r _b_r :
      hoare [M.__polyvec_csubq :
      (((_b_r = b_r) /\ (_r = r)) /\ (is_init _b_r 0 1536)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto.
  ecall (_poly_csubq_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512))); wp.
  ecall (_poly_csubq_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256))); wp.
  ecall (_poly_csubq_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set all_cat).
qed.

lemma __polyvec_decompress_trace _rp :
      hoare [M.__polyvec_decompress :
      ((_rp = rp) /\ (is_valid (W64.to_uint _rp) 972)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto.
  while (is_init b_r 0 (k*512)  /\ valid trace___polyvec_decompress /\
  is_valid (to_uint rp) 972 /\ 0<=k /\ k<=3).
  + auto.
    while (is_init b_r 0 (32 * (16*k + i))  /\ valid trace___polyvec_decompress /\
    is_valid (to_uint rp) 972 /\ 0<=i /\ i<=16 /\ 0<=k /\ k<3).
    + auto. rewrite /is_init /valid /trace /=.
      move => &m /> 2? h *.
      have := is_valid_bound _ _ h. move => /= *.
      rewrite !all_cat W64.to_uintD_small  W64.to_uintK_small;smt(is_validP).
    auto. smt().
  auto. smt().
qed.

lemma __polyvec_compress_trace _rp _a _b_a :
      hoare [M.__polyvec_compress :
      (((_b_a = b_a) /\ ((_a = a) /\ (_rp = rp))) /\
      ((is_init _b_a 0 1536) /\ (is_valid (W64.to_uint _rp) 960))) ==>
      (true /\ (valid (trace res)))].
proof.
  proc;auto.
  while (is_init b_a 0 1536 /\ is_valid (W64.to_uint rp) 960 /\ 0<=i
  /\ valid trace___polyvec_compress ).
  + auto. rewrite /is_init /valid /trace /=. move => &m /> ? h *.
    have:= is_valid_bound _ _ h. move => /= *.
    rewrite !all_cat. split. smt(). split. split. smt().
    + rewrite to_uintD_small W64.to_uintK_small; smt(is_validP).
    rewrite to_uintD_small W64.to_uintK_small; smt(is_validP).
  auto.
  ecall(__polyvec_csubq_trace a (BArray1536.init_arr (W8.of_int (-1)) 1536)). auto.
  rewrite /is_init /trace /valid /=.
  smt(all_cat BArray32.init_arrP BArray1536.init_arrP).
qed.

lemma __polyvec_compress_1_trace _rp _b_rp _a _b_a :
      hoare [M.__polyvec_compress_1 :
      (((_b_a = b_a) /\ ((_a = a) /\ ((_b_rp = b_rp) /\ (_rp = rp)))) /\
      (is_init _b_a 0 1536)) ==>
      ((is_init res.`1.`2 0 960) /\ (valid (trace res)))].
proof.
  proc;auto.
  while (is_init b_a 0 1536 /\ is_init b_rp 0 (20*i) /\ 0<=i /\ i<=48
  /\ valid trace___polyvec_compress_1 ).
  + auto. rewrite /is_init /valid /trace /=. move => &m />  *.
    rewrite !all_cat. smt().
  auto.
  ecall(__polyvec_csubq_trace a (BArray1536.init_arr (W8.of_int (-1)) 1536)). auto.
  rewrite /is_init /trace /valid /=.
  smt(all_cat BArray32.init_arrP BArray1536.init_arrP).
qed.

lemma __polyvec_frombytes_trace _ap :
      hoare [M.__polyvec_frombytes :
      ((_ap = ap) /\ (is_valid (W64.to_uint _ap) 1152)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto. 
  ecall (_poly_frombytes_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512)) pp); wp.
  ecall (_poly_frombytes_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256)) pp); wp.
  ecall (_poly_frombytes_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0)) pp); auto.                      
  rewrite /is_init /trace /valid /=.
  move => &m /> h *.
  have:= is_valid_bound _ _ h. move => /= *.
  split. smt(is_validP). move => *.
  split. rewrite to_uintD_small /=; smt(is_validP).
  move => *. split. rewrite to_uintD_small /=; smt(is_validP).                
  smt(all_cat SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set).
qed.

lemma __polyvec_invntt_trace _r _b_r :
      hoare [M.__polyvec_invntt :
      (((_b_r = b_r) /\ (_r = r)) /\ (is_init _b_r 0 1536)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto.
  ecall (_poly_invntt_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512))); wp.
  ecall (_poly_invntt_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256))); wp.
  ecall (_poly_invntt_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set all_cat).
qed.

lemma __polyvec_ntt_trace _r _b_r :
      hoare [M.__polyvec_ntt :
      (((_b_r = b_r) /\ (_r = r)) /\ (is_init _b_r 0 1536)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
  proc;auto.
  ecall (_poly_ntt_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512))); wp.
  ecall (_poly_ntt_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256))); wp.
  ecall (_poly_ntt_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set all_cat).
qed.


lemma __polyvec_reduce_trace _r _b_r :
      hoare [M.__polyvec_reduce :
      (((_b_r = b_r) /\ (_r = r)) /\ (is_init _b_r 0 1536)) ==>
      ((is_init res.`1.`2 0 1536) /\ (valid (trace res)))].
proof.
 proc;auto.
  ecall (__poly_reduce_trace (SBArray1536_512.get_sub r (2 * 512))
                          (SBArray1536_512.get_sub b_r (2 * 512))); wp.
  ecall (__poly_reduce_trace (SBArray1536_512.get_sub r (2 * 256))
                          (SBArray1536_512.get_sub b_r (2 * 256))); wp.
  ecall (__poly_reduce_trace (SBArray1536_512.get_sub r (2 * 0))
                          (SBArray1536_512.get_sub b_r (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set all_cat).
qed.

lemma __polyvec_pointwise_acc_trace _r _b_r _a _b_a _b _b_b :
      hoare [M.__polyvec_pointwise_acc :
      (((_b_b = b_b) /\
       ((_b = b) /\
       ((_b_a = b_a) /\ ((_a = a) /\ ((_b_r = b_r) /\ (_r = r)))))) /\
      ((is_init _b_a 0 1536) /\ (is_init _b_b 0 1536))) ==>
      ((is_init res.`1.`2 0 512) /\ (valid (trace res)))].
proof.
  proc;auto.
  ecall ( _poly_add2_trace r (BArray512.init_arr (W8.of_int (-1)) 512) t (BArray512.init_arr (W8.of_int (-1)) 512)); wp.
  ecall (_poly_basemul_trace t (BArray512.init_arr (W8.of_int (-1)) 512)  (SBArray1536_512.get_sub a (2 * 512)) (SBArray1536_512.get_sub b_a (2 * 512)) (SBArray1536_512.get_sub b (2 * 512))
  (SBArray1536_512.get_sub b_b (2 * 512))); wp.
  ecall ( _poly_add2_trace r (BArray512.init_arr (W8.of_int (-1)) 512) t (BArray512.init_arr (W8.of_int (-1)) 512)); wp.
  ecall (_poly_basemul_trace t b_t (SBArray1536_512.get_sub a (2 * 256)) (SBArray1536_512.get_sub b_a (2 * 256))  (SBArray1536_512.get_sub b (2 * 256))
  (SBArray1536_512.get_sub b_b (2 * 256))); wp.
  ecall (_poly_basemul_trace r b_r (SBArray1536_512.get_sub a (2 * 0)) (SBArray1536_512.get_sub b_a (2 * 0)) (SBArray1536_512.get_sub b (2 * 0))
  (SBArray1536_512.get_sub b_b (2 * 0))); auto.
  rewrite /is_init /trace /valid /=.
  move => &m /> *.
  smt(SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set BArray512.init_arrP all_cat).
qed.

lemma __polyvec_tobytes_trace _rp _a _b_a :
      hoare [M.__polyvec_tobytes :
      (((_b_a = b_a) /\ ((_a = a) /\ (_rp = rp))) /\
      ((is_valid (W64.to_uint _rp) 1152) /\ (is_init _b_a 0 1536))) ==>
      (true /\ (valid (trace res)))].
proof.
  proc;auto. 
  ecall (_poly_tobytes_trace pp (SBArray1536_512.get_sub a (2 * 512))
                          (SBArray1536_512.get_sub b_a (2 * 512))); wp.
  ecall (_poly_tobytes_trace pp (SBArray1536_512.get_sub a (2 * 256))
                          (SBArray1536_512.get_sub b_a (2 * 256))); wp.
  ecall (_poly_tobytes_trace pp (SBArray1536_512.get_sub a (2 * 0))
                          (SBArray1536_512.get_sub b_a (2 * 0))); auto.                      
  rewrite /is_init /trace /valid /=.
  move => &m /> h *.
  have:= is_valid_bound _ _ h. move => /= *.
  split. smt(is_validP SBArray1536_512.is_init_cell_get). move => *.
  split. rewrite to_uintD_small /=; smt(is_validP SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set).
  move => *. split. rewrite to_uintD_small /=; smt(is_validP SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set).
  move => *. smt(all_cat SBArray1536_512.is_init_cell_get SBArray1536_512.is_init_cell_set).
qed.
