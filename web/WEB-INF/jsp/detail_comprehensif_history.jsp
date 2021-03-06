<%-- 
    Document   : index
    Created on : Mar 26, 2018, 8:51:27 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Portofolio Dosen Unas Pasim Bandung</title>
        
        <!--Bootstrap file library-->
        <link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <link href="resource/css/font-awesome.css" rel="stylesheet"> 
        <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>

        <!--Notification file library-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="resource/javascripts/jquery.growl.js" type="text/javascript"></script>
        <link href="resource/stylesheets/jquery.growl.css" rel="stylesheet" type="text/css" />
        
        <!--datatable file library-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <!--<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>-->
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">DETAIL KELENGKAPAN PORTOFOLIO</h3>
                        </center>							
                        <div class="clearfix"> </div>
                    </div>
                    <div class="profile_details">		
                    <ul>
                        <li class="dropdown profile_details_drop">
                            <a href="#" 
                               class="dropdown-toggle" 
                               data-toggle="dropdown" 
                               aria-expanded="false">
                                <div class="profile_img">	
                                    <span class="prfil-img">
                                        <img src="images/p1.png" alt=""> 
                                    </span> 
                                    <div class="user-name">
                                        <p>${sessionScope.name}</p>
                                        <span>${sessionScope.role}</span>
                                    </div>
                                    <i class="fa fa-angle-down lnr"></i>
                                    <i class="fa fa-angle-up lnr"></i>
                                    <div class="clearfix"></div>	
                                </div>	
                             </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li> 
                                    <a href="add_admin.htm">
                                        <i class="fa fa-user-plus"></i> Tambah Admin
                                    </a> 
                                </li>
                                <li> 
                                    <a href="setting_admin.htm">
                                        <i class="fa fa-cog"></i> Pengaturan
                                    </a> 
                                </li> 
                                <li> 
                                    <a href="logout.htm">
                                        <i class="fa fa-sign-out"></i> Keluar
                                    </a> 
                                </li>
                            </ul>
                        </li>
                    </ul>
                    </div>
                    <div class="clearfix"> </div>					
		</div>
                <script type="text/javascript">
                    $(document).ready(function() {
			$(window).scroll(function() {
                            var scrollpos=$(window).scrollTop(); 
                            if(scrollpos){
                                $(".header-main").addClass("fixed");
                            }else{
                                $(".header-main").removeClass("fixed");
                            }
			 });
                    });
		</script>
                
                <div class="col-md-12" style="padding: 20px">         
                    <div class="horizontal-tab">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a href="#tab1" 
                                   data-toggle="tab" 
                                   aria-expanded="true">
                                    Perekrutan Dosen
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Mengajar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Pendidikan
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Jabatan Fungsional
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Riwayat Sertifikasi Dosen
                                </a>
                            </li>
                        </ul>
                        <br>
                        <div class="row" align="center">
                            <p><strong>Nama Dosen : ${lecturer.nameLecturer}</strong></p>
                            <input type="hidden" name="idLecturer" value="${lecturer.idLecturer}"/>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane" 
                             id="tab1">
                                <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableBodyRecruitment">
                                                <thead>
                                                        <th>No</th>
                                                        <th>Nama Dokumen / Persyaratan</th>
                                                        <th>Status</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <div class="tab-pane" 
                             id="tab2">
                            <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableBodyLectureHistory">
                                                <thead>
                                                        <th>No</th>
                                                        <th>Nama Dokumen / Persyaratan</th>
                                                        <th>Status</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab3">
                            <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableBodyStudyHistory">
                                                <thead>
                                                        <th>No</th>
                                                        <th>Nama Dokumen / Persyaratan</th>
                                                        <th>Status</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab4">
                            <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableBodyFunctionalHistory">
                                                <thead>
                                                        <th>No</th>
                                                        <th>Nama Dokumen / Persyaratan</th>
                                                        <th>Status</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="tab-pane" 
                             id="tab5">
                            <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableBodySertificationHistory">
                                                <thead>
                                                        <th>No</th>
                                                        <th>Nama Dokumen / Persyaratan</th>
                                                        <th>Status</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="sidebar-menu">
            <div class="logo"> 
                <a href="#" 
                   class="sidebar-icon"> 
                    <span class="fa fa-bars"></span> 
                </a> 
                <a href="#"> 
                    <span id="logo" ></span> 
                    <!--<img id="logo" src="resource/images/pasim.jpg" alt="Logo"/>-->
                </a>
            </div>		  
            <div class="menu">
                <ul id="menu" >
                    <li id="menu-home" >
                        <a href="dashboard.htm">
                            <i class="fa fa-home"></i>
                            <span>Beranda</span>
                        </a>
                    </li>
                    <li>
                        <a href="lecturer.htm">
                            <i class="fa fa-book nav_icon"></i>
                            <span>Dosen Tetap</span>
                        </a>
                    </li>
                    <li id="menu-comunicacao" >
                        <a href="#">
                            <i class="fa fa-file-text"></i>
                            <span>Laporan</span>
                            <span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul id="menu-comunicacao-sub" >
                            <li id="menu-arquivos" >
                                <a href="showReportResume.htm">Resume Dosen Tetap</a>		              
                            </li>
                            <li id="menu-arquivos" >
                                <a href="showReportComprehensif.htm">Kelengkapan Portofolio</a>
                            </li>
                            <li id="menu-arquivos" >
                                <a href="showReportCareer.htm">Jenjang Karir</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="showProgress.htm">
                        <i class="fa fa-bar-chart"></i>
                        <span>Progress</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-cog"></i>
                            <span>Kelola Master</span>
                            <span class="fa fa-angle-right" style="float: right"></span>
                        </a>
                        <ul id="menu-academico-sub" >
                            <li id="menu-academico-boletim">
                                <a href="showMasterData.htm">Master Data
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterFile.htm">Detail Persyaratan
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterProgress.htm">Detail Progress
                                </a>
                            </li>
                            <li id="menu-academico-boletim">
                                <a href="showMasterNews.htm">Master Berita
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <script type="text/javascript">
        var toggle = true;      
        $(".sidebar-icon").click(function() {                
            if (toggle)
            {
                $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                $("#menu span").css({"position":"absolute"});
            }
            else
            {
                $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                setTimeout(function() {
                $("#menu span").css({"position":"relative"});
                }, 400);
            }               
            toggle = !toggle;
        });
        
        $(document).ready(function(){
            reloadDetailRecruitment();
            reloadDetailLectureHistory();
            reloadDetailStudyHistory();
            reloadDetailFunctionalHistory();
            reloadDetailSertificationHistory();
            
            var tableBodyRecruitment = $('#tableBodyRecruitment').DataTable({
                pageLength: 6,                
                lengthChange: false,                
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                            return '<span class="glyphicon glyphicon-ok" style="color:green"></span>\n';
                        }
                    }
                ]
            });
            
            tableBodyRecruitment.on( 'order.dt search.dt', function () {
                tableBodyRecruitment.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDetailRecruitment(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : 'getDetailRecruitmentHistory.htm',
                    type: 'GET',
                    data: 'idLecturer=' + idLecturer,
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableBodyRecruitment.rows.add(data).draw();
                    }
                });
            }
            
            var tableBodyLectureHistory = $('#tableBodyLectureHistory').DataTable({
                pageLength: 6,                
                lengthChange: false,                
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                            return '<span class="glyphicon glyphicon-ok" style="color:green"></span>\n';
                        }
                    }
                ]
            });
            
            tableBodyLectureHistory.on( 'order.dt search.dt', function () {
                tableBodyLectureHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDetailLectureHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : 'getDetailLectureHistory.htm',
                    type: 'GET',
                    data: 'idLecturer=' + idLecturer,
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableBodyLectureHistory.rows.add(data).draw();
                    }
                });
            }
            
            var tableBodyStudyHistory = $('#tableBodyStudyHistory').DataTable({
                pageLength: 6,                
                lengthChange: false,                
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                            return '<span class="glyphicon glyphicon-ok" style="color:green"></span>\n';
                        }
                    }
                ]
            });
            
            tableBodyStudyHistory.on( 'order.dt search.dt', function () {
                tableBodyStudyHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDetailStudyHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : 'getDetailStudyHistory.htm',
                    type: 'GET',
                    data: 'idLecturer=' + idLecturer,
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableBodyStudyHistory.rows.add(data).draw();
                    }
                });
            }
            
            var tableBodyFunctionalHistory = $('#tableBodyFunctionalHistory').DataTable({
                pageLength: 6,                
                lengthChange: false,                
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                            return '<span class="glyphicon glyphicon-ok" style="color:green"></span>\n';
                        }
                    }
                ]
            });
            
            tableBodyFunctionalHistory.on( 'order.dt search.dt', function () {
                tableBodyFunctionalHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDetailFunctionalHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : 'getDetailFunctionalHistory.htm',
                    type: 'GET',
                    data: 'idLecturer=' + idLecturer,
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableBodyFunctionalHistory.rows.add(data).draw();
                    }
                });
            }
            
            var tableBodySertificationHistory = $('#tableBodySertificationHistory').DataTable({
                pageLength: 6,                
                lengthChange: false,                
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameDokumen'},
                    { data: null, sortable: false,
                      render : function(data, type, full) {
                            return '<span class="glyphicon glyphicon-ok" style="color:green"></span>\n';
                        }
                    }
                ]
            });
            
            tableBodySertificationHistory.on( 'order.dt search.dt', function () {
                tableBodySertificationHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDetailSertificationHistory(){
                var idLecturer = $('input[name=idLecturer]').val();
                $.ajax({
                    url : 'getDetailSertificationHistory.htm',
                    type: 'GET',
                    data: 'idLecturer=' + idLecturer,
                    success : function(response) {
                        var data = JSON.parse(response);
                        tableBodySertificationHistory.rows.add(data).draw();
                    }
                });
            }
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
</body>
</html>                     
