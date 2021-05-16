<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String userId = (String)session.getAttribute("userId");
	String userType = (String)session.getAttribute("userType");
%>
<!DOCTYPE html>
<html lang="en">
<style>
#noWhere {
	height: 90px;
	background-color: #f2f2f2;
}
#logo{
     height: 55px;
	background-color: #f2f2f2;
	text-align: center;
}

th, td {
	text-align: left;
	padding: 16px;
}

.mySlides {display:none;}

</style>
<head>
  <title>신발 사이트</title>

  <!-- Bootstrap core CSS -->
  <link href="/resource/vendor/bootstrap/css/qn.min.css" type="text/css" rel="stylesheet">

</head>

<body>
<header>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/">
      <span>신발</span>앱
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
        
          <li class="nav-item active">
            <a class="nav-link" href="/">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
         				<% 
      try{
    	  //로그인이 된 상태일 때.
      if(userId != null){ 
    	  out.print(userId);
      %>
				<li class="nav-item active"><a class="nav-link" href="http://localhost:8090/logout">로그아웃</a></li>	
				<%
				//로그인한 계정의 타입이 admin일 경우 관리자 페이지로 이동할 수 있는 앵커태그를 띄워준다.
		if(userType.equals("admin")){
			%> <li class="nav-item active"><a class="nav-link" href="http://localhost:8090/admin/list">관리자 페이지</a></li><% 
		}
				
				// 로그인이 안되어 있는 상태일 때.
      }else{ %>
				<li class="nav-item active"><a class="nav-link" href="http://localhost:8090/login">로그인</a></li>
				<li class="nav-item active"><a class="nav-link" href="http://localhost:8090/signup">회원가입</a></li>
				<% } 
      }catch(NullPointerException e){
      }
      	%>
				<li class="nav-item active"><a class="nav-link" href="http://localhost:8090/qna/list">QnA</a></li>
				<li class="nav-item active"><a class="nav-link" href="http://localhost:8090/notice/list">공지사항</a></li>
        </ul>
      </div>
    </div>
  </nav>
  
<div id="noWhere"></div>
<div id="logo"></div>
<hr>
</header>