<%-- 
    Document   : index
    Created on : Mar 26, 2018, 8:51:27 AM
    Author     : sandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--spring web file library-->
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
        
    </head>
    <body>	
    <div class="page-container" style="overflow: scroll">	
        <div class="left-content">
            <div class="mother-grid-inner">
		
                <!--Header Section-->
                <div class="header-main">
                    <div class="header-left">
                        <center>
                            <h3 style="margin-top: 13px;">DOSEN TETAP</h3>
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
                <!--End Header Section-->
		
                <script>
                    $(document).ready(function() {
                        $(window).scroll(function(){
                            var scrollpos=$(window).scrollTop(); 
                            if(scrollpos){
                                $(".header-main").addClass("fixed");
                            }else{
                                $(".header-main").removeClass("fixed");
                            }
			 });	 
                    });
		</script>
                <br>
                <!--Isi-->
                <div class="row">
                    <form action="saveLecturer.htm"
                                   id="formLecturer"
                                   name="lecturer"
                                   method="POST">
                        
                        <div class="col-md-6" align="center">
                            <div class="row">
                                <div class="col-md-8">
                                    <input type="hidden" name="idLecturer"
                                                 value="${lecturer.idLecturer}"/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Nama Dosen<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" 
                                       class="form-control" 
                                       name="nameLecturer"
                                       value="${lecturer.nameLecturer}"
                                       placeholder="Nama Dosen" 
                                       required="" />
                                </div>
                            </div>
                            <br>
                            <div class="row" >
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Tempat Lahir<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="text" 
                                       class="form-control" 
                                       name="birthplace"
                                       value="${lecturer.birthplace}"
                                       placeholder="Tempat Lahir" 
                                       required="" />
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Tanggal Lahir<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="date" 
                                       class="form-control" 
                                       name="birthdate"
                                       value="${lecturer.birthdate}"
                                       placeholder="Tanggal Lahir" 
                                       required="" />
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 4px; text-align: right">
                                    Jenis Kelamin<span style="color: red">*</span>
                                </div>
                                <c:forEach var="dataGender" 
                                               items="${dataGender}">
                                    <div class="col-md-4">
                                        <c:if test="${lecturer.idGender == dataGender.idGender}">
                                            <input type="radio" 
                                                    name="idGender"
                                                    required=""
                                                    checked=""
                                                    value="${dataGender.idGender}"/> 
                                            ${dataGender.nameGender}
                                        </c:if>
                                        <c:if test="${lecturer.idGender != dataGender.idGender}">
                                            <input type="radio" 
                                                    name="idGender"
                                                    required=""
                                                    value="${dataGender.idGender}"/> 
                                            ${dataGender.nameGender}
                                        </c:if>
                                    </div>
                                </c:forEach>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Agama<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <select name="idReligion" 
                                        class="form-control"
                                        required="">
                                        <option value="" 
                                                     >--Pilih Agama--
                                        </option>
                                        <c:forEach var="dataReligion" 
                                                   items="${dataReligion}">
                                            <c:if test="${lecturer.idReligion == dataReligion.idReligion}">
                                                <option value="${dataReligion.idReligion}" 
                                                    class="form-control"
                                                    selected="">
                                                        ${dataReligion.nameReligion}
                                                </option>
                                            </c:if>
                                            <c:if test="${lecturer.idReligion != dataReligion.idReligion}">
                                                <option value="${dataReligion.idReligion}" 
                                                    class="form-control">
                                                        ${dataReligion.nameReligion}
                                                </option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Alamat<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <textarea type="text" 
                                          class="form-control" 
                                          name="address" 
                                          placeholder="Alamat"
                                          required="">${lecturer.address}</textarea>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Email<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="email" 
                                       class="form-control" 
                                       name="email" 
                                       value="${lecturer.email}"
                                       placeholder="Email"
                                       required=""/>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    No. Telepon<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="number" 
                                       class="form-control" 
                                       name="numberPhone"
                                       value="${lecturer.numberPhone}"
                                       placeholder="Nomor Telepon" 
                                       required="" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 7px; text-align: right">
                                    Homebase Dosen
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                    Fakultas<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <select name="idFaculty"
                                        id="faculty"
                                        class="form-control" 
                                        required="">
                                        <option value="" 
                                                     selected="true">--Pilih Fakultas--
                                        </option>
                                        <c:forEach var="dataFaculty" 
                                                   items="${dataFaculty}">
                                        <c:if test="${lecturer.idFaculty == dataFaculty.idFaculty}">
                                            <option value="${dataFaculty.idFaculty}" 
                                                     class="form-control"
                                                     selected="">
                                                ${dataFaculty.nameFaculty}
                                            </option>
                                        </c:if>
                                        <c:if test="${lecturer.idFaculty != dataFaculty.idFaculty}">
                                            <option value="${dataFaculty.idFaculty}" 
                                                     class="form-control">
                                                ${dataFaculty.nameFaculty}
                                            </option>
                                        </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-3" style="margin-top: 7px; text-align: right">
                                    Jurusan<span style="color: red">*</span>
                                </div>
                                <div class="col-md-8">
                                    <input type="hidden" id="tempMajor" value="${lecturer.idMajor}"/>
                                    <select name="idMajor"
                                        id="major"
                                        class="form-control" 
                                        required="">
                                        <option>--Pilih Jurusan</option>
                                    </select>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-offset-7 col-md-4">
                                    <input type="submit" 
                                           id="submit"
                                           class="form-control-submit" 
                                           value="Simpan"/>
                                </div>
                            </div>   
                            <div class="row">
                                <div class="col-md-offset-1 col-md-4">
                                    <i style="font-size: 12px">Keterangan :</i> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-offset-1 col-md-8">
                                    <i style="font-size: 12px">Isian bertanda <span style="color: red;">*</span> wajib diisi</i>
                                </div>
                            </div>
                        </div>
                    </form>    
                </div>
                <!--End Isi-->
                
            </div>
        </div>
        
        <!--Menu Samping--> 
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
        <!--End Menu Samping--> 
    <div class="clearfix"> </div>
    </div>
        
        <!--Tambahkan kodingan Javascript / Jquery disini--> 
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
            reloadMajor();
            
            function reloadMajor(){
                var idFaculty = $('select[name=idFaculty]').val().toString();
                var idMajor = $('input[id=tempMajor]').val().toString();
                console.log(idMajor);
                $.ajax({
                    url : 'getDataMajorByFaculty.htm',
                    data: "idFaculty=" + idFaculty,
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        var len = data.length;
                        var content = '<option selected="true" value="0" name="idMajor">--Pilih Jurusan--</option>';
                        for (var i = 0; i < len; i++){
                            if (data[i].idMajor === idMajor){
                                content +='<option value="' + data[i].idMajor + '" name="idMajor" selected="">' + data[i].nameMajor + '</option>';
                            } else {
                                content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                            }
                            $('#major').html(content);
                        }
                    }
                });
            }
                    
            $("#faculty").change(function(){
                var idFaculty = $('select[name=idFaculty]').val().toString();
                var idMajor = $('select[name=idMajor]').val().toString();
                $.ajax({
                    url : 'getDataMajorByFaculty.htm',
                    data: "idFaculty=" + idFaculty,
                    type: 'GET',
                    success : function(response) {
                        var data = JSON.parse(response);
                        var len = data.length;
                        var content = '<option selected="true" value="0" name="idMajor">--Pilih Jurusan--</option>';
                        for (var i = 0; i < len; i++){
                            if (data[i].idMajor === idMajor){
                                content +='<option value="' + data[i].idMajor + '" name="idMajor" selected="">' + data[i].nameMajor + '</option>';
                            } else {
                                content +='<option value="' + data[i].idMajor + '" name="idMajor">' + data[i].nameMajor + '</option>';
                            }
                            $('#major').html(content);
                        }
                    }
                });
            });
            
            $('#formLecturer').submit(function(e){
                e.preventDefault();
                $.post({
                    url: "onEditLecturer.htm",
                    dataType: "form-data",
                    data: $('#formLecturer').serialize(),
                    error: function(e){
                        var data = JSON.parse(e.responseText);
                        window.location.replace("portofolio.htm?idLecturer=" + data.idLecturer);
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
