<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.do"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>꿀조합 상품 - 꿀조합팩토리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/logo/iconLogo.jpg">
<!-- Font Awesome CDN -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<!-- 사용자 정의 css -->
<link rel="stylesheet" href="assets/css/customization/storeProduct.css">
<style type="text/css">
.slider-area .single-slider {
	background-image: url('assets/img/hero/honeyComboheader.jpg');
}
</style>
</head>
<body data-brand="COMBO">
	<!-- 헤더 영역 -->
	<%@ include file="header.jsp"%>

	<main>
		<!-- Hero Area Start-->
		<div class="slider-area ">
			<div class="single-slider slider-height2 d-flex align-items-center">
			</div>
		</div>
		<!-- Hero Area End-->
		<br> <br> <br>
		<section class="popular-items">
			<div class="container">
				<!-- Section tittle -->
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8 col-md-10">
						<div class="section-tittle mb-70 text-center">
							<h2>MD 강.력.추.천</h2>
						</div>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
							<c:if test="${not empty MDproductComboTop}">
								<c:forEach var="MDproductCombo" items="${MDproductComboTop}">
									<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
										<div class="single-popular-items mb-50 text-center">
											<div class="popular-img">
												<img src="${MDproductCombo.productComboImage}"
													alt="MD 강력추천 상품 이미지">
												<div class="img-cap"
													data-number="${MDproductCombo.productComboNumber}"
													data-combo="true"
													data-stock="${MDproductCombo.productComboStock}">
													<span>장바구니 담기</span>
												</div>
											</div>
											<div class="popular-caption">
												<h3>
													<a
														href="productDetail.do?productComboNumber=${MDproductCombo.productComboNumber}">${MDproductCombo.productComboName}</a>
												</h3>
												<span><fmt:formatNumber
														value="${MDproductCombo.productComboPrice}" type="number"
														groupingUsed="true" />원</span>
												<c:if test="${0 < MDproductCombo.productComboDiscount}">
													<span style="color: red;">-${MDproductCombo.productComboDiscount}%
													</span>
													<span style="color: blue;"><fmt:formatNumber
															value="${MDproductCombo.productComboDiscountedPrice}"
															type="number" groupingUsed="true" />원</span>
												</c:if>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
							<c:if test="${empty MDproductComboTop}">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center"></div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<h1>상품 준비중입니다...</h1>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center"></div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<br>
				<hr>
				<br> <br>
				<!-- Section tittle -->
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8 col-md-10">
						<div class="section-tittle mb-70 text-center">
							<h2>베스트 핫이슈</h2>
						</div>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row">
							<c:if test="${not empty hotProductComboTop}">
								<c:forEach var="hotProductCombo" items="${hotProductComboTop}">
									<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
										<div class="single-popular-items mb-50 text-center">
											<div class="popular-img">
												<img src="${hotProductCombo.productComboImage}"
													alt="핫이슈 꿀조합 상품 이미지">
												<div class="img-cap"
													data-number="${hotProductCombo.productComboNumber}"
													data-combo="true"
													data-stock="${hotProductCombo.productComboStock}">
													<span>장바구니 담기</span>
												</div>
											</div>
											<div class="popular-caption">
												<h3>
													<a
														href="productDetail.do?productComboNumber=${hotProductCombo.productComboNumber}">${hotProductCombo.productComboName}</a>
												</h3>
												<span><fmt:formatNumber
														value="${hotProductCombo.productComboPrice}" type="number"
														groupingUsed="true" />원</span>
												<c:if test="${0 < hotProductCombo.productComboDiscount}">
													<span style="color: red;">-${hotProductCombo.productComboDiscount}%
													</span>
													<span style="color: blue;"><fmt:formatNumber
															value="${hotProductCombo.productComboDiscountedPrice}"
															type="number" groupingUsed="true" />원
													</span>
												</c:if>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>
							<c:if test="${empty hotProductComboTop}">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center"></div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center">
										<h1>상품 준비중입니다...</h1>
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<div class="single-popular-items mb-50 text-center"></div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<br>
				<hr>
				<br> <br>
				<!-- Section tittle -->
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8 col-md-10">
						<div class="section-tittle mb-70 text-center">
							<h2>지금 나에게 필요한건?</h2>
							<p>다향한 꿀조합 상품들을 소개합니다!</p>
							<div class="search-box">
								<input id="searchKeyword" type="text"
									placeholder="마크 정식을 검색해보세요!"> <i class="fas fa-search"
									onclick="searchComboProductName()" style="cursor: pointer;"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="row product-btn justify-content-between mb-40">
					<div class="properties__button">
						<!--Nav Button  -->
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<a class="nav-item nav-link active" id="nav-home-tab"
									data-toggle="tab" href="javascript:void(0);" role="tab"
									aria-controls="nav-home" aria-selected="true"
									onclick="setComboProductOrderCondition('ORDERPOPULAR')">인기순</a>
								<a class="nav-item nav-link" id="nav-profile-tab"
									data-toggle="tab" href="javascript:void(0);" role="tab"
									aria-controls="nav-profile" aria-selected="false"
									onclick="setComboProductOrderCondition('ORDERHIGHPRICES')">가격
									높은순</a> <a class="nav-item nav-link" id="nav-contact-tab"
									data-toggle="tab" href="javascript:void(0);" role="tab"
									aria-controls="nav-contact" aria-selected="false"
									onclick="setComboProductOrderCondition('ORDERLOWPRICES')">가격
									낮은순</a>
							</div>
						</nav>
						<!--End Nav Button  -->
					</div>
					<!-- Grid and List view -->
					<div class="grid-list-view"></div>
					<!-- Select items -->
					<div class="select-this">
						<div class="category-container">
							<button class="category dark"
								onclick="setComboProductCategory('ALLPRODUCT')">전체</button>
							<button class="category purple"
								onclick="setComboProductCategory('MDPRODUCT')">MD</button>
							<button class="category green"
								onclick="setComboProductCategory('CELEBRITYPRODUCT')">인플루언서</button>
							<button class="category blue"
								onclick="setComboProductCategory('COSTEFFECTIVENESSPRODUCT')">갓성비</button>
						</div>
					</div>
				</div>
				<!-- Nav Card -->
				<div class="tab-content" id="nav-tabContent">
					<!-- card one -->
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<div class="row" id="comboWrapper"></div>
					</div>
				</div>
				<!-- 페이지네이션 Start -->
				<nav class="blog-pagination justify-content-center d-flex">
					<ul class="pagination" id="comboPageNation">
					</ul>
				</nav>
				<!-- 페이지네이션 End -->
				<br>
				<hr>
				<br> <br>
				<!-- Section tittle -->
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-8 col-md-10">
						<div class="section-tittle mb-70 text-center">
							<h2>우리 주변 편의점</h2>
							<br>
							<div class="search-box">
								<input id="searchStoreKeyword" type="text"
									placeholder="주변에 편의점이 있는지 검색해보세요!"> <i
									class="fas fa-search" onclick="searchStore()"
									style="cursor: pointer;"></i>
							</div>
						</div>
						<div id="mapWrapper" style="width: 100%; height: 500px;"></div>
						<!-- 위치 찾기 버튼 추가 -->
						<button id="locationButton" onclick="getLocation()">현재
							위치로 이동</button>
						<p id="location"></p>
					</div>
				</div>
			</div>
			</div>
		</section>
	</main>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 푸터 영역 -->
	<%@ include file="footer.jsp"%>

	<!-- 사용자 정의 js -->
	<script src="assets/js/customization/comboProduct.js"></script>

	<!-- Map API CDN -->	

	<!-- KakaoMapAPI_Appkey 부분에 자신의 Appkey 입력 -->

	<!-- Your APP KEY HERE -->

	<script type="text/javascript"
		src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY&libraries=services,clusterer,drawing"></script>
	<!-- 지도 js -->
	<script src="assets/js/customization/map.js"></script>

</body>
</html>
