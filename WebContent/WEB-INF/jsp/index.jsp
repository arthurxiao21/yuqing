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

<title>舆情分析</title>
<meta name="description" content="Welcome to the sentiment analysi">

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
<script type="text/javascript" src="js/Chart.min.js"></script>

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
						<li><a href="#xinwen">新闻</a></li>
						<li><a href="#redu">热度</a></li>
						<li><a href="#yuqing">舆情</a></li>
						<li><a href="#guanyu">关于</a></li>
						<!-- <li><a href="http//www.zjf88.com" target="_blank">BLOG</a></li> -->
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

				<section id="xinwen" class="clearfix">
					<span class="head-sarah"
						style="filter: shadow(color = #9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书"><font
						size=150px>新闻</font></span>
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

					<div class="clearfix"></div>

					<div class="column full">
						<div class="hr-t"></div>
						<div class="hr-b"></div>
					</div>



				</section>

				<!-- <script>
			
					(function() {
						window.onload = function() {

							//数据源  
							var dict = [ {
								x : "2015-04-24",
								y : 10000
							}, {
								x : "2015-04-25",
								y : 10000
							}, {
								x : "2015-04-26",
								y : 10000
							}, {
								x : "2015-04-27",
								y : 10000
							}, {
								x : "2015-04-28",
								y : 10000
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
				</script> -->

				<section id="redu" class="clearfix">

					<font size="30px">热度</font>

					<div style="width: 100%; float: left">
						<div id="char_div">
							<canvas id="myChart" style="width: 600px; height: 420px"></canvas>
						</div>

						<script>
							var ctx = document.getElementById("myChart");
							var myChart = new Chart(ctx, {
								type : 'horizontalBar',
								data : {

									labels : [ "${highList.get(0).date}",
											"${highList.get(1).date}",
											"${highList.get(2).date}",
											"${highList.get(3).date}",
											"${highList.get(4).date}",
											"${highList.get(5).date}",
											"${highList.get(6).date}" ],
									datasets : [ {
										label : '热度',
										data : [ '${highList.get(0).num}',
												'${highList.get(1).num}',
												'${highList.get(2).num}',
												'${highList.get(3).num}',
												'${highList.get(4).num}',
												'${highList.get(5).num}',
												'${highList.get(6).num}' ],
										backgroundColor : [
												'rgba(255, 99, 132, 0.2)',
												'rgba(54, 162, 235, 0.2)',
												'rgba(255, 206, 86, 0.2)',
												'rgba(75, 192, 192, 0.2)',
												'rgba(153, 102, 255, 0.2)',
												'rgba(255, 159, 64, 0.2)',
												'rgba(75, 192, 192, 0.2)'

										],
										borderColor : [ 'rgba(255,99,132,1)',
												'rgba(54, 162, 235, 1)',
												'rgba(255, 206, 86, 1)',
												'rgba(75, 192, 192, 1)',
												'rgba(153, 102, 255, 1)',
												'rgba(255, 159, 64, 1)',
												'rgba(75, 192, 192, 0.2)'

										],
										borderWidth : 1
									} ]
								},
								scaleGridLineWidth : 2,
								options : {
									scales : {
										yAxes : [ {
											ticks : {
												beginAtZero : true,
												fontColor : "#CCC",
												fontSize : 20
											}
										} ],
										xAxes : [ {
											ticks : {
												beginAtZero : true,
												fontColor : "#CCC",
												fontSize : 20
											}
										} ]
									}
								}

							});
						</script>



					</div>
					<!--  <div style="width: 100%; float: left">
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
												<font size=20px>${highList.get(0).date}</font>
												<p>${highList.get(0).width}</p>
											</div>
										</div>
									</li>
									<li id="macbook">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(1).date}</font>
												<p>${highList.get(1).num}</p>
											</div>
										</div>
									</li>
									<li id="ipod">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(2).date}</font>
												<p>${highList.get(2).num}</p>
											</div>
										</div>
									</li>
									<li id="cinema">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(3).date}</font>
												<p>${highList.get(3).date}</p>
											</div>
										</div>
									</li>
									<li id="macmini">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(4).date}</font>
												<p>${highList.get(4).num}</p>
											</div>
										</div>
									</li>
									<li id="iphone2">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(5).date}</font>
												<p>${highList.get(5).num}</p>
											</div>
										</div>
									</li>
									<li id="iphone3">
										<div class="bottom">
											<div class="infobox">
												<font size=20px>${highList.get(6).date}</font>
												<p>${highList.get(6).num}</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>



					</div>-->
					<!--end column-->

					<div class="column left bp">


						<div
							style="width: 70%; float: left; margin-left: 20px; margin-top: 200px">
							<font size="+1">
								<ul>
									<c:forEach var="allnews" items="${newsNumList}">
										<li><a href="${allnews.URL } " target="blank">${allnews.title }</a></li>
									</c:forEach>
								</ul>
							</font>
						</div>
						<div style="width: 20%; float: right; margin-top: 200px">
							<font size="+1">
								<ul>
									<c:forEach var="allnews" items="${newsNumList}">
										<li>${allnews.num }</li>
									</c:forEach>
								</ul>
							</font>
						</div>

					</div>
					<!--end column-->

					<!--end column-->
				</section>

				<section id="yuqing" class="clearfix">

					<font size="30px">舆情</font>
					<div style="height: 50px"></div>
					<!-- <div style="width: 60%; height: 450px; float: left;">
						<div id="chart1"></div>
					</div> -->

					<div style="width: 60%; height: 500px; float: left;">
						<canvas id="canvas1" height="300" width="400"></canvas>
					</div>
					<script>
						var ctx = document.getElementById("canvas1");
						var myChart = new Chart(
								ctx,
								{
									type : 'line',
									data : {

										labels : [
												"${upHighList.get(0).getDate()}",
												"${upHighList.get(1).getDate()}",
												"${upHighList.get(2).getDate()}",
												"${upHighList.get(3).getDate()}",
												"${upHighList.get(4).getDate()}",
												"${upHighList.get(5).getDate()}",
												"${upHighList.get(6).getDate()}" ],
										datasets : [ {
											label : '正面',
											data : [
													"${upHighList.get(0).getScore()}",
													"${upHighList.get(1).getScore()}",
													"${upHighList.get(2).getScore()}",
													"${upHighList.get(3).getScore()}",
													"${upHighList.get(4).getScore()}",
													"${upHighList.get(5).getScore()}",
													"${upHighList.get(6).getScore()}" ],
											backgroundColor : [
													'rgba(127, 255, 0, 0.2)', ],
											borderColor : [
													'rgba(255,99,132,1)', ],
											borderWidth : 1
										} ]
									},
									scaleGridLineWidth : 2,
									options : {
										scales : {
											yAxes : [ {
												ticks : {
													beginAtZero : true,
													fontColor : "#CCC",
													fontSize : 12
												}
											} ],
											xAxes : [ {
												ticks : {
													beginAtZero : true,
													fontColor : "#CCC",
													fontSize : 12
												}
											} ]
										}
									}

								});
					</script>

					<!--end column-->

					<div
						style="width: 40%; height: 500px; float: right; margin-top: 30px">
						<div style="width: 100%; height: 430px; float: left">
							<ul style="height: 350px; overflow: auto; list-style-type: none">
								<c:forEach begin="0" end="${upHighList.size()-1 }" var="allnews"
									items="${upHighList}">

									<li style="width: 70%; float: left"><a
										href="${allnews.URL } " target="blank">${allnews.title }</a></li>
									<li style="width: 20%; float: right">${allnews.score }</li>

								</c:forEach>
							</ul>
						</div>
					</div>


					<!--end column-->

					<!-- <div style="width: 60%; height: 450px; float: left">
						<div id="chart2"></div>

					</div> -->
					<div style="width: 60%; height: 500px; float: left;">
						<canvas id="canvas2" height="300" width="400"></canvas>
					</div>

					<script>
						var ctx = document.getElementById("canvas2");
						var myChart = new Chart(ctx, {
							type : 'line',
							data : {

								labels : [ "${upHighList.get(0).date}",
										"${upHighList.get(1).date}",
										"${upHighList.get(2).date}",
										"${upHighList.get(3).date}",
										"${upHighList.get(4).date}",
										"${upHighList.get(5).date}",
										"${upHighList.get(6).date}" ],
								datasets : [ {
									label : '负面',
									data : [ "${downHighList.get(0).score}",
											"${downHighList.get(1).score}",
											"${downHighList.get(2).score}",
											"${downHighList.get(3).score}",
											"${downHighList.get(4).score}",
											"${downHighList.get(5).score}",
											"${downHighList.get(6).score}" ],
									backgroundColor : [
											'rgba(255, 215, 0, 0.2)', ],
									borderColor : [ 'rgba(255,99,132,1)', ],
									borderWidth : 1
								} ]
							},
							scaleGridLineWidth : 2,
							options : {
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true,
											fontColor : "#CCC",
											fontSize : 12
										}
									} ],
									xAxes : [ {
										ticks : {
											beginAtZero : true,
											fontColor : "#CCC",
											fontSize : 12
										}
									} ]
								}
							}

						});
					</script>


					<div style="width: 40%; height: 500px; float: right">
						<div style="height: 430px; float: left">
							<ul style="height: 350px; overflow: auto; list-style-type: none">
								<c:forEach begin="0" end="${upHighList.size()-1 }" var="allnews"
									items="${downHighList}">
									<li>
									<li style="width: 70%; float: left"><a
										href="${allnews.URL } " target="blank">${allnews.title }</a></li>
									<li style="width: 20%; float: right">${allnews.score }</li>
									</li>
								</c:forEach>
							</ul>
						</div>
						<div style="text-align: center; clear: both;">
							<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
							<script src="/follow.js" type="text/javascript"></script>
						</div>
					</div>

					<div class="clearfix"></div>


					<div class="column full">

						<!-- <h2>检索你想要的信息</h2>

						<div id="gmap">
							<iframe src="https://www.baidu.com/"></iframe>
							<br /> <small><a href="https://www.baidu.com/"
								target="_blank">View larger map</a></small>
						</div> -->
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

				<section id="guanyu" class="clearfix">
					<h1>About</h1>

					<div class="column full">

						<p>联系我们</p>

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