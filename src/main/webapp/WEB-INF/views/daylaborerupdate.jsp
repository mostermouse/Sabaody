<%@ page import="org.sabaody.domain.user.controller.EmployeeUpdateServlet"%>
<%@ page
	import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE HTML>
<html lang="UTF-8">
<head>
<title>2チーム</title>
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

th, td {
	border: 2px solid #808080; /* 회색 선, 두꺼운 선 굵기 */
	padding: 8px;
	text-align: left;
}

th {
	background-color: #F0F8FF; /* 더 흰색에 가까운 하늘색 배경 */
}

.highlight {
	background-color: #B0E0E6; /* 더 흰색에 가까운 하늘색 배경 */
}
</style>
		<div class="jbMenu" style="text-align: left; color: #FFFFFF;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2チーム</div>
		<div id="main_header"></div>
	</header>

	<!-- Navigation -->
	<nav>
		<div id="top_gnb_2017">
			<div class="navi_2017">
				<ul class="navi_L_2017">
					<li class="n01"><button onclick="location.href='/selectview'"
							title="[Shift + 1] HOME">
							<span id="SK01">勤怠管理</span>
						</button></li>
					<li class="n02"><button onclick="location.href='/employee'"
							title="[Shift + 2] 社員登録">
							<span id="SK02">社員登録</span>
						</button></li>
					<li class="n03"><button onclick="location.href='/employee'"
							title="[Shift + 3] 社員登録">
							<span id="SK03">社員情報修正</span>
						</button></li>
					<li class="n04"><button
							onclick="location.href='/kintaidetails'" title="[Shift + 4] 勤怠照会">
							<span id="SK04">勤怠照会</span>
						</button></li>
					<li class="no05"><button
							onclick="location.href='/vacationRegister'"
							title="[Shift +5] 休暇登録">
							<span id="SK05">休暇登録</span>
						</button></li>
					<li class="n06"><button onclick="location.href='/vacation'"
							title="[Shift + 6] 休暇照会">
							<span id="SK06">休暇照会</span>
						</button></li>
					<li class="n07"><button onclick="location.href='/vacation'"
							title="[Shift + 7] 休暇照会">
							<span id="SK07">休暇修正</span>
						</button></li>
					<li class="n08"><button onclick="location.href='/daylaborer'"
							title="[Shift + 8] 休暇修正">
							<span id="SK08">日雇い管理</span>
						</button></li>
					<li class="n09"><button
							onclick="location.href='/daylaborerdetails'"
							title="[Shift + 9] 休暇修正">
							<span id="SK09">日雇い照会</span>
						</button></li>
					<li class="n00"><button
							onclick="location.href='/daylaborerupdate'"
							title="[Shift + 0] 休暇修正">
							<span id="SK00">日雇い修正</span>
						</button></li>
				</ul>
			</div>
		</div>
	</nav>

	<style>
.navi_L_2017 button {
	width: auto;
	height: 70px;
	padding: 0 20px;
}
</style>


	<div class="registration-container">
		<h2>社員情報修正</h2>
		<form name="daylaborerupdate" action="/daylaborerupdate" method="post"
			onsubmit="return validateForm()">
			<table>
				<tr>
					<th colspan="2">基本情報</th>
				</tr>
				<tr>
					<td class="highlight">社員番号:</td>
					<td><input type="text" id="id" name="id"></td>

				</tr>
				<tr>
					<td class="highlight">日給:</td>
					<td><input type="number" id="dailyrate" name="dailyrate"
						placeholder="">
				</tr>
				<tr>
					<td class="highlight">所得税:</td>
					<td colspan="3"><input type="number" id="income_tax"
						name="income_tax"></td>
				</tr>
				<tr>
					<td class="highlight">地方所得税:</td>
					<td><input type="number" id="localincometax"
						name="localincometax"></td>

				</tr>
				<tr>
					<td class="highlight">実支給額:</td>
					<td><input type="number" id="netpay" name="netpay"></td>

				</tr>
				<tr>
					<td colspan="4" style="text-align: center;"><input
						type="submit" value="修正"> <span id="successMessage"
						style="display: none;">修正完了</span></td>
				</tr>
			</table>
		</form>
	</div>

	<script>
		function validateForm() {
			var id = document.getElementById("id").value;
			var dailyrate = document.getElementById("dailyrate").value;
			var income_tax = document.getElementById("income_tax").value;
			var localincometax = document.getElementById("localincometax").value;
			var netpay = document.getElementById("netpay").value;

			if (id === "" || dailyrate === "" || income_tax === ""
					|| localincometax === "" || netpay === "") {
				alert("모든 입력란을 작성해주세요.");
				return false;
			} else {
				showSuccessMessage();
				return true;
			}
		}
	</script>


	<!-- Footer -->
	<footer style="background-color: #333; color: #fff; padding: 20px;">
		<div style="text-align: center;">
			<p>&copy; 2チーム プロジェクト</p>
			<p>2チーム プロジェクト</p>
		</div>
	</footer>
</body>
</html>