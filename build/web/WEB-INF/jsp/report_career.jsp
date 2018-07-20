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
                            <h3 style="margin-top: 13px;">LAPORAN JENJANG KARIR</h3>
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
                                    Pengajuan Nidn
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan Asisten Ahli
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan Lektor
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan Lektor Kepala
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan Guru Besar
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                             id="tab1">
                                <div class="row">
                                    <div class="col-md-12" style="padding-left: 50px; padding-right: 50px">     
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableNidn">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Nama</th>
                                                    <th>Jurusan</th>                                                                 
                                                    <th>Fakultas</th>
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
                                            <table class="table table-hover" id="tableAssistant">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Nama</th>
                                                    <th>Jurusan</th>                                                                 
                                                    <th>Fakultas</th>
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
                                            <table class="table table-hover" id="tableLectors">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Nama</th>
                                                    <th>Jurusan</th>                                                                 
                                                    <th>Fakultas</th>
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
                                            <table class="table table-hover" id="tableHeadlectors">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Nama</th>
                                                    <th>Jurusan</th>                                                                 
                                                    <th>Fakultas</th>
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
                                            <table class="table table-hover" id="tableProfessor">
                                                <thead>
                                                    <th>No</th>
                                                    <th>Nama</th>
                                                    <th>Jurusan</th>                                                                 
                                                    <th>Fakultas</th>
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
            reloadDataNidn();
            reloadDataLecturerNonNidn();
            reloadDataLecturerNonAssistant();
            reloadDataLecturerNonLectors();
            reloadDataLecturerNonHeadlectors();
            
            var tableNidn = $('#tableNidn').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'}
                ]
            });
            
            tableNidn.on( 'order.dt search.dt', function () {
                tableNidn.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDataNidn(){
                $.ajax({
                    url : "getNewLecturer.htm",
                    data: {idFaculty: '0', idMajor: '0'},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        console.log(data);
                        tableNidn.rows.add(data).draw();
                    }
                });
            }
            
            //========================
            
            var tableAssistant = $('#tableAssistant').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'}
                ]
            });
            
            tableAssistant.on( 'order.dt search.dt', function () {
                tableAssistant.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            function reloadDataLecturerNonNidn(){
                $.ajax({
                    url : "getLecturerNonNidn.htm",
                    data: {idFaculty: '0', idMajor: '0'},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableAssistant.rows.add(data).draw();
                    }
                });
            }
            
            //===============================================================
            
            var tableLectors = $('#tableLectors').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'}
                ]
            });
            
            function reloadDataLecturerNonAssistant(){
                $.ajax({
                    url : "getLecturerNonAssistant.htm",
                    data: {idFaculty: '0', idMajor: '0'},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableLectors.rows.add(data).draw();
                    }
                });
            }
            
            tableLectors.on( 'order.dt search.dt', function () {
                tableLectors.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            //=======================================================================
            
            var tableHeadlectors = $('#tableHeadlectors').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'}
                ]
            });
            
            function reloadDataLecturerNonLectors(){
                $.ajax({
                    url : "getLecturerNonLectors.htm",
                    data: {idFaculty: '0', idMajor: '0'},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableHeadlectors.rows.add(data).draw();
                    }
                });
            }
            
            tableHeadlectors.on( 'order.dt search.dt', function () {
                tableHeadlectors.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
            
            //========================================================================
            
            var tableProfessor = $('#tableProfessor').DataTable({
                pageLength: 5,
                lengthChange: false,
                columns: [
                    { data: null, sortable: false},
                    { data: 'nameLecturer'},
                    { data: 'nameFaculty'},
                    { data: 'nameMajor'}
                ]
            });
            
            function reloadDataLecturerNonHeadlectors(){
                $.ajax({
                    url : "getLecturerNonHeadlectors.htm",
                    data: {idFaculty: '0', idMajor: '0'},
                    type: 'GET',
                    success: function(response){
                        var data = JSON.parse(response);
                        tableProfessor.rows.add(data).draw();
                    }
                });
            }
            
            tableProfessor.on( 'order.dt search.dt', function () {
                tableProfessor.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                cell.innerHTML = i+1;
                } );
            }).draw();
        });
    </script>
    <script src="resource/js/jquery.nicescroll.js"></script>
    <script src="resource/js/scripts.js"></script>
    <script src="resource/js/bootstrap.js"> </script>
</body>
</html>                     
