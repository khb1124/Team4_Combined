<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
request.setCharacterEncoding("utf-8"); 
String root = request.getContextPath();
%>
<!DOCTYPE html>
<html class="admin" lang="ko" style="">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=2.0">
<title>지능형PC쇼핑몰</title>
<jsp:include page="/admin/ssi.jsp"></jsp:include>

      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
      
      <link href="${pageContext.request.contextPath}/css/richer.css" rel="Stylesheet" type="text/css"> 
      <link href="${pageContext.request.contextPath}/css/nanami.css" rel="Stylesheet" type="text/css"> 
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
      

    <!-- Bootstrap-Iconpicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-iconpicker/1.10.0/css/bootstrap-iconpicker.min.css"/>
    
      <script type="text/JavaScript"
        src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   
      <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>  -->  
      
    <!-- Bootstrap-Iconpicker Bundle -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-iconpicker/1.10.0/js/bootstrap-iconpicker.bundle.min.js"></script>
        <!-- bootstrap-select : 카테고리 및 코드 선택용 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/i18n/defaults-*.min.js"></script>
    
        
        
      <script type="text/javascript">
      var frm = $('#frm');//폼이 여러개 있을 경우
      
      $(function(){
        //window.history.replaceState("", "", "./empty.jsp");
        $('[data-toggle="tooltip"]').tooltip();
      });
      
      
      </script>
        
        
<style type="text/css">

</style>
</head>
<body style="">
<jsp:include page="/menu/top_admin.jsp" flush='false' />

<div class="content-wrapper flex-fill px-2 pr-md-4">
  <div class="row clearfix">
  <div class="pt-5 pb-4"></div>
  <!-- 페이지 위치 구간 -->
  <nav aria-label="breadcrumb">
  <ol class="breadcrumb bg-transparent">
    <li class="breadcrumb-item active" aria-current="page"><a href="javascript:location.reload();"><i class="material-icons">home</i></a></li>
    <li class="breadcrumb-item" aria-current="page">대시보드</li>
  </ol>
  </nav>
  <!-- /페이지 위치 구간 종료 -->
  
  <div class="container col-xs-12">
  <!-- 알림 메시지 구간 -->
  <c:if test="${result == 1 }">
  <div class="alert alert-dismissible fade show  ${al_class }" role="alert">
    <strong>${name }</strong> ${msg }
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
  </div>
  </c:if>
  <!-- /알림 메시지 구간 종료 -->
  <!-- 내용 합치는 구간 -->
  <form method="get" action="./list_by_search_paging.do">
<ASIDE style='float: left;'>
 <A href='./list_by_search_paging.do?nowPage=${param.nowPage}' >이벤트</A> 

   <c:if test="${param.word.length() > 0}"> 
      >
      [${param.word}] 검색 목록(${search_count } 건) 
    </c:if>
 </ASIDE>
  <ASIDE style='float: right;'>
    <A href="javascript:location.reload();">새로 고침</A> 
    <span class='menu_divide'> |</span>
    <A href='./create.do'>글쓰기</A> 
    <input type='hidden' name='eventno' id='eventno' value='${eventVO.eventno }'>
    <span class='menu_divide' >│</span> 
    <c:choose>
      <c:when test="${param.word != '' }">
        <input type='text' name='word' id='word' value='${param.word }' style='width: 35%;'>
      </c:when>
      <c:otherwise>
        <input type='text' name='word' id='word' value='' style='width: 35%;'>
      </c:otherwise>
    </c:choose>
    <button type='submit'>검색</button>
    </ASIDE> 
</form>
  <div class='menu_line' style='clear: both;'></div>       

 <TABLE class='table table-striped'>
  <colgroup>
    <col style='width: 5%;'/>
    <col style='width: 15%;'/>
    <col style='width: 50%;'/>
    <col style='width: 20%;'/>
    <col style='width: 20%;'/>
  </colgroup>
  <thead>  
  <TR>
    <TH style='text-align: center ;'>번호</TH>
    <TH style='text-align: center ;'>      </TH>
    <TH style='text-align: center ;'>제목</TH>
    <TH style='text-align: center ;'>날짜</TH>
    <TH style='text-align: center ;'>기타</TH>
    
  </TR>
  </thead>
      <tbody id='tbody_panel' data-nowPage='0' data-endPage='0'>
    <c:forEach var="eventVO" items="${list }" varStatus="info">
  <TR>
    <TD style='text-align: center ;'>${info.count }</TD>
        
            <td style='vertical-align: middle;'>
            <c:choose>
              <c:when test="${eventVO.e_thumb1 != ''}">
                <a href="./read.do?eventno=${eventVO.eventno}&word=${param.word}&nowPage=${param.nowPage}">
                <IMG id='e_thumb1' src='./storage/${eventVO.e_thumb1}' > <!-- 이미지 파일명 출력 -->
                </a>
              </c:when>
              <c:otherwise>
                <IMG id='e_thumb1' src='./images/none1.png' style='width: 120px; height: 80px;'> <!-- 파일이 존재하지 않는 경우 -->
              </c:otherwise>
            </c:choose>
            </td>
     <td style='vertical-align: middle;'>              
    <a href="./read.do?eventno=${eventVO.eventno}&word=${param.word}&nowPage=${param.nowPage}">${eventVO.e_title }</a>
    </td>
    <td style='text-align: center ;'>${eventVO.rdate.substring(0, 10) }</td>
    <TD>
      <A href="./update.do?eventno=${eventVO.eventno }&word=${param.word}&nowPage=${param.nowPage}"><i class="material-icons">
create
</i></A>
      <A href='./delete.do?eventno=${eventVO.eventno }&word=${param.word}&nowPage=${param.nowPage}'><i class="material-icons text-danger">remove_circle</i></A>
    </TD>
  </TR>
  </c:forEach> 
  </tbody>
  
</table>
  <DIV class='bottom_menu'>${paging }</DIV>
  <br><br>
    
  
  <!-- /내용 합치는 구간 종료 -->
  </div> <!-- end col -->
  </div> <!-- end row -->
</div> <!-- end content-wrapper -->
</div>
  
  <div class="pt-5">
  
  </div>
  
  
  
  <!-- 스크롤 문제 해결을 위해 아래 여백 설정-->
  <div class="p-5"></div>
  <jsp:include page="/menu/bottom_admin.jsp" flush='false' />
</body>
</html>