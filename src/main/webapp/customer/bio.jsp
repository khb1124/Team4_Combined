<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="index" lang="ko" style="">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=2.0">
<meta name="theme-color" content="#333399" />
<title>리셰</title>

<link rel="apple-touch-icon" sizes="57x57" href="./chimaki/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="./chimaki/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="./chimaki/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="./chimaki/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="./chimaki/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="./chimaki/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="./chimaki/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="./chimaki/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="./chimaki/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="./chimaki/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="./chimaki/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="./chimaki/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="./chimaki/favicon-16x16.png">
<link rel="manifest" href="./chimaki/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="./chimaki/ms-icon-144x144.png">

      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
            rel="stylesheet">
      
      <link href="${pageContext.request.contextPath}/css/kori.css" rel="Stylesheet" type="text/css"> 
      <link href="${pageContext.request.contextPath}/css/richer.css" rel="Stylesheet" type="text/css"> 
      <link href="${pageContext.request.contextPath}/css/footer.css" rel="Stylesheet" type="text/css"> 
      
      
      <script type="text/JavaScript"
        src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   

      <script type="text/javascript">
      $(function () {
      });
      
      </script>
        
        
<style type="text/css">

</style>
</head>
<body style="">
<jsp:include page="/menu/top_index.jsp" flush='false' />
  <div class="container mt-3" style="min-height : 100vh;">
    <div class="row">
      <div class="col-md-3">
        <jsp:include page="/menu/customer_settings.jsp" flush='false' />
      </div>
      <div class="col-md-9">
      
<!-- 이용자(customer) 공간 -->
  
  <c:choose>
    <c:when test="false">
    </c:when>
    <c:otherwise>
    <div class="card bg-dark text-white">
      <img class="card-img" src="${pageContext.request.contextPath}/css/tu10.jpg" alt="Card image">
      <div class="card-img-overlay">
      <%-- 
        <img src="./admin/bio/${customerInclVO.customerno}/imgs/${customerInclVO.profileimg }" alt="..." class="img-thumbnail float-right" style="max-height: 200px;max-width: 360px;">
         --%>
         <%-- 
        <div class="btn-group float-right mr-2" role="group">
        <button type="button" class="btn btn-danger" onclick="">탈퇴</button>
        <button type="button" class="btn btn-info" onclick="">${customerInclVO.customerstatschar }</button>
        </div>
         --%>
        
        
        <div class="btn-group float-right mr-2" role="group">
        <button type="button" class="btn btn-warning" onclick="">비밀번호 변경</button>
        <a role="button" class="btn btn-info" href="./update.do?customerno=${customerInclVO.customerno }">회원 정보 변경</a>
        </div>
        
        <span class="card-title h4">${customerInclVO.name }</span>
        <p class="card-text">@${customerInclVO.id }</p>
        <p class="card-text">${customerInclVO.email }</p>
        <p class="card-text">${customerInclVO.phone1 }</p>
        <c:if test="${customerInclVO.customerstatscodeno != 1 }">
        <p class="card-text">${customerInclVO.phone2 }</p>
        <p class="card-text">(${customerInclVO.zipcode })${customerInclVO.address } ${customerInclVO.address2 }</p>
        </c:if>
        <p class="card-text">${customerInclVO.rdate }에 가입</p>
      </div>
    </div>
    </c:otherwise>
  
  </c:choose>
  
  
<!-- /이용자(customer) 공간 -->

      </div>
    </div>
  
  
  
  
  
  </div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
</html>