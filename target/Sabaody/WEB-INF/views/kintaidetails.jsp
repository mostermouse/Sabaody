<%@ page import="org.sabaody.domain.user.controller.EmploymentStatusDAO"%>
<%@ page
		import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page import="org.sabaody.domain.kintai.controller.KintaiDetailsDAO"%>
<%@ page
		import="org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord"%>
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
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2チーム<a
			href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon"><span
			style="color: #FFFFFF;"></span></a>
	</div>
	<div id="main_header">

	</div>
</header>

<!-- 대메뉴 -->
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
				<li class="n03"><button onclick="location.href='/employeeupdate'"
										title="[Shift + 3] 社員情報修正">
					<span id="SK03">社員情報修正</span>
				</button></li>
				<li class="n04"><button onclick="location.href='/kintaidetails'"
										title="[Shift + 4] 勤怠照会">
					<span id="SK04">勤怠照会</span>
				</button></li>
				<li class = "no05"><button
						onclick="location.href='/vacationRegister'"
						title="[Shift +5] 休暇登録">
					<span id="SK05">休暇登録</span>
				</button></li>
				<li class="n06"><button
						onclick="location.href='/vacation'"
						title="[Shift + 6] 休暇照会">
					<span id="SK06">休暇照会</span>
				</button></li>
				<li class="n07"><button
						onclick="location.href='/vacationupdate'"
						title="[Shift + 7] 休暇修正">
					<span id="SK07">休暇修正</span>
				</button></li>
				<li class="n08"><button
						onclick="location.href='/daylaborer'"
						title="[Shift + 8] 休暇修正">
					<span id="SK08">日雇い管理</span>
				</button></li>
				<li class="n09"><button
						onclick="location.href='/daylaborerdetails'"
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

		$("input").click(function() {
			$(this).select();
			return;
		});

		//UI

		// 선택상자
		$("#frmDlgnCode,#frmDprtCode,#frmDlgrCode,#frmLvItCode")
				.msDropDown();

		// DATE 픽커
		$("#frmDlsvInpD").datepicker({
			//option
			"showAnim" : "fadeIn",
			"dateFormat" : "yy-mm-dd",
			"showMonthAfterYear" : true,
			"yearSuffix" : "년",
			"changeYear" : true,
			"yearRange" : "1950:+3"
			//        "defaultDate": "-1d"
		});
		$("#frmDlgnStrt").datepicker(
				{
					//option
					"showAnim" : "fadeIn",
					"dateFormat" : "yy-mm-dd",
					"showMonthAfterYear" : true,
					"yearSuffix" : "년",
					"changeYear" : true,
					"yearRange" : "1950:+3",
					//        defaultDate: "+0d",
					onClose : function(selectedDate) {
						$("#frmDlgnEndD").datepicker("option", "minDate",
								selectedDate);
					}
				});
		$("#frmDlgnEndD").datepicker(
				{
					//option
					"showAnim" : "fadeIn",
					"dateFormat" : "yy-mm-dd",
					defaultDate : "+1d",
					"showMonthAfterYear" : true,
					"yearSuffix" : "년",
					"changeYear" : true,
					"yearRange" : "1950:+3",
					onClose : function(selectedDate) {
						$("#frmDlgnStrt").datepicker("option", "maxDate",
								selectedDate);
					}
				});

		$('body').addClass('has-js');
		$('.label_check, .label_radio').click(function() {
			$.setupLabel();
		});
		$.setupLabel();
		// end UI

		// E.F Print 버튼 클릭
		$("#btnGetPrint").click(function() {
			// 미리보기 할 대상 체크
			var setDiligenceSearchCount = "30";
			if (setDiligenceSearchCount == 0) {
				alert("데이터가 없습니다.   ");
				return;
			}

			$.fn.layerProcCreate("diligenceSearchDetailPdf");
			return;
		});

		// 버튼 근태 리스트 다운로드
		$("#btnGetExcel").click(
				function() {
					var urlSplit = window.location.href
							.split("diligenceSearchDetail.php");
					var param = urlSplit[1];
					if (param)
						param += "&setChkMd5=" + setChkMd5;
					else
						param = "?setChkMd5=" + setChkMd5;
					//      alert(param + " :: ");  return;
					$("#iFrmMulti").attr(
							"src",
							"/pzDiligence/php/inDiligenceSearchDetailProcExcel.php"
							+ param);
					//      location.replace("/pzDiligence/php/inDiligenceSearchDetailProcExcel.php" + param);
					return;
				});

		// 2014-12-15 추가
		// 사원목록 마우스오버: 색상변경
		$("#table1 .clsListingTable").hover(function() { // over
			$("#table1 .clsListingTable").removeClass("cssOverColorSet");
			if ($(this).hasClass("sell_bg") !== true)
				$(this).addClass("cssOverColorSet");
		}, function() { // out
			$("#table1 .clsListingTable").removeClass("cssOverColorSet");
		});

	});
	/* End Function */
	/* End Function */

	$.fn.frmSrchCheck = function() {
		// 검색 조건 유무
		if ($("input:checkbox").is(":checked") !== true) {
			alert("선택된 검색 조건이 없습니다.   ");
			return false;
		}
		// 2015-11-27 크롬에서 파라미터가 길 경우 인쇄가 되지 않는 현상 때문에 파라미터를 줄임
		// 근본적인 문제 찾아야 함
		if ($("input:checkbox[name='chkDlsvInpD']").is(":checked") === false) {
			$("#frmDlsvInpD").val("");
		}
		if ($("input:checkbox[name='chkDlgnTerm']").is(":checked") === false) {
			$("#frmDlgnStrt, #frmDlgnEndD").val("");
		}
		if ($("input:checkbox[name='chkEmplName']").is(":checked") === false) {
			$("#frmEmplName").val("");
		}
		return;
	}
	-->
</script>

<section>
	<div id="main_container">
		<!-- 타이틀 이미지 -->
		<div class='sub_titimg'>
			<ul>
				<h2>勤怠照会</h2>
				<li class='p_t5'>社員別の勤怠状況を一度にご覧いただけます。月別、詳細勤務履歴も確認できます。</li>
			</ul>
			<!-- <span class="calculator anchor" onclick="$.layerCreateCommon('manualView','C02');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
		</div>
		<hr>

		<!-- 사원등록_좌측 -->
		<div class='main_titimg'>
			<!-- 탭 -->
			<div class='search_box p_l5 '>
				<ul>
					<%--<li class="months"><button
							onclick="location.href='/kintaimonths'" title="月別照会">
						<span id="months">月別照会</span>
					</button></li>--%>
				</ul>
				<ul>
					<%--<li class="details"><button
							onclick="location.href='/kintaidetails'" title="詳細照会">
						<span id="details">詳細照会</span>
					</button></li>--%>
				</ul>
			</div>
			<Br>
			<!-- 좌측 검색조건 -->
			<form name="frmSearchDetail" id="frmSearchDetail" method="get"
				  onsubmit="return $.fn.frmSrchCheck();">
				<div class='diligence_lt '>
					<ul>
						<div id='table0'>
							<p class='caption'></p>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDlsvInpD"><input type="checkbox"
																				  name="chkDlsvInpD" id="chkDlsvInpD"> <strong>入力日</strong></label></li>
								<li class='con'><input name="frmDlsvInpD" id="frmDlsvInpD"
													   type='text' value="2024-05-06" class="text"
													   style="width: 157px;"></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDlgnTerm"><input type="checkbox"
																				  name="chkDlgnTerm" id="chkDlgnTerm"> <strong>勤怠期間</strong></label></li>
								<li class='con'><input name="frmDlgnStrt" id="frmDlgnStrt"
													   type='text' value="2024-05-06" class='text'
													   style="width: 75px;"> ~ <input name="frmDlgnEndD"
																					  id="frmDlgnEndD" type='text' value="2024-05-06" class='text'
																					  style="width: 75px;"></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDprtCode"><input type="checkbox"
																				  name="chkDprtCode" id="chkDprtCode"> <strong>部署</strong></label></li>
								<li class='con'><select name="frmDprtCode"
														id="frmDprtCode" style="width: 130px;">
									<option value="">選択してください。</option>
									<option value="007">社長室</option>
									<option value="003">開発部</option>
									<option value="005">コンテンツ部</option>
									<option value="004">業務サポート部</option>
									<option value="001">デザイン部</option>
									<option value="006">管理部</option>
									<option value="002">企画戦略部</option>
								</select></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkEmplName"><input type="checkbox"
																				  name="chkEmplName" id="chkEmplName"> <strong>名前</strong></label></li>
								<li class='con'><input name="frmEmplName" id="frmEmplName"
													   type='text' value="名前を入力してください。" class='text'
													   style='width: 157px;'></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDlgrCode"><input type="checkbox"
																				  name="chkDlgrCode" id="chkDlgrCode"> <strong>勤怠グループ</strong></label></li>
								<li class='con'><select name="frmDlgrCode"
														id="frmDlgrCode" style='width: 130px;'>
									<option value="">選択してください。</option>
									<option value="370602">休暇</option>
									<option value="370605">延長勤務</option>
									<option value="370603">遅刻早退</option>
									<option value="370606">残業</option>
									<option value="370604">その他</option>
								</select></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDlgnCode"><input type="checkbox"
																				  name="chkDlgnCode" id="chkDlgnCode"> <strong>勤怠項目</strong></label></li>
								<li class='con'><select name="frmDlgnCode"
														id="frmDlgnCode" style='width: 130px;'>
									<option value="">選択してください。</option>
									<option value="001">有休</option>
									<option value="003">半休</option>
									<option value="004">遅刻</option>
									<option value="005">早退</option>
									<option value="006">外勤</option>
									<option value="009">休日勤務</option>
									<option value="011">延長勤務</option>
									<option value="012">特別休暇</option>
									<option value="013">夜勤</option>
									<option value="014">請願休暇</option>
								</select></li>
							</ul>
							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkLvItCode"><input type="checkbox"
																				  name="chkLvItCode" id="chkLvItCode"> <strong>休暇項目</strong></label></li>
								<li class='con'><select name="frmLvItCode"
														id="frmLvItCode" style='width: 130px;'>
									<option value="">選択してください。</option>

									<option value="458421">2020_有休</option>
									<option value="458422">2021_特別休暇</option>
									<option value="458423">2022_有休</option>
									<option value="458424">2023_有休</option>
									<option value="458425">2024_特別休暇</option>
									<option value="458426">2025_有休</option>
									<option value="458427">2026_特別休暇</option>
								</select></li>
							</ul>

							<ul>
								<li class='w_100'><label class="label_check"
														 for="chkDlsvEtcs"><input type="checkbox"
																				  name="chkDlsvEtcs" id="chkDlsvEtcs"> <strong>摘要</strong></label></li>
								<li class='con '><input name="frmDlsvEtcs"
														id="frmDlsvEtcs" type='text' value="" class='text'
														style='width: 157px; color: #eb4e5d;'></li>
							</ul>
						</div>

					</ul>
					<hr class='hr_5'></hr>
					<ul class='c' id="btnSearch">
						<li id="searchDetails">
							<button type="submit" alt="検索" title="検索">検索</button>
							<button type="submit" class="showAll" alt="全て見る" title="全て見る"
									onclick="showAll()">全て見る</button>
						</li>
					</ul>
				</div>
			</form>

			<!--  検索結果 -->
			<div class='e_total'>
				<div id='table1'>
					<p class='caption'></p>
					<ul>
						<li class='w_85 tit'><a
								href="/pzDiligence/diligenceSearchDetail.php?setSortItem=insd&setSortType=asc"
								class='c_linkblue'><strong>入力日</strong></a></li>
						<li class='w_65 tit '>区分</li>
						<!--<li  class='w_70 tit '><a href="/pzDiligence/diligenceSearchDetail.php?setSortItem=emNo&setSortType=asc" class='c_linkblue'><strong>사원번호</strong></a></li>-->
						<li class='w_65 tit'><a
								href="/pzDiligence/diligenceSearchDetail.php?setSortItem=emNm&setSortType=asc"
								class='c_linkblue'><strong>名前</strong></a></li>
						<li class='w_65 tit'><a
								href="/pzDiligence/diligenceSearchDetail.php?setSortItem=dprt&setSortType=asc"
								class='c_linkblue'><strong>部署</strong></a></li>
						<li class='w_65 tit'><a
								href="/pzDiligence/diligenceSearchDetail.php?setSortItem=pstn&setSortType=asc"
								class='c_linkblue'><strong>役職</strong></a></li>
						<li class='w_80 tit'>勤怠項目</li>
						<li class='w_159 tit'>勤怠期間</li>
						<li class='w_70 tit'>勤労日数</li>
						<li class='w_85 tit'>金額</li>
						<li class='w_90 tit'>摘要</li>
					</ul>
					<ul class="clsListingTable">
						<%
							KintaiDetailsDAO kintaiDetailsDAO = new KintaiDetailsDAO();
							List<AttendanceRecord> kintaiDetailsList = kintaiDetailsDAO.getAllRecord();
							if (kintaiDetailsList != null && !kintaiDetailsList.isEmpty()) {
								for (AttendanceRecord record : kintaiDetailsList) {
						%>
						<li class='w_85'><%=record.getInputDate()%></li>
						<li class='w_65'><%=record.getDivision()%></li>
						<li class='w_65'><%=record.getName()%></li>
						<li class='w_65'><%=record.getDepartment()%></li>
						<li class='w_65'><%=record.getPosition()%></li>
						<li class='w_80'><%=record.getAttendanceType()%></li>
						<li class='w_159'><%=record.getStartDate()%> ~ <%=record.getEndDate()%></li>
						<li class='w_70'><%=record.getAttendanceDate()%></li>
						<li class='w_85'><%=record.getAmount()%></li>
						<li class='w_90' style='word-wrap: break-word;'><%=record.getSummary()%></li>
						<%
								}
							}
						%>
					</ul>
				</div>
			</div>
			<hr class='hr_0'></hr>

			<!-- 페이지 인덱스 -->
			<!-- <style>
/*페이징*/
.paging{display:block; position:relative; clear:both; width:100%; padding:10px 0; text-align:center;}
/*
.paging{display:block; position:relative; clear:both; width:100%; margin:0 0 48px 30px; _margin-bottom:0px; padding:15px 0; text-align:center;}
*/
.paging a,
.paging strong{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #ffffff; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging strong{color:#f23219 !important; border:1px solid #d7d7d7;}
.paging a:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;line-height:normal;}
.paging .pre, .paging .next{font-weight:normal; display:inline-block; color:#565656; border:1px solid #d7d7d7;_position:relative; _top:-1px; font:12px Gulim; _width:60px;}
.paging .pre{margin-right:9px; padding:7px 6px 3px 16px; background:url(http://imgs.yesform.com/z_i/btn_arrow_left_on.gif) no-repeat 8px 9px !important;}
.paging .next{margin-left:9px; padding:7px 16px 3px 6px; background:url(http://imgs.yesform.com/z_i/btn_arrow_right_on.gif) no-repeat 47px 9px !important;}
.paging .line, .paging .line:visited{position:relative; display:inline-block; margin-right:1px; padding:3px 3px 5px 3px; color:#000; text-decoration:none; border:1px solid #d7d7d7; line-height:normal; font:bold 13px Verdana; _width:26px;}
.paging .line:hover{background:#fff; text-decoration:underline; border:1px solid #249ede;padding:3px 3px 5px 3px;line-height:normal; font:bold 13px Verdana; _width:26px;}
</style>
 -->

			<!-- 페이지 링크 -->
			<div class="paginate c">
				<a href='#' onClick="msg_pagelink(''); return false;" class='prev'>前へ</a>
				<a href="#現在" class="on"><strong>1</strong></a> <a href='#'
																	 onClick="msg_pagelink(''); return false;" class='next'>次へ</a>
			</div>
			<!-- 페이지 링크 끝 -->
			<script language='Javascript'>
				function msg_pagelink(ptype) {
					if (ptype)
						;
					else
						alert('これ以上移動するページはありません。');
				}
			</script>

			<script>
				function showAll() {
					// 데이터가 들어있는 요소를 선택합니다.
					var table = document.getElementById('table1');
					// 해당 요소를 화면에 보이도록 설정합니다.
					table.style.display = 'block';
				}
			</script>

			<script>
				function getCurrentDate() {
					var today = new Date();
					var year = today.getFullYear();
					var month = today.getMonth() + 1; // 월은 0부터 시작하므로 1을 더해줍니다.
					var day = today.getDate();

					// 월과 일이 한 자리 수인 경우 두 자리로 표시되도록 조정합니다.
					month = month < 10 ? '0' + month : month;
					day = day < 10 ? '0' + day : day;

					return year + '-' + month + '-' + day;
				}

				// 입력일자 input 요소에 현재 날짜를 설정합니다.
				document.getElementById('inputdate').value = getCurrentDate();
			</script>
			<hr class='hr_0'></hr>

		</div>
	</div>
	</div>
	<hr class='hr_50'></hr>
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