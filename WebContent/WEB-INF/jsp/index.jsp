<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>大数据舆情分析系统</title>
<meta name="description"
	content="Welcome to the wedding website for Sarah and Brad's Big Day!">

<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<!-- For iPhone 4 with high-resolution Retina display: -->
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="apple-touch-icon-114x114-precomposed.png">
<!-- For first-generation iPad: -->
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="apple-touch-icon-72x72-precomposed.png">
<!-- For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
<link rel="apple-touch-icon-precomposed"
	href="apple-touch-icon-precomposed.png">

<link rel="shortcut icon" href="favicon.ico?v=1">

<link rel="stylesheet" href="css/normalize.min.css">
<link rel="stylesheet" href="css/main-1.6.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>


<!-- 不规则新闻CSS -->
<style type="text/css">
.DisOrder_news1 {
	transform: rotate(2deg);
	-moz-transform: rotate(2deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(2deg); /* Safari和Chrome */
	-ms-transform: rotate(2deg); /* IE 9 */
	-o-transform: rotate(2deg); /* Opera */
}

.DisOrder_news2, .DisOrder_news3 {
	transform: rotate(5deg);
	-moz-transform: rotate(5deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(5deg); /* Safari和Chrome */
	-ms-transform: rotate(5deg); /* IE 9 */
	-o-transform: rotate(5deg); /* Opera */
}

.DisOrder_news4 {
	transform: rotate(-2deg);
	-moz-transform: rotate(-2deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(-2deg); /* Safari和Chrome */
	-ms-transform: rotate(-2deg); /* IE 9 */
	-o-transform: rotate(-2deg); /* Opera */
}

.DisOrder_news7 {
	transform: rotate(2deg);
	-moz-transform: rotate(2deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(2deg); /* Safari和Chrome */
	-ms-transform: rotate(2deg); /* IE 9 */
	-o-transform: rotate(2deg); /* Opera */
}

.DisOrder_news8 {
	transform: rotate(3deg);
	-moz-transform: rotate(3deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(3deg); /* Safari和Chrome */
	-ms-transform: rotate(3deg); /* IE 9 */
	-o-transform: rotate(3deg); /* Opera */
}

.DisOrder_news9 {
	transform: rotate(-3deg);
	-moz-transform: rotate(-3deg);
	/* Firefox 旋转属性，参数表示角度(deg表示角度)，负数逆时针，正数顺时针 */
	-webkit-transform: rotate(-3deg); /* Safari和Chrome */
	-ms-transform: rotate(-3deg); /* IE 9 */
	-o-transform: rotate(-3deg); /* Opera */
}
</style>



</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please upgrade your browser</a> or activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

	<!--         <div id="bg-image"> -->
	<!--             <img src="img/bg-pic.jpg"alt="bg" /> -->
	<!--         </div> -->

	<div style="width: 0px; height: 0px;">
		<img src="img/bg-pic.jpg"
			style="width: 100%; height: 100%; position: fixed;" />
	</div>
	<div id="bg-container">

		<div class="header-container">
			<div id="heading" class="wrapper clearfix">
				<nav id="nav">
					<ul>
						<li><a href="#brideandgroom">今日新闻</a></li>
						<li><a href="#wedding">今日热度</a></li>
						<li><a href="#accomodations">今日舆情</a></li>
						<li><a href="#registry">REGISTRY</a></li>
						<li><a href="http//www.zjf88.com" target="_blank">BLOG</a></li>
					</ul>

				</nav>
			</div>
		</div>

		<div class="main-container">
			<div class="main wrapper clearfix">

				<header>
					<div id="introtext">
						<span class="head-sarah"
							style="font-size: 7em; filter: shadow(color = #9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书"><font>热度</font></span>
						<span class="head-brad"
							style="font-size: 7em; filter: shadow(color = #9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书">&nbsp;
							<span class="amp">&amp;</span> 舆情
						</span>
						<div class="date">
							<span id="time"></span>
						</div>

					</div>

					<!-- 自动更新的时间 -->
					<script type="text/javascript">
						var dt = new Date();
						var m = new Array("January", "February", "March",
								"April", "May", "June", "July", "August",
								"September", "October", "November", "December");

						var d = new Array("st", "nd", "rd", "th");
						mn = dt.getMonth();
						wn = dt.getDay();
						dn = dt.getDate();
						var dns;
						if (((dn % 10) < 1) || ((dn % 10) > 3)) {
							dns = d[3];
						} else {
							dns = d[(dn % 10) - 1];
							if ((dn == 11) || (dn == 12)) {
								dns = d[3];
							}
						}
						var str = (m[mn] + " " + dn + dns + " " + ", " + dt
								.getFullYear());
						document.getElementById("time").innerHTML = str;
					</script>

				</header>

				<div class="clearfix"></div>

				<section id="brideandgroom" class="clearfix">
					<span class="head-sarah"
						style="filter: shadow(color = #9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书"><h2>今日新闻</h2></span>
					<!-- 整齐的 样式-->
					<div class="column left">
						<font size="+1">
							<ul>
								<c:forEach var="news" items="${newsList}">
								<li><a href="${news.URL } "target="blank">${news.title }</a></li>
								</c:forEach>
							</ul>
						</font>

					</div>
					<!--end column-->

					<!-- 杂乱的 样式-->
					<div class="column right">
						<font size="+1">
							<ul>
								<!-- 新闻 -->
							</ul>
						</font>

					</div>
					<!--end column-->

					<div class="clearfix"></div>

					<div class="column full">
						<div class="hr-t"></div>
						<div class="hr-b"></div>
					</div>



				</section>

				<script>
				<!--left p-->
					(function() {
						window.onload = function() {

							//数据源  
							var dict = [ {
								x : "2015-04-24",
								y : 13400
							}, {
								x : "2015-04-25",
								y : 13380
							}, {
								x : "2015-04-26",
								y : 13370
							}, {
								x : "2015-04-27",
								y : 13370
							}, {
								x : "2015-04-28",
								y : 13380
							} ]

							//数据源提取  
							var len = dict.length;
							var xArr = [], yArr = [], tmp_yArr = [];
							for (var i = 0; i < len; i++) {
								xArr.push(i * 60);
								tmp_yArr.push(dict[i].y);
							}
							var tmp_minY = Math.min.apply(Math, tmp_yArr);//最小值  
							var tmp_maxY = Math.max.apply(Math, tmp_yArr);//最大值  
							if (tmp_maxY - tmp_minY <= 100) {
								for (var i = 0; i < len; i++) {
									yArr.push(tmp_yArr[i] - tmp_minY + 50);//与最小的做比较  
								}
							} else {//如果相差太大会导致图表不美观  
								for (var i = 0; i < len; i++) {
									yArr.push(tmp_yArr[i] / 500);
								}
							}
							var minY = Math.min.apply(Math, yArr);
							var maxY = Math.max.apply(Math, yArr);

							//canvas 准备  
							var canvas = document.getElementById("cv");//获取canvas画布  
							var ctx = canvas.getContext("2d");

							//画折线  
							for (var i = 0; i < len; i++) {
								var x = xArr[i];
								var y = maxY - yArr[i] + minY;
								if (i === 0) {
									ctx.moveTo(x, y);
								} else {
									ctx.lineTo(x, y);
								}
							}
							ctx.stroke();

							//画点  
							for (var i = 0; i < len; i++) {
								var x = xArr[i];
								var y = maxY - yArr[i] + minY;
								var xMemo = dict[i].x;
								var yMemo = dict[i].y;
								ctx.beginPath();
								ctx.fillStyle = "#000000";
								ctx.arc(x, y, 2, 0, 2 * Math.PI);//画点  
								ctx.fill();
								ctx.fillText(yMemo, x + 3, y - 10);
								ctx.fillText(xMemo, x + 3, canvas.height - 10,
										40);//画文字  
							}

						}
					})();
				</script>

				<section id="wedding" class="clearfix">

					<h1>Wedding</h1>

					<div style="width: 100%; float: left">
						<div id="wrapper">
							<div style="text-align: center; clear: both;">
								<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
								<script src="/follow.js" type="text/javascript"></script>
							</div>
							<div id="content">
								<ul id="bar">
									<li id="iphone">
										<div class="bottom">
											<div class="infobox">
												<h3>iPhone</h3>
												<p>80,1</p>
											</div>
										</div>
									</li>
									<li id="macbook">
										<div class="bottom">
											<div class="infobox">
												<h3>MacBook</h3>
												<p>102,6</p>
											</div>
										</div>
									</li>
									<li id="ipod">
										<div class="bottom">
											<div class="infobox">
												<h3>iPod</h3>
												<p>198,4</p>
											</div>
										</div>
									</li>
									<li id="cinema">
										<div class="bottom">
											<div class="infobox">
												<h3>Cinema&nbsp;Display</h3>
												<p>38,2</p>
											</div>
										</div>
									</li>
									<li id="macmini">
										<div class="bottom">
											<div class="infobox">
												<h3>Mac&nbsp;Mini</h3>
												<p>55,6</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>



					</div>
					<!--end column-->


					<h2>BRIDAL PARTY</h2>

					<div class="column left bp">

						<h2>Bridesmaids</h2>
						<div class="column left">
							<p>
								Coming Soon!<br />
							</p>
						</div>
						<div class="column right">
							<p></p>
						</div>

					</div>
					<!--end column-->
					<div class="column right bp">

						<h2>Groomsmen</h2>
						<div class="column left">
							<p>
								Coming Soon!<br />
							</p>
						</div>
						<div class="column right">
							<p></p>
						</div>

					</div>
					<!--end column-->
				</section>

				<section id="accomodations" class="clearfix">

					<h1>Accomodations</h1>

					<div class="column left">

						<h2>HOTELS</h2>
						<p>
							(At the venue) <br /> The Inn at Rancho Santa Fe <br /> 5951
							Linea Del Cielo <br /> Rancho Santa Fe, CA 92067 <br /> <a
								href="tel:1-858-756-1131">(858) 756-1131</a> <br /> $279 <br />
							- <br /> Morgan Run Resort &amp; Club (1.9 miles away) <br />
							5690 Cancha De Golf <br /> Rancho Santa Fe, CA 92091 <br /> <a
								href="tel:1-866-599-6674">(866) 599-6674</a> <br /> $90 <br />
							- <br /> (Closer to the beach) <br /> Courtyard San Diego
							Solana Beach/Del Mar (4.5 miles away) <br /> 717 S Hwy 101 <br />
							Solana Beach, CA <br /> <a href="tel:1-858-792-8200">(858)
								792-8200</a> <br /> $109 <br />
						</p>
					</div>
					<!--end column-->

					<div class="column right">
						<h2>DIRECTIONS</h2>
						<p>
							Northbound from San Diego <br /> <br /> Take Interstate 5 North
							to the Villa de La Valle exit #36. Turn right (east) onto Via de
							La Valle, and proceed for 4 miles. After crossing La Gracia, turn
							left on Via de Santa Fe following the signs to Rancho Santa Fe.
							At the first stop sign, turn left onto Paseo Delicias and drive 2
							blocks to a five way stop. Take a slight right onto Linea del
							Cielo and proceed for one block. The Inn is located on the left
							side of the road at 5951 Linea del Cielo. <br /> <br />
							Southbound from LA, Riverside &amp; OC<br /> <br /> Take
							Interstate 5 South to the Lomas Santa Fe exit #37. Turn left
							(east) onto Lomas Santa Fe, and proceed 4.5 miles. The road name
							will change to Linea Del Cielo. The Inn is located on the right
							side of the road at 5951 Linea del Cielo. <br />
						</p>

					</div>
					<!--end column-->

					<div class="clearfix"></div>

					<div class="column full">
						<div class="hr-t"></div>
						<div class="hr-b"></div>
					</div>

					<div class="column full">

						<h2>VICINITY MAP</h2>

						<div id="gmap">
							<iframe
								src="https//maps.google.com/maps/ms?msid=205751736116737027595.0004d416d6aa1647722db&amp;msa=0&amp;ie=UTF8&amp;t=m&amp;ll=32.91418,-116.982422&amp;spn=0.806997,1.167297&amp;z=9&amp;output=embed"></iframe>
							<br /> <small><a
								href="https//maps.google.com/maps/ms?msid=205751736116737027595.0004d416d6aa1647722db&amp;msa=0&amp;ie=UTF8&amp;t=m&amp;ll=32.91418,-116.982422&amp;spn=0.806997,1.167297&amp;z=9&amp;output=embed"
								target="_blank">View larger map</a></small>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="column full">
						<div class="hr-t"></div>
						<div class="hr-b"></div>
					</div>

					<div class="column full">
						<h2>ABOUT RANCHO SANTA FE</h2>
						<p>Choose to relax and soak up the California sunshine at the
							resort's pool, or meander across the street to explore the
							boutiques, jewelry stores, restaurants and antique shops at The
							Village of Rancho Santa Fe (fondly referred to as "The Village"
							by the residents). A friday morning tee time will be arranged for
							those who are interested, at Rancho Santa Fe Golf Club- a
							private, 18-hole championship golf course considered one of the
							Top 20 Best Golf Courses in California.</p>
					</div>
					<!--end column-->

					<div class="column full">
						<h2>HISTORY OF THE INN</h2>
						<p>Ninety years ago, construction began on La Morada
							(â€œdwellingâ€?in Spanish), the first building in what would
							become Rancho Santa Fe. Now known as The Inn at Rancho Santa Fe,
							â€œThe Innâ€?to locals, it was then a guesthouse for prospective
							land buyers, a place to â€œput them upâ€?while they looked at
							lots owned by the Santa Fe Land Improvement Company. The company,
							a subsidiary of the Santa Fe Railway, had bought up parcels,
							planting eucalyptus trees for railroad spikes. But as history has
							so often shown, not everything goes according to plan. The wood,
							the company discovered, was too soft to hold the spikes. It was
							on to plan B.</p>
						<p>That plan turned out to be fortuitous. It led to the
							master-planned community of Rancho Santa Fe, designed by Lilian
							Rice, a National City-born architect and U.C. Berkeley graduate,
							who would earn acclaim for her signature Spanish Colonial Revival
							style. Rice designed the villageâ€™s key commercial and
							residential buildings, many now considered so historically
							significant that they are listed on the National Register of
							Historic Places.</p>
						<p>Throughout the decades The Inn has been a favorite
							destination for many years of famous and influential people. In
							1932, singer-actor Bing Crosby purchased one of Juan Osunaâ€™s
							original adobes with 50 acres, and hired Lilian Rice as his
							architect. Legendary architect Frank Lloyd Wright was married in
							the parlor of the Inn in 1928.</p>
						<p>
							Just as the architecture of the missions tells a story about the
							history of California, so does Lilian Riceâ€™s legendary design
							of The Inn. It is a perfect representation of old California
							charm and Rice's belief that true beauty lies in simplicity
							rather than ornateness. The Inn is a perfect reflection of Rice's
							dream - a place where time stands still amidst the simplistic,
							natural beauty that is Rancho Santa Fe. &nbsp;&nbsp; Go <a
								href="http//www.zjf88.com/" target="_blank">here</a> and <a
								href="http//www.zjf88.com/" target="_blank">here</a> for more
							information.

						</p>
					</div>
					<!--end column-->

				</section>

				<section id="registry" class="clearfix">

					<h1>Registry</h1>

					<div class="column full">

						<p>Due to the nature of city life (not a great deal of storage
							space), we have decided to embrace the HONEYMOON REGISTRY site.
							However, if your prefer the traditional route, we are registered
							at Williams Sonoma, Sur La Table, &amp; Macy's. A link for the
							registry sites will be coming soon!</p>
						<p>
							LOVE NOTES FOR SARAH &amp; BRADLEY <br /> Email us at <a
								href="mailto:sarahhills85@gmail.com" class="email"
								target="_blank">sarahhills85@gmail.com</a> <br />
						</p>

					</div>
					<!--end column-->

				</section>

				<div style="height: 300px"></div>

			</div>
			<!-- #main -->
		</div>
		<!-- #main-container -->
	</div>
	<!-- #bg-container -->

	<script src="js/main-1.6.js"></script>

	<div style="display: none">
		<script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>
