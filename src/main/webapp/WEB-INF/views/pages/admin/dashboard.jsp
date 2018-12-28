<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

 <!--stats-->
<div class="row">
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="primary">78%</h3>
                            <span>New Session</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-user-follow primary font-large-2 float-xs-right"></i>
                        </div>
                    </div>
                    <progress class="progress progress-sm progress-primary mt-1 mb-0" value="80" max="100"></progress>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="danger">423</h3>
                            <span>Total Visits</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-social-dropbox danger font-large-2 float-xs-right"></i>
                        </div>
                        <progress class="progress progress-sm progress-danger mt-1 mb-0" value="40" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="success">64.89 %</h3>
                            <span>Bounce Rate</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-layers success font-large-2 float-xs-right"></i>
                        </div>
                        <progress class="progress progress-sm progress-success mt-1 mb-0" value="60" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            <h3 class="warning">02.12</h3>
                            <span>Session Duration</span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-globe warning font-large-2 float-xs-right"></i>
                        </div>
                        <progress class="progress progress-sm progress-warning mt-1 mb-0" value="35" max="100"></progress>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/stats-->

<!-- Audience by country & users visit-->
<div class="row match-height">
    <div class="col-xl-6 col-lg-12">
        <div class="card">
            <div class="card-header no-border">
                <h4 class="card-title">Avg. Session Duration & Pages/Session</h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
                <div class="card-block">
                    <div id="area-chart" class="height-250"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-6 col-lg-12">
        <div class="card">
            <div class="card-header no-border">
                <h4 class="card-title">Goals Complition</h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <div id="goal-list-scroll" class="table-responsive height-250 position-relative">
                    <table class="table mb-0">
                        <thead>
                            <tr>
                                <th>Goals</th>
                                <th>Goal Value</th>
                                <th>Conversion rate</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Account</td>
                                <td>$0.18</td>
                                <td class="text-xs-center font-small-2">85% <progress class="progress progress-sm progress-success mb-0" value="95" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td>Subscribe</td>
                                <td>$0.12</td>
                                <td class="text-xs-center font-small-2">75% <progress class="progress progress-sm progress-success mb-0" value="85" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td>Mobile</td>
                                <td>$220</td>
                                <td class="text-xs-center font-small-2">65% <progress class="progress progress-sm progress-warning mb-0" value="65" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td>Laptop</td>
                                <td>$880</td>
                                <td class="text-xs-center font-small-2">35% <progress class="progress progress-sm progress-warning mb-0" value="45" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td>LED TV</td>
                                <td>$1002</td>
                                <td class="text-xs-center font-small-2">25% <progress class="progress progress-sm progress-warning mb-0" value="30" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td>AC</td>
                                <td>$1200</td>
                                <td class="text-xs-center font-small-2">15% <progress class="progress progress-sm progress-success mb-0" value="15" max="100"></progress></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ Audience by country  & users visit -->



<!-- Bounce Rate & List -->
<div class="row match-height">
    <div class="col-xl-4 col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block sales-growth-chart">
                    <div class="chart-title">
                        <h1 class="display-4">32%</h1>
                        <span class="text-muted">Bounce Rate</span>
                    </div>
                    <div id="bounce-rate" class="height-250"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-8 col-lg-12">
        <div class="card">
            <div class="card-header no-border">
                <h4 class="card-title">Audience by Country</h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body">
                <div id="audience-list-scroll" class="table-responsive height-300 position-relative">
                    <table class="table mb-0">
                        <thead>
                            <tr>
                                <th>Country</th>
                                <th>Page views</th>
                                <th>Device</th>
                                <th>% Bounce rate</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><i class="flag-icon flag-icon-gb"></i> United State</td>
                                <td>18</td>
                                <td>Desktop</td>
                                <td class="text-xs-center font-small-2">85% <progress class="progress progress-sm progress-success mb-0" value="85" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-au"></i> Australia</td>
                                <td>12</td>
                                <td>Mobile</td>
                                <td class="text-xs-center font-small-2">75% <progress class="progress progress-sm progress-success mb-0" value="75" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-br"></i> Brazil</td>
                                <td>25</td>
                                <td>Tablet</td>
                                <td class="text-xs-center font-small-2">66% <progress class="progress progress-sm progress-success mb-0" value="66" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-gb"></i> Great Britain (UK)</td>
                                <td>8</td>
                                <td>Mobile</td>
                                <td class="text-xs-center font-small-2">58% <progress class="progress progress-sm progress-warning mb-0" value="58" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-hk"></i> Hong Kong</td>
                                <td>18</td>
                                <td>Desktop</td>
                                <td class="text-xs-center font-small-2">45% <progress class="progress progress-sm progress-warning mb-0" value="45" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-in"></i> India</td>
                                <td>10</td>
                                <td>Desktop</td>
                                <td class="text-xs-center font-small-2">38% <progress class="progress progress-sm progress-warning mb-0" value="38" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-jp"></i> Japan</td>
                                <td>11</td>
                                <td>Moblie</td>
                                <td class="text-xs-center font-small-2">25% <progress class="progress progress-sm progress-danger mb-0" value="25" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-mx"></i> Mexico</td>
                                <td>15</td>
                                <td>Tablet</td>
                                <td class="text-xs-center font-small-2">22% <progress class="progress progress-sm progress-danger mb-0" value="22" max="100"></progress></td>
                            </tr>
                            <tr>
                                <td><i class="flag-icon flag-icon-ma"></i> Morocco</td>
                                <td>14</td>
                                <td>Moblie</td>
                                <td class="text-xs-center font-small-2">18% <progress class="progress progress-sm progress-danger mb-0" value="18" max="100"></progress></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>