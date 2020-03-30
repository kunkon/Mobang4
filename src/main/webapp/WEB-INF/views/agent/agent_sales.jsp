<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모방</title>
<link rel="stylesheet" type="text/css" href="resources/agent/css/reset.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700&display=swap&subset=korean" rel="stylesheet">
<!-- 무료 webfonts. "fonts.google.com" 에서 가져올 수 있음.
    웹폰트를 link로 가져올 때는 title 아래에, @import로 가져올 경우엔 style 태그 안에 붙여넣음.
    현재 가져온 글꼴은 'Noto Sans KR' - 윤고딕 기반 고딕체로 나눔 고딕과 더불어 웹사이트에 흔히 쓰이는 글꼴 중 하나
    font-family: 'Noto Sans KR', sans-serif; 로 불러들여와 사용한다.
-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<style type="text/css">
@font-face { font-family: 'RIDIBatang'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff'); font-weight: normal; font-style: normal; }
/* 기본 스타일 초기화 태그 -> 초기화를 하는 이유? 브라우저마다 각각의 태그에 들어있는 default style이 다르므로, 브라우저마다 레이아웃이 달라지는 오류를 범하기 위해 초기화를 선언해준다. */
*{margin: 0; padding: 0;} /* *는 모든 태그에 적용되는 스타일이므로 신중히 사용해야함. 전체 태그에 들어있는 margin과 padding을 없애준다. */
/* a태그엔 기본적으로 text-decoration: underline 이 적용되어있어 a태그를 사용하면 텍스트 아래 밑줄이 자동으로 생긴다. 이를 없애주기 위한 것. color:inherit은 a태그는 부모요소의 color를 상속받지 않아서 일일히 a태그에 color스타일을 지정해줘야 하는데 이런 불편함을 없애기 위해 inherit(상속)속성을 미리 지정해준다.*/
ul,li,ol{
    list-style: none;
}
button{
    border: none;
}
/************************* 초기화 끝***/

	.saleswrap {width:100%; min-height: 100vh;}
    #prim_p {
    	background-color: #f5f5f5;
    }
    #plus_p {
    	background-color: #eee;
    }
    .container {
        width: 1200px;
        margin: 0 auto; /*block요소를 가운데로 오게 해준다.*/
    }

    .top_container {position: relative; width: 100%; min-width:1200px; background-color: rgb(51,85,139); color: rgb(255,255,255); height: 300px; margin-top: 150px;
			text-align: center; font-size: 50px; line-height: 3.5;  padding-top: 30px;}
    .top_container .item{
      color: #fff;
      font-size: 0.3em;
      margin-right: 1em;
      padding: 0 8px 5px;
      box-sizing: border-box;}
      /* box-sizing은 padding을 썼을 때 기존 크기보다 더 커지지 않게 해준다 */
    
    .top_container .item:hover{
        /* :hover 마우스를 올릴 시 */
        border-bottom: 1.5px solid #fff;
    }
    .top_container a:last-of-type{
        /* a태그의 마지막 태그 */
        margin-right: 0;
    }
   .badge {
      border-radius : 2px;
      background-color: rgb(180, 142, 35);
      color: #fff;
      padding : 2px 5px;
      font-size: .7em;
      vertical-align: text-top;
      /* display속성이 inline인 요소들에 한하여 수평정렬을 맞출 수 있게 해줌. text-top은 텍스트 기준으로 위쪽으로 정렬. 보통 middle을 많이씀 */
      margin-right: 3px;
   }
   .sales_view {
      text-align: left;
      padding: 100px 0;
      border-bottom: 1px solid gray;
   }
   .sales_view .sales_text{
       position: absolute;
       left: 120px; 
       top:50%;
       transform: translateY(-50%);
       /* transform은 변형설정. translate(이동) skew(비틀기) rotate(회전) 등의 설정을 할 수 있음. 보통 top:50% 와 translateY(-50%)을 같이 쓰면 중앙으로 정렬됌. */
   }
   .sales_view .container{
        position: relative;
        height: 250px;
   }
   .sales_view .container._01{
       margin-bottom: 100px;
   }
   .sales_view .container._img{
        text-align: center;
        height: 400px;
        padding-top: 50px;
        box-sizing: border-box;
   }
   .sales_text p{
       line-height: 2;
       /* 줄간격 */
   }
   .sales_text h1{
       margin-bottom: 1em;
       font-size: 2em;
   }
   .sales_text+img{
       position: absolute;
       right: 120px;
       top:50%;
       transform: translateY(-50%);
   }
   .sales_item_img {
      height: 168px;
      margin-bottom: 15px;
   }
   
   .sales_item {
       width: 40%;
       text-align: center;
       display: inline-block;
       /* inline처럼 붙는 block임 */
   }
   .sales_item_pri {
       width: 30%;
       text-align: center;
       display: inline-block;
       /* inline처럼 붙는 block임 */
   }
   .sales_item .summary::after{
       content: '';
       width:50%;
       height: 1px;
       background-color: #ddd;
       display: block;
       margin: 2em auto 1em;
   }
   .sales_item .summary+div h1{
       margin-bottom: 1em;
       color: rgb(51,85,139);
       font-size: 2em;
   }
   .sales_item .summary>*{
       /* summary 자손의 모든태그를 뜻함 */
       margin-bottom: 10px;
   }
   .item_buy {
      background-color:  rgb(51,85,139);
      color: #fff;
      font-size: 18px;
      padding : 15px 30px;
   }
   .item_prem_buy {
   	  background-color:  rgb(51,85,139);
      color: #fff;
      font-size: 18px;
      padding : 15px 30px;
   }
</style>
<body>
<%@ include file="form/agent_header.jsp" %>
	<div class = "saleswrap">
    <div class = "top_container">
                $ 구매하기
                <div>
                <a class ="item" onclick="">일반 상품</a>
                <a class ="item" onclick="">프리미엄 상품</a>
                <a class ="item" onclick="">플러스 상품</a>
                </div>
    </div>
    <section id = "no_p" class = "sales_view">
    	<div class = "container _01">
    		<div class ="sales_text">
    			<h1>원하는 매물을<br>등록할 수 있는 일반 상품</h1>
    			<p>원룸, 투룸, 오피스텔, 아파트 등 원하는 매물을 등록할 수 있습니다</p>
    		</div>
    		<img class = "sales_view_img" src="https://pro.dabangapp.com/static/media/general.6822e11a.png" alt = "이미지 표시불가" height="350">
    	</div>
    	<div class = "container _img">
    	<form method="get" action="agent_pay.agent">
    		<ul>
    			<li class = "sales_item">
    				<div class="summary">
    					<svg width="160" height="74" viewBox="0 0 160 74"><g fill="none" fill-rule="evenodd" transform="translate(30 22)"><g fill="#BDC0C4" fill-rule="nonzero"><path d="M90.965 51H75.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 90.965 51zM83 43a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 83 43z"></path><path d="M0 51h100v1H0z"></path></g><path stroke="#BDC0C4" d="M81.986 43.443c-.003-2.58-.003-5.061 0-7.443H64.003L64 51.5h17.982"></path><path stroke="#BDC0C4" stroke-linejoin="round" d="M41 51V36h11v15"></path><path stroke="#BDC0C4" stroke-linecap="square" d="M41 26h-6v5h6z"></path><path fill="#BDC0C4" d="M28 24h1v24h-1zM64 24h1v12h-1z"></path><path stroke="#BDC0C4" stroke-linecap="square" d="M57 26h-6v5h6z"></path><path stroke="#BDC0C4" d="M27 19.987V5.544h6v8.569M25.5 1.5h9v4h-9z"></path><path fill="#BDC0C4" d="M67 39h12v1H67zM67 42h12v1H67z"></path><circle cx="44" cy="43" r="1" stroke="#BDC0C4"></circle><path fill="#BDC0C4" fill-rule="nonzero" d="M30.965 51H15.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 30.965 51zM23 43a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 23 43z"></path><path fill="#FFF" stroke="#BDC0C4" d="M46.526.04l.01-.01L74.82 28.313l-3.536 3.535-24.81-24.81-24.938 24.81L18 28.314 46.487 0z"></path></g></svg>
    					<h2>원/투/쓰리룸 일반 상품</h2>
    					<p>단독, 다가구, 다세대 등 <br/>매물 10개를 등록할 수 있습니다.</p>
    				</div>
    				<div>
    					<h1>88,000원</h1>
    					<button class = "item_buy" onclick="location.href = 'agent_pay.agent'">구매하기</button>
    				</div>
    			</li>
    			<li class = "sales_item">
    				<div class="summary">
    					<svg width="160" height="74" viewBox="0 0 160 74"><g fill="none" fill-rule="evenodd"><g fill-rule="nonzero"><path class="stroke" stroke="#BDC0C4" d="M76.5 64.5h7v9h-7zM75.5 62.5h9v2h-9z"></path><path class="stroke" stroke="#BDC0C4" d="M68.5 73.5h23v-49h-23v49z"></path><path class="fill" fill="#BDC0C4" d="M74 41h12v1H74zM74 37h12v1H74zM74 33h12v1H74zM74 29h12v1H74zM74 45h12v1H74zM74 49h12v1H74zM74 53h12v1H74z"></path><g class="fill" fill="#BDC0C4"><path d="M92 73h12V39H92v34zm13-7h-1v8H91V38h14v28z"></path><path d="M96 46h4v1h-4zM96 51h4v1h-4zM96 56h4v1h-4zM96 61h4v1h-4z"></path></g><g class="fill" fill="#BDC0C4"><path d="M56 73h12V32H56v41zm-1-3v4h1v-8h-1v4-39h14v43H55v-4z"></path><path d="M60 39h4v1h-4zM60 44h4v1h-4zM60 49h4v1h-4zM60 54h4v1h-4zM60 59h4v1h-4z"></path></g><path class="fill" fill="#BDC0C4" d="M109.965 73H94.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996 3.502 3.502 0 0 1 3.06 2.977zM102 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 102 65zM65.965 73H50.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 65.965 73zM58 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 58 65z"></path><path class="fill" fill="#BDC0C4" d="M30 73h100v1H30z"></path></g><path class="stroke" stroke="#BDC0C4" stroke-linecap="square" d="M91 18H69v3h22zM88 21H72v3.418h16z"></path></g></svg>
    					<h2>오피스텔 일반 상품</h2>
    					<p>오피스텔 매물 5개를<br/> 등록할 수 있습니다.</p>
    				</div>
    				<div>
    					<h1>44,000원</h1>
    					<button class = "item_buy" onclick = "location.href = 'agent_pay2.agent'">구매하기</button>
    				</div>
    			</li>
    		</ul>
    	</form>	
    	</div>
    </section>
    <section id = "prim_p" class = "sales_view">
    	<div class = "container _01">
    		<div class = "sales_text">
                <h1>동이름, 지하철역, 대학교로<br/>검색시 최상단에 노출</h1>
                <p>동이름, 지하철역, 대학교로 검색했을 때<br/>가장 상단에 보유 매물이 노출되는 상품입니다.<br>동일한 검색어를 기준으로 최대 4개 중개사무소만 구매할 수 있습니다.</p>
            </div>
            <img class = "sales_view_img" src="https://pro.dabangapp.com/static/media/intro.439dc03c.png" alt = "이미지 표시불가" height="350">
    	</div>
    	<div class = "container _img">
    		<ul>
                <li class ="sales_item sales_item_pri">
                    <div class="summary">
                        <svg width="160" height="74" viewBox="0 0 160 74"><g fill="none" fill-rule="evenodd"><g fill-rule="nonzero"><path class="stroke" stroke="#BDC0C4" d="M76.5 64.5h7v9h-7zM75.5 62.5h9v2h-9z"></path><path class="stroke" stroke="#BDC0C4" d="M68.5 73.5h23v-49h-23v49z"></path><path class="fill" fill="#BDC0C4" d="M74 41h12v1H74zM74 37h12v1H74zM74 33h12v1H74zM74 29h12v1H74zM74 45h12v1H74zM74 49h12v1H74zM74 53h12v1H74z"></path><g class="fill" fill="#BDC0C4"><path d="M92 73h12V39H92v34zm13-7h-1v8H91V38h14v28z"></path><path d="M96 46h4v1h-4zM96 51h4v1h-4zM96 56h4v1h-4zM96 61h4v1h-4z"></path></g><g class="fill" fill="#BDC0C4"><path d="M56 73h12V32H56v41zm-1-3v4h1v-8h-1v4-39h14v43H55v-4z"></path><path d="M60 39h4v1h-4zM60 44h4v1h-4zM60 49h4v1h-4zM60 54h4v1h-4zM60 59h4v1h-4z"></path></g><path class="fill" fill="#BDC0C4" d="M109.965 73H94.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996 3.502 3.502 0 0 1 3.06 2.977zM102 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 102 65zM65.965 73H50.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 65.965 73zM58 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 58 65z"></path><path class="fill" fill="#BDC0C4" d="M30 73h100v1H30z"></path></g><path class="stroke" stroke="#BDC0C4" stroke-linecap="square" d="M91 18H69v3h22zM88 21H72v3.418h16z"></path></g></svg>
                        <h2>동 프리미엄 검색</h2>
                    </div>
                    <div>
                        <h1>142,000원</h1>
                        <button class = "item_prem_buy" onclick="location.href = 'agent_premium_sales.agent'">자세히 보기</button>
                    </div>
                </li>
                <li class = "sales_item sales_item_pri">
                    <div class="summary">
                        <svg width="160" height="74" viewBox="0 0 160 74"><g fill="none" fill-rule="evenodd"><g fill-rule="nonzero"><path class="stroke" stroke="#BDC0C4" d="M76.5 64.5h7v9h-7zM75.5 62.5h9v2h-9z"></path><path class="stroke" stroke="#BDC0C4" d="M68.5 73.5h23v-49h-23v49z"></path><path class="fill" fill="#BDC0C4" d="M74 41h12v1H74zM74 37h12v1H74zM74 33h12v1H74zM74 29h12v1H74zM74 45h12v1H74zM74 49h12v1H74zM74 53h12v1H74z"></path><g class="fill" fill="#BDC0C4"><path d="M92 73h12V39H92v34zm13-7h-1v8H91V38h14v28z"></path><path d="M96 46h4v1h-4zM96 51h4v1h-4zM96 56h4v1h-4zM96 61h4v1h-4z"></path></g><g class="fill" fill="#BDC0C4"><path d="M56 73h12V32H56v41zm-1-3v4h1v-8h-1v4-39h14v43H55v-4z"></path><path d="M60 39h4v1h-4zM60 44h4v1h-4zM60 49h4v1h-4zM60 54h4v1h-4zM60 59h4v1h-4z"></path></g><path class="fill" fill="#BDC0C4" d="M109.965 73H94.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996 3.502 3.502 0 0 1 3.06 2.977zM102 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 102 65zM65.965 73H50.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 65.965 73zM58 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 58 65z"></path><path class="fill" fill="#BDC0C4" d="M30 73h100v1H30z"></path></g><path class="stroke" stroke="#BDC0C4" stroke-linecap="square" d="M91 18H69v3h22zM88 21H72v3.418h16z"></path></g></svg>
                        <h2>지하철 프리미엄 검색</h2>
                    </div>
                    <div>
                        <h1>233,000원</h1>
                        <button class = "item_prem_buy" onclick="location.href = 'agent_premium_sales.agent'">자세히 보기</button>
                    </div>
                </li>
                <li class = "sales_item sales_item_pri">
                    <div class="summary">
                        <svg width="160" height="74" viewBox="0 0 160 74"><g fill="none" fill-rule="evenodd"><g fill-rule="nonzero"><path class="stroke" stroke="#BDC0C4" d="M76.5 64.5h7v9h-7zM75.5 62.5h9v2h-9z"></path><path class="stroke" stroke="#BDC0C4" d="M68.5 73.5h23v-49h-23v49z"></path><path class="fill" fill="#BDC0C4" d="M74 41h12v1H74zM74 37h12v1H74zM74 33h12v1H74zM74 29h12v1H74zM74 45h12v1H74zM74 49h12v1H74zM74 53h12v1H74z"></path><g class="fill" fill="#BDC0C4"><path d="M92 73h12V39H92v34zm13-7h-1v8H91V38h14v28z"></path><path d="M96 46h4v1h-4zM96 51h4v1h-4zM96 56h4v1h-4zM96 61h4v1h-4z"></path></g><g class="fill" fill="#BDC0C4"><path d="M56 73h12V32H56v41zm-1-3v4h1v-8h-1v4-39h14v43H55v-4z"></path><path d="M60 39h4v1h-4zM60 44h4v1h-4zM60 49h4v1h-4zM60 54h4v1h-4zM60 59h4v1h-4z"></path></g><path class="fill" fill="#BDC0C4" d="M109.965 73H94.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996 3.502 3.502 0 0 1 3.06 2.977zM102 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 102 65zM65.965 73H50.17a3 3 0 0 1 3.234-3.973 5.001 5.001 0 0 1 9.5.996A3.502 3.502 0 0 1 65.965 73zM58 65a6 6 0 0 0-5.2 3.005 4 4 0 0 0-3.572 5.328 1 1 0 0 0 .943.667h15.794a1 1 0 0 0 .99-1.142 4.504 4.504 0 0 0-3.24-3.692A6.003 6.003 0 0 0 58 65z"></path><path class="fill" fill="#BDC0C4" d="M30 73h100v1H30z"></path></g><path class="stroke" stroke="#BDC0C4" stroke-linecap="square" d="M91 18H69v3h22zM88 21H72v3.418h16z"></path></g></svg>
                        <h2>캠퍼스 프리미엄 검색</h2>
                    </div>
                    <div>
                        <h1>130,000원</h1>
                        <button class = "item_prem_buy" onclick="location.href = 'agent_premium_sales.agent'">자세히 보기</button>
                    </div>
                </li>
           </ul>
    	</div>
    </section>
    <section id = "plus_p" class = "sales_view">
        <div class = "container _01">
            <div class = "sales_text">
                <h1>효율적인 광고 효과를<br>경험하고 싶다면?</h1>
                <p>매물에 <span class="badge">플러스+</span>아이콘이 추가되며<br>
                적용시 일반 매물보다 검색결과 상단에 노출됩니다.<br>
                낮은 비용으로 높은 광고효과를 경험해 보세요.</p>
            </div>
            <img class = "sales_view_img" src="https://cdn.worldvectorlogo.com/logos/thumbs-up-facebook.svg" alt = "이미지 표시불가" height="250">
        </div>
        <div class = "container _img">
            <ul>
                <li class = "sales_item">
                    <div class="summary">
                        <svg width="95" height="79" viewBox="0 0 95 79" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M14 26L15 25V69H14V26Z" fill="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M0 68H30V69H0V68Z" fill="#BDC0C4"></path><path d="M32 30C33.6569 30 35 28.6569 35 27C35 25.3431 33.6569 24 32 24C30.3431 24 29 25.3431 29 27C29 28.6569 30.3431 30 32 30Z" stroke="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M50 25L51 26V42H50V25Z" fill="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M32.526 1.04L32.536 1.03L60.82 29.313L57.284 32.848L32.474 8.038L7.536 32.848L4 29.314L32.487 1L32.526 1.04Z" stroke="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M30 42.2V70.642H40.696L42.054 68.53L43.244 70.642H86.896V42.2H43.404L42.054 44.805L40.696 42.2H30Z" stroke="#BDC0C4"></path><path d="M42.015 63.8V65.827M42.015 53.6V55.627V53.6ZM42.015 48.2V50.227V48.2ZM42.015 59V61.027V59Z" stroke="#BDC0C4" stroke-width="0.6"></path><rect x="63.3" y="49.5" width="1.4" height="14" fill="#BDC0C4"></rect><rect x="57" y="55.8" width="14" height="1.4" fill="#BDC0C4"></rect></svg>
                        <h2>플러스 정기권</h2>
                        <p>누구나 구매 가능합니다.</p>
                    </div>
                    <div>
                        <h1>18,000원</h1>
                        <button class = "item_buy">구매하기</button>
                    </div>
                </li>
                <li class = "sales_item">
                    <div class="summary">
                        <svg width="95" height="79" viewBox="0 0 95 79" fill="none"><path fill-rule="evenodd" clip-rule="evenodd" d="M14 26L15 25V69H14V26Z" fill="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M0 68H30V69H0V68Z" fill="#BDC0C4"></path><path d="M32 30C33.6569 30 35 28.6569 35 27C35 25.3431 33.6569 24 32 24C30.3431 24 29 25.3431 29 27C29 28.6569 30.3431 30 32 30Z" stroke="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M50 25L51 26V42H50V25Z" fill="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M32.526 1.04L32.536 1.03L60.82 29.313L57.284 32.848L32.474 8.038L7.536 32.848L4 29.314L32.487 1L32.526 1.04Z" stroke="#BDC0C4"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M30 42.2V70.642H40.696L42.054 68.53L43.244 70.642H86.896V42.2H43.404L42.054 44.805L40.696 42.2H30Z" stroke="#BDC0C4"></path><path d="M42.015 63.8V65.827M42.015 53.6V55.627V53.6ZM42.015 48.2V50.227V48.2ZM42.015 59V61.027V59Z" stroke="#BDC0C4" stroke-width="0.6"></path><path d="M68.28 62.26V63.74H60.36V62.26H63.62V52.22C63.62 52.0733 63.62 51.9067 63.62 51.72C63.62 51.52 63.6267 51.3467 63.64 51.2L60.98 53.58L60 52.4L63.94 49H65.4V62.26H68.28Z" fill="#BDC0C4"></path></svg>
                        <h2>플러스 1일권</h2>
                        <p>누구나 구매 가능합니다.</p>
                    </div>
                    <div>
                        <h1>1,000원</h1>
                        <button class = "item_buy">구매하기</button>
                    </div>
                </li>
           </ul>
		</div>
    </section>
	</div>
<%@ include file="form/agent_footer.jsp" %>
</body>
</html>