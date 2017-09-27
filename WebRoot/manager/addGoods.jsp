<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>『花市网』商品增加页</title>
<link rel="stylesheet" type="text/css" href="manager/css/common.css" />
<link rel="stylesheet" type="text/css" href="manager/css/main.css" />
<link href="manager/css/anquan.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="manager/js/libs/modernizr.min.js"></script>

<script type="text/javascript">
	function fun() {//input,thisId
		//var flNo = document.getElementById('result').value;
		var flNo = document.getElementById('result').innerHTML;
		//window.location = "<c:url value='/AddGoodsServlet'/>?goodsType=" + flNo;
		//alert(flNo);
		var path = getPath(document.getElementById('logo'));
		//window.location = "<c:url value='/AddGoodsServlet'/>?good_logo=" + path;
		//alert(path);
	}
</script>
<script>
	function getPath(obj) {
		if (obj) {

			if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
				obj.select();

				return document.selection.createRange().text;
			}

			else if (window.navigator.userAgent.indexOf("Firefox") >= 1) {
				if (obj.files) {

					return obj.files.item(0).getAsDataURL();
				}
				return obj.value;
			}
			return obj.value;
		}
	}
	//参数obj为input file对象
</script>
<script type="text/javascript">
	function htmlChange(nu) {

		var frame = document.getElementById("frame");
		if (nu == 0) {
			frame.setAttribute("src", "glylb.jsp");
		} else if (nu == 1) {
			frame.setAttribute("src", "xggly.jsp");
		} else if (nu == 2) {
			frame.setAttribute("src", "glylb.jsp");
		} else if (nu == 3) {
			frame.setAttribute("src", "yhlb.jsp");
		} else if (nu == 4) {
			frame.setAttribute("src", "mjlb.jsp");
		} else if (nu == 5) {
			frame.setAttribute("src", "pllb.jsp");
		}

	}
</script>

</head>
<body>

	<div class="containers">

		<div class="topbar-wrap">
			<div class="topbar-inner">


				<div class="topbar-logo-wrap clearfix">

					<ul class="navbar-list clearfix">
						<li><a class="on" href="manager/index.jsp">花市网后台管理系统</a></li>


					</ul>

				</div>


				<div style="float:left">
					<marquee>管理员${loginMan.loginName}欢迎你！</marquee>
				</div>


				<div class="top-info-wrap">
					<ul class="top-info-list clearfix">

						<li><a href="mnPwd.jsp" onClick="htmlChange(1)">修改密码</a></li>
						<li><a href="<c:url value="/ExitMan"/>">退出</a></li>
					</ul>
				</div>


			</div>
		</div>



		<div class="xia">

			<div class="container clearfix">
				<div class="sidebar-wrap">
					<div class="sidebar-title">
						<h1>菜单</h1>
					</div>
					<div class="sidebar-content">
						<ul class="sidebar-list">
							<li><a href="<c:url value="/FindAllServlet"/>"
								style="margin-left:20px;">类型管理</a>
								<ul class="sub-menu">
									<li onClick="htmlChange(2)"><a
										href="<c:url value="/FindAllGood"/>">商品管理</a></li>
									<li onClick="htmlChange(3)"><a
										href="<c:url value="/FindAllUsers"/>">用户管理</a></li>
									<li onClick="htmlChange(4)"><a
										href="<c:url value="/FindAllOrder"/>">订单管理</a></li>

								</ul></li>
							<li></li>
						</ul>
					</div>
				</div>

			</div>

			<div class="sidebar-right">
				<div id="content" style="background-color:#FFF;">
					<div id="yi">
						<div id="yi-1">&nbsp;添加商品</div>
					</div>
					<div id="er">
						<table width="1110" class="table table-bordered table-hover m10">
							<form method="post" action="<c:url value="/ManUploadServlet"/>"
								enctype="multipart/form-data">
								<tr class="trs">
									<td width="128" class="tableleft">图片</td>
									<td><input class="common-text" name="uploadFile" size="30"
										type="file" id="logo">
										 <input type="submit" value="上传" />	
										 <h2>${message} ${file }</h2>
									</td>									
								</tr>
							</form>

							<form action="<c:url value="/AddGoodsServlet"/>" method="post"
								class="definewidth m20">

								<tr class="trs">
									<td width="128" class="tableleft">鲜花编号</td>
									<td><input type="text" name="good_no" /></td>
								</tr>

								<tr class="trs">
									<td width="128" class="tableleft">鲜花名称</td>
									<td><input type="text" name="good_name" /></td>
								</tr>
								<tr class="trs">
									<td width="128" class="tableleft">鲜花库存</td>
									<td><input type="text" name="good_num" /></td>
								</tr>
								<tr class="trs">
									<td width="128" class="tableleft" style="width:130px">鲜花价格</td>
									<td><input type="text" name="good_price" /></td>
								</tr>

								<tr class="trs">
									<td width="128" class="tableleft">鲜花类型</td>
									<td><select id="select1">
											<option>--请选择一种鲜花类型--</option>
											<c:forEach var="type" items="${types }">
												<option>${type.tpName }</option>

											</c:forEach>
									</select>
										<p id="result"></p> <script>
											document.getElementById('select1').onchange = function() {
												var getText = function(elm) {
													if (typeof elm.innerText == 'string') {
														return elm.innerText;
													}
													return elm.textContent;
												};
												var value = this.value, index = this.selectedIndex;
												//text = getText(this.options[index]);
												document
														.getElementById('result').innerHTML = value;
												document
														.getElementById('goodsType').value = value;

											}
										</script></td>
								</tr>
								<tr class="trs">
									<td width="128" class="tableleft">${flNo }</td>
									<td><input type="hidden" name="goodsType" id="goodsType" />${flNo }</td>
								</tr>


								<tr class="trs">
									<td width="128" class="tableleft" id="good_descri">描述</td>
									<td><textarea style="height:100px; width:400px;"></textarea>
									</td>
								</tr>

								<tr class="trs">
									<td width="128" class="tableleft"></td>
									<td>

										<p class="p" id="tishi"
											style="clear:left; color:#F00; margin-bottom:60px;"></p>
										<hr style="width:1114px; margin-left:-140px;" />
										<p class="p">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input type="submit" class="btn btn-primary" onclick="fun()"
												style=" border:1px #f60 solid;background:#F60; width:70px; height:40px; "
												type="button" value="添加"> <a
												href="<c:url value="/FindAllGood"/>"> <input
												type="button" class="btn btn-success"
												style=" border:1px #f60 solid;background:#F60;  width:100px; height:40px; margin-left:20px;"
												name="backid" id="backid" value="返回列表">
											</a>
									</td>
								</tr>

							</form>
						</table>
						</p>
					</div>



				</div>
			</div>

		</div>

		<div class="footer">@copyright</div>


	</div>
</body>
</html>