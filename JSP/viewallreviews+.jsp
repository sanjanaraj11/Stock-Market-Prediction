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
<div align="center" class="style1">Reviewed Details...!</div>
<p align="center"><img src="Reviews.jpg" width="301" height="121"></p>


<%
		String x1=request.getParameter("s1");

	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
	 //String TYPES[]={"Blady","Abundant","Accomplished","Achieving","Active","Admirable","Adorable","Adventurous","Admired","Affluent","Agreeable","Alert","Aligned","Alive","Amazing","Appealing","Appreciate","Artistic","Astounding","Astute","Attentive","Attractive","Auspicious","Authentic","Awake","Aware","Beaming","Beautiful","Best","Blessed","Bliss","Bold","Bright","Brilliant","Brisk","Buoyant","Calm","Capable","Centered","Certain","Charming","Cheerful","Clear","Clever","Competent","Complete","Confident","Connected","Conscious","Considerate","Convenient","Courageous","Creative","Daring","Dazzling","Delicious","Delightful","Desirable","Determined","Diligent","Discerning","Discover","Dynamic","Eager","Easy","Efficent","Effortless","Elegant","Eloquent","Energetic","Endless","Enhancing","Engaging","Enormous","Enterprising","Enthusiastic","Enticing","Excellent","Exceptional","Exciting","Experienced","Exquisite","Fabulous","Fair","Far-Sighted","Fascinating","Fine","Flattering","Flourishing","Fortunate","Free","Friendly","Fulfilled","Fun","Generous","Genuine","Gifted","Glorious","Glowing","Good","Good-Looking","Gorgeous","Graceful","Gracious","Grand","Great","Handsome","Happy","Hardy","Harmonious","Healed","Healthy","Helpful","Honest","Humorous","Ideal","Imaginative","Impressive","Industrious","Ingenious","Innovative","Inspired","Intelligent","Interested","Interesting","Intuitive","Inventive","Invincible","Inviting","Irresistible","Joyous","Judicious","Keen","King","Knowing","Limitless","Lively","Loving","Lucky","Luminous","Magical","Magnificent","Marvelous","Masterful","Mighty","Miraculous","Motivated","Natural","Neat","Nice","Nurturing","Noble","Optimistic","Outstanding","Passionate","Peaceful","Perfect","Persevering","Persistent","Playful","Pleasing","Plentiful","Positive","Powerful","Prepared","Productive","Profound","Prompt","Prosperous","Proud","Qualified","Quick","Radiant","Reasonable","Refined","Refreshing","Relaxing","Reliable","Remarkable","Resolute","Resourceful","Respected","Rewarding","Robust","Safe","Satisfied","Secure","Seductive","Self-Reliant","Sensational","Sensible","Sensitive","Serene","Sharing","Skillful","Smart","Smashing","Smooth","Sparkling","Spiritual","Splendid","Strong","Stunning","Successful","Superb","Swift","Talented","Tenacious","Terrific","Thankful","Thrilling","Thriving","Timely","Trusting","Truthful","Ultimate","Youthful","Young","Worthy","Wonderful","Unique","Valiant","Valuable","Versatile","Vibrant","Victorious","Vigorous","Vivacious","Vivid","Warm","Wealthy","Well","Whole","Wise","Zeal","Zest"};
String TYPES[]={"good","fine"};
String ta1="good";
String ta2="fine";
String t1="abundant";
			 	String t2="accomplished";
			 	String t3="achieving";
			 	String t4="active";
			 	String t5="admirable";
			 	String t6="admirable";
			 	String t7="adventurous";
			 	String t8="admired";
			 	String t9="affluent";
			 	String t10="agreeable";
			 	String t11="alert";
			 	String t12="aligned";
			 	String t13="alive";
			 	String t14="amazing";
			 	String t15="appealing";
			 	String t16="appreciate";
			 	String t17="artistic";
			 	String t18="astounding";
			 	String t19="astute";
			 	String t20="attentive";
			 	String t21="attractive";
			 	String t22="auspicious";
			 	String t23="authentic";
			 	String t24="awake";
			 	String t25="aware";
			 	String t26="beaming";
			 	String t27="eautiful";
			 	String t28="bBest";
			 	String t29="blessed";
			 	String t30="bliss";
			 	String t31="bold";
			 	String t32="bright";
			 	String t33="brilliant";
			 	String t34="brisk";
			 	String t35="buoyant";
			 	String t36="calm";
			 	String t37="capable";
			 	String t38="centered";
			 	String t39="certain";
			 	String t40="charming";
			 	String t41="cheerful";
			 	String t42="clear";
			 	String t43="clever";
			 	String t44="competent";
			 	String t45="complete";
			 	String t46="confident";
			 	String t47="connected";
			 	String t48="conscious";
			 	String t49="considerate";
			 	String t50="convenient";
			 	String t51="courageous";
			 	String t52="creative";
			 	String t53="daring";
			 	String t54="dazzling";
			 	String t55="delicious";
			 	String t56="delightful";
			 	String t57="desirable";
			 	String t58="determined";
			 	String t59="diligent";
			 	String t60="discerning";
			 	String t61="discover";
			 	String t62="dynamic";
			 	String t63="eager";
			 	String t64="easy";
			 	String t65="efficient";
			 	String t66="effortless";
			 	String t67="elegant";
			 	String t68="eloquent";
			 	String t69="energetic";
			 	String t70="endless";
			 	String t71="enhancing";
			 	String t72="engaging";
			 	String t73="enormous";
			 	String t74="enterprising";
			 	String t75="enthusiastic";
			 	String t76="enticing";
			 	String t77="excellent";
			 	String t78="exceptional";
			 	String t79="exciting";
			 	String t80="experienced";
			 	String t81="exquisite";
			 	String t82="fabulous";
			 	String t83="fair";
			 	String t84="far-Sighted";
			 	String t85="fascinating";
			 	String t86="fine";
			 	String t87="flattering";
			 	String t88="flourishing";
			 	String t89="fortunate";
			 	String t90="free";
			 	String t91="friendly";
			 	String t92="fulfilled";
			 	String t93="fun";
			 	String t94="generousGenuine";
			 	String t95="gifted";
			 	String t96="glorious";
			 	String t97="glowing";
			 	String t98="good";
			 	String t99="good-Looking";
			 	String t100="gorgeous";
			 	String t101="graceful";
			 	String t102="gracious";
			 	String t103="grand";
			 	String t104="great";
			 	String t105="handsome";
			 	String t106="happy";
			 	String t107="hardy";
			 	String t108="harmonious";
			 	String t109="healed";
			 	String t110="healthy";
			 	String t111="helpful";
			 	String t112="honest";
			 	String t113="humorous";
			 	String t114="ideal";
			 	String t115="imaginative";
			 	String t116="impressive";
			 	String t117="industrious";
			 	String t118="ingenious";
			 	String t119="innovative";
			 	String t120="inspired";
			 	String t121="intelligent";
			 	String t122="interested";
			 	String t123="interesting";
			 	String t124="intuitive";
			 	String t125="inventive";
			 	String t126="invincible";
			 	String t127="inviting";
			 	String t128="irresistible";
			 	String t129="joyous";
			 	String t130="judicious";
			 	String t131="jeen";
			 	String t132="kind";
			 	String t133="knowing";
			 	String t134="limitless";
			 	String t135="lively";
			 	String t136="loving";
			 	String t137="lucky";
			 	String t138="luminous";
			 	String t139="magical";
			 	String t140="magnificent";
			 	String t141="marvelous";
			 	String t142="masterful";
			 	String t143="mighty";
			 	String t144="miraculous";
			 	String t145="motivated";
			 	String t146="natural";
			 	String t147="neat";
			 	String t148="nice";
			 	String t149="nurturing";
			 	String t150="noble";
			 	String t151="optimistic";
			 	String t152="outstanding";
			 	String t153="passionate";
			 	String t154="peaceful";
			 	String t155="perfect";
			 	String t156="persevering";
			 	String t157="persistent";
			 	String t158="playful";
			 	String t159="pleasing";
			 	String t160="plentiful";
			 	String t161="positive";
			 	String t162="powerful";
			 	String t163="precious";
			 	String t164="prepared";
			 	String t165="productive";
			 	String t166="profound";
			 	String t167="prompt";
			 	String t168="prosperous";
			 	String t169="proud";
			 	String t170="qualified";
			 	String t171="quick";
			 	String t172="radiant";
			 	String t173="reasonable";
			 	String t174="refined";
			 	String t175="refreshing";
			 	String t176="relaxing";
			 	String t177="reliable";
			 	String t178="remarkable";
			 	String t179="resolute";
			 	String t180="resourceful";
			 	String t181="respected";
			 	String t182="rewarding";
			 	String t183="robust";
			 	String t184="safe";
			 	String t185="satisfied";
			 	String t186="secure";
			 	String t187="seductive";
			 	String t188="self-Reliant";
			 	String t189="sensational";
			 	String t190="sensible";
			 	String t191="sensitive";
			 	String t192="serene";
			 	String t193="sharing";
			 	String t194="skillful";
			 	String t195="smart";
			 	String t196="smashing";
			 	String t197="smooth";
			 	String t198="sparkling";
			 	String t199="spiritual";
			 	String t200="splendid";
			 	String t201="strong";
			 	String t202="stunning";
			 	String t203="successful";
			 	String t204="superb";
			 	String t205="swift";
			 	String t206="talented";
			 	String t207="tenacious";
			 	String t208="terrific";
			 	String t209="thankful";
			 	String t210="thrilling";
			 	String t211="thriving";
			 	String t212="timely";
			 	String t213="trusting";
			 	String t214="truthful";
			 	String t215="ultimate";
			 	String t216="unique";
			 	String t217="valiant";
			 	String t218="valuable";
			 	String t219="versatile";
			 	String t220="vibrant";
			 	String t221="victorious";
			 	String t222="vigorous";
			 	String t223="vivacious";
			 	String t224="vivid";
			 	String t225="warm";
			 	String t226="wealthy";
			 	String t227="well";
			 	String t228="whole";
			 	String t229="wise";
			 	String t230="wonderful";
			 	String t231="worthy";
			 	String t232="zeal";
			 	String t233="young";
			 	String t234="youthful";
			 	String t235="zest";
			 	String t236="buy";
			 	String t237="gain";
			 	String t238="rise";
			 	String t239="star";
			 	String t240="surges";
			 	String t241="recommended";
			 	String t242="strong";
			 	String t243="accumulate";
			 	String t244="hold";
			 	String t245="grow";
			 	String t246="increase";
			    String t247="rallies";
			    String t248="safe";
				String t249="up";
				String t250="long";
				String t251="top";
				String t252="term";
				String t253="invest";
				String t254="add";
				String t255="stay";
				String t256="pick";
				String t257="neutral";
				String t258="prefer";
				String t259="high";
				String t260="go";
				String t261="profit";
				String t262="recommend";
				String t263="retain";
				String t264="runner";
				String t265="frontline";
				String t266="going";
				String t267="remain";
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
					 || s5.indexOf(t236)>=0 || s5.indexOf(t237)>=0 || s5.indexOf(t238)>=0 || s5.indexOf(t239)>=0 || s5.indexOf(t240)>=0
					 || s5.indexOf(t241)>=0 || s5.indexOf(t242)>=0 || s5.indexOf(t243)>=0 || s5.indexOf(t244)>=0 || s5.indexOf(t245)>=0
					 || s5.indexOf(t246)>=0 || s5.indexOf(t247)>=0 || s5.indexOf(t248)>=0 || s5.indexOf(t249)>=0 || s5.indexOf(t250)>=0
					 || s5.indexOf(t251)>=0 || s5.indexOf(t252)>=0 || s5.indexOf(t253)>=0 || s5.indexOf(t254)>=0 || s5.indexOf(t255)>=0
					 || s5.indexOf(t256)>=0 || s5.indexOf(t257)>=0 || s5.indexOf(t258)>=0 || s5.indexOf(t259)>=0 || s5.indexOf(t260)>=0
					 || s5.indexOf(t261)>=0 || s5.indexOf(t262)>=0 || s5.indexOf(t263)>=0 || s5.indexOf(t264)>=0 || s5.indexOf(t265)>=0
					 || s5.indexOf(t266)>=0 || s5.indexOf(t267)>=0
					 
			 )  {
			        
				 count1++;
		    	 %>

		    	 <table width="669" border="0" align="center">
		    	   <tr>
		    	     <td width="179"><div align="left" class="style6">Company ID</div></td>
		    	     <td width="480"><%=i%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Sector</div></td>
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
		    	     <td><div align="left" class="style6">Review</div></td>
		    	     <td><%=s5%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">Date and Time</div></td>
		    	     <td><%=s6%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style6">View the Company Details</div></td>
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
	ResultSet rs2=st2.executeQuery("select * from pos where category='"+x1+"' ");
	
	if(rs2.next()==true)
	{
		Statement st1=connection.createStatement();
	    st1.executeUpdate("update pos set total='"+count+"', pos='"+count1+"' where category='"+x1+"' ");
	}
	else
	{
		Statement st1=connection.createStatement();
	    st1.executeUpdate("insert into pos values('"+x1+"','"+count+"','"+count1+"')");
	}
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