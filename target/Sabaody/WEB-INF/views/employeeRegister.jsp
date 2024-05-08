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

<section>
   <div id="main_container">
      <!-- 타이틀 이미지 -->
      <div class='sub_titimg'>
         <ul>
            <li class='tit_img p_r7'><img
               src='/_commonImg/dils_tit_img.gif' width='61' height='68'
               alt='勤怠照会' title='勤怠照会'></li>
            <li class='p_t10'><img src='/_commonImg/dils_tit_01.gif'
               width='201' height='25' alt='勤怠照会' title='勤怠照会'></li>
            <li class='p_t5'>社員別の勤怠状況を一度にご覧いただけます。月別、詳細勤務履歴も確認できます。</li>
         </ul>
      </div>
      <hr>

      <!-- 사원등록_좌측 -->
      <div class='main_titimg'>
         <!-- 탭 -->
         <div class='search_box p_l5 '>
            <ul>
               <a href="/pzDiligence/diligenceSearchMonth.php"><img
                  src='/_commonImg/dils_tab01_off.gif' width='122' height='37'
                  class='p_l5' alt='月別照会' title='月別照会'></a>
            </ul>
            <ul>
               <a href="/pzDiligence/diligenceSearchDetail.php"><img
                  src='/_commonImg/dils_tab02_on.gif' width='122' height='37'
                  class='p_l5' alt='詳細照会' title='詳細照会'></a>
            </ul>
         </div>
         <Br>
         <!-- 좌측 검색조건 -->
         <form name="frmSearchDetail" id="frmSearchDetail" method="get"
            onsubmit="return $.fn.frmSrchCheck();">
            <div class='diligence_lt '>
               <ul>
                  <!-- Search criteria removed -->
               </ul>
               <hr class='hr_5'></hr>
               <ul class='c'>
                  <!-- Search buttons removed -->
               </ul>
            </div>
         </form>

         <!--  검색결과 -->
         <div class='e_total'>
            <div id='table1'>
               <!-- Search result table removed -->
            </div>
         </div>
         <hr class='hr_0'></hr>
         <div class='height_137 wp_100'>
            <!-- Print and Excel download buttons removed -->
         </div>
      </div>
   </div>
   <hr class='hr_50'></hr>
</section>
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