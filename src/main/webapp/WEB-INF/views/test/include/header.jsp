<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Header -->
<header>
	<!-- 임시 -->
	<script>
		function mo() {
			alert('정보수정할래요');
		}
		function lo() {
			alert('로그아웃할래요');
		}
	</script>


	<%-- 변수값은 임시값입니다. --%>
	<c:set var="username" value="김태홍" />
	<c:set var="admin" value="관리자" />
	<c:set var="adminchk" value="0" />
	<c:set var="userid" value="null" />





	<!-- Header desktop -->
	<div class="container-menu-desktop">

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<a href="index.html" class="logo"> <img
					src="/resources/images/icons/PANDA.png" alt="IMG-LOGO"> <span
					class="maintext">PANDA</span>
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop" style="padding-top: 13px;">
					<ul class="main-menu">
						<li class="active-menu"><a href="index.html">중고거래</a></li>
						<li><a href="#">기부하기</a></li>
					</ul>
				</div>

				<!-- Icon header -->


				<div class="wrap-icon-header flex-w flex-r-m">
					<div
						class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"
						style="padding-right: 0px;">
						<a href="#" memo="채팅방연동예정"> <img class="panda-header-chaticon"
							src="/resources/images/icons/Panda_Chat.png" alt="panda-chat">
							<img class="panda-header-chaticon-hover"
							src="/resources/images/icons/panda_chat_hover.gif"
							alt="panda-chat-hover">
						</a>
					</div>
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11"
						style="padding-bottom: 10px; padding-right: 0px;">
						<a href="#" memo="my shop 이동"> <img class="panda-header-shop"
							src="/resources/images/icons/panda-shop.png" alt="panda-shop">
						</a>
					</div>


					<div class="icon-header-item trans-04 p-l-22 p-r-11" id="usersel"
						style="padding-bottom: 10px; padding-right: 15px; display: inline-block;">
						<a href="#" memo="상점으로"> <img class="panda-header-user"
							src="/resources/images/icons/panda-user.png" alt="panda-user">
						</a>
					</div>
					<div class="hoversup"></div>
					<div class="category">
						<div class="user-sel-images">
							<img class="bamboo" src="/resources/images/icons/bamboo.png">
						</div>

						<!-- 로그인 시 -->
						<c:choose>
							<c:when test="${userid eq 'null' }">
								<p>
									<strong>로그인</strong> 후 이용해주세요
								</p>
								<q>아이디가 없으시다면?<br> &nbsp;회원가입 후 이용해주세요!
								</q>
								<div class="user-modify">
									<input type="button" onclick="" class="modify" value="로그인"
										style="width: 64.5px; margin-top: 7px;">
								</div>
								<div class="user-logout">
									<input type="button" onclick="location.href='#'" class="logout"
										value="회원가입" style="margin-top: 7px;">
								</div>
							</c:when>
							<c:when test="${userid ne 'null' and adminchk gt '0'}">
								<p>
									<span>${username }</span> 님 환영합니다
								</p>
								<ul>
									<li><a class="my" href="#">내 정보<img class="right"
											src="/resources/images/icons/right-arrow.png"></a></li>
									<li><a class="my" href="#">내 상점<img class="right"
											src="/resources/images/icons/right-arrow.png"></a></li>
								</ul>
								<div class="user-modify">
									<input type="button" onclick="mo()" class="modify" value="정보수정">
								</div>
								<div class="user-logout">
									<input type="button" onclick="lo()" class="logout" value="로그아웃">
								</div>
							</c:when>
							<c:when test="${userid ne 'null' and adminchk lt '1'}">
								<p style="margin-bottom : 5px;">
									<span class="login-admin">${admin }</span> 님 환영합니다
								</p>
								<ul>
									<li><a class="adminmenu" href="#">관리자 메뉴 이동<img class="right"
											src="/resources/images/icons/right-arrow.png"></a></li>
								</ul>
								<div class="user-logout" style="margin-left:40px;">
									<input type="button" onclick="lo()" class="logout" value="로그아웃" style="margin-top: 7px;">
								</div>
							</c:when>
						</c:choose>
						<!-- 로그인 시  -->


					</div>

				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<a href="index.html" class="logo"> <img
			src="/resources/images/icons/PANDA.png" alt="IMG-LOGO"> <span
			class="maintext">PANDA</span>
		</a>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>

			<div
				class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
				data-notify="2">
				<i class="zmdi zmdi-shopping-cart"></i>
			</div>

			<a href="#"
				class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
				data-notify="0"> <i class="zmdi zmdi-favorite-outline"></i>
			</a>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box"> <span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="main-menu-m">
			<li class="active-menu"><a href="index.html">중고거래</a></li>
			<li><a href="#">기부하기</a></li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button
				class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="/resources/images/icons/icon-close2.png" alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15">
				<button class="flex-c-m trans-04">
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search"
					placeholder="Search...">
			</form>
		</div>
	</div>
</header>
</head>
