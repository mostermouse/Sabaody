<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO"%>
<%@ page import="org.sabaody.domain.user.controller.EmpRegisterServlet"%>
<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
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
					<li class="n01"><button onclick="location.href='/SelectStatusServlet'"
							title="[Shift + 1] HOME">
							<span id="SK01">勤怠管理</span>
						</button></li>
					<li class="n02"><button onclick="location.href='/employee'"
							title="[Shift + 2] 社員登録">
							<span id="SK02">社員登録</span>
						</button></li>
					<li class="n03"><button onclick="location.href='/employeeupdate'"
							title="[Shift + 3] 社員登録">
							<span id="SK03">社員情報修正</span>
						</button></li>
					<li class="n04"><button
							onclick="location.href='/kintaiselect'" title="[Shift + 4] 勤怠照会">
							<span id="SK04">勤怠照会</span>
						</button></li>
					<li class="no05"><button
							onclick="location.href='/vacationRegister'"
							title="[Shift +5] 休暇登録">
							<span id="SK05">休暇登録</span>
						</button></li>
					<li class="n06"><button onclick="location.href='/vacationselect'"
							title="[Shift + 6] 休暇照会">
							<span id="SK06">休暇照会</span>
						</button></li>
					<li class="n07"><button onclick="location.href='/vacation'"
							title="[Shift + 7] 休暇照会">
							<span id="SK07">休暇修正</span>
						</button></li>
					<li class="n08"><button onclick="location.href='/dayselect'"
							title="[Shift + 8] 休暇修正">
							<span id="SK08">日雇い管理</span>
						</button></li>
					<li class="n09"><button
							onclick="location.href='/daydetails'"
							title="[Shift + 9] 休暇修正">
							<span id="SK09">日雇い照会</span>
						</button></li>
					<li class="n00"><button
							onclick="location.href='/daylaboreerupdate'"
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
		<form name="employeeupdate" action="/employeeUpdate" method="post">
			<form>
				<table>
					<tr>
						<th colspan="2">基本情報</th>
					</tr>
					<tr>
						<td class="highlight">社員番号:</td>
						<td><input type="text" id="id" name="id"></td>
						<td class="highlight">雇用形態:</td>
						<td class="highlight"><select id="division" name="division">
								<option value="">選択してください</option>
								<option value="正社員">正社員</option>
								<option value="契約職">契約職</option>
								<option value="臨時職">臨時職</option>
								<option value="派遣職">派遣職</option>
								<option value="委嘱職">委嘱職</option>
								<option value="日雇い">日雇い</option>
						</select></td>
					</tr>
					<tr>
						<td class="highlight">名前:</td>
						<td><input type="text" id="name" name="name"></td>
						<td class="highlight">入社日:</td>
						<td><input type="text" id="hireDate" name="hireDate"></td>
					</tr>
					<tr>
						<td class="highlight">部署:</td>
						<td><select id="department" name="department">
								<option value="">選択してください</option>
								<option value="社長室">社長室</option>
								<option value="開発チーム">開発チーム</option>
								<option value="コンテンツチーム">コンテンツチーム</option>
								<option value="業務支援チーム">業務支援チーム</option>
								<option value="デザインチーム">デザインチーム</option>
								<option value="管理チーム">管理チーム</option>
								<option value="企画戦略チーム">企画戦略チーム</option>
						</select></td>
						<td class="highlight">職位:</td>
						<td><select id="position" name="position">
								<option value="">選択してください</option>
								<option value="引越">引越</option>
								<option value="車掌">車掌</option>
								<option value="社長">社長</option>
								<option value="部長">部長</option>
								<option value="課長">課長</option>
								<option value="代理">代理</option>
								<option value="主任">主任</option>
								<option value="社員">社員</option>
								<option value="室長">室長</option>
						</select></td>
					</tr>
					<tr>
						<td class="highlight">携帯電話:</td>
						<td><input type="text" id="phoneNumber" name="phoneNumber"
							placeholder="">
					</tr>
					<tr>
						<td class="highlight">住所:</td>
						<td colspan="3"><input type="text" id="address"
							name="address"></td>
					</tr>
					<tr>
						<td class="highlight">Eメール:</td>
						<td><input type="text" id="email" name="email"></td>

					</tr>
					<tr>
						<td colspan="4" style="text-align: center;">
							<!-- 버튼 유형을 "button"으로 변경 --> <input type="button" value="修正"
							onclick="validateAndSubmit()">
						</td>
					</tr>
				</table>
			</form>
			<script>
				function validateAndSubmit() {
					var id = document.getElementById('id').value;
					var division = document.getElementById('division').value;
					var name = document.getElementById('name').value;
					var hireDate = document.getElementById('hireDate').value;
					var department = document.getElementById('department').value;
					var position = document.getElementById('position').value;
					var phoneNumber = document.getElementById('phoneNumber').value;
					var address = document.getElementById('address').value;
					var email = document.getElementById('email').value;

					// 각 필드가 비어 있는지 확인
					if (id.trim() === '' || division.trim() === ''
							|| name.trim() === '' || hireDate.trim() === ''
							|| department.trim() === ''
							|| position.trim() === ''
							|| phoneNumber.trim() === ''
							|| address.trim() === '' || email.trim() === '') {
						alert('모든 정보를 입력해주세요.');
					} else {
						document.forms['employeeupdate'].submit(); // 폼 제출
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