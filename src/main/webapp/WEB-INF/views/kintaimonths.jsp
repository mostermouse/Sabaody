<%@ page import="org.sabaody.domain.user.controller.EmploymentStatusDAO"%>
<%@ page
	import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page import="org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord" %>
<%@ page import="org.sabaody.domain.kintai.controller.KintaiDetailsDAO" %>
<%@ page import="org.sabaody.domain.kintai.controller.KintaiMonthsDAO" %>
<%@ page import="org.sabaody.domain.kintai.model.KintaiMonths" %>
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
<!-- 단축 키 설정 -->
<script src="//www.payzon.co.kr/_commonJs/shortKey.js"></script>
</head>

<body>
	<!-- 2021-01-29 -->
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-55667387-4"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-55667387-4');
		gtag('config', 'G-CCK8YDQV0H');
	</script>

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-55667387-4', 'auto');
		ga('send', 'pageview');
	</script>

	<script type="text/javascript">
		var roosevelt_params = {
			retargeting_id : 'Q-xRfWi38dMBWz8cmhE3ew00',
			tag_label : 'GXO6C48SRjeVl99UM5Nhng'
		};
	</script>
	<script type="text/javascript" charset="UTF-8"
		src="//t1.daumcdn.net/adfit/static/kp.js"></script>
	<script type="text/javascript">
		kakaoPixel('1130293680471885162').pageView();
	</script>
	<script type="text/javascript"
		src="//adimg.daumcdn.net/rt/roosevelt.js" async></script>

	<div id="layerProc" class="disHide"
		style="text-align: center; padding-top: 3px;">
		<!--  title="TITLE:Basic modal dialog" background-color:red;-->
		<iframe name="iFrmBox" id="iFrmBox" src="" width="100%" height="0px;"
			frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
		<!-- /_commonHTML/ifrmLoading.html -->
		<input type="hidden" id="idLayerDestroyTrigger"
			name="idLayerDestroyTrigger">
		<!-- /_commonHTML/ifrm/ifrmLoading.html -->
	</div>

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

				<ul class="logInfo">踏ん張れ
				</ul>

			</div>
		</div>
	</header>

	<!-- 대메뉴 -->
	<nav>
		<div id="top_gnb_2017">
			<div class="navi_2017">
				<ul class="navi_L_2017">
					<li class="n01"><button onclick="location.href='/selectview'"
							title="[Shift + 1] HOME">
							<span id="SK01">HOME</span>
						</button></li>
					<li class="n02"><button onclick="location.href='/employee'"
							title="[Shift + 2] 社員登録">
							<span id="SK02">社員登録</span>
						</button></li>
					<li class="n03"><button onclick="location.href='kintaidetails'"
							title="[Shift + 3] 勤怠照会">
							<span id="SK03">勤怠照会</span>
						</button></li>
					<li class="n05"><button
							onclick="location.href='/vacation'"
							title="[Shift + 4] 休暇照会">
							<span id="SK04">休暇照会</span>
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

	<style>
body {
	margin: 0;
}

.disContentList {
	height: 330px;
	width: 696px;
	overflow: auto;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

/* 2014-11-06 사원목록 마우스오버 스타일 */
.cssOverColorSet {
	background-color: #e5faff;
}

input[type=text]:-ms-clear {
	display: none;
}

input[type=text]::-ms-clear {
	display: none;
}
</style>

	<script type="text/javascript">
	<!--
		$(function() {

			// UI

			// 선택상자
			$(
					"#setSearchYYYY,#setSearchMM,#selEmplEmpl,#selDprtCode,#selPstnCode,#selListItemLen, #selEmplStat")
					.msDropDown();

			$(".disContentList").mCustomScrollbar({
				scrollButtons : {
					enable : false,
					scrollInertia : 150
				},
				theme : "dark-thin-current"
			});

			// 년.월 선택상자 - 이번달 버튼 노출 체킹
			$("#setSearchMM").change(function() {

				var setSearchMM = $("#setSearchMM").val();
				var setSearchYYYY = $("#setSearchYYYY").val();

				if (setSearchMM == '') {
					$("#setSearchMM").focus();
					return false;
				}
				if (setSearchYYYY == '') {
					alert('연도를 선택해 주세요.   ');
					$("#setSearchYYYY").focus();
					return false;
				}

				var setUrl = "/pzDiligence/diligenceSearchMonth.php";
				setUrl += "?setSearchYYYY=" + $("#setSearchYYYY").val();
				setUrl += "&setSearchMM=" + $(this).val();
				location.replace(setUrl);
				return;
			});

			$("#btnSearchYYYYMMInit").click(function() {
				var setUrl = "/pzDiligence/diligenceSearchMonth.php";
				location.replace(setUrl);
			});

			$("#selEmplEmpl, #selDprtCode, #selPstnCode, #selEmplStat")
					.change(
							function() {
								var setUrl = "/pzDiligence/diligenceSearchMonth.php";
								setUrl += "?setSearchYYYY="
										+ $("#setSearchYYYY").val();
								setUrl += "&setSearchMM="
										+ $("#setSearchMM").val();
								setUrl += "&setEmplStatNum="
										+ $("#selEmplStat").val();
								setUrl += "&" + $(this).attr("id") + "="
										+ $(this).val();
								location.replace(setUrl);
								return;
							});

			// E.F Print 버튼 클릭
			$("#btnGetPrint").click(function() {
				$.fn.layerProcCreate("diligenceSearchMonthPdf");
				return;
			});

			// 일용직 근무 조회 다운로드
			$("#btnGetExcel")
					.click(
							function() {

								urlSplit = window.location.href
										.split("diligenceSearchMonth.php");
								param = urlSplit[1];
								if (param)
									param += "&setChkMd5=" + setChkMd5;
								else
									param = "?setChkMd5=" + setChkMd5;

								var urlSrc = "/pzDiligence/php/inDiligenceSearchMonthProcExcel.php";
								urlSrc += param;
								//      alert(urlSrc + " :: ");  return;
								$("#iFrmMulti").attr("src", urlSrc);
								//      location.replace(urlSrc);
								return;
							});

			// 목록 정렬 설정
			$("#btnSetSort").click(function() {
				$.fn.layerProcCreate("sortDiligenceMnt");
				return;
			});

			// 사원목록 마우스오버: 색상변경
			$(".ulDiligenceList").hover(function() { // over
				$(".ulDiligenceList").removeClass("cssOverColorSet");
				$(this).addClass("cssOverColorSet");
			}, function() { // out
				$(".ulDiligenceList").removeClass("cssOverColorSet");
			});

			// 사원목록 클릭 시: 상세검색 이동
			$(".ulDiligenceList").click(function() {
				var setUrl = "/pzDiligence/diligenceSearchDetail.php";
				var getSearchYYYY = $("#setSearchYYYY").val();
				var getSearchMM = $("#setSearchMM").val();
				var setDlgnStrt = getSearchYYYY + "-" + getSearchMM + "-01";
				var setDlgnEndD = getSearchYYYY + "-" + getSearchMM + "-31";
				var setEmplName = $(this).children().eq(2).text();
				//      alert(setDlgnStrt + " :: "  + setDlgnEndD + " :: " + setEmplName);
				setUrl += "?chkDlgnTerm=on";
				setUrl += "&frmDlgnStrt=" + setDlgnStrt;
				setUrl += "&frmDlgnEndD=" + setDlgnEndD;
				setUrl += "&chkEmplName=on";
				setUrl += "&frmEmplName=" + setEmplName;
				location.href = setUrl;
				return;
			});

			var aBSet = [];
			var aRSet = [];
			// 달력 토/일 체크
			var aO = $(".date > .b_yellow > li");
			aO
					.each(function(i, e) {
						if ($(this).children("span").length > 0) {
							if ($(this).children("span").hasClass("c_blue") === true) {
								aBSet.push(i);
							} else if ($(this).children("span").hasClass(
									"c_red") === true) {
								aRSet.push(i);
							} else {
							}
						}
					});
			// 사원별 달력 토/일 표기
			var aU = $(".clsCheck");
			aU.each(function(i, e) {
				$.each(aBSet, function(ii, e) {
					$(".clsCheck:eq(" + i + ") ul li:eq(" + aBSet[ii] + ")")
							.addClass("bb_blue");
				});
				$.each(aRSet, function(iii, e) {
					$(".clsCheck:eq(" + i + ") ul li:eq(" + aRSet[iii] + ")")
							.addClass("bb_red");
				});
			});

		});
		// End Function
		// End Function
	//-->
	</script>

	<section>
		<div id="main_container">
			<!-- タイトル -->
			<div class='sub_titimg'>
				<ul>
					<h2>勤怠照会</h2>
					<li class='p_t5'>社員別の勤怠状況を一度にご覧いただけます。月別、詳細勤務履歴も確認できます。</li>
				</ul>
				<!-- <span class="calculator anchor" onclick="$.layerCreateCommon('manualView','C02');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
			</div>
			<hr>

			<div class='main_titimg wp_100'>
				<!-- tab -->
				<div class='search_box p_l5 '>
					<ul>
						<li class="months"><button
								onclick="location.href='/kintaimonths'" title="月別照会">
								<span id="months">月別照会</span>
							</button></li>
					</ul>
					<ul>
						<li class="details"><button
								onclick="location.href='/kintaidetails'" title="詳細照会">
								<span id="details">詳細照会</span>
							</button></li>
					</ul>
				</div>
				<!-- 検索 & ソート順 -->
				<div class='search_box p_b10 p_l10 '>
					<ul class='p_t1'>
						<select name="setSearchYYYY" id="setSearchYYYY"
							style='width: 80px;'>
							<option value="">選択</option>
							<option value="2013">2013 年</option>
							<option value="2014">2014 年</option>
							<option value="2015">2015 年</option>
							<option value="2016">2016 年</option>
							<option value="2017">2017 年</option>
							<option value="2018">2018 年</option>
							<option value="2019">2019 年</option>
							<option value="2020">2020 年</option>
							<option value="2021">2021 年</option>
							<option value="2022">2022 年</option>
							<option value="2023">2023 年</option>
							<option value="2024" SELECTED>2024 年</option>
							<option value="2025">2025 年</option>
						</select>
					</ul>
					<ul class='p_t1 p_l10'>
						<select name="setSearchMM" id="setSearchMM" style='width: 60px;'>
							<option value="">選択</option>
							<option value="01">01 月</option>
							<option value="02">02 月</option>
							<option value="03">03 月</option>
							<option value="04">04 月</option>
							<option value="05" SELECTED>05 月</option>
							<option value="06">06 月</option>
							<option value="07">07 月</option>
							<option value="08">08 月</option>
							<option value="09">09 月</option>
							<option value="10">10 月</option>
							<option value="11">11 月</option>
							<option value="12">12 月</option>
						</select>
						<button name="btnSearchYYYYMMInit" id="btnSearchYYYYMMInit"
							class="disHide">今月</button>
					</ul>


					<ul class='right p_t1'>
						<div>
							<select name="selEmplStat" id="selEmplStat" style="width: 100px;">
								<option value="2">状態別</option>
								<option value="1" SELECTED>在職</option>
								<option value="0">退職</option>
							</select> <select name="selEmplEmpl" id="selEmplEmpl"
								style='width: 100px;'>
								<option value="">区分別</option>
								<option value="정규직">正社員</option>
								<option value="계약직">契約社員</option>
								<option value="임시직">臨時社員</option>
								<option value="파견직">派遣社員</option>
								<option value="위촉직">嘱託社員</option>
								<option value="일용직">パート/アルバイト</option>
							</select> <select name="selDprtCode" id="selDprtCode"
								style='width: 100px;'>
								<option value="">部署別</option>
								<option value="007">社長室</option>
								<option value="003">開発部</option>
								<option value="005">コンテンツ部</option>
								<option value="004">業務サポート部</option>
								<option value="001">デザイン部</option>
								<option value="006">管理部</option>
								<option value="002">企画戦略部</option>
							</select> <select name="selPstnCode" id="selPstnCode"
								style='width: 100px;'>
								<option value="">役職別</option>
								<option value="02">取締役</option>
								<option value="04">部長</option>
								<option value="01">社長</option>
								<option value="03">本部長</option>
								<option value="08">主任</option>
								<option value="05">次長</option>
								<option value="06">課長</option>
								<option value="07">係長</option>
								<option value="09">社員</option>
							</select>
							<!-- <select name="selListItemLen" id="selListItemLen">
           <option value="">리스트 수</option>
           <option value="">10개씩 보기</option>
           <option value="">30개씩 보기</option>
           <option value="">50개씩 보기</option> 
           <option value="">100개씩 보기</option>
          </select> -->
						</div>
					</ul>
				</div>

				<div class='e_total'>
					<DIV id='table1'>
						<p class='caption'></p>
						<ul class='height_53'>
							<li class='w_88 tit_53_col'>区分</li>
							<li class='w_88 tit_53_col '><a
								href="/pzDiligence/diligenceSearchMonth.php?setSortItem=emNo&setSortType=asc"
								class='c_linkblue'><strong>社員番号</strong></a></li>
							<li class='w_70 tit_53_col'><a
								href="/pzDiligence/diligenceSearchMonth.php?setSortItem=emNm&setSortType=asc"
								class='c_linkblue'><strong>名前</strong></a></li>
							<li class='w_92 tit_53_col'><a
								href="/pzDiligence/diligenceSearchMonth.php?setSortItem=dprt&setSortType=asc"
								class='c_linkblue'><strong>部署</strong></a></li>
							<li class='w_88 tit_53_col b_none'><a
								href="/pzDiligence/diligenceSearchMonth.php?setSortItem=pstn&setSortType=asc"
								class='c_linkblue'><strong>役職</strong></a></li>
							<li style='padding-top: 0px;'>

							</li>
							<li class='w_199 tit_53_col '>合計</li>
							<li class='w_100 tit_53_col'>休暇控除</li>
						</ul>


						<ul class="anchor ulDiligenceList">
							<%
								KintaiMonthsDAO kintaimonthsDAO = new KintaiMonthsDAO();
								List<KintaiMonths> kintaiMonthsList = kintaimonthsDAO.getAllKintaiMonths();
								if (kintaiMonthsList != null && !kintaiMonthsList.isEmpty()) {
									for (KintaiMonths record : kintaiMonthsList) {
							%>
							<li class='w_88 con53_col' title="在職"><span class="top-10"><%=record.getDivision()%></li>
							<li class='w_88'><%=record.getId()%></li>
							<li class='w_70 con53_col'><%=record.getName()%></li>
							<li class='w_92 con53_col'><%=record.getDepartment()%></li>
							<li class='w_88 con53_col b_none'><%=record.getPosition()%></li>
							<li class='w_199 tit_53_col '><%=record.getSum()%></li>
							<li class='w_100 tit_53_col'><%=record.getDeduction()%></li>
							<li style='padding-top: 0px;'>
							<%
									}
								}
							%>

							</li>


						</ul>
					</div>
				</div>
				<!-- 페이지 인덱스 -->
				<!-- <div class="paginate">
        <a href="#" class="prev">이전페이지</a>
        <a href="#">1</a>
        <a href="#" class="on" title="선택됨">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>
        <a href="#">6</a>
        <a href="#">7</a>
        <a href="#">8</a>
        <a href="#">9</a>
        <a href="#">10</a>
          <a href="#" class="next">다음페이지</a>
    </div> -->

				<!-- 메인 버튼 사각형  빅사이즈
    <div class='btn c'>
    <li>
    <input type='image' value='신규 사원등록' src='/_commonImg/btn_new_employee.gif'  width='100px' height='100px' alt='신규 사원등록'  title='신규 사원등록'>
       <input type='image' value='선택 삭제' src='/_commonImg/btn_select_delete.gif'  width='100px' height='100px'  hspace='15' alt='선택 삭제' title='선택 삭제'>
    <input type='image' value='엑셀로 다운로드' src='/_commonImg/btn_xls_down.gif'  width='100px' height='100px'  alt='엑셀로 다운로드' title='엑셀로 다운로드'>
    <input type='image' value='sms보내기' src='/_commonImg/btn_sms.gif'  width='100px' height='100px' hspace='15'  alt='sms보내기' title='sms보내기'>
    </li>
    </div>-->


				<!-- 메인 버튼 사각형    <div class='btn c'>
    <li>
    <input type='image' value='신규 사원등록' src='/_commonImg/btn_new_employee01.gif'  width='139px' height='33px' alt='신규 사원등록'  title='신규 사원등록'>
       <input type='image' value='선택 삭제' src='/_commonImg/btn_select_delete01.gif'  width='115px' height='33px'  hspace='15' alt='선택 삭제' title='선택 삭제'>
    <input type='image' value='엑셀로 다운로드' src='/_commonImg/btn_xls_down01.gif'  width='139px' height='33px'  alt='엑셀로 다운로드' title='엑셀로 다운로드'></li>
    </div>
-->
			</div>
		</div>
	</section>

	<!-- footer -->
	<footer style="background-color: #333; color: #fff; padding: 20px;">
		<div style="text-align: center;">
			<p>&copy; 2チーム プロジェクト</p>
			<p>2チーム プロジェクト</p>
		</div>
	</footer>

</body>
</html>