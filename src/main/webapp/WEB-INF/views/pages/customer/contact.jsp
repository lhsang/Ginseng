<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Liên hệ - Nhân sâm Hàn Quốc chất lượng</title>
<style>
.info-box{
    border: 0.5px solid rgb(168, 168, 168);
    border-radius: 10px;
    margin-bottom: 30px;
    padding: 20px 40px;
    background: #f8f8f8
}
.contact-area{
    padding-top: 40px;
}
.return-customer-btn {
    background: #ffffff;
    color: #575757;
    border: 0.5px solid #cccccc;
}
</style>
<!-- Breadcrumb Start -->
<div class="breadcrumb-area mt-30">
    <div class="container">
        <div class="breadcrumb">
            <ul class="d-flex align-items-center">
                <li><a href="<c:url value='/'/>">Trang chủ</a></li>
                <li class="active"><a href="<c:url value='/contact'/>">Liên hệ</a></li>
            </ul>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Breadcrumb End -->

<!-- Contact Email Area Start -->
<div class="contact-area">
    <div class="container">
        <div class="row">
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-2 "></div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 info-box">
                <h4>CÔNG TY TNHH TM DV GINSENG</h4><br>
                <b>Địa chỉ:</b> 606 Cộng Hòa, Phường 15, Tân Bình, Hồ Chí Minh, Việt Nam <br>
                <b>Hotline</b> 0938.967.689 (Mrs.Sương) <br>
                <b>Email</b> contact@ginseng.com <br>
                <b>Website:</b> ginseng.com
            </div>
            
        </div>
        <h3 class="mb-20">Liên hệ với chúng tôi</h3>
        <p class="mb-20">Mời bạn để lại lời nhắn vào form, chúng tôi sẽ trả lời bạn sớm nhẩt</p>
        <form id="contact-form" class="contact-form" action="<c:url value='/contact/submit' />" method="post">
            <div class="address-wrapper row">
                <div class="col-md-12">
                    <div class="address-fname">
                        <input class="form-control" type="text" name="name" placeholder="Tên của bạn">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="address-email">
                        <input class="form-control" type="email" name="email" placeholder="Email">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="address-web">
                        <input class="form-control" type="text" name="website" placeholder="Website">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="address-subject">
                        <input class="form-control" type="text" name="subject" placeholder="Tiêu đề">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="address-textarea">
                        <textarea name="message" class="form-control" placeholder="Nội dung"></textarea>
                    </div>
                </div>
            </div>
            <p class="form-message"></p>
            <div class="footer-content mail-content clearfix">
                <div class="send-email float-md-right">
                    <input value="Gởi" class="return-customer-btn" type="submit">
                </div>
            </div>
        </form>
    
        <!-- Contact Email Area End -->
        <!-- Google Map Start -->
        <div class="goole-map" style="margin-top:30px">
            <div id="map" style="height:400px"></div>
        </div>
        <!-- Google Map End -->  
    </div>
</div>
 



<!-- google map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDzGTfU97JHRG9n2U29EAojIhFll2RE09I"></script>
<script>
    // When the window has finished loading create our google map below
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 15,

            scrollwheel: false,

            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(10.804819, 106.637567), // New York

            // How you would like to style the map. 
            // This is where you would paste any style found on Snazzy Maps.
            styles: [{
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#444444"
                    }]
                },
                {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [{
                        "color": "#f2f2f2"
                    }]
                },
                {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [{
                        "visibility": "off"
                    }]
                },
                {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [{
                            "saturation": -100
                        },
                        {
                            "lightness": 45
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [{
                        "visibility": "simplified"
                    }]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                },
                {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [{
                        "visibility": "off"
                    }]
                },
                {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [{
                            "color": "#314453"
                        },
                        {
                            "visibility": "on"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                            "lightness": "-12"
                        },
                        {
                            "saturation": "0"
                        },
                        {
                            "color": "#4bc7e9"
                        }
                    ]
                }
            ]
        };

        // Get the HTML DOM element that will contain your map 
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('map');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(10.804819, 106.637567),
            map: map,
            title: 'Snazzy!'
        });
    }
</script>
<script>
    $(document).ready(function () {
        $('#li-contact').addClass("active");
    });
</script>