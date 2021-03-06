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
        <title>Universitas Nasional Pasim Bandung</title>
        
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
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        
<!--        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">PROGRESS</h3>
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
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
                <div class="col-sm-12 col-md-12 col-lg-12 mb-60" style="padding: 20px">         
                    <div class="horizontal-tab">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a href="#tab1" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Pengajuan NIDN
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab2" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Asisten Ahli
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab3" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab4" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Lektor Kepala
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab5" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Guru Besar
                                </a>
                            </li>
                            <li class="">
                                <a href="#tab6" 
                                   data-toggle="tab" 
                                   aria-expanded="false">
                                    Sertifikasi Dosen
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" 
                                 id="tab1">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyLecturerProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorLecturerProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressNidn.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableLecturerProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab2">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyAssistantProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorAssistantProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressAssistant.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableAssistantProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab3">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyLectorsProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorLectorsProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressLectors.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableLectorsProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyHeadlectorsProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorHeadlectorsProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressHeadlectors.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableHeadlectorsProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab5">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultyProfessorProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorProfessorProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressProfessor.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableProfessorProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" 
                                 id="tab6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <select name="idFaculty"
                                                    id="facultySertificationProgressHistory"
                                                    class="form-control">
                                                    <option value="0" 
                                                            selected="true"
                                                            class="form-control">
                                                        --Semua Fakultas--
                                                    </option>
                                                    <c:forEach var="dataFaculty" 
                                                               items="${dataFaculty}">
                                                        <option value="${dataFaculty.idFaculty}" 
                                                                class="form-control">
                                                                    ${dataFaculty.nameFaculty}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <select class="form-control"
                                                        id="majorSertificationProgressHistory"
                                                        name="idMajor">
                                                    <option 
                                                        value="0" 
                                                        selected="true"
                                                        class="form-control">
                                                        --Semua Jurusan--
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="col-md-2
                                                btn-effcts" align="rigth">
                                               <a href="addProgressSertification.htm" 
                                                  class="hvr-bounce-to-right" >
                                                   <button class="btn btn-1 btn-success">
                                                       <span class="glyphicon glyphicon-plus"></span> 
                                                       Tambah
                                                   </button>
                                               </a>
                                           </div>
                                        </div>
                                        <hr>
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="tableSertificationProgressHistory">
                                                <thead>
                                                    <th>Nomor</th>
                                                    <th>Nama Dosen</th>
                                                    <th>Fakultas</th>
                                                    <th>Jurusan</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>
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
        <script>
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
                    reloadLecturerProgressHistory();
                    reloadAssistantProgressHistory();
                    reloadLectorsProgressHistory();
                    reloadHeadlectorsProgressHistory();
                    reloadProfessorProgressHistory();
                    reloadSertificationProgressHistory();
                    
                    var tableLecturerProgressHistory = $('#tableLecturerProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableLecturerProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableLecturerProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressNidn.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    var tableAssistantProgressHistory = $('#tableAssistantProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableAssistantProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableAssistantProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressAssistant.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    var tableLectorsProgressHistory = $('#tableLectorsProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableLectorsProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableLectorsProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressLectors.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    var tableHeadlectorsProgressHistory = $('#tableHeadlectorsProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableHeadlectorsProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableHeadlectorsProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressHeadlectors.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    var tableProfessorProgressHistory = $('#tableProfessorProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableProfessorProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableProfessorProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressProfessor.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    var tableSertificationProgressHistory = $('#tableSertificationProgressHistory').DataTable({
                        pageLength: 10,
                        lengthChange: false,
                        columns: [
                            { data: null, sortable: false},
                            { data: 'nameLecturer'},
                            { data: 'nameFaculty'},
                            { data: 'nameMajor'},
                            { data: 'state', sortable: false,
                                render : function(data, type, full) {
                                    if (data === 1){
                                        return '<span class="glyphicon glyphicon-ok" style="color: green"></span>';
                                    } else {
                                        return '<span class="glyphicon glyphicon-remove" style="color: red"></span>';
                                    }  
                                }
                            },
                            { data: null, sortable: false,
                              render : function(data, type, full) {
                                return '<button id="detail"><span class="fa fa-book"></span></button>';}
                            }
                        ]
                    });
                    
                    $('#tableSertificationProgressHistory tbody').on('click', 'button#detail', function () {
                        var data = tableSertificationProgressHistory.row(this.closest('tr')).data();
                        window.location.assign('showProgressSertification.htm?idLecturer=' + data.idLecturer);
                    });
                    
                    tableLecturerProgressHistory.on( 'order.dt search.dt', function () {
                        tableLecturerProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    tableAssistantProgressHistory.on( 'order.dt search.dt', function () {
                        tableAssistantProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    tableLectorsProgressHistory.on( 'order.dt search.dt', function () {
                        tableLectorsProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    tableHeadlectorsProgressHistory.on( 'order.dt search.dt', function () {
                        tableHeadlectorsProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    tableProfessorProgressHistory.on( 'order.dt search.dt', function () {
                        tableProfessorProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    tableSertificationProgressHistory.on( 'order.dt search.dt', function () {
                        tableSertificationProgressHistory.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                        cell.innerHTML = i+1;
                        } );
                    }).draw();
                    
                    function reloadLecturerProgressHistory(){
                        $.ajax({
                            url: "getLecturerProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableLecturerProgressHistory.rows.add(data).draw();
                            }
                        });    
                    }
                    
                    function reloadAssistantProgressHistory(){
                        $.ajax({
                            url: "getAssistantProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableAssistantProgressHistory.rows.add(data).draw();
                            }
                        });
                    }
                    
                    function reloadLectorsProgressHistory(){
                        $.ajax({
                            url: "getLectorsProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableLectorsProgressHistory.rows.add(data).draw();
                            }
                        });
                    }
                    
                    function reloadHeadlectorsProgressHistory(){
                        $.ajax({
                            url: "getHeadlectorsProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableHeadlectorsProgressHistory.rows.add(data).draw();
                            }
                        });
                    }
                    
                    function reloadProfessorProgressHistory(){
                        $.ajax({
                            url: "getProfessorProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableProfessorProgressHistory.rows.add(data).draw();
                            }
                        });
                    }
                    
                    function reloadSertificationProgressHistory(){
                        $.ajax({
                            url: "getSertificationProgressHistory.htm",
                            type: 'GET',
                            success: function(response){
                                var data = JSON.parse(response);
                                tableSertificationProgressHistory.rows.add(data).draw();
                            }
                        });
                    }
//                    
                    $("#facultyLecturerProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultyLecturerProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getLecturerProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableLecturerProgressHistory.clear().draw();
                                    tableLecturerProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorLecturerProgressHistory').html(content);
                                    $("#majorLecturerProgressHistory").val('0');
                                }
                            });
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                    }
                                    $('#majorLecturerProgressHistory').html(content);
                                }
                            });
                            $.ajax({
                                url : 'getLecturerProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableLecturerProgressHistory.clear().draw();
                                    tableLecturerProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
                    
                    $("#facultyAssistantProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultyAssistantProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getAssistantProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableAssistantProgressHistory.clear().draw();
                                    tableAssistantProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorAssistantProgressHistory').html(content);
                                    $("#majorAssistantProgressHistory").val('0');
                                }
                            });
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                        $('#majorAssistantProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getAssistantProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableAssistantProgressHistory.clear().draw();
                                    tableAssistantProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
                    
                    $("#facultyLectorsProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultyLectorsProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getLectorsProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableLectorsProgressHistory.clear().draw();
                                    tableLectorsProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorLectorsProgressHistory').html(content);
                                    $("#majorLectorsProgressHistory").val('0');
                                }
                            });
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                        $('#majorLectorsProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getLectorsProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableLectorsProgressHistory.clear().draw();
                                    tableLectorsProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
//                    
                    $("#facultyHeadlectorsProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultyHeadlectorsProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getHeadlectorsProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableHeadlectorsProgressHistory.clear().draw();
                                    tableHeadlectorsProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorHeadlectorsProgressHistory').html(content);
                                    $("#majorHeadlectorsProgressHistory").val('0');
                                }
                            });
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                        $('#majorHeadlectorsProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getHeadlectorsProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableHeadlectorsProgressHistory.clear().draw();
                                    tableHeadlectorsProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
//                    
                    $("#facultyProfessorProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultyProfessorProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getProfessorProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableProfessorProgressHistory.clear().draw();
                                    tableProfessorProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorProfessorProgressHistory').html(content);
                                    $("#majorProfessorProgressHistory").val('0');
                                }
                            });
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                        $('#majorProfessorProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getProfessorProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableProfessorProgressHistory.clear().draw();
                                    tableProfessorProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
                    
                    $("#facultySertificationProgressHistory").change(function(){
                        var idFaculty = $('select[id=facultySertificationProgressHistory]').val().toString();
                        if (idFaculty === "0"){
                            $.ajax({
                                url : 'getSertificationProgressHistory.htm',
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableSertificationProgressHistory.clear().draw();
                                    tableSertificationProgressHistory.rows.add(data).draw();
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    $('#majorSertificationProgressHistory').html(content);
                                    $("#majorSertificationProgressHistory").val('0');
                                }
                            });
                            
                        } else {
                            $.ajax({
                                url : 'getDataMajorByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    var len = data.length;
                                    var content = '<option value="0" name="idMajor">--Semua Jurusan--</option>';
                                    for (var i = 0; i < len; i++){
                                        content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                                        $('#majorSertificationProgressHistory').html(content);
                                    }
                                }
                            });
                            $.ajax({
                                url : 'getSertificationProgressHistoryByFaculty.htm',
                                data: "idFaculty=" + idFaculty,
                                type: 'GET',
                                success : function(response) {
                                    var data = JSON.parse(response);
                                    tableSertificationProgressHistory.clear().draw();
                                    tableSertificationProgressHistory.rows.add(data).draw();
                                }
                            });
                        }
                    });
                    
                    $("#majorLecturerProgressHistory").change(function(){
                        var idMajor = $('select[id=majorLecturerProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultyLecturerProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getLecturerProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableLecturerProgressHistory.clear().draw();
                                tableLecturerProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
//                    
                    $("#majorAssistantProgressHistory").change(function(){
                        var idMajor = $('select[id=majorAssistantProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultyAssistantProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getAssistantProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableAssistantProgressHistory.clear().draw();
                                tableAssistantProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
                    
                    $("#majorLectorsProgressHistory").change(function(){
                        var idMajor = $('select[id=majorLectorsProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultyLectorsProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getLectorsProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableLectorsProgressHistory.clear().draw();
                                tableLectorsProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
                    
                    $("#majorHeadlectorsProgressHistory").change(function(){
                        var idMajor = $('select[id=majorHeadlectorsProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultyHeadlectorsProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getHeadlectorsProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableHeadlectorsProgressHistory.clear().draw();
                                tableHeadlectorsProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
                    
                    $("#majorProfessorProgressHistory").change(function(){
                        var idMajor = $('select[id=majorProfessorProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultyProfessorProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getProfessorProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableProfessorProgressHistory.clear().draw();
                                tableProfessorProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
                    
                    $("#majorSertificationProgressHistory").change(function(){
                        var idMajor = $('select[id=majorSertificationProgressHistory]').val().toString();
                        var idFaculty = $('select[id=facultySertificationProgressHistory]').val().toString();
                        $.ajax({
                            url : 'getSertificationProgressHistoryByMajor.htm',
                            data: {idMajor: idMajor, idFaculty: idFaculty},
                            type: 'GET',
                            success : function(response) {
                                var data = JSON.parse(response);
                                tableSertificationProgressHistory.clear().draw();
                                tableSertificationProgressHistory.rows.add(data).draw();
                            }
                        });
                    });
                });
        </script>
        <script src="resource/js/jquery.nicescroll.js"></script>
        <script src="resource/js/scripts.js"></script>
        <script src="resource/js/bootstrap.js"> </script>
    </body>
</html>                     
