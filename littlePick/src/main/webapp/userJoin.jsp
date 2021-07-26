<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>

<!-- 
        정적자원들은 resources 폴더에 저장
	 현재 프로젝트명에서 user 경로를 더한 상태이기에 상위경로를 올라갔다가 resources를 찾음.
	 **************경로 헷갈림 ,, 웹 브라우저에서 경로 확인하기 !!!!!! *************
 -->

<link rel="stylesheet" href="../resources/style/stylecss.css" >
<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
<!--<script  src="resources/css/style.css"></script>-->
<link rel="stylesheet" href="resources/css/style.css">
</head>



<body>

<!--<table class='table1'>

<tr>
    <td>안녕하세요. 우리 홈페이지를 자유롭게 이용하려면 회원가입을 하셔야 합니다.<br>
      아래의 사항들을 빠짐없이 기록해 주세요.</td>
  </tr>
</table>-->

<!-- 
	action의 경로 ,, user/userInsert.do 지만 
	회원가입을 누르고 들어가면 이미 /user/경로가 포함되므로 
	action에 경로를 써줄때 상위 경로를 제거하고 userInsert.do만 적어도 된다. 
	name="userinput" id="userinput"
 -->
<form method="post" action="userInsert.do" Class="table2"
onsubmit="DoTable2__submit(this); return false;">
  <!--<table class='table2'>
     <tr> 
      <td class="normalbold tb_ttl"> 
        <div align="center" >사용자 이름</div>-->
      </td><!--colspan="3" height="23"-->
     <!-- <td width="154" class="normal"> 
        <input type="text" name="userName" id="userName">
      </td>
    </tr>-->
    
     <div class="normalbold tb_ttl"  align="center">
        <input name="name" type="text" class="normal" placeholder="이름">
      </div>
    
  <!-- <tr> 
      <td class="normalbold tb_ttl"> 
        <div align="center">유저 ID</div>
      </td>
      <td width="154" class="normal"> 
        <input type="text" name="userId" id="userId" size="20"> 
        <span id="idCheckResult" style="width:150px;color:red"></span>
      </td>
    </tr>-->
     <div class="normalbold tb_ttl"  align="center">
        <input name="userId" type="text" class="normal" placeholder="아이디">
        <span id="idCheckResult" style="width:150px;color:red"></span>
      </div>
      
    <!--<tr> 
      <td class="normalbold tb_ttl">
        <div align="center">비밀번호</div>
      </td>
      <td class="normal"> 
        <input type="password" name="userPass" id="userPass">
      </td>
      </tr>-->
      <div class="normalbold tb_ttl"  align="center">
        <input name="userPass" type="password" class="normal" placeholder="비밀번호">
      </div>
      
      <!-- <tr>
      <td class="normalbold tb_ttl"> 
        <div align="center">비밀번호 확인</div>
      </td>
      <td class="normal"> 
        <input type="password" name="userPass2" id="userPass2">
      </td>
    </tr>-->
        <div class="normalbold tb_ttl"  align="center">
        <input name="userPass2" type="password" class="normal" placeholder="비밀번호 확인">
        </div>
    
    <!--<tr>
    <td class="normalbold tb_ttl">
    <div align="center">닉네임</div>
    </td>
    <td class="normal">
    <input type="text" name="nickName" id="nickName">
    </td>
    </tr>-->
    
      <div class="normalbold tb_ttl"  align="center">
        <input name="nickname" type="text" class="normal" placeholder="닉네임">
      </div>
    
    <!--<tr>
    <td class="normalbold tb_ttl">
    <div align="center">휴대폰 번호</div>
    </td>
    <td class="normal">
    <input type="number" name="userPhone" id="userPhone">
    </td>
    </tr>-->
    
      <div class="normalbold tb_ttl"  align="center">
        <input name="userPhone" type="text" class="normal" placeholder="전화번호">
      </div>
    
    <!--<tr>
    <td class="normalbold tb_ttl">
    <div align="center">주소</div>
    </td>
    <td class="normal">
    <input type="text" name="userAddress" id="userAddress">
    </td>
    </tr>-->
      <div class="normalbold tb_ttl"  align="center">
        <input name="userAddress" type="text" class="normal" placeholder="주소">
      </div>
    
    
    <!--<tr>
    <td class="normalbold tb_ttl">
    <div align="center">생년월일</div>
    </td>
    <td class="normal">
    <input type="text" name="userBirth" id="userBirth" >
    </td>
    </tr>-->
    
      <div class="normalbold tb_ttl"  align="center">
        <input name="userBirth" type="text" class="normal" placeholder="생년월일">
      </div>
    
<!--  <tr>
    <td class="normalbold tb_ttl">
    <div align="center">생년월일</div>
    </td>
    <td><select name="userBirth" style="width:58px;">
    <option value="hobby1" selected>1945</option>
    <option value="hobby2" selected>1946</option>
    </select>
    </td>
    <td><select name="userBirth" style="width:58px;">
    <option value="hobby1" selected>01</option>
    <option value="hobby2" selected>02</option>
    </select>
    </td>
    <td><select name="userBirth" style="width:58px;">
    <option value="hobby1" selected>01</option>
    <option value="hobby2" selected>02</option>
    </select>
    </td>
    </tr>-->
        <!--<tr> 
      <td class="normalbold tb_ttl"> 
        <div align="center">성별</div>
      </td>
      <td> 
        <input type="radio" name="userGender" id="userGender"
        value='남자' />남성<input type="radio" 
        name="userGender" id="userGender" value='여자' />여성
      </td>
    </tr>-->
    
      <div class="normalbold tb_ttl"  align="center">
     <input type="radio" name="userGender" id="userGender"
        value='남자' />남성<input type="radio" 
        name="userGender" id="userGender" value='여자' />여성
      </div> 
    
      <!--<tr>
      <td colspan="4" class="normal" >-->
      
          <div align="center"> 
        	<!-- submit이 아니기 때문에 jquery나 script로 전송처리 해야 함  -->
          <input type="submit" class="confirm"  value="가입하기">
          <!--<input type="submit" name="confirm" id="confirm" value="등   록">-->
        </div>
  <!--</table>-->
</form>

</body>
</html>
