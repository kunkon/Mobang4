<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/login/css/user_signup.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="resources/login/js/user_signup.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<%
	String email = (String) request.getParameter("email");
	String name = (String) request.getParameter("name");
	
	
%>
<body>
	<div class="container">
		<h2><a class="mobang" href="#">모방</a>｜ 회원가입</h2>
		<hr class="hr"/>
		<form:form class="form-horizontal" enctype="multipart/form-data" modelAttribute="LoginDto" action="usersignup.all" method="post">
			<div class="form-group">
				<input type="hidden" path="random" id="random" value="77777" />
				<label>이름</label>
			    <div class="col-sm-13">
			    <c:choose>
			    	<c:when test="${null ne name || name != ''}">
			    		<input type="text" class="form-control" id="name" name="name" value="<%=name %>">
			    	</c:when>
			    	<c:otherwise>
			    		<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력하세요.">
			    	</c:otherwise>
			    </c:choose>
					
			    </div>
			</div>
			<div class="form-group">
				<label>이메일</label>
				<div class="col-sm-13">
				    <c:choose>
				    	<c:when test="${null ne email || email != ''}">
				    		<input type="email" class="form-control" name="email" id="email" value="<%=email %>">
				    	</c:when>
				    	<c:otherwise>
				    		<input type="email" class="form-control" name="email" id="email" placeholder="이메일을 입력하세요.">
				    	</c:otherwise>
				    </c:choose>
					
					<input class="send" type="button" id="emailBtn" value="전송">
				</div>
			</div>
			<div class="form-group">
				<label>인증번호</label>
			    <div class="col-sm-13">
					<input type="text" class="form-control" id="code" name="code" placeholder="인증번호를 입력하세요.">
					<input class="email_confirm" type="button" id="emailAuthBtn" value="확인">
			    </div>
			</div>
			<div class="form-group">
			    <div class="col-sm-13">
			    	<label for="inputPassword">비밀번호</label>
					<input type="password" class="form-control" name="pwd" placeholder="비밀번호를 입력하세요.">
			    </div>
			</div>
			<div class="form-group">
				<label for="inputPassword">비밀번호 확인</label>
			    <div class="col-sm-13">
					<input type="password" class="form-control" name="pwd_confirm"  placeholder="비밀번호를 입력하세요.">
			    </div>
			</div>
			<div class="form-group">
				<label>휴대폰 번호</label>
			    <div class="col-sm-9">
					<input type="tel" class="form-control" name="phone" placeholder="핸드폰 번호를  입력하세요.">
			    </div>
			    <div class="custom-control custom-checkbox col-sm-5" id="request_roomate">
						<input type="checkbox" id="request_checkbox" name="requestRoomate" class="custom-control-input">
						<label class="custom-control-label" for="request_checkbox">룸메이트 신청하기😊</label>
				</div>
			</div>
			<div id="roomate">
				<div class="form-group">
					<label class="room_label">청결도</label>
				   	<div class="d-flex justify-content-center my-4">	
					    <input id="slider11" class="custom-range" name="clean" type="range" min="0" max="10" step="1" />
					  <span class="font-weight-bold ml-2 mt-1 valueSpan" id="number_span"></span>
					</div>
					<div class="row">
						  <div class="col-md-10"><label id="derty">더러움</label></div>
						  <div class="col-md-2"><label id="clean">깔끔함</label></div>
					</div>
				</div>
				<label class="room_label">생활패턴</label>
				<div class="row">
					<!-- Group of default radios - option 1 -->
					<div class="custom-control custom-radio col-sm-6">
					  	<input type="radio" class="custom-control-input" id="morning_radio" name="lifestyle" value="아침형" checked>
					  	<label class="custom-control-label" for="morning_radio">아침형</label>
					</div>
					
					<!-- Group of default radios - option 2 -->
					<div class="custom-control custom-radio col-sm-6">
						  <input type="radio" class="custom-control-input" id="night_radio" value="올빼미형" name="lifestyle">
						  <label class="custom-control-label" for="night_radio">올빼미형</label>
					</div>
				</div>
				<label class="room_label">샤워습관</label>
				<div class="row">
					<!-- Group of default radios - option 1 -->
					<div class="custom-control custom-radio col-sm-4">
					  	<input type="radio" class="custom-control-input" id="morningshower_radio" value="아침형" name="shower" checked>
					  	<label class="custom-control-label" for="morningshower_radio">아침형</label>
					</div>
					
					<!-- Group of default radios - option 2 -->
					<div class="custom-control custom-radio col-sm-4">
						  <input type="radio" class="custom-control-input" id="nightshower_radio" value="저녁형" name="shower" >
						  <label class="custom-control-label" for="nightshower_radio">저녁형</label>
					</div>
					
					<div class="custom-control custom-radio col-sm-4">
						  <input type="radio" class="custom-control-input" id="allshower_radio" value="둘다" name="shower">
						  <label class="custom-control-label" for="allshower_radio">둘다</label>
					</div>
				</div>
				<label class="room_label">선호연령</label>
				<div class="row">
					<!-- Group of default radios - option 1 -->
					<div class="custom-control custom-radio col-sm-4">
					  	<input type="radio" class="custom-control-input" id="age_10" value="19-24" name="age" checked>
					  	<label class="custom-control-label" for="age_10">19-24</label>
					</div>
					
					<!-- Group of default radios - option 2 -->
					<div class="custom-control custom-radio col-sm-4">
						  <input type="radio" class="custom-control-input" id="age_20" value="25-29" name="age" >
						  <label class="custom-control-label" for="age_20">25-29</label>
					</div>
					
					<div class="custom-control custom-radio col-sm-4">
						  <input type="radio" class="custom-control-input" id="age_all" value="상관없음" name="age" >
						  <label class="custom-control-label" for="age_all">상관없음</label>
					</div>
				</div>
				<label class="room_label">성별</label>
				<div class="row">
					<!-- Group of default radios - option 1 -->
					<div class="custom-control custom-radio col-sm-6">
					  	<input type="radio" class="custom-control-input" id="man" value="남" name="gender" checked>
					  	<label class="custom-control-label" for="man">남</label>
					</div>
					
					<!-- Group of default radios - option 2 -->
					<div class="custom-control custom-radio col-sm-6">
						  <input type="radio" class="custom-control-input" id="woman" value="여" name="gender">
						  <label class="custom-control-label" for="woman">여</label>
					</div>
				</div>
				<label class="room_label">애완동물</label>
				<div class="row">
					<!-- Group of default radios - option 1 -->
					<div class="custom-control custom-radio col-sm-6">
					  	<input type="radio" class="custom-control-input" id="yes" value="가능" name="animal" checked>
					  	<label class="custom-control-label" for="yes">가능</label>
					</div>
					
					<!-- Group of default radios - option 2 -->
					<div class="custom-control custom-radio col-sm-6">
						  <input type="radio" class="custom-control-input" id="no" value="불가능" name="animal" >
						  <label class="custom-control-label" for="no">불가능</label>
					</div>
				</div>
				<div>
					
				</div>
				<div class="form-group">
					<label class="room_label">지켜줬음 해</label>
				    <div class="col-sm-13">
						<textarea class="form-control" name="needs" rows="3"></textarea>
				    </div>
				</div>
				<div class="form-group">
					<label class="room_label">범죄이력 증명서</label>
				    <div class="col-sm-13">
						<input type="text" class="form-control" placeholder="파일 업로드 넣어야함!">
				    </div>
				</div>
			</div>
			<div class="button_group">
				<input class="signup_btn" type="submit" value="회원가입">
			</div>
		</form:form>				
	</div>
</body>
</html>