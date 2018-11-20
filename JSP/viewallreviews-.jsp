<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	color: #000000;
	font-weight: bold;
	font-size: 24px;
}
body,td,th {
	color: #000000;
}
body {
	background-color: #999999;
}
a:link {
	color: #000000;
}
a:visited {
	color: #000000;
}
.style6 {font-size: 18px; font-weight: bold; color: #000000; }
-->
</style>
</head>
<body>
<div align="center" class="style1">Reviewed Details</div>
<p align="center"><img src="Reviews.jpg" width="301" height="121"></p>


<%

String x1=request.getParameter("s1");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
	 //String TYPES[]={"Blady","Abundant","Accomplished","Achieving","Active","Admirable","Adorable","Adventurous","Admired","Affluent","Agreeable","Alert","Aligned","Alive","Amazing","Appealing","Appreciate","Artistic","Astounding","Astute","Attentive","Attractive","Auspicious","Authentic","Awake","Aware","Beaming","Beautiful","Best","Blessed","Bliss","Bold","Bright","Brilliant","Brisk","Buoyant","Calm","Capable","Centered","Certain","Charming","Cheerful","Clear","Clever","Competent","Complete","Confident","Connected","Conscious","Considerate","Convenient","Courageous","Creative","Daring","Dazzling","Delicious","Delightful","Desirable","Determined","Diligent","Discerning","Discover","Dynamic","Eager","Easy","Efficent","Effortless","Elegant","Eloquent","Energetic","Endless","Enhancing","Engaging","Enormous","Enterprising","Enthusiastic","Enticing","Excellent","Exceptional","Exciting","Experienced","Exquisite","Fabulous","Fair","Far-Sighted","Fascinating","Fine","Flattering","Flourishing","Fortunate","Free","Friendly","Fulfilled","Fun","Generous","Genuine","Gifted","Glorious","Glowing","Good","Good-Looking","Gorgeous","Graceful","Gracious","Grand","Great","Handsome","Happy","Hardy","Harmonious","Healed","Healthy","Helpful","Honest","Humorous","Ideal","Imaginative","Impressive","Industrious","Ingenious","Innovative","Inspired","Intelligent","Interested","Interesting","Intuitive","Inventive","Invincible","Inviting","Irresistible","Joyous","Judicious","Keen","King","Knowing","Limitless","Lively","Loving","Lucky","Luminous","Magical","Magnificent","Marvelous","Masterful","Mighty","Miraculous","Motivated","Natural","Neat","Nice","Nurturing","Noble","Optimistic","Outstanding","Passionate","Peaceful","Perfect","Persevering","Persistent","Playful","Pleasing","Plentiful","Positive","Powerful","Prepared","Productive","Profound","Prompt","Prosperous","Proud","Qualified","Quick","Radiant","Reasonable","Refined","Refreshing","Relaxing","Reliable","Remarkable","Resolute","Resourceful","Respected","Rewarding","Robust","Safe","Satisfied","Secure","Seductive","Self-Reliant","Sensational","Sensible","Sensitive","Serene","Sharing","Skillful","Smart","Smashing","Smooth","Sparkling","Spiritual","Splendid","Strong","Stunning","Successful","Superb","Swift","Talented","Tenacious","Terrific","Thankful","Thrilling","Thriving","Timely","Trusting","Truthful","Ultimate","Youthful","Young","Worthy","Wonderful","Unique","Valiant","Valuable","Versatile","Vibrant","Victorious","Vigorous","Vivacious","Vivid","Warm","Wealthy","Well","Whole","Wise","Zeal","Zest"};

String ta1="bad";
String ta2="rubbish";
String t1="abnormal";
String	t2="abolish";
String t3="abominable";
String t4="abominably";
String t5="abominate";
String t6="abomination";
String t7="abort";
String t8="aborted";
String t9="aborts";
String t10="abrade";
String t11="abrasive";
String t12="abrupt";
String t13="abruptly";
String t14="abscond";
String t15="absence";
String t16="absent-minded";
String t17="absentee";
String t18="absurd";
String t19="absurdity";
String t20="absurdly";
String t21="absurdness";

String t22="abused";
String t23="abuses";
String t24="abusive";
String t25="abysmal";
String t26="abysmally";
String t27="abyss";
String t28="accidental";
String t29="accost";
String t30="accursed";
String t31="accusation";
String t32="accusations";
String t33="accuse";
String t34="accuses";
String t35="accusing";
String t36="accusingly";
String t37="acerbate";
String t38="acerbic";
String t39="acerbically";
String t40="ache";
String t41="ached";
String t42="aches";
String t43="achey";
String t44="aching";
String t45="acrid";
String t46="acridly";
String t47="acridness";
String t48="acrimonious";
String t49="acrimoniously";
String t50="acrimony";
String t51="adamant";
String t52="adamantly";
String t53="addict";
String t54="addicted";
String t55="addicting";
String t56="addicts";
String t57="admonish";
String t58="admonisher";
String t59="admonishingly";
String t60="admonishment";
String t61="admonition";
String t62="adulterate";
String t63="adulterated";
String t64="adulteration";
String t65="adulterier";
String t66="adversarial";
String t67="adversary";
String t68="adverse";
String t69="adversity";
String t70="afflict";
String t71="affliction";
String t72="afflictive";
String t73="affront";
String t74="afraid";
String t75="aggravate";
String t76="aggravating";
String t77="aggravation";
String t78="aggression";
String t79="aggressive";
String t80="aggressiveness";
String t81="aggressor";
String t82="aggrieve";
String t83="aggrieved";
String t84="aggrivation";
String t85="aghast";
String t86="agonies";
String t87="agonize";
String t88="agonizing";
String t89="agonizingly";
String t90="agony";
String t91="aground";
String t92="ail";
String t93="ailing";
String t94="ailment";
String t95="aimless";
String t96="alarm";
String t97="alarmed";
String t98="alarming";
String t99="alarmingly";
String t100="alienate";
String t101="alienated";
String t102="alienation";
String t103="allegation";
String t104="allegations";
String t105="allege";
String t106="allergic";
String t107="allergies";
String t108="allergy";
String t109="aloof";
String t110="altercation";
String t111="ambiguity";
String t112="ambiguous";
String t113="ambivalence";
String t114="ambivalent";
String t115="ambush";
String t116="amiss";
String t117="amputate";
String t118="anarchism";
String t119="anarchist";
String t120="anarchistic";
String t121="anarchy";
String t122="anemic";
String t123="anger";
String t124="angrily";
String t125="angriness";
String t126="angry";
String t127="anguish";
String t128="animosity";
String t129="annihilate";
String t130="annihilation";
String t131="annoy";
String t132="annoyance";
String t133="annoyances";
String t134="annoyed";
String t135="annoying";
String t136="annoyingly";
String t137="annoys";
String t138="anomalous";
String t139="anomaly";
String t140="antagonism";
String t141="antagonist";
String t142="antagonistic";
String t143="antagonize";
String t144="anti-american";
String t145="anti-israeli";
String t146="anti-occupation";
String t147="anti-proliferation";
String t148="anti-semites";
String t149="anti-social";
String t150="anti-us";
String t151="anti-white";
String t152="antipathy";
String t153="antiquated";
String t154="antithetical";
String t155="anxieties";
String t156="anxiety";
String t157="anxious";
String t158="anxiously";
String t159="anxiousness";
String t160="apathetic";
String t161="apathetically";
String t162="apathy";
String t163="apocalypse";
String t164="apocalyptic";
String t165="apologist";
String t166="apologists";
String t167="appal";
String t168="appall";
String t169="appalled";
String t170="appalling";
String t171="appallingly";
String t172="apprehension";
String t173="apprehensions";
String t174="apprehensive";
String t175="apprehensively";
String t176="arbitrary";
String t177="arcane";
String t178="archaic";
String t179="arduous";
String t180="arduously";
String t181="argumentative";
String t182="arrogance";
String t183="arrogant";
String t184="arrogantly";
String t185="ashamed";
String t186="asinine";
String t187="asininely";
String t188="asinininity";
String t189="askance";
String t190="asperse";
String t191="aspersion";
String t192="aspersions";
String t193="assail";
String t194="assassin";
String t195="assassinate";
String t196="assault";
String t197="assult";
String t198="astray";
String t199="asunder";
String t200="atrocious";
String t201="atrocities";
String t202="atrocity";
String t203="atrophy";
String t204="attack";
String t205="attacks";
String t206="audacious";
String t207="audaciously";
String t208="audaciousness";
String t209="audacity";
String t210="audiciously";
String t211="austere";
String t212="authoritarian";
String t213="autocrat";
String t214="autocratic";
String t215="avalanche";
String t216="avarice";
String t217="avaricious";
String t218="avariciously";
String t219="avenge";
String t220="averse";
String t221="aversion";
String t222="aweful";
String t223="awful";
String t224="awfully";
String t225="awfulness";
String t226="awkward";
String t227="awkwardness";
String t228="ax";
String t229="babble";
String t230="back-logged";
String t231="back-wood";
String t232="back-woods";
String t233="backache";
String t234="backaches";
String t235="backaching";
String t236="backbite";
String t237="backbiting";
String t238="backward";
String t239="backwardness";
String t240="backwood";
String t241="backwoods";
String t242="bad";
String t243="badly";
String t244="baffle";
String t245="baffled";
String t246="bafflement";
String t247="baffling";
String t248="bait";
String t249="balk";
String t250="banal";
String t251="banalize";
String t252="bane";
String t253="banish";
String t254="banishment";
String t255="bankrupt";
String t256="barbarian";
String t257="barbaric";
String t258="barbarically";
String t259="barbarity";
String t260="barbarous";
String t261="barbarously";
String t262="barren";
String t263="baseless";
String t264="bash";
String t265="bashed";
String t266="bashful";
String t267="bashing";
String t268="bastard";
String t269="bastards";
String t270="battered";
String t271="battering";
String t272="batty";
String t273="bearish";
String t274="beastly";
String t275="bedlam";
String t276="bedlamite";
String t277="befoul";
String t278="beg";
String t279="beggar";
String t280="beggarly";
String t281="begging";
String t282="beguile";
String t283="belabor";
String t284="belated";
String t285="beleaguer";
String t286="belie";
String t287="belittle";
String t288="belittled";
String t289="belittling";
String t290="bellicose";
String t291="belligerence";
String t292="belligerent";
String t293="belligerently";
String t294="bemoan";
String t295="bemoaning";
String t296="bemused";
String t297="bent";
String t298="berate";
String t299="bereave";
String t300="bereavement";
String t301="bereft";
String t302="berserk";
String t303="beseech";
String t304="beset";
String t305="besiege";
String t306="besmirch";
String t307="bestial";
String t308="betray";
String t309="betrayal";
String t310="betrayals";
String t311="betrayer";
String t312="betraying";
String t313="betrays";
String t314="bewail";
String t315="beware";
String t316="bewilder";
String t317="bewildered";
String t318="bewildering";
String t319="bewilderingly";
String t320="bewilderment";
String t321="bewitch";
String t322="bias";
String t323="biased";
String t324="biases";
String t325="bicker";
String t326="bickering";
String t327="bid-rigging";
String t328="bigotries";
String t329="bigotry";
String t330="bitch";
String t331="bitchy";
String t332="biting";
String t333="bitingly";
String t334="bitter";
String t335="bitterly";
String t336="bitterness";
String t337="bizarre";
String t338="blab";
String t339="blabber";
String t340="blackmail";
String t341="blah";
String t342="blame";
String t343="blameworthy";
String t344="bland";
String t345="blandish";
String t346="blaspheme";
String t347="blasphemous";
String t348="blasphemy";
String t349="blasted";
String t350="blatant";
String t351="blatantly";
String t352="blather";
String t353="bleak";
String t354="bleakly";
String t355="bleakness";
String t356="bleed";
String t357="bleeding";
String t358="bleeds";
String t359="blemish";
String t360="blind";
String t361="blinding";
String t362="blindingly";
String t363="blindside";
String t364="blister";
String t365="blistering";
String t366="bloated";
String t367="blockage";
String t368="blockhead";
String t369="bloodshed";
String t370="bloodthirsty";
String t371="bloody";
String t372="blotchy";
String t373="blow";
String t374="blunder";
String t375="blundering";
String t376="blunders";
String t377="blunt";
String t378="blur";
String t379="bluring";
String t380="blurred";
String t381="blurring";

String t382="blurs";
String t383="blurt";
String t384="boastful";
String t385="boggle";
String t386="bogus";
String t387="boil";
String t388="boiling";
String t389="boisterous";
String t390="bomb";
String t391="bombard";
String t392="bombardment";
String t393="bombastic";
String t394="bondage";
String t395="bonkers";
String t396="bore";
String t397="bored";
String t398="boredom";
String t399="bores";
String t400="boring";
String t401="botch";
String t402="bother";
String t403="bothered";
String t404="bothering";
String t405="bothers";
String t406="bothersome";
String t407="bowdlerize";
String t408="boycott";
String t409="braggart";
String t410="bragger";
String t411="brainless";
String t412="brainwash";
String t413="brash";
String t414="brashly";
String t415="brashness";
String t416="brat";
String t417="bravado";
String t418="brazen";
String t419="brazenly";
String t420="brazenness";
String t421="breach";
String t422="break";
String t423="break-up";
String t424="break-ups";
String t425="breakdown";
String t426="breaking";
String t427="breaks";
String t428="breakup";
String t429="breakups";
String t430="bribery";
String t431="brimstone";
String t432="bristle";
String t433="brittle";
String t434="broke";
String t435="broken";
String t436="broken-hearted";
String t437="brood";
String t438="browbeat";
String t439="bruise";
String t440="bruised";
String t441="bruises";
String t442="bruising";
String t443="brusque";
String t444="brutal";
String t445="brutalising";
String t446="brutalities";
String t447="brutality";
String t448="brutalize";
String t449="brutalizing";
String t450="brutally";
String t451="brute";
String t452="brutish";
String t453="loss";
String t454="buckle";
String t455="bug";
String t456="bugging";
String t457="buggy";
String t458="bugs";
String t459="bulkier";
String t460="bulkiness";
String t461="bulky";
String t462="bulkyness";
String t463="bottom";
String t464="hate";
String t465="worse";
String t466="negate";
String t467="wrong";
String t468="disgusting";
String t469="cunning";
String t470="bum";
String t471="bump";
String t472="bumped";
String t473="bumping";
String t474="bumpping";
String t475="bumps";
String t476="bumpy";
String t478="bungle";
String t479="bungler";
String t480="bungling";
String t481="bunk";
String t482="burden";
String t483="burdensome";
String t484="burdensomely";
String t485="burn";
String t486="burned";
String t487="burning";
String t488="burns";
String t489="bust";
String t491="busybody";
String t492="butcher";
String t493="butchery";
String t494="buzzing";
String t495="stop";
String t496="blurry";
String t497="abuse";
String t498="sell";
String t499="cut";
String t500="worst";
String t501="risks";
String t502="limited";
String t503="pressure";
String t504="lower";
String t505="weak";
String t506="fall";
String t507="lost";
String t508="below";
String t509="decline";
String t510="crumbling";
String t511="short";
String t512="reduce";
String t513="exit";
String t514="except";
String t515="terribly";
String t516="caution";
      	try 
	{
      		
      		int count=0,count1=0;
        
           String query="select * from review where category='"+x1+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		count++;
		
			
		
			 if (s5.indexOf(ta1)>=0 || s5.indexOf(ta2)>=0 
					 || s5.indexOf(t1)>=0 || s5.indexOf(t2)>=0 || s5.indexOf(t3)>=0  || s5.indexOf(t4)>=0  || s5.indexOf(t5)>=0 
					 || s5.indexOf(t6)>=0	|| s5.indexOf(t7)>=0 || s5.indexOf(t8)>=0 || s5.indexOf(t9)>=0 || s5.indexOf(t10)>=0  
					 || s5.indexOf(t11)>=0	|| s5.indexOf(t12)>=0 || s5.indexOf(t13)>=0 || s5.indexOf(t14)>=0 || s5.indexOf(t15)>=0  
					 || s5.indexOf(t16)>=0	|| s5.indexOf(t17)>=0 || s5.indexOf(t18)>=0 || s5.indexOf(t19)>=0 || s5.indexOf(t20)>=0 
					 || s5.indexOf(t21)>=0	|| s5.indexOf(t22)>=0 || s5.indexOf(t23)>=0 || s5.indexOf(t24)>=0 || s5.indexOf(t25)>=0
					 || s5.indexOf(t26)>=0	|| s5.indexOf(t27)>=0 || s5.indexOf(t28)>=0 || s5.indexOf(t29)>=0 || s5.indexOf(t30)>=0
					 || s5.indexOf(t31)>=0	|| s5.indexOf(t32)>=0 || s5.indexOf(t33)>=0 || s5.indexOf(t34)>=0 || s5.indexOf(t35)>=0
					 || s5.indexOf(t36)>=0	|| s5.indexOf(t37)>=0 || s5.indexOf(t38)>=0 || s5.indexOf(t39)>=0 || s5.indexOf(t40)>=0
					 || s5.indexOf(t41)>=0	|| s5.indexOf(t42)>=0 || s5.indexOf(t43)>=0 || s5.indexOf(t44)>=0 || s5.indexOf(t45)>=0
					 || s5.indexOf(t46)>=0	|| s5.indexOf(t47)>=0 || s5.indexOf(t48)>=0 || s5.indexOf(t49)>=0 || s5.indexOf(t50)>=0
					 || s5.indexOf(t51)>=0	|| s5.indexOf(t52)>=0 || s5.indexOf(t53)>=0 || s5.indexOf(t54)>=0 || s5.indexOf(t55)>=0
					 || s5.indexOf(t56)>=0	|| s5.indexOf(t57)>=0 || s5.indexOf(t58)>=0 || s5.indexOf(t59)>=0 || s5.indexOf(t60)>=0
					 || s5.indexOf(t61)>=0	|| s5.indexOf(t62)>=0 || s5.indexOf(t63)>=0 || s5.indexOf(t64)>=0 || s5.indexOf(t65)>=0
					 || s5.indexOf(t66)>=0	|| s5.indexOf(t67)>=0 || s5.indexOf(t68)>=0 || s5.indexOf(t69)>=0 || s5.indexOf(t70)>=0
					 || s5.indexOf(t71)>=0	|| s5.indexOf(t72)>=0 || s5.indexOf(t73)>=0 || s5.indexOf(t74)>=0 || s5.indexOf(t75)>=0
					 || s5.indexOf(t76)>=0	|| s5.indexOf(t77)>=0 || s5.indexOf(t78)>=0 || s5.indexOf(t79)>=0 || s5.indexOf(t80)>=0
					 || s5.indexOf(t81)>=0	|| s5.indexOf(t82)>=0 || s5.indexOf(t83)>=0 || s5.indexOf(t84)>=0 || s5.indexOf(t85)>=0
					 || s5.indexOf(t86)>=0	|| s5.indexOf(t87)>=0 || s5.indexOf(t88)>=0 || s5.indexOf(t89)>=0 || s5.indexOf(t90)>=0
					 || s5.indexOf(t91)>=0	|| s5.indexOf(t92)>=0 || s5.indexOf(t93)>=0 || s5.indexOf(t94)>=0 || s5.indexOf(t95)>=0
					 || s5.indexOf(t96)>=0	|| s5.indexOf(t97)>=0 || s5.indexOf(t98)>=0 || s5.indexOf(t99)>=0 || s5.indexOf(t100)>=0
					 || s5.indexOf(t101)>=0 || s5.indexOf(t102)>=0 || s5.indexOf(t103)>=0 || s5.indexOf(t104)>=0 || s5.indexOf(t105)>=0 
					 || s5.indexOf(t106)>=0	|| s5.indexOf(t107)>=0 || s5.indexOf(t108)>=0 || s5.indexOf(t109)>=0 || s5.indexOf(t110)>=0  
					 || s5.indexOf(t111)>=0	|| s5.indexOf(t112)>=0 || s5.indexOf(t113)>=0 || s5.indexOf(t114)>=0 || s5.indexOf(t115)>=0  
					 || s5.indexOf(t116)>=0	|| s5.indexOf(t117)>=0 || s5.indexOf(t118)>=0 || s5.indexOf(t119)>=0 || s5.indexOf(t120)>=0 
					 || s5.indexOf(t121)>=0	|| s5.indexOf(t122)>=0 || s5.indexOf(t123)>=0 || s5.indexOf(t124)>=0 || s5.indexOf(t125)>=0
					 || s5.indexOf(t126)>=0	|| s5.indexOf(t127)>=0 || s5.indexOf(t128)>=0 || s5.indexOf(t129)>=0 || s5.indexOf(t130)>=0
					 || s5.indexOf(t131)>=0	|| s5.indexOf(t132)>=0 || s5.indexOf(t133)>=0 || s5.indexOf(t134)>=0 || s5.indexOf(t135)>=0
					 || s5.indexOf(t136)>=0	|| s5.indexOf(t137)>=0 || s5.indexOf(t138)>=0 || s5.indexOf(t139)>=0 || s5.indexOf(t140)>=0
					 || s5.indexOf(t141)>=0	|| s5.indexOf(t142)>=0 || s5.indexOf(t143)>=0 || s5.indexOf(t144)>=0 || s5.indexOf(t145)>=0
					 || s5.indexOf(t146)>=0	|| s5.indexOf(t147)>=0 || s5.indexOf(t148)>=0 || s5.indexOf(t149)>=0 || s5.indexOf(t150)>=0
					 || s5.indexOf(t151)>=0	|| s5.indexOf(t152)>=0 || s5.indexOf(t153)>=0 || s5.indexOf(t154)>=0 || s5.indexOf(t155)>=0
					 || s5.indexOf(t156)>=0	|| s5.indexOf(t157)>=0 || s5.indexOf(t158)>=0 || s5.indexOf(t159)>=0 || s5.indexOf(t160)>=0
					 || s5.indexOf(t161)>=0	|| s5.indexOf(t162)>=0 || s5.indexOf(t163)>=0 || s5.indexOf(t164)>=0 || s5.indexOf(t165)>=0
					 || s5.indexOf(t166)>=0	|| s5.indexOf(t167)>=0 || s5.indexOf(t168)>=0 || s5.indexOf(t169)>=0 || s5.indexOf(t70)>=0
					 || s5.indexOf(t171)>=0	|| s5.indexOf(t172)>=0 || s5.indexOf(t173)>=0 || s5.indexOf(t174)>=0 || s5.indexOf(t175)>=0
					 || s5.indexOf(t176)>=0	|| s5.indexOf(t177)>=0 || s5.indexOf(t178)>=0 || s5.indexOf(t179)>=0 || s5.indexOf(t180)>=0
					 || s5.indexOf(t181)>=0	|| s5.indexOf(t182)>=0 || s5.indexOf(t183)>=0 || s5.indexOf(t184)>=0 || s5.indexOf(t185)>=0
					 || s5.indexOf(t186)>=0	|| s5.indexOf(t187)>=0 || s5.indexOf(t188)>=0 || s5.indexOf(t189)>=0 || s5.indexOf(t190)>=0
					 || s5.indexOf(t191)>=0	|| s5.indexOf(t192)>=0 || s5.indexOf(t193)>=0 || s5.indexOf(t194)>=0 || s5.indexOf(t195)>=0
					 || s5.indexOf(t196)>=0	|| s5.indexOf(t197)>=0 || s5.indexOf(t198)>=0 || s5.indexOf(t199)>=0 || s5.indexOf(t200)>=0
					 || s5.indexOf(t201)>=0 || s5.indexOf(t202)>=0 || s5.indexOf(t203)>=0 || s5.indexOf(t204)>=0 || s5.indexOf(t205)>=0 
					 || s5.indexOf(t206)>=0	|| s5.indexOf(t207)>=0 || s5.indexOf(t208)>=0 || s5.indexOf(t209)>=0 || s5.indexOf(t210)>=0  
					 || s5.indexOf(t211)>=0	|| s5.indexOf(t212)>=0 || s5.indexOf(t213)>=0 || s5.indexOf(t214)>=0 || s5.indexOf(t215)>=0  
					 || s5.indexOf(t216)>=0	|| s5.indexOf(t217)>=0 || s5.indexOf(t218)>=0 || s5.indexOf(t219)>=0 || s5.indexOf(t220)>=0 
					 || s5.indexOf(t221)>=0	|| s5.indexOf(t222)>=0 || s5.indexOf(t223)>=0 || s5.indexOf(t224)>=0 || s5.indexOf(t225)>=0
					 || s5.indexOf(t226)>=0	|| s5.indexOf(t227)>=0 || s5.indexOf(t228)>=0 || s5.indexOf(t229)>=0 || s5.indexOf(t230)>=0
					 || s5.indexOf(t231)>=0	|| s5.indexOf(t232)>=0 || s5.indexOf(t233)>=0 || s5.indexOf(t234)>=0 || s5.indexOf(t235)>=0
					 
					 || s5.indexOf(t236)>=0	|| s5.indexOf(t237)>=0 || s5.indexOf(t238)>=0 || s5.indexOf(t239)>=0 || s5.indexOf(t240)>=0
					 || s5.indexOf(t241)>=0	|| s5.indexOf(t242)>=0 || s5.indexOf(t243)>=0 || s5.indexOf(t244)>=0 || s5.indexOf(t245)>=0
					 || s5.indexOf(t246)>=0	|| s5.indexOf(t247)>=0 || s5.indexOf(t248)>=0 || s5.indexOf(t249)>=0 || s5.indexOf(t250)>=0
					 || s5.indexOf(t251)>=0	|| s5.indexOf(t252)>=0 || s5.indexOf(t253)>=0 || s5.indexOf(t254)>=0 || s5.indexOf(t255)>=0
					 || s5.indexOf(t256)>=0	|| s5.indexOf(t257)>=0 || s5.indexOf(t258)>=0 || s5.indexOf(t259)>=0 || s5.indexOf(t260)>=0
					 || s5.indexOf(t261)>=0	|| s5.indexOf(t262)>=0 || s5.indexOf(t263)>=0 || s5.indexOf(t264)>=0 || s5.indexOf(t265)>=0
					 || s5.indexOf(t266)>=0	|| s5.indexOf(t267)>=0 || s5.indexOf(t268)>=0 || s5.indexOf(t269)>=0 || s5.indexOf(t270)>=0
					 || s5.indexOf(t271)>=0	|| s5.indexOf(t272)>=0 || s5.indexOf(t273)>=0 || s5.indexOf(t274)>=0 || s5.indexOf(t275)>=0
					 || s5.indexOf(t276)>=0	|| s5.indexOf(t277)>=0 || s5.indexOf(t278)>=0 || s5.indexOf(t279)>=0 || s5.indexOf(t280)>=0
					 || s5.indexOf(t281)>=0	|| s5.indexOf(t282)>=0 || s5.indexOf(t283)>=0 || s5.indexOf(t284)>=0 || s5.indexOf(t285)>=0
					 || s5.indexOf(t286)>=0	|| s5.indexOf(t287)>=0 || s5.indexOf(t288)>=0 || s5.indexOf(t289)>=0 || s5.indexOf(t290)>=0
					 || s5.indexOf(t291)>=0	|| s5.indexOf(t292)>=0 || s5.indexOf(t293)>=0 || s5.indexOf(t294)>=0 || s5.indexOf(t295)>=0
					 || s5.indexOf(t296)>=0	|| s5.indexOf(t297)>=0 || s5.indexOf(t298)>=0 || s5.indexOf(t299)>=0 || s5.indexOf(t300)>=0
					 
					 || s5.indexOf(t301)>=0 || s5.indexOf(t302)>=0 || s5.indexOf(t303)>=0  || s5.indexOf(t304)>=0  || s5.indexOf(t305)>=0 
					 || s5.indexOf(t306)>=0	|| s5.indexOf(t307)>=0 || s5.indexOf(t308)>=0 || s5.indexOf(t309)>=0 || s5.indexOf(t310)>=0  
					 || s5.indexOf(t311)>=0	|| s5.indexOf(t312)>=0 || s5.indexOf(t313)>=0 || s5.indexOf(t314)>=0 || s5.indexOf(t315)>=0  
					 || s5.indexOf(t316)>=0	|| s5.indexOf(t317)>=0 || s5.indexOf(t318)>=0 || s5.indexOf(t319)>=0 || s5.indexOf(t320)>=0 
					 || s5.indexOf(t321)>=0	|| s5.indexOf(t322)>=0 || s5.indexOf(t323)>=0 || s5.indexOf(t324)>=0 || s5.indexOf(t325)>=0
					 || s5.indexOf(t326)>=0	|| s5.indexOf(t327)>=0 || s5.indexOf(t328)>=0 || s5.indexOf(t329)>=0 || s5.indexOf(t330)>=0
					 || s5.indexOf(t331)>=0	|| s5.indexOf(t332)>=0 || s5.indexOf(t333)>=0 || s5.indexOf(t334)>=0 || s5.indexOf(t335)>=0
					 || s5.indexOf(t336)>=0	|| s5.indexOf(t337)>=0 || s5.indexOf(t338)>=0 || s5.indexOf(t339)>=0 || s5.indexOf(t340)>=0
					 || s5.indexOf(t341)>=0	|| s5.indexOf(t342)>=0 || s5.indexOf(t343)>=0 || s5.indexOf(t344)>=0 || s5.indexOf(t345)>=0
					 || s5.indexOf(t346)>=0	|| s5.indexOf(t347)>=0 || s5.indexOf(t348)>=0 || s5.indexOf(t349)>=0 || s5.indexOf(t350)>=0
					 || s5.indexOf(t351)>=0	|| s5.indexOf(t352)>=0 || s5.indexOf(t353)>=0 || s5.indexOf(t354)>=0 || s5.indexOf(t355)>=0
					 || s5.indexOf(t356)>=0	|| s5.indexOf(t357)>=0 || s5.indexOf(t358)>=0 || s5.indexOf(t359)>=0 || s5.indexOf(t360)>=0
					 || s5.indexOf(t361)>=0	|| s5.indexOf(t362)>=0 || s5.indexOf(t363)>=0 || s5.indexOf(t364)>=0 || s5.indexOf(t365)>=0
					 || s5.indexOf(t366)>=0	|| s5.indexOf(t367)>=0 || s5.indexOf(t368)>=0 || s5.indexOf(t369)>=0 || s5.indexOf(t370)>=0
					 || s5.indexOf(t371)>=0	|| s5.indexOf(t372)>=0 || s5.indexOf(t373)>=0 || s5.indexOf(t374)>=0 || s5.indexOf(t375)>=0
					 || s5.indexOf(t376)>=0	|| s5.indexOf(t377)>=0 || s5.indexOf(t378)>=0 || s5.indexOf(t379)>=0 || s5.indexOf(t80)>=0
					 || s5.indexOf(t381)>=0	|| s5.indexOf(t382)>=0 || s5.indexOf(t383)>=0 || s5.indexOf(t384)>=0 || s5.indexOf(t385)>=0
					 || s5.indexOf(t386)>=0	|| s5.indexOf(t387)>=0 || s5.indexOf(t388)>=0 || s5.indexOf(t389)>=0 || s5.indexOf(t390)>=0
					 || s5.indexOf(t391)>=0	|| s5.indexOf(t392)>=0 || s5.indexOf(t393)>=0 || s5.indexOf(t394)>=0 || s5.indexOf(t395)>=0
					 || s5.indexOf(t396)>=0	|| s5.indexOf(t397)>=0 || s5.indexOf(t398)>=0 || s5.indexOf(t399)>=0 || s5.indexOf(t400)>=0 
					 || s5.indexOf(t401)>=0 || s5.indexOf(t402)>=0 || s5.indexOf(t403)>=0  || s5.indexOf(t404)>=0  || s5.indexOf(t405)>=0 
					 || s5.indexOf(t406)>=0	|| s5.indexOf(t407)>=0 || s5.indexOf(t408)>=0 || s5.indexOf(t409)>=0 || s5.indexOf(t410)>=0  
					 || s5.indexOf(t411)>=0	|| s5.indexOf(t412)>=0 || s5.indexOf(t413)>=0 || s5.indexOf(t414)>=0 || s5.indexOf(t415)>=0  
					 || s5.indexOf(t416)>=0	|| s5.indexOf(t417)>=0 || s5.indexOf(t418)>=0 || s5.indexOf(t419)>=0 || s5.indexOf(t420)>=0 
					 || s5.indexOf(t421)>=0	|| s5.indexOf(t422)>=0 || s5.indexOf(t423)>=0 || s5.indexOf(t424)>=0 || s5.indexOf(t425)>=0
					 || s5.indexOf(t426)>=0	|| s5.indexOf(t427)>=0 || s5.indexOf(t428)>=0 || s5.indexOf(t429)>=0 || s5.indexOf(t430)>=0
					 || s5.indexOf(t431)>=0	|| s5.indexOf(t432)>=0 || s5.indexOf(t433)>=0 || s5.indexOf(t434)>=0 || s5.indexOf(t435)>=0
					 || s5.indexOf(t436)>=0	|| s5.indexOf(t437)>=0 || s5.indexOf(t438)>=0 || s5.indexOf(t439)>=0 || s5.indexOf(t440)>=0
					 || s5.indexOf(t441)>=0	|| s5.indexOf(t442)>=0 || s5.indexOf(t443)>=0 || s5.indexOf(t444)>=0 || s5.indexOf(t445)>=0
					 || s5.indexOf(t446)>=0	|| s5.indexOf(t447)>=0 || s5.indexOf(t448)>=0 || s5.indexOf(t449)>=0 || s5.indexOf(t450)>=0
					 || s5.indexOf(t451)>=0	|| s5.indexOf(t452)>=0 || s5.indexOf(t453)>=0 || s5.indexOf(t454)>=0 || s5.indexOf(t455)>=0
					 || s5.indexOf(t456)>=0	|| s5.indexOf(t457)>=0 || s5.indexOf(t458)>=0 || s5.indexOf(t459)>=0 || s5.indexOf(t460)>=0
					 || s5.indexOf(t461)>=0	|| s5.indexOf(t462)>=0 || s5.indexOf(t463)>=0 || s5.indexOf(t464)>=0 || s5.indexOf(t465)>=0
					 || s5.indexOf(t466)>=0	|| s5.indexOf(t467)>=0 || s5.indexOf(t468)>=0 || s5.indexOf(t469)>=0 || s5.indexOf(t470)>=0
					 || s5.indexOf(t471)>=0	|| s5.indexOf(t472)>=0 || s5.indexOf(t473)>=0 || s5.indexOf(t474)>=0 || s5.indexOf(t475)>=0
					 || s5.indexOf(t476)>=0	|| s5.indexOf(t497)>=0 || s5.indexOf(t478)>=0 || s5.indexOf(t479)>=0 || s5.indexOf(t480)>=0
					 || s5.indexOf(t481)>=0	|| s5.indexOf(t482)>=0 || s5.indexOf(t483)>=0 || s5.indexOf(t484)>=0 || s5.indexOf(t485)>=0
					 || s5.indexOf(t486)>=0	|| s5.indexOf(t487)>=0 || s5.indexOf(t488)>=0 || s5.indexOf(t489)>=0 || s5.indexOf(t491)>=0
					 || s5.indexOf(t491)>=0	|| s5.indexOf(t492)>=0 || s5.indexOf(t493)>=0 || s5.indexOf(t494)>=0 || s5.indexOf(t495)>=0
					 || s5.indexOf(t496)>=0	|| s5.indexOf(t497)>=0 || s5.indexOf(t498)>=0 || s5.indexOf(t499)>=0 || s5.indexOf(t500)>=0 
					 || s5.indexOf(t501)>=0 || s5.indexOf(t502)>=0 || s5.indexOf(t503)>=0 || s5.indexOf(t504)>=0 || s5.indexOf(t505)>=0
					 || s5.indexOf(t506)>=0 || s5.indexOf(t507)>=0 || s5.indexOf(t508)>=0 || s5.indexOf(t509)>=0 || s5.indexOf(t510)>=0
					 || s5.indexOf(t511)>=0 || s5.indexOf(t512)>=0 || s5.indexOf(t513)>=0 || s5.indexOf(t514)>=0 || s5.indexOf(t515)>=0
					 || s5.indexOf(t516)>=0 
					 
			 )  {
			        
				 count1++;
		    	 %>

		    	 <table width="669" border="0" align="center">
		    	   <tr>
		    	     <td width="179"><div align="left" class="style6">Comapny ID</div></td>
		    	     <td width="480"><%=i%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Sector </div></td>
		    	     <td><%=s2%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Company Name </div></td>
		    	     <td><%=s3%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Reviewed By</div></td>
		    	     <td><%=s4%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Details</div></td>
		    	     <td><%=s5%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Date and Time</div></td>
		    	     <td><%=s6%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">View the Company Details </div></td>
		    	     <td><div align="left"><a href="details1.jsp?id=<%=i%>"><strong>View&nbsp;</strong></a></div></td>
		    	   </tr>
		    	   
		    	 </table>

		    	 <p>&nbsp;</p>
		    	 <p align="center">

		    	   <%
		    	   out.println("------------------------------------------------------------------------------------------------------------");
		    }
	
		  

	 }
	
	
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery("select * from neg where category='"+x1+"' ");
	
	if(rs2.next()==true)
	{
		Statement st1=connection.createStatement();
	    st1.executeUpdate("update neg set total='"+count+"', neg='"+count1+"' where category='"+x1+"' ");
	}
	else
	{
		Statement st1=connection.createStatement();
	    st1.executeUpdate("insert into neg values('"+x1+"','"+count+"','"+count1+"')");
	}
	
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</p>
<p>&nbsp;</p>
</body>
</html>