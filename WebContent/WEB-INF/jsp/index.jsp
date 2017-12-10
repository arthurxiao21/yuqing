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
<script type="text/javascript" src="js/vendor/jQuery.js"></script>
<script type="text/javascript" src="js/vendor/jqplot.js"></script>


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
						style="filter: shadow(color = #9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书"><font
						size=150px>今日新闻</font></span>
					<!-- 整齐的 样式-->
					<div class="column left">
						<font size="+1">
							<ul style="margin-left: 150px; margin-top: 30px">
								<c:forEach var="news" items="${newsList}">
									<li><a href="${news.URL } " target="blank">${news.title }</a></li>
								</c:forEach>
							</ul>
						</font>

					</div>
					<!--end column-->

					<!-- 杂乱的 样式-->
					<!-- <div class="column right">
						<font size="+1">
							<ul>
								新闻
							</ul>
						</font>

					</div> -->
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

					<font size="30px">今日热度</font>

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
												<font size=20px>11.25</font>
												<p>234</p>
											</div>
										</div>
									</li>
									<li id="macbook">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>11.24</font>
												<p>214</p>
											</div>
										</div>
									</li>
									<li id="ipod">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>11.23</font>
												<p>423</p>
											</div>
										</div>
									</li>
									<li id="cinema">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>11.22</font>
												<p>132</p>
											</div>
										</div>
									</li>
									<li id="macmini">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>11.21</font>
												<p>432</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>



					</div>
					<!--end column-->

					<div class="column left bp">


						<div style="width: 70%; float: left; margin-left: 20px">
							<font size="+1">
								<ul>
									<c:forEach var="news" items="${newsList}">
										<li><a href="${news.URL } " target="blank">${news.title }</a></li>
									</c:forEach>
								</ul>
							</font>
						</div>
						<div style="width: 20%; float: right">
							<font size="+1">
								<ul>
									<c:forEach var="news" items="${newsList}">
										<li>${news.num }</li>
									</c:forEach>
								</ul>
							</font>
						</div>

					</div>
					<!--end column-->

					<!--end column-->
				</section>

				<section id="accomodations" class="clearfix">

					<font size="30px">今日舆情</font>
					<div style="height: 50px"></div>
					<div style="width: 50%; height: 450px; float: left;">
						<div id="chart1"></div>
					</div>
					<!--end column-->

					<div
						style="width: 50%; height: 450px; float: right; margin-top: 30px">
						<div style="width: 100%; height: 430px; float: left">
							<ul style="height: 200px; overflow: auto; list-style-type: none">
								<li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								</li>
							</ul>
						</div>
					</div>


					<!--end column-->

					<div style="width: 50%; height: 450px; float: left">
						<div id="chart2"></div>

					</div>
					<div style="width: 50%; height: 450px; float: right">
						<div style="height: 430px; float: left">
							<ul style="height: 200px; overflow: auto; list-style-type: none">
								<li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								<li style="width: 70%; float: left">jjslkflkjljlj</li>
								<li style="width: 20%; float: right">111</li>
								</li>
							</ul>
						</div>
						<div style="text-align: center; clear: both;">
							<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
							<script src="/follow.js" type="text/javascript"></script>
						</div>
					</div>
					<!--折线图开始-->
					<script type="text/javascript">
						var data1 = [ [ 3, 6, 8, 1, 11, 22, 4 ] ];
						var data2 = [ [ -3, -6, -8, -1, -11, -22, -4 ] ];
						var data_max1 = 30; //Y轴最大刻度
						var data_max2 = 5;
						var line_title = [ "" ]; //曲线名称
						var y_label = ""; //Y轴标题
						var x_label = ""; //X轴标题
						var x = [ 11.13, 11.14, 11.15, 11.16, 11.17, 11.18,
								11.19 ]; //定义X轴刻度值
						var title = "这是标题"; //统计图标标题
						j.jqplot.diagram.base("chart1", data1, line_title,
								"正面新闻折线图", x, x_label, y_label, data_max1, 1);
						j.jqplot.diagram.base("chart2", data2, line_title,
								"负面新闻折线图", x, x_label, y_label, data_max2, 1);
					</script>
					<!--折线图结束-->

					<div class="clearfix"></div>


					<div class="column full">

						<h2>检索你想要的信息</h2>

						<div id="gmap">
							<iframe src="https://www.baidu.com/"></iframe>
							<br /> <small><a href="https://www.baidu.com/"
								target="_blank">View larger map</a></small>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="column full">
						<div class="hr-t"></div>
						<div class="hr-b"></div>
					</div>

					<div class="column full">
						<h2></h2>
						<p></p>
					</div>
					<!--end column-->

					<div class="column full">
						<h2></h2>
						<p></p>
						<p></p>
						<p></p>
						<p></p>
					</div>
					<!--end column-->

				</section>

				<section id="registry" class="clearfix">

					<h1></h1>

					<div class="column full">

						<p></p>
						<p></p>

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