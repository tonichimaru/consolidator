<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<link type="text/css" href="<%=request.getAttribute("baseUrl")%>assets/css/datepicker.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=request.getAttribute("baseUrl")%>assets/theme/admin/plugins/select2/select2.css">
<script src="<%=request.getAttribute("baseUrl")%>assets/theme/admin/plugins/select2/select2.min.js"></script>
<script src="<%=request.getAttribute("baseUrl")%>assets/js/lib.js"></script>    

<c:forEach items="${realisasi_data}" var="real">
    <c:set var="ukk">${real.UKK}</c:set>
    <c:set var="ves_id">${real.VES_ID}</c:set>
    <c:set var="no_spk">${real.NO_SPK}</c:set>
    <c:set var="ves_name">${real.VES_NAME}</c:set>
    <c:set var="ves_code">${real.KD_KAPAL}</c:set>
    <c:set var="permohonan">${real.PERMOHONAN}</c:set>
    <c:set var="kd_agen">${real.KD_AGEN}</c:set>
    <c:set var="nm_agen">${real.NM_AGEN}</c:set>
    <c:set var="no_form_1a">${real.NO_FORM_1A}</c:set>
    <c:set var="ppkb_ke">${real.PPKB_KE}</c:set>
    <c:set var="ves_type">${real.VES_TYPE}</c:set>
    <c:set var="jn_kapal">${real.JN_KAPAL}</c:set>
    <c:set var="kd_proses">${real.KD_PROSES}</c:set>
</c:forEach>



<c:forEach items="${bkt_tambat_data}" var="btambat">
    <c:set var="ramp">${btambat.RAMP_DOOR}</c:set>
    <c:set var="pos_tambat">${btambat.POS_TAMBAT}</c:set>
    <c:set var="kd_kade">${btambat.KD_KADE}</c:set>
    <c:set var="i_tali">${btambat.I_TALI}</c:set>
    <c:set var="i_tali_hh">${btambat.I_TALI_HH}</c:set>
    <c:set var="i_tali_mm">${btambat.I_TALI_MM}</c:set>
    <c:set var="l_tali">${btambat.L_TALI}</c:set>
    <c:set var="l_tali_hh">${btambat.L_TALI_HH}</c:set>
    <c:set var="l_tali_mm">${btambat.L_TALI_MM}</c:set>
    <c:set var="m_awal">${btambat.M_AWAL}</c:set>
    <c:set var="m_akhir">${btambat.M_AKHIR}</c:set>
    <c:set var="petugas_ikat">${btambat.PETUGAS_IKAT}</c:set>
    <c:set var="petugas_lepas">${btambat.PETUGAS_LEPAS}</c:set>    
</c:forEach> 

<form action="" name="form" id="form2">
        <div class="col-sm-12">
		<div class="page-header">
                        <h1>Create Realisasi Tambat (2A2)</h1>
		</div>
        </div>
        <input type="hidden" id="cek_form" name="cek_form" value="${cek_form}">
            <div class="col-sm-12">
                <div class="sep"></div>
            <div class="panel panel-default">
                <div class="panel-heading">
                <i class="fa fa-cogs"></i>
                Detail 2A1 (Pandu / Tunda)
                <div class="panel-tools">
                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#">
                        </a>
                </div>
                </div>
                <div class="panel-body">
                <input type="hidden" id="ves_id" name="ves_id" class="form-control" value="${ves_id}">
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Nomor SPK</label>
                        <div class="col-sm-6">
                               <input type="text" id="no_spk" name="no_spk" class="form-control" value="${no_spk}" readonly>
                               <input type="hidden" id="ves_type" name="ves_type" value="${ves_type}">
                        </div>
                    </div>
                    
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">KAPAL</label>
                        <div class="col-sm-2">
                            <input type="text" name="ves_code" id="ves_code" class="form-control" value="${ves_code}" readonly>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" id="ves_name" name="ves_name" class="form-control" value="${ves_name}" readonly>
                        </div>
                    </div>
                        
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Jenis Kapal</label>
                        <div class="col-sm-6">
                            <input type="text" name="jn_kapal" id="jn_kapal" class="form-control" value="${jn_kapal}" readonly>
                        </div>
                    </div>
                    
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">UKK</label>
                        <div class="col-sm-6">
                            <input type="text" name="ukk" id="ukk" class="form-control" value="${ukk}" readonly>
                        </div>
                    </div>
                        
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Agen</label>
                        <div class="col-sm-2">
                            <input type="text" name="kd_agen" id="kd_agen" class="form-control" value="${kd_agen}" readonly>
                        </div>
                        <div class="col-sm-4">
                            <input type="text" id="nm_agen" name="nm_agen" class="form-control" value="${nm_agen}" readonly>
                        </div>
                    </div>
                    
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">PPKB</label>
                        <div class="col-sm-2">
                            Nomor PPKB<input type="text" name="no_form_1a" id="no_form_1a" class="form-control" value="${no_form_1a}" readonly>
                        </div>
                        <div class="col-sm-4">
                            PPKB Ke<input type="text" id="ppkb_ke" name="ppkb_ke" class="form-control" value="${ppkb_ke}" readonly>
                        </div>
                    </div>
                  <!--
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Kode Proses</label>
                        <div class="col-sm-6">
                            <input type="text" name="kd_proses" id="kd_proses" class="form-control" value="${kd_proses}" readonly>
                        </div>
                    </div>
                    -->
            </div>
                    
            </div>
            </div>
            
           
            
            <!-- Form 2A2 -->            
            <div class="col-sm-12">
                            
            <div class="panel panel-default">
            <div class="panel-heading">
            <i class="fa fa-cogs"></i>
                2A2
            <div class="panel-tools">
            </div>
            </div>
            <div class="panel-body">
                     
                <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Ramp Door / Posisi Tambat</label>
                        <div class="col-sm-3"> 
                            <select name="ramp" id="ramp" class="form-control search-select" >
                                 <option value="">-- Pilih Ramp Door --</option>
                                 <option value="1" <c:if test="${ramp == '1'}">selected</c:if>>Dikenakan</option>
                                 <option value="2" <c:if test="${ramp == '2'}">selected</c:if>>Tidak Dikenakan</option>
                            </select>
                        </div>
                        <div class="col-sm-3"> 
                            <select name="pos_tambat" id="pos_tambat" class="form-control search-select" >
                                 <option value="">-- Pilih Posisi Tambat --</option>
                                 <option value="1" <c:if test="${pos_tambat == '1'}">selected</c:if>>Merapat</option>
                                 <option value="2" <c:if test="${pos_tambat == '2'}">selected</c:if>>Tender</option>
                                 <option value="3" <c:if test="${pos_tambat == '3'}">selected</c:if>>Susun Sirih</option>
                            </select>
                        </div>
                   </div>
                     <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Kade</label>
                        <div class="col-sm-6">
                            <select name="kd_kade" id="kd_kade" class="form-control search-select" >
                                 <option value="">-- Kade --</option>
                                 <c:forEach items="${lokasi_data}" var="dr">
                                 <option value="${dr.KD_KADE}" <c:if test="${dr.KD_KADE == kd_kade}">selected</c:if>>${dr.NM_KADE}</option>
                                 </c:forEach>
                            </select>
                        </div>
                       
                    </div>
                      <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Meter Awal / Akhir</label>
                        <div class="col-sm-3">
                            <input type="text" id="m_awal" name="m_awal" class="form-control" value="${m_awal}" maxlength="3" onkeypress="return isNumber(event)">
                        </div>
                        <div class="col-sm-3">
                           <input type="text" id="m_akhir" name="m_akhir" class="form-control" value="${m_akhir}" maxlength="3" onkeypress="return isNumber(event)"> 
                        </div>
                       
                    </div>
                        
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Mulai Labuh - Selesai Labuh 
                                    </label>
                        <div class="col-sm-2">
                            
                           
                            <input type="text" name="mlabuh" id="mlabuh" class="form-control"  value="<%=request.getAttribute("mlabuh")%>" readonly>
                        </div>
                        <div class="col-sm-2">
                            <input type="text" name="slabuh" id="slabuh" class="form-control"  value="<%=request.getAttribute("slabuh")%>" readonly>
                            
                        </div>
                    </div>     
                        
                    <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Ikat Tali 
                                    </label>
                        <div class="col-sm-3">
                            <div class="input-group">
                            <input type="text" name="i_tali" id="i_tali" placeholder="Ikat Tali" class="form-control date-picker" value="${i_tali}">
                            <span class="input-group-addon btn-squared"> <i class="fa fa-calendar"></i> </span>
                            </div>
                        </div>
                        <div class="col-sm-1">
                            <c:set var="xx_hh">${i_tali_hh}</c:set>
                            <select name="i_tali_hh" id="i_tali_hh" class="form-control" style=" width:70px;">
                            <%@ include file="/WEB-INF/view/date_hh.jsp" %>
                            </select>
                            
                        </div>
                        <div class="col-sm-1">
                             <c:set var="xx_mm">${i_tali_mm}</c:set>
                            <select name="i_tali_mm" id="i_tali_mm" class="form-control" style=" width:70px;">
                            <%@ include file="/WEB-INF/view/date_mm.jsp" %>
                            </select>
                        </div>
                    </div>
                     
                   <div class="space15"></div>
                    <div class="row">
                        <label class="col-sm-3 control-label">Lepas Tali 
                                    </label>
                        <div class="col-sm-3">
                            <div class="input-group">
                            <input type="text" name="l_tali" id="l_tali" placeholder="Lepas Tali" class="form-control date-picker" value="${l_tali}">
                            <span class="input-group-addon btn-squared"> <i class="fa fa-calendar"></i> </span>
                            </div>
                        </div>
                        <div class="col-sm-1">
                            <c:set var="xx_hh">${l_tali_hh}</c:set>
                            <select name="l_tali_hh" id="l_tali_hh" class="form-control" style=" width:70px;">
                            <%@ include file="/WEB-INF/view/date_hh.jsp" %>
                            </select>
                            
                        </div>
                        <div class="col-sm-1">
                             <c:set var="xx_mm">${l_tali_mm}</c:set>
                            <select name="l_tali_mm" id="l_tali_mm" class="form-control" style=" width:70px;">
                            <%@ include file="/WEB-INF/view/date_mm.jsp" %>
                            </select>
                        </div>
                    </div> 
                            
                            <div class="space15"></div>
<div class="row">
    <label class="col-sm-3 control-label">Petugas Ikat Tali</label>
    <div class="col-sm-6"> 
       
        <select name="petugas_ikat" id="pandu_id1" class="form-control search-select">
            <option value=""> </option>
            <c:forEach items="${pandu_data}" var="vpandu_data">
                <option value="${vpandu_data.PANDU_ID}" <c:if test="${vpandu_data.PANDU_ID == petugas_ikat}">selected</c:if> > ${vpandu_data.NAMA}</option>
            </c:forEach>
        </select>
    </div>
</div>    
<div class="space15"></div>
<div class="row">
    <label class="col-sm-3 control-label">Petugas Lepas Tali</label>
    <div class="col-sm-6"> 
        <select name="petugas_lepas" id="pandu_id2" class="form-control search-select">
            <option value=""> </option>
            <c:forEach items="${pandu_data}" var="vpandu_data">
                <option value="${vpandu_data.PANDU_ID}" <c:if test="${vpandu_data.PANDU_ID == petugas_lepas}">selected</c:if> > ${vpandu_data.NAMA}</option>
            </c:forEach>
        </select>
    </div>
</div>
                            
            </div>
            </div>
            </div>
        
                      
            
         
            
            
            
            <div class="col-sm-12">            
            
                    <div class="row">
                        <div class=" col-sm-3"></div>
                    <div class=" col-sm-3">
                    <button class="btn btn-primary btn-squared" type="button" onclick="$(this).parents('form').submit();">Submit</button>
                    </div>
                    </div>
                <div class="space15"></div>
            </div>
                        
</form>

<script type="text/javascript">
$(document).ready(function() {
//        Main.init();
        $('.search-select').select2();
});

//$(".date-picker").mask("99/99/9999");
$('.date-picker').datepicker({
    format: "dd/mm/yyyy"
    
});

$('.date-picker').on('changeDate', function(ev){
    $(this).datepicker('hide');
});

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}
   
   /*
$("#submitBtn").click(function(e){     
    $(this).addClass("e-clicked");
});
$("#form").submit(function(e){
   if( $(this).find(".e-clicked").attr("id") === "submitDelete" )
   {
      var con = window.confirm("Delete ?");
      if( !con )
      {
         e.preventDefault();
      }
   }
$(this).find("input[type=\"submit\"]").removeClass("e-clicked");
});
   */
   
$('#form2').submit(function(){
    
 val = date2date("ikat tali",$('#i_tali').val(),$('#i_tali_hh').val(),$('#i_tali_mm').val() , 
                        "lepas tali", $('#l_tali').val(),$('#l_tali_hh').val(),$('#l_tali_mm').val() );
 if(val=="N") {return false;}

if($('#m_awal').val() > $('#m_akhir').val()){ alert("meter awal tidak boleh lebih besar dari meter akhir");  return false;}

if($('#ramp').val().trim() =='')
           {
               alert("Ramp Door harus dipilih");
               $('#ramp').focus();
               return false;
           }
if($('#pos_tambat').val().trim() =='')
           {
               alert("Posisi tambat  harus dipilih");
               $('#pos_tambat').focus();
               return false;
           }
        
   if($('#kd_kade').val().trim() =='')
           {
               alert("Kade tambat  harus dipilih");
               $('#kd_kade').focus();
               return false;
           }        


        if($('#cek_form').val().trim() == 'save')
           {
            showLoading1();
            $.ajax({
            type: "POST",
            url: "<%=request.getAttribute("baseUrl")%>realisasi_tambat?do=save&"+$(this).serialize(),
            timeout: 100000,
            cache: false,
            data :$(this).serialize(),
            success:  function(data){ $('#be-content').html(data);hideLoading1();},
            error: function (request, status, error) {
                            alert(request.responseText);
                        } });        
            return false;    
           }
        else{
        
            showLoading1();          
            $.ajax({
            type: "POST",
            url: "<%=request.getAttribute("baseUrl")%>realisasi_tambat?do=update&"+$(this).serialize(),
            timeout: 100000,
            cache: false,
            data :$(this).serialize(),
            success:  function(data){ $('#be-content').html(data);hideLoading1();},
            error: function (request, status, error) {
                            alert(request.responseText);
                        } });        
            return false;
        }
    });
    

function showLoading1(){
		$("#loading").css({visibility:"visible"})
		$("#loading").css({opacity:"1"})
		$("#loading").css({display:"block"});
	};
	//hide loading bar
function hideLoading1(){
		$("#loading").fadeTo(1000, 0);
	};
</script>