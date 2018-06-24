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
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		<div class="header-main">
                    <div class="header-left col-md-6">
                        <center>
                            <h3 style="margin-top: 13px;">BERANDA</h3>
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
                        <form action="saveFileRecruitment.htm"
                              id="formFileRecruitment"
                              name="fileDto"
                              method="POST">
                            <div class="row">
                                <div class="col-md-4" style="padding-left: 50px; padding-top: 3px">
                                    <select name="idDetail"
                                            id="idDetailRecruitment"
                                            class="form-control"
                                            required="">
                                        <option value=""
                                                class="form-control"
                                                selected="true">
                                            --Pilih Jenis Dokumen--
                                        </option>
                                        <c:forEach var="dataDetailFile" items="${fileRecruitment}">
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
                                        <i>File yang perlu diupload adalah Pas Photo 2x3, Pas Photo 3x4, 
                                            dan Fotocopy Kartu Tanda Penduduk,
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
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Nomor</th>
                                <th>Nama Dokumen / File</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="tableBodyFile">

                        </tbody>
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
                                <a href="showReportComprehen.htm">Kelengkapan Portofolio</a>
                            </li>
                            <li id="menu-arquivos" >
                                <a href="icons.html">Jenjang Karir</a>
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
                
                function reloadDataFile(){
                    $(function(){
                        $.growl.notice({title: "Berhasil !", message: "Data berhasil ditambahkan !" });
                    });
                    var idLecturer = $('input[name=idLecturer]').val();
                    $.ajax({
                        url : "getFileRecruitment.htm",
                        data : "idLecturer=" + idLecturer,
                        type: 'GET',
                        success: function(response){
                            var data = JSON.parse(response);
                            var len = data.length;
                            var content = '';
                            for (var i =0; i < len; i++){
                                content +='<tr>\n\
                                                <td>' + (i + 1) + '</td>\n\
                                                <td class="nameDokumen">' + data[i].nameDokumen + '</td>';
                                if (data[i].state === 1){
                                    content+='<td><span class="glyphicon glyphicon-ok" style="color: green"></span></td>';
                                } else {
                                    content+='<td><span class="glyphicon glyphicon-remove" style="color: red"></span></td>';
                                }
                                content+='<td>\n\
                                                <a href="#"><span class="deleteFileRecruitment fa fa-trash"></span></a>\n\
                                          </td>\n\
                                         </tr>';
                                $('#tableBodyFile').html(content);
                            }
                        } 
                    });
                }
                
                $('#formFileRecruitment').submit(function(e){
                e.preventDefault();
                var formData = new FormData();
                formData.append('file', $('input[name=file]')[0].files[0]);
                $.ajax({
                    url: "uploadFileRecruitment.htm",
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
                                url : "saveFileRecruitment.htm",
                                data: {idLecturer: idLecturer, pathFile: pathFile, idDetail: idDetail},
                                dataType: "form-data",
                                error: function(e){
                                    $(function(){
                                        $.growl.notice({title: "Berhasil", message: "Data berhasil ditambahkan !" });
                                    });
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