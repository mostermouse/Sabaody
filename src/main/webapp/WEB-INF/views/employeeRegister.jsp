<%@ page import="org.sabaody.domain.user.controller.EmploymentStatusDAO"%>
<%@ page
   import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE HTML>
<html lang="UTF-8">
<head>
<title>2チーム （조정인 , 최가람 , 장민수 , 김소연）</title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" type="text/css"
   href="//www.payzon.co.kr/_commonCss/_ssl/style.css" />
<link rel="shortcut icon"
   href="//img.payzon.co.kr/_commonImg/favicon.ico" type="image/x-icon">
</head>

<body>

<header>
   <style>
   .jbMenu {
      text-align: center;
      color: #ffffa6;
      background-color: #ff4242;
      padding: 6px 0px;
      width: 100%;
   }

   .jbFixed {
      position: fixed;
      top: 0px;
      z-index: 1;
   }
   </style>
   <div class="jbMenu" style="text-align: left; color: #FFFFFF;">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2チーム （조정인 , 최가람 , 장민수 , 김소연） <a
         href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon"><span
         style="color: #FFFFFF;"></span></a>
   </div>
   <div id="main_header">
      <div class="header">
         <ul class='logo p_t10'>
            <button onclick="location.href='/'">人事管理</button>
         </ul>
         <ul class="logInfo">踏ん張れ</ul>
      </div>
   </div>
</header>

<nav>
   <div id="top_gnb_2017">
      <div class="navi_2017">
         <ul class="navi_L_2017">
            <li class="n01"><button onclick="location.href='/login'"
                  title="[Shift + 1] HOME">
                  <span id="SK01">HOME</span>
               </button></li>
            <li class="n02"><button onclick="location.href='/record'"
                  title="[Shift + 2] 社員登録">
                  <span id="SK02">社員登録</span>
               </button></li>
            <li class="n03"><button onclick="location.href='/index.jsp'"
                  title="[Shift + 3] 勤怠照会">
                  <span id="SK03">勤怠照会</span>
               </button></li>
            <li class="n05"><button
                  onclick="location.href='/AttendanceManagement'"
                  title="[Shift + 4] 休暇照会">
                  <span id="SK04">休暇照会</span>
               </button></li>
         </ul>
      </div>
   </div>
</nav>

<div class="registration-container">
    <h2>社員登録</h2>
    <form name ="employee" action="/employeeRegistration.html" method="post">
        <label for="id">社員番号:</label>
        <input type="text" id="id" name="id" required><br><br>
        <label for="name">名前:</label>
        <input type="text" id="name" name="name" required><br><br>
        <label for="hireDate">入社日:</label>
        <input type="date" id="hireDate" name="hireDate" required><br><br>
        <label for="department">部署:</label>
        <input type="text" id="department" name="department" required><br><br>
        <label for="position">職位:</label>
        <input type="text" id="position" name="position" required><br><br>
        <label for="address">住所:</label>
        <input type="text" id="address" name="address" required><br><br>
        <label for="mobilePhone">携帯電話:</label>
        <input type="text" id="mobilePhone" name="mobilePhone" required><br><br>
        <label for="email">メール:</label>
        <input type="email" id="email" name="email" required><br><br>
        <input type="submit" value="登録">
    </form>
</div>


<!-- footer -->
<footer style="background-color: #333; color: #fff; padding: 20px;">
   <div style="text-align: center;">
      <p>&copy; 2チーム プロジェクト</p>
      <p>2チーム プロジェクト</p>
   </div>
</footer>

</body>
</html>