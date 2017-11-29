<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.niit.org.dto.*"%>
<%@page import="com.niit.org.bean.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cmn-Hans">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1">

<% 
   HashMap roomMap=(HashMap)session.getAttribute("roomMap");
   List<LiveRoomDTO> outsideList=(List<LiveRoomDTO>)roomMap.get("outsideList");
   List<LiveRoomDTO> gameList=(List<LiveRoomDTO>)roomMap.get("gameList");
   List<LiveRoomDTO> foodList=(List<LiveRoomDTO>)roomMap.get("foodList");
   List<LiveRoomDTO> hotList=(List<LiveRoomDTO>)roomMap.get("hotList");


%>

<title>在线直播间</title>

<link rel="stylesheet" href="css/d4e0488237db533e.css">
<link rel="stylesheet" href="css/ruc_v1.1.5.css">
<link rel="stylesheet" href="css/fc9e619cd23e8c28.css">
<link rel="stylesheet" href="css/596c2be88ac9a5a0.css">
<link rel="stylesheet" href="css/93c97f35e37e6edb.css">
<link rel="stylesheet" href="css/level-style.css">
<script src="js/da870659adfe1ddc.js"></script>
<script src="js/hm.js"></script>
<script src="js/ff7cbc1b3b59cc0a.js"></script>
<link href="css/videojs.css" rel="stylesheet">
<script src="js/video.js"></script>
<script src="js/vue.js"></script>
<title>在线直播间</title>


<style type="text/css" media="screen">
#swf_play {
	visibility: hidden
}
</style>
</head>
<body class="index-skin-anniversary">

	<!-- header start -->
<<<<<<< HEAD
	<style>
	.text-break{
	    overflow: hidden;
	    word-break: break-word;
	    white-space: nowrap;
	    text-overflow: ellipsis;
    }
	#go_sort_select{
		width: 250px;
		min-height: 100px;
		background-color:#fff;
		box-shadow: 1px 1px 10px #bbb; 
		position: absolute;
		left:-100px;
		z-index: 10;
		padding:10px;
	}
	#go_sort_select i{
	    width: 0;
	   height: 0;
	   position: absolute;
	   top: -7px;
	   right: 50%;
	   margin-right: -7px;
	   border-top: 0;
	   border-left: 7px solid transparent;
	   border-right: 7px solid transparent;
	   border-bottom: 7px solid #ddd;
	}
	#go_sort_select i:after{
	    content: '';
	    width: 0;
	    height: 0;
	    position: absolute;
	    top: 1px;
	    right: -7px;
	    border-top: 0;
	    border-left: 7px solid transparent;
	    border-right: 7px solid transparent;
   		border-bottom: 7px solid #fff;
	}
	.sort-header{
		margin-bottom:15px;
	}
	.sort-body{
		display:flex;
		flex-flow:row wrap;
	}
	.tag-item{
		max-width: 100px;
		box-sizing: border-box;
		border-color: transparent;
		background-color: #f0f2f5;
	    margin:0 5px 10px 0;
		padding: 5px 8px;
		font-size:14px;
		color:#fff;
	}
	.tag-info{
		background-color: hsla(220,8%,56%,.1);
	    border-color: hsla(220,8%,56%,.2);
	    color: #878d99;
	}
	</style>
	<header id="panda_header" data-current="index"
		data-logo-url="https://i.h2.pdim.gs/bae905b5ccc183b82c00b445c5fb4c89.png">
	<div class="panda-header-container clearfix">
		<div class="panda-header">

			<div class="header-tab-container clearfix">
				<div id="panda_header_index" class="header-tab ">
					<a href="index">首页</a>
				</div>
				<div id="panda_header_all_lives" class="header-tab">
					<a href="https://www.panda.tv/all">全部</a>
				</div>
				<div id="panda_header_go_sort" class="header-tab">
					<a href="https://www.panda.tv/cate">分类</a>
					<div id="go_sort_select">
						<i></i>
						<div class="sort-header"><p>直播分类</p></div>	
						<div class="sort-body">
							<span class="tag-item tag-info text-break">美食</span>
							<span class="tag-item tag-info text-break">户外直播666666666666666666</span>
							<span class="tag-item tag-info text-break">游戏</span>
							<span class="tag-item tag-info text-break">游戏</span>
							<span class="tag-item tag-info text-break">游戏</span>
						</div>
					</div>
				</div>
			</div>

			<%
				if (session.getAttribute("username") == null) {
			%>
			<div class="header-tool-user-info">
				<a class="tool-user-info-login header-login-btn" href="login">登录</a>
				<b>|</b> <a class="tool-user-info-regist header-register-btn"
					href="register">注册</a>
			</div>
			<%
				} else {
					User user = (User) session.getAttribute("user");
					String username = user.getUsername();
			%>
			<div class="header-tool-user-info">
				<a class="tool-user-info-login header-login-btn" href="userInfo"><%=username%></a>
				<b>|</b> <a class="tool-user-info-regist header-register-btn"
					href="logout">注销</a>
			</div>
			<%
				}
			%>

			<div class="panda-search header-tool">
				<form name="room-search" action="/LiveRoomWeb/search"
					method="post" target="_top" class="search-form">
					<input type="text" name="searchKey" value="搜房间号/主播" autocomplete="off"
						class="search-key search-default">
					<div class="search-submit-btn">
						<input type="submit" class="search-submit">
					</div>
				</form>
			</div>
		</div>
	</div>
	</header>
=======
	<jsp:include page="NavigateHeader.jsp"/>
>>>>>>> a31546da5a0c9658af6b4c239ef4a08a65db6f00
	<!-- header end -->
	<div class="index-wrapper" style="position:relative;z-index:0;">
		<div class="index-slider-video-container"
			style="background: url(images/002.jpg) center center no-repeat rgb(28, 33, 29);">
			<div id="chatroom" class="index-slider-video-content clearfix "
				style="margin: 0 auto">
				<!--        <object width="1000" height="562" id="swf_play" type="application/x-shockwave-flash" data="plugin/c8e8226cec5e1719.swf" style="visibility: visible;margin:0 9%"><param name="allowFullScreen" value="true"><param name="wMode" value="Opaque"><param name="allowScriptAccess" value="always"><param name="allowFullScreenInteractive" value="true"><param name="bgColor" value="#000"><param name="flashvars" value="resource=https://s.h2.pdim.gs/static/c8e8226cec5e1719.swf&amp;width=1000&amp;height=562&amp;sign=true&amp;protocol=https&amp;videoId=c0abfe52a35f0c1428c24f9d3ba1ff17&amp;roomUrl=https://www.panda.tv/430414&amp;plflag=2_3&amp;plflag_list=%7B%22main%22%3A%222_3%22%7D&amp;watermark_switch=&amp;watermark_loc=&amp;flashId=swf_play"></object>-->
				<video id="v-player" style="margin:50px auto"
					class="video-js col-center-block"> <!--<source src="rtmp://live.hkstv.hk.lxdns.com/live/hks"  type="rtmp/flv"></source>-->
				</video>
			</div>

			<a target="_blank" href="liveroom/1"
				class="index-slider-outlink" data-toggle="panda-monitor"
				data-paew="shouye-bj-1"></a>
		</div>



		<div class="bw pd-plouto-container index-plouto-1"></div>


		<!-- 热门直播 start -->
		<div class="bw index-hotlive">
			<div class="index-block-title">
				<span class="tit1">今日</span><span class="dot"></span><span
					class="tit2">热门</span>

				<div class="more">
					<a href="https://www.panda.tv/all" target="_blank">更多</a>
				</div>
			</div>
			<ul class="figrues-list clearfix">
				<%for(LiveRoomDTO room:hotList){  String url= "liveroom/"+room.getId();           %>
				<li class="list-item"><a href="<%=url%>"
					target="_blank" data-toggle="panda-monitor" data-paew="shouye-rm-1">
						<div class="pd-thumb">
							<div class="pictures">
								<img class="thumb-img thumb-img-lazy"
									data-original="https://i.h2.pdim.gs/90/1017d70c00a43b477d19eb925b9d3f50/w338/h190.jpg"
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC">
							</div>
							<div class="thumb-layer"></div>
							<div class="play-btn"></div>
							<div class="thumb-title" title="<%=room.getTitle()%>"><%=room.getTitle()%></div>
						</div>
						<div class="thumb-info">
							<div class="thumb-list">
								<span class="thumb-nickname"><%=room.getUsername()%></span> <span
									class="thumb-number">20047</span>
							</div>
							<div class="thumb-bar"></div>
						</div>
				</a></li>
				<%}%>
			</ul>
		</div>
		<!-- 热门直播 end -->


		<div class="bw pd-plouto-container index-plouto-2"></div>



		<div class="bw pd-plouto-container index-plouto-3"></div>

		<!-- 频道版块 start -->
		<div class="index-channel">
            
            <!-- 美食频道start -->
			<div
				class="index-channel-list index-channel-food  index-channel-even  index-channel-food ">
				<div class="bw">
					<div class="index-channel-cnt clearfix">
						<div class="index-channel-title">
							<div class="index-channel-name">
								<a href="https://www.panda.tv/cate/food" target="_blank"><span
									class="avt"> <i class="avt-bg"
										style="background-image: url(images/foodchannel.jpeg); background-image: none\9; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=https://i.h2.pdim.gs/ec004e6db0a3390e1a1e0c3caaf1b96d.jpeg, sizingMethod=&amp;#39;scale&amp;#39;)"></i>
								</span> <span class="tips tips-color-green"><i class="num">38</i><i
										class="txt">个直播</i></span><span class="name">美食</span> </a>
							</div>
							<ul class="labers clearfix">
							</ul>
							<div class="more">
								<a href="https://www.panda.tv/cate/food" target="_blank">更多</a>
							</div>

						</div>
						<ul class="figrues-list figrues-list-line1 clearfix">
							
							<%for(LiveRoomDTO room:foodList){  String url= "liveroom/"+room.getId();           %>
							<li class="list-item"><a href="<%=url%>"
								target="_blank">
									<div class="pd-thumb">
										<div class="pictures">
											<img class="thumb-img thumb-img-lazy"
												data-original="https://i.h2.pdim.gs/90/eff447d4002af1a02369fbbd6e7d93ae/w338/h190.jpg"
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC">
										</div>
										<div class="thumb-layer"></div>
										<div class="play-btn"></div>
									</div>
									<div class="thumb-info">
										<div class="thumb-list">
											<div class="title"><%=room.getTitle()%></div>
											<div class="thumb-list-info">
												<span class="nickname"><%=room.getUsername()%></span> <span
													class="thumb-number">4645</span>
											</div>
										</div>
										<div class="thumb-bar"></div>
									</div>
							</a></li>
							
						  <%}%>
						</ul>
					</div>
				</div>
			</div>
			<!-- 美食频道end -->
			<!-- 户外频道start -->
			<div
				class="index-channel-list index-channel-hwzb    index-channel-hwzb ">
				<div class="bw">
					<div class="index-channel-cnt clearfix">
						<div class="index-channel-title">
							<div class="index-channel-name">
								<a href="https://www.panda.tv/cate/hwzb" target="_blank"><span
									class="avt"> <i class="avt-bg"
										style="background-image: url(images/outsidechannel.png); background-image: none\9;"></i>
								</span> <span class="tips tips-color-green"><i class="num">105</i><i
										class="txt">个直播</i></span><span class="name">户外直播</span> </a>
							</div>

							<div class="more">
								<a href="https://www.panda.tv/cate/hwzb" target="_blank">更多</a>
							</div>

						</div>
						<ul class="figrues-list figrues-list-line1 clearfix">
							<%for(LiveRoomDTO room:outsideList){  String url= "liveroom/"+room.getId();%>
							
							<li class="list-item"><a href="<%=url%>"
								target="_blank">
									<div class="pd-thumb">
										<div class="pictures">
											<img class="thumb-img thumb-img-lazy"
												data-original="https://i.h2.pdim.gs/90/71b5a8727233b2a692fb413aed381c98/w338/h190.jpg"
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC">
										</div>
										<div class="thumb-layer"></div>
										<div class="play-btn"></div>
									</div>
									<div class="thumb-info">
										<div class="thumb-list">
											<div class="title"><%=room.getTitle()%></div>
											<div class="thumb-list-info">
												<span class="nickname"><%=room.getUsername()%></span> <span
													class="thumb-number">65628</span>
											</div>
										</div>
										<div class="thumb-bar"></div>
									</div>
							</a></li>
                           <% }%>
						</ul>
					</div>
				</div>
			</div>
			<!-- 户外频道end -->
			<!-- 游戏频道start -->
			<div
				class="index-channel-list index-channel-zhuji  index-channel-even  index-channel-zhuji ">
				<div class="bw">
					<div class="index-channel-cnt clearfix">
						<div class="index-channel-title">
							<div class="index-channel-name">
								<a href="https://www.panda.tv/cate/zhuji" target="_blank"><span
									class="avt"> <i class="avt-bg"
										style="background-image: url(images/gamechannel.jpeg); background-image: none\9; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=https://i.h2.pdim.gs/f0ed6e56b26c57d24794f57f8c9f98f8.jpeg, sizingMethod=&amp;#39;scale&amp;#39;)"></i>
								</span> <span class="tips tips-color-green"><i class="num">97</i><i
										class="txt">个直播</i></span><span class="name">游戏</span> </a>
							</div>

							<div class="more">
								<a href="https://www.panda.tv/cate/zhuji" target="_blank">更多</a>
							</div>

						</div>
						<ul class="figrues-list figrues-list-line1 clearfix">
							<%for(LiveRoomDTO room:gameList){  String url= "liveroom/"+room.getId();           %>
							<li class="list-item"><a href="<%=url%>"
								target="_blank">
									<div class="pd-thumb">
										<div class="pictures">
											<img class="thumb-img thumb-img-lazy"
												data-original="https://i.h2.pdim.gs/90/f2bd7bcd93e2c93ee49d61c60b2a31bd/w338/h190.jpg"
												src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC">
										</div>
										<div class="thumb-layer"></div>
										<div class="play-btn"></div>
									</div>
									<div class="thumb-info">
										<div class="thumb-list">
											<div class="title"><%=room.getTitle()%></div>
											<div class="thumb-list-info">
												<span class="nickname"><%=room.getUsername()%></span> <span
													class="thumb-number">10418</span>
											</div>
										</div>
										<div class="thumb-bar"></div>
									</div>
							</a></li>
							<%} %>
							</ul>
					</div>
				</div>
			</div>
            <!-- 游戏频道end -->

		</div>
		<!-- 频道版块 end -->

		<div class="bw pd-plouto-container index-plouto-4"></div>

	</div>


	<!-- footer start -->
	<footer id="panda_footer">
	<div class="footer-text">
		<p>
			<a href="http://www.miitbeian.gov.cn/" target="_blank">主页</a> | <a
				href="http://www.panda.tv/news/1101414857/3700943925/3701130188.html"
				target="_blank">全部</a> | <a target="_blank"
				href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010802001046">分类</a>
		</p>
		<p>本网站为学校NIIT学生实训项目| Konoha&Tom&Teemo | 联系方式QQ：517136675</p>

	</div>
	</footer>

	<!-- footer end -->





	<script>
		var chatroom = new Vue({
			el : '#chatroom',
			data : {
				rtmpSource : null,
				videoPlayer : null,
			},
			methods : {
				videoInit : function() {
					this.videoPlayer = videojs('v-player', {
						//初始化数据
						height : '562px',
						width : '1000px',
						"techOrder" : [ "html5", "flash" ],
						controls : true,
						"autoplay" : true,
						sources : [ {
							/*rtmp://live.hkstv.hk.lxdns.com/live/hks*/
							//src:'rtmp://rlive.jia.360.cn/live_camera/36054700726',
							src : 'rtmp://live.hkstv.hk.lxdns.com/live/hks',
							type : 'rtmp/flv'
						} ]
					}, function() {
						this.on('loadeddata', function() {
							console.log(this)
						})+
						this.on('pause', function() {
							//alert('pause')
						})
					})
				}
			},
			mounted : function() {
				//视频初始化
				this.videoInit()
			}
		});
	</script>

	<!--4.284.0.19765-->
</body>
</html>