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
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">PORTOFOLIO</h3>
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
                                            <input type="hidden" 
                                                   value="${dataLecturer.idLecturer}" 
                                                   name="idLecturer"/>
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
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <form action="saveFileLectors.htm"
                              id="formFileLectors"
                              name="fileDto"
                              method="POST">
                            <div class="row">
                                <div class="col-md-4" style="padding-left: 50px; padding-top: 3px">
                                    <select name="idDetail"
                                            id="idDetailLectors"
                                            class="form-control"
                                            required="">
                                        <option value=""
                                                class="form-control"
                                                selected="true">
                                            --Pilih Jenis Dokumen--
                                        </option>
                                        <c:forEach var="dataDetailFile" items="${fileLectors}">
                                            <option value="${dataDetailFile.idDetail}">
                                                ${dataDetailFile.nameDokumen}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-4" style="padding-top: 3px">
                                    <input type="file"
                                           name="file"
                                           required=""
                                           class="form-control"/>
                                </div>
                                <div class="col-md-2">
                                    <input type="submit"
                                           value="Upload"
                                           class="form-control-submit"/>
                                </div>    
                            </div>
                            <br>                
                            <div class="row">
                                <div class="col-md-12" style="padding-left: 50px">
                                    <i style="font-size: 12px">Keterangan :</i> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12" style="padding-left: 50px">
                                    <p style="font-size: 12px">
                                        <i>File yang perlu diupload adalah dokumen - dokumen yang tertera pada tabel di bawah  
                                        </i>
                                    </p>
                                    <p style="font-size: 12px">
                                        <i>file harus berjenis PDF dengan ukuran paling besar maksimal 500kb.
                                        </i>
                                    </p>
                                </div>    
                            </div>                
                        </form>
                    </div>
                </div>
                <br>
                <br>
                <div class="table-responsive" style="padding-left: 50px; padding-right: 50px">
                    <table class="table table-hover" id="tableFileLectors">
                        <thead>
                            <th>Nomor</th>
                            <th>Nama Dokumen / File</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </thead>
                    </table>
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
                reloadDataFile();
                
                var tableFileLectors = $('#tableFileLectors').DataTable({
                    pageLength: 6,
                    lengthChange: false,
                    columns: [
                        { data: null, sortable: false},
                        { data: 'nameDokumen'},
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
                                return '<button id="delete"><span class="fa fa-trash"></span></button>';
                            }    
                        }
                    ]
                });
                
                tableFileLectors.on( 'order.dt search.dt', function () {
                    tableFileLectors.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                    cell.innerHTML = i+1;
                    } );
                }).draw();
                
                $('#tableFileLectors tbody').on('click', 'button#delete', function () {
                    var data = tableFileLectors.row(this.closest('tr')).data();
                    $.ajax({
                        url : 'deleteFile.htm',
                        data: 'idTranFile=' + data.idTranFile,
                        type: 'GET',
                        success : function(){
                            $.growl.notice({title: "Berhasil", message: "Data berhasil dihapus"});
                            reloadDataFile();
                        }
                    });
                });
                
                function reloadDataFile(){
                    var idLecturer = $('input[name=idLecturer]').val();
                    $.ajax({
                        url : "getFileLectors.htm",
                        data : "idLecturer=" + idLecturer,
                        type: 'GET',
                        success: function(response){
                            var data = JSON.parse(response);
                            tableFileLectors.rows.add(data).draw();
                        } 
                    });
                }
                
                $('#formFileLectors').submit(function(e){
                    e.preventDefault();
                    var formData = new FormData();
                    formData.append('file', $('input[name=file]')[0].files[0]);
                    $.ajax({
                        url: "uploadFileLectors.htm",
                        data: formData,
                        type: 'POST',
                        contentType: false,
                        processData: false,
                        success: function(response){
                            var data = JSON.parse(response);
                            if (data.status === 0){
                                $(function(){
                                    $.growl.warning({title: "Peringatan", message: "Ukuran file terlalu besar !"});
                                });
                            } else if (data.status === 1) {
                                $(function(){
                                    $.growl.warning({title: "Peringatan", message: "Ekstensi file salah !"});
                                });
                            } else {
                                var idLecturer = $('input[name=idLecturer]').val();
                                var idDetail = $('select[name=idDetail]').val();
                                var pathFile = data.pathFile;
                                $.post({
                                    url : "saveFile.htm",
                                    data: {idLecturer: idLecturer, pathFile: pathFile, idDetail: idDetail},
                                    dataType: "form-data",
                                    error: function(e){
                                        $(function(){
                                            $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                        });
                                        tableFileLectors.clear().draw();
                                        reloadDataFile();
                                    }
                                });
                            }
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
