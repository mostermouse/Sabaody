<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO"%>
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
    <div id="main_header">

    </div>
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
                                        title="[Shift + 3] 社員情報修正">
                    <span id="SK03">社員情報修正</span>
                </button></li>
                <li class="n04"><button onclick="location.href='/kintaiselect'"
                                        title="[Shift + 4] 勤怠照会">
                    <span id="SK04">勤怠照会</span>
                </button></li>
                <li class = "no05"><button
                        onclick="location.href='/vacationRegister'"
                        title="[Shift +5] 休暇登録">
                    <span id="SK05">休暇登録</span>
                </button></li>
                <li class="n06"><button
                        onclick="location.href='/vacationselect'"
                        title="[Shift + 6] 休暇照会">
                    <span id="SK06">休暇照会</span>
                </button></li>
                <li class="n07"><button
                        onclick="location.href='/vacationupdate'"
                        title="[Shift + 7] 休暇修正">
                    <span id="SK07">休暇修正</span>
                </button></li>
                <li class="n08"><button
                        onclick="location.href='/dayselect'"
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
    <h2>休暇登録</h2>
    <form name="vacationregister" action="/vacationServlet" method="post">
        <form>
            <table>
                <tr>
                    <th colspan="2">基本情報</th>
                </tr>
                <tr>
                    <td class="highlight">社員番号:</td>
                    <td><input type="text" id="id" name="id" required maxlength="20"></td>

                </tr>

                <tr>
                    <td class="highlight">休暇項目:</td>
                    <td> <input type="text" id="vacationtype" name="vacationtype"
                                placeholder="" required maxlength="20">
                </tr>
                <tr>
    				<td class="highlight">全体休暇数:</td>
    				<td colspan="3"><input type="number" id="vacationcnt" name="vacationcnt"  ></td>
				</tr>
				<tr>
   					<td class="highlight">使用した休暇:</td>
    				<td><input type="number" id="vacationnum2" name="vacationnum2" onchange="calculateRemainingVacation()"></td>
				</tr>
				<tr>
    			<td class="highlight">残り残余:</td>
    			<td><input type="number" id="vacationnum3" name="vacationnum3" readonly></td>
				</tr>
                <tr>
                    <td colspan="4" style="text-align: center;"><input
                            type="submit" value="登録"
                            onclick="submitForm('register'); showSuccessMessage('登録 完了.');">
                        <input type="submit" value="保存"
                               onclick="submitForm('save'); showSuccessMessage('保存 完了.');">
                    </td>
                </tr>
            </table>
            <!-- Footer -->
            <footer style="background-color: #333; color: #fff; padding: 20px;">
                <div style="text-align: center;">
                    <p>&copy; 2チーム プロジェクト</p>
                    <p>2チーム プロジェクト</p>
                </div>
            </footer>
            <script>
    // 사용된 휴가를 입력할 때마다 호출되어 남은 휴가를 계산하고 출력하는 함수
    			function calculateRemainingVacation() {
        // 전체 휴가의 값
        			var vacationcnt = document.getElementById('vacationcnt').value;
        // 사용된 휴가의 값
        			var vacationnum2 = document.getElementById('vacationnum2').value;
        			
        	        if (vacationcnt.length > 2) {
        	            alert("휴가 입력값이 2자리를 초과했습니다. 휴가 입력일수를 확인해주세요.");
        	            document.getElementById('vacationnum2').value = "";
        	            return;
        	        }

        // 남은 휴가를 계산하여 출력
        			var remainingVacation = vacationcnt - vacationnum2;
        			document.getElementById('vacationnum3').value = remainingVacation;
    				}
</script>
</body>
</html>