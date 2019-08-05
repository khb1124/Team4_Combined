<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>Resort world</title>

<link href="../css/style.css" rel="Stylesheet" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>

<script type="text/JavaScript">
window.onload=function(){
  CKEDITOR.replace('content');  // <TEXTAREA>태그 id 값
};
</script>

</head> 

<body>
<DIV class='container' style='width: 100%;'>
<jsp:include page="/menu/top.jsp" flush='false' />
<DIV class='content' style='width: 90%;'> 

  <ASIDE style='float: left;'>
    <!-- 카테고리 그룹 > 해외 여행 > 스위스 -->
    <A href='../prodcategrp/list.do'>카테고리 그룹</A> >
    <A href='../prodcate/list_by_prodcategrpno.do?prodcategrpno=${prodcategrp_ProdcateVO.prodcategrpno }'>${prodcategrp_ProdcateVO.prodgrp_title }</A> > 
    <A href='./list_by_prodcateno_search_paging.do?prodcateno=${prodcategrp_ProdcateVO.prodcateno }&viewno=1&nowPage=1&prod_word=&customerno=${sessionScope.customerno}'>${prodcategrp_ProdcateVO.prodcate_title }</A>
    <!-- <A href='./list.do?prodcateno=${prodcategrp_ProdcateVO.prodcateno }'>${prodcategrp_ProdcateVO.prodcate_title }</A> -->
    > 등록  
  </ASIDE>
  <ASIDE style='float: right;'>
    <A href="javascript:location.reload();">새로고침</A>
    <span class='menu_divide' >│</span> 
    <A href='./create.do?prodcateno=${param.prodcateno}&nowPage=${param.nowPage }&viewno=${param.viewno }&customerno=${param.customerno }'>등록</A>
  </ASIDE> 

  <div class='menu_line'></div>
  <DIV class='content' style='width: 100%;'>
    <FORM name='frm' method='POST' action='./create.do'
               enctype="multipart/form-data" class="form-horizontal">
               
      <!-- 테스트를 위하여 카테고리를 1번 지정 -->         
      <input type='hidden' name='prodcateno' id='prodcateno' value='${param.prodcateno }'>
      
      <!-- 테스트를 위하여 회원번호를 1번 지정 -->
      <input type='hidden' name='adminno' id='mno' value='1'>
      <input type='hidden' name='nowPage' id='nowPage' value='${param.nowPage }'>
      <input type='hidden' name='viewno' id='viewno' value='${param.viewno }'>
      <input type='hidden' name='customerno' id='customerno' value='${param.customerno }'>

      
      <div class="form-group">   
        <label for="title" class="col-md-1 control-label">글 제목</label>
        <div class="col-md-11">
          <input type='text' class="form-control input-lg" name='prod_title' id='title' value='북해도를 다녀와서...' required="required" style='width: 80%;'>
        </div>
      </div>   
      <div class="form-group">   
        <label for="content" class="col-md-1 control-label">내용</label>
        <div class="col-md-11">
          <textarea class="form-control input-lg" name='prod_content' id='content'  rows='10'>즐거운 여행이었다.</textarea>
        </div>
      </div>
      <div class="form-group">   
        <label for="content" class="col-md-1 control-label">검색어</label>
        <div class="col-md-11">
          <input type='text' class="form-control input-lg" name='prod_word' id='word' value='일본,북해도,홋가이도,눈,아시아,회,초밥,눈 축제, 2박 3일'>
        </div>
      </div>
      <div class="form-group">   
        <label for="content" class="col-md-1 control-label">가격</label>
        <div class="col-md-4">
          <input type='text' class="form-control input-lg" name='prod_price' id='prod_price' value='0'>
        </div>
        <label for="content" class="col-md-1 control-label">ip</label>
        <div class="col-md-5">
          <input type='text' class="form-control input-lg" name='ip' id='ip' value='http://'>
        </div>
      </div>
      <div class="form-group">   
        <label for="filesMF" class="col-md-1 control-label">업로드 파일</label>
        <div class="col-md-11">
          <input type="file" class="form-control input-lg" name='filesMF' id='filesMF' size='40' multiple="multiple">
          <br>
          Preview(미리보기) 이미지는 자동 생성됩니다.
        </div>
      </div>   

      <DIV style='text-align: right;'>
        <button type="submit">등록</button>
        <button type='button' onclick='history.back()'>취소[제품 목록]</button>
        <!-- <button type="button" onclick="location.href='./list_by_prodcateno.do?prodcateno=${prodcategrp_ProdcateVO.prodcateno}'">취소[제품 목록]</button>-->
      </DIV>
    </FORM>
  </DIV>


</DIV> <!-- content END -->
<jsp:include page="/menu/bottom.jsp" flush='false' />
</DIV> <!-- container END -->
</body>

</html> 