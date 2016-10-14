<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath()%>" />
<c:set var="img" value="${context}/resources/img" />
<c:set var="css" value="${context}/resources/css" />
<c:set var="js" value="${context}/resources/js" />
<meta charset="utf-8">
<link href="https://a1.muscache.com/airbnb/static/packages/common_o2.1-50a45a2f41dab81f98765e60188dc94c.css" media="all" rel="stylesheet" type="text/css">
<link href="https://a1.muscache.com/airbnb/static/packages/manage_listing-5a21a78e524e212ada30b6a27fa6a498.css" media="screen" rel="stylesheet" type="text/css">
<div class="guidebook-form" style="margin-left: 12%;">
	<div class="map-container guidebook-form__map-container">
		<div class="map-canvas" style="height: 100%; width: 100%;">
			<div style="height: 100%; width: 100%; position: relative; overflow: hidden;">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
      .controls {
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        height: 29px;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }
      .controls:focus {
        border-color: #4d90fe;
      }

    </style>
    <input id="pac-input" class="controls" type="text"
        placeholder="추천 장소...">
    <div id="map"></div>
    
    <script>
function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 37.551371, lng: 126.940742},
    zoom: 12
  });

  var input = document.getElementById('pac-input');

  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.bindTo('bounds', map);

  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
    map: map
  });
  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
  autocomplete.addListener('place_changed', function() {
    infowindow.close();
    var place = autocomplete.getPlace();
    if (!place.geometry) {
      return;
    }
    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }
    marker.setPlace({
      placeId: place.place_id,
      location: place.geometry.location
    });
    marker.setVisible(true);

    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
        'Place ID: ' + place.place_id + '<br>' +
        place.formatted_address);
    infowindow.open(map, marker);
  });
}
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDZ8YB6bT5otUnn6Q1w4XmRFS5DQuPqtp0&libraries=places&signed_in=true&callback=initMap"
        async defer></script>
  </body>
	</div>	
		</div>
	</div>
	<div class="guidebook-form__recommendations-container">
		<div class="guidebook-form__head">
			<div class="panel-body">
				<h2><span>회원님이#도시이름#에서 좋아하는 것들을 소개해 주세요.</span>
				</h2>
				<div class="guidebook-form__sub-head">
					<span>가장 좋아하는 음식점과 명소를 소개하는 가이드북을 만들어 보세요. 게스트가 이동 중에도 편리하게 볼 수 있게요!</span>
				</div>
				<div class="guidebook-form__sub-head-legal" >
					<span><span>어디에 표시되나요?</span></span>
				</div>
				<div class="guidebook-form__sub-head-legal">
					<a href="#" target="_blank"><span><span>가이드북 인쇄하기 </span><span>»</span></span></a>
				</div>
			</div>
		</div>
		<div class="guidebook-form__main-categories">
			<div class="guidebook-form__main-category">
				<div class="recommendation-form__add-section">
					<div class="panel-body">
						<div class="row row-condensed">
							<div class="col-md-1">
								<div class="recommendation-form__icon text-white icon h4 text-center gb-icon-food-scene"></div>
							</div>
							
							<div class="col-md-8">
								<h3>음식</h3>
								<hr class="recommendation-form__mini-hr">
								<div>제일 좋아하는 레스토랑, 베이커리, 커피숍이 어디인가요?</div>
							</div>
						</div>
						<div>
							<div class="row row-condensed">
								<div class="col-md-1"></div>
								<div class="col-md-8">
									<div class="recommendation-form__section">
										<div class="location-autocomplete">
											<i class="icon icon-search h3 location-autocomplete__eyeglass"></i>
											<input id = "search" type="text" value="" placeholder="추천 장소..." autocomplete="off">
										    <input id="search_food" class="controls" type="text" placeholder="테스트...">
										</div>
									</div>
									<div>
										<div class="recommendation-form__section">
											<div class="row row-condensed">
												<div class="col-md-12">
													<div class="select">
														<select class=""><option selected="" value="-1">카테고리 선택</option>
															<option >레스토랑</option>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</div><div></div>
						</div>
					</div>
				</div>
			</div>
			</div>
			