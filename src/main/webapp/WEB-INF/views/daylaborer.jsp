<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO"%>
<%@ page
	import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page import="org.sabaody.domain.daylaborer.model.DayLaborerDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2チーム <a
				href="/pzServiceGuide/php/inLogoutProc.php?ref=ExZon"><span
				style="color: #FFFFFF;"></span></a>
		</div>
		<div id="main_header">
			<div class="header">
				<%-- <ul class='logo p_t10'>
                 <button onclick="location.href='/'">人事管理</button>
             </ul>--%>



			</div>
		</div>
	</header>
	<!-- 아이콘 메뉴 -->
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
					<li class="n03"><button
							onclick="location.href='/employeeupdate'"
							title="[Shift + 3] 社員情報修正">
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
					<li class="n07"><button
							onclick="location.href='/vacationupdate'"
							title="[Shift + 7] 休暇修正">
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
		var arrLeavItemSet = [ {
			"lvItCode" : "457869",
			"lvItDatS" : "2017-01-01",
			"lvItDatE" : "2017-12-31"
		}, {
			"lvItCode" : "457870",
			"lvItDatS" : "2017-01-01",
			"lvItDatE" : "2017-12-31"
		} ];
	</script>
	<script type="text/javascript">
		$(function() {

			$("input").bind("click", function(e) {
				$(this).select();
			});

			//UI
			$("#frmDlgnCode, #selEmplStat").msDropDown();

			// DATE 픽커
			$("#frmDlsvInpD").datepicker({
				//option
				"showAnim" : "fadeIn",
				"dateFormat" : "yy-mm-dd",
				"showMonthAfterYear" : true,
				"yearSuffix" : "년",
				"showOtherMonths" : true,
				"selectOtherMonths" : true,
				"changeYear" : true
			});
			$("#frmDlsvSttD")
					.datepicker(
							{
								//option
								"showAnim" : "fadeIn",
								"dateFormat" : "yy-mm-dd",
								"showMonthAfterYear" : true,
								"yearSuffix" : "년",
								"showOtherMonths" : true,
								"selectOtherMonths" : true,
								"changeYear" : true,
								//        defaultDate: "+0d",
								onSelect : function(dateText) {
									// 2016-01-25
									if ($("#disDlsvUnit").text() == "시간") {
										$("#frmDlsvEndD").val(dateText);
										//$("#frmDlsvDays").val(4);
										$("#frmDlsvDays").val('');
									} else {
										if ($("#frmDlsvEndD").val() == "종료일")
											$("#frmDlsvEndD").val(dateText);
										if ($
												.isDateFormat10th($(
														"#frmDlsvSttD").val()) !== null
												&& $.isDateFormat10th($(
														"#frmDlsvEndD").val()) !== null) {
											var setDiff = 0;
											setDiff = $.getDateDiff2($(
													"#frmDlsvEndD").val(), $(
													"#frmDlsvSttD").val());
											if (setDiff > -1)
												setDiff = setDiff + 1;
											else
												setDiff = setDiff - 1;
											$("#frmDlsvDays").val(setDiff);
										}
									}
								},
								onClose : function(selectedDate) {

								}
							});
			$("#frmDlsvEndD")
					.datepicker(
							{
								//option
								"showAnim" : "fadeIn",
								"dateFormat" : "yy-mm-dd",
								"showMonthAfterYear" : true,
								"yearSuffix" : "년",
								"showOtherMonths" : true,
								"selectOtherMonths" : true,
								"changeYear" : true,
								defaultDate : "+0d",
								onSelect : function(dateText) {
									if ($("#disDlsvUnit").text() == "시간") {
										$("#frmDlsvSttD").val(dateText);
										$("#frmDlsvDays").val(4); // 임의 3시간
									} else {
										if ($("#frmDlsvSttD").val() == "開始日")
											$("#frmDlsvSttD").val(dateText);
										if ($
												.isDateFormat10th($(
														"#frmDlsvSttD").val()) !== null
												&& $.isDateFormat10th($(
														"#frmDlsvEndD").val()) !== null) {
											var setDiff = 0;
											setDiff = $.getDateDiff2($(
													"#frmDlsvEndD").val(), $(
													"#frmDlsvSttD").val());
											if (setDiff > -1)
												setDiff = setDiff + 1;
											else
												setDiff = setDiff - 1;
											$("#frmDlsvDays").val(setDiff);
										}
									}
								},
								onClose : function(selectedDate) {
									//        $( "#frmDlsvSttD" ).datepicker( "option", "maxDate", selectedDate );
								}
							});

			$(".disContentList").mCustomScrollbar({
				scrollButtons : {
					enable : true
				},
				theme : "dark"
			});

			$("#frmDlsvDays").numeric({
				allowMinus : false,
				allowThouSep : true
			});
			$("#frmDlsvDays").css("ime-mode", "disabled");

			$("#frmDlsvDays").blur(function() {
				var rtnDlsvDays = Number($("#frmDlsvDays").val());
				// 2019-03-07 근태일수에 수소점 2자리까지 입력가능케 요청
				//rtnDlsvDays = rtnDlsvDays.toFixed(1);
				rtnDlsvDays = rtnDlsvDays.toFixed(3); // 2->3
				//console.log(rtnDlsvDays);
				// rtnDlsvDays = parseFloat(rtnDlsvDays).toFixed(2);
				//rtnDlsvDays = rtnDlsvDays.replace(".00", "");
				rtnDlsvDays = parseFloat(rtnDlsvDays);
				$("#frmDlsvDays").val(rtnDlsvDays);
				return;
			});

			$("#frmDlsvDays").focus(function() {
				var thisVal = $(this).val();
				if (thisVal == "勤怠日数" || thisVal == "勤怠時間")
					$(this).val("");
				return;
			});

			$("#frmDlsvPays").numeric({
				//      allowMinus   : false,
				allowThouSep : true
			});
			$("#frmDlsvPays").css("ime-mode", "disabled");

			$("#frmDlsvPays").on("keyup", function() {
				var rtnDlsvPays = $.setComma($(this).val());
				$(this).val(rtnDlsvPays);
				return;
			});

			$("#btnSrchInit").click(function() {
				location.href = "/pzDiligence/diligenceMnt.php";
				return;
			});

			$('body').addClass('has-js');
			$('.label_check, .label_radio').click(function() {
				$.setupLabel();
			});
			$.setupLabel();

			$("#table_dil_data > ul").click(
					function() {

						var disSaveStat = $("#grpBtn02").hasClass("disHide")
								.toString();
						if (disSaveStat == "false") {
							$.fn.frmDlgnSaveInit(); // 입력폼 초기화
						}
						//      console.log(disSaveStat);

						var groupId = this.id;
						var chkBoxId = groupId.replace("employeeNo",
								"grpEmployeeInfoId");

						// 2014-11-06 추가
						$("#" + chkBoxId).prop("checked",
								!$("#" + chkBoxId).prop("checked"));

						// 2014-12-05 추가: 요청사항
						$(this).removeClass("cssOverColorSet");

						$("#table_dil_data ul").each(function() {
							if ($(this).hasClass("sell_bg") == true) {
								$(this).toggleClass("sell_bg");
								$(this).find("li").toggleClass("c_white");
							}
						});
						$(this).toggleClass("sell_bg");
						$(this).find("li").toggleClass("c_white");
						$.setupLabel();
						return;
					});

			// 사원 전체 선택/제거
			$("#chkBoxGrpEmployeeInfo").click(
					function() {

						// $('input:checked'); // checked
						// $('input:not(:checked)'); //unchecked
						if ($(this).attr("checked") == "checked") {
							$("input[name=grpEmployeeInfoId]").attr("checked",
									true);
							$("input[name=grpEmployeeInfoId]").parent()
									.addClass("c_on");
							$(".tmpClass").addClass("sell_bg");
							$(".tmpClass").find("li").addClass("c_white");
						} else {
							$("input[name=grpEmployeeInfoId]").attr("checked",
									false);
							$("input[name=grpEmployeeInfoId]").parent()
									.removeClass("c_on");
							$(".tmpClass").removeClass("sell_bg");
							$(".tmpClass").find("li").removeClass("c_white");
						}
						return;
					});

			// 체크박스 선택 유무에 따라 스타일 적용하기
			$('input:checkbox[name="grpEmployeeInfoId"]').bind(
					"change",
					function() {
						var groupId = this.id.replace("grpEmployeeInfoId",
								"employeeNo");
						$("#" + groupId).toggleClass("sell_bg");
						$("#" + groupId).find("li").toggleClass("c_white");
						return;
					});

			$("#frmDlsvSttd").change(function() {
				alert("変更");
			});

			//  alert(arrLeavItemSet[0].lvItCode);
			// 근태 항목 선택 시 휴가 항목과 연계되어 있는지 체크: 연계 되어 있을 경우 기간 체크
			$("#frmDlgnCode").change(
					function() {
						var selDlgnLeav = $('option:selected', this).attr(
								'dlgnLeav');
						var selDlgnUnit = $('option:selected', this)
								.attr('alt');

						// 2016-01-25 근태항목 단위에 따라 표기 달리 함
						if (selDlgnUnit == "時間") {
							$("#disDlgnDays").text("勤怠時間");
							$("#frmDlsvDays").val("勤怠時間");
							$("#disDlsvUnit").text("時間");
						} else { // `일` 기준
							$("#disDlgnDays").text("勤怠日数");
							$("#frmDlsvDays").val("勤怠日数");
							$("#disDlsvUnit").text("仕事");
						}
						$("#frmDlsvSttD").val("開始日");
						$("#frmDlsvEndD").val("終了日");
						//console.log(selDlgnUnit);

						for (var i = 0; i < arrLeavItemSet.length; i++) {
							if (arrLeavItemSet[i].lvItCode == selDlgnLeav) {
								//          alert("기간: " + arrLeavItemSet[i].lvItDatS + "~" + arrLeavItemSet[i].lvItDatE);
								$("#frmLeavItemChecking").val(selDlgnLeav);
								$("#frmDlsvSttDExpire").val(
										arrLeavItemSet[i].lvItDatS);
								$("#frmDlsvEndDExpire").val(
										arrLeavItemSet[i].lvItDatE);
								$("#disLeavItemExpire").removeClass("disHide");
								return;
							} else {
								$("#frmLeavItemChecking").val("");
								$("#frmDlsvSttDExpire").val("");
								$("#frmDlsvEndDExpire").val("");
								$("#disLeavItemExpire").addClass("disHide");
							}
						}
						return;
					});

			$("#btnHolidayTotal").click(
					function() {

						// 사원목록 체크 유무
						if ($("input:checkbox[name='grpEmployeeInfoId']").is(
								":checked") !== true) {
							alert("休暇日数の現状を確認する社員を選択してください。  ");
							return false;
						}
						var getDlgnLeav = $("#frmDlgnCode option:selected")
								.attr("dlgnLeav");
						if (getDlgnLeav == "" || getDlgnLeav == "000") {
							alert("休暇項目に関連付けられている勤労項目ではありません。  ");
							return;
						}
						$.fn.layerProcCreate("holidayTotal");
						return;
					});

			// 사원목록 마우스오버: 색상변경
			$("#table_dil_data > ul").hover(function() { // over
				$("#table_dil_data > ul").removeClass("cssOverColorSet");
				if ($(this).hasClass("sell_bg") !== true)
					$(this).addClass("cssOverColorSet");
			}, function() { // out
				$("#table_dil_data > ul").removeClass("cssOverColorSet");
			});

			// 도움말: 근태기록/관리 설정
			$("#btnDiligenceHelpView").click(function() {
				$.fn.layerProcCreate("DiligenceHelpView");

				return;
			});

			// 팁: 근태기록
			$("#btnTipDiligenceMnt").click(function() {
				$.fn.layerProcCreate("tipDiligenceMnt");
				return;
			});

			// 검색:재직/퇴직 선택
			$("#selEmplStat")
					.change(
							function() {
								var thisVal = $(this).val();
								if (thisVal != "")
									location.href = "/pzDiligence/diligenceMnt.php?setStatNum="
											+ thisVal;
								return;
							});

		});
		/* End Function() */
		/* End Function() */

		// 관리 레이어(자식창) 휴가적용기간 노출 판단 트리거
		$.fn.setDlgnCodeParent = function() {
			//    $("#frmDlgnCode").trigger("change");
			$("#frmDlgnCode").msDropDown();
			$("#chkBoxGrpEmployeeInfo").attr("checked", true);
			$("#chkBoxGrpEmployeeInfo").trigger("click");
			return;
		};

		// custom function
		$.fn.frmSrchCheck = function() {
			if ($("#srchKwrd").val() == "検索　入力"
					|| $.trim($("#srchKwrd").val()).length < 2) {
				alert("検索語を確認してください。  ");
				$("#srchKwrd").select();
				return false;
			}
			return;
		}

		// 근태기록 입력 폼/선택항목 초기화
		$.fn.frmDlgnSaveInit = function() {
			//location.href = "/pzDiligence/diligenceMnt.php";
			//return ;

			// 사원선택 초기화
			$("#chkBoxGrpEmployeeInfo").attr("checked", false);
			$("input[name=grpEmployeeInfoId]").attr("checked", false);
			$("input[name=grpEmployeeInfoId]").parent().removeClass("c_on");
			$("#table_dil_data ul").each(function() {
				if ($(this).hasClass("sell_bg") == true) {
					$(this).toggleClass("sell_bg");
					$(this).find("li").toggleClass("c_white");
				}
			});

			$("#frmDlgnSave").each(function() {
				this.reset();
			});
			$('#frmDlsvSttD, #frmDlsvEndD').val('').datepicker('option', {
				minDate : null,
				maxDate : null
			});
			$("#frmDlgnCode").val('').attr("selected", "selected");
			$("#frmDlgnCode").msDropDown();
			$.setupLabel();
			$("#grpBtn01", parent.document).removeClass("disHide");
			$("#grpBtn02", parent.document).addClass("disHide");
			$("#disLeavItemExpire").addClass("disHide");

			// 2016-01-25
			$("#disDlgnDays").text("勤怠日数");
			$("#frmDlsvDays").val("勤怠日数");
			$("#disDlsvUnit").text("仕事");
			$("#frmDlsvSttD").val("開始日");
			$("#frmDlsvEndD").val("終了日");
			return;
		}

		$.fn.employeeDiliList = function(employeeId) {
			if (employeeId) {
				$("#frmCurrentId").val(employeeId);
				$.fn.layerProcCreate("employeeDiliList");
			}
			return;
		}

		// 관리 . 수정 버튼 클릭 시 스타일 우회 적용(부모창에서 msDropDown 작동 X)
		$.fn.setMsDropDown = function(msDropDownId) {
			//    alert("점검중: " + msDropDownId);
			$(msDropDownId).msDropDown();
			return;
		};

		// 관리(자식창) 레이어에서 수정 선택 시 사원선택 처리
		$.fn.setEmployeeEditSelect = function(getChkBoxValue) {
			//console.log("val: " + getChkBoxValue);
			$.fn.frmDlgnSaveInit();
			$("input[type=checkbox][value='" + getChkBoxValue + "']").prop(
					'checked', true);
			var groupId = $(
					"input[type=checkbox][value='" + getChkBoxValue + "']")
					.parent().parent().parent().attr("id");
			$("#" + groupId).addClass("sell_bg");
			$("#" + groupId).find("li").addClass("c_white");
			$.setupLabel();
			return;
		}

		// 2018-09-06 근태기록 후 초기화(페이지리셋)
		$.fn.frmDlgnSaveInitPageReload = function() {
			$.fn.frmDlgnSaveInit(); // 입력폼 초기화
			//    location.href = "/pzDiligence/diligenceMnt.php";
			return;
		}
	//-->
	</script>

	<section>
		<div id="main_container">
			<!-- 타이틀 이미지 -->
			<div class='sub_titimg'>
				<ul>

					<li class='p_t10' style="font-size: 30px;">日雇い管理</li>

					<li class='p_t5' style="font-size: 20px;">
						給与に関連する日雇い管理するメニューです。社員別勤務履歴を管理できます。</li>
				</ul>

			</div>
			<hr>


			<!-- 근태 설정 리스트 -->
			<div class='main_titimg'>
				<div class='diligence_list'>
					<div class='dil_search_box'>

						<form name="frmSrchEmployee" id="frmSrchEmployee"
							onSubmit="return $.fn.frmSrchCheck();">
							<input type="hidden" name="frmStatNum" id="frmStatNum" value="1">
							<ul>
								<input name="srchKwrd" id="srchKwrd" type='text' value="検索　入力"
									class='border w_170 height_22 p_l5'
									onFocus="this.value = (this.value == '検索　入力')?'':this.value;">
							</ul>
							<ul class='p_t1'>
								<input type='image' value='検索　入力'
									src='https://img.payzon.co.kr/_commonImg/btn_s_search.png'
									width='23px' height='23px' alt='検索　入力' title='検索　入力'
									class='p_l5 '>
							</ul>
						</form>
						<ul class='p_t1'>
							<input name="btnSrchInit" id="btnSrchInit" type='submit'
								value='全て見る' width='74px' height='23px' alt='全て見る' title='全て見る'
								class='p_l5'>
						</ul>
						<ul class='p_t5 p_l10 c_red'>* 複数選択時に勤怠記録を一括適用できます。
						</ul>

					</div>
					<ul>
						<div class='dil_w_list'>
							<div id='table_dil'>
								<p class='caption'></p>
								<ul>
									<li class='w_24 tit'><label class="label_check"
										for="chkBoxGrpEmployeeInfo"><input
											id="chkBoxGrpEmployeeInfo" type="checkbox"> </label></li>
									<li class='w_100 tit'><strong>区分</strong></li>
									<li class='w_105 tit'><strong>社員番号</strong></li>
									<li class='w_100 tit'><strong>名前</strong></li>
									<li class='w_120 tit'><strong>部署</strong></li>
									<li class='w_120 tit'><strong>役職</strong></li>
									<li class='w_119 tit'><strong>全体削除</strong></li>
								</ul>
								<div id="disContentList" class="disContentList"
									style="width: 710px;">
									<div id="table_dil_data">
										<table>
											<c:forEach var="daylborer" items="${daylist}">
												<tr>
													<li class="w_24" style="text-align: center;"><label class="label_check" for="grpEmployeeInfoId"><input
															type="checkbox" name="grpEmployeeInfoId"
															id="grpEmployeeInfoId"
															value="${daylborer.id}"></label></li>
													<li class="w_100" style="text-align: center;">${daylborer.division}</li>
													<li class="w_105" style="text-align: center;">${daylborer.id}</li>
													<li class="w_100" style="text-align: center;">${daylborer.name}</li>
													<li class="w_120" style="text-align: center;">${daylborer.department}</li>
													<li class="w_120" style="text-align: center;">${daylborer.position}</li>
													<li class="w_119" style="text-align: center;">
														<form action="/deleteEmployee" method="post">
															<input type="hidden" name="employeeId" value="${daylborer.id}">
															<button type="submit" alt="削除" title="削除">削除</button>
														</form>
													</li>
												</tr>

											</c:forEach>
										</table>
									</div>
								</div>

							</div>
						</div>
				</div>


				<!-- 勤怠設定リスト -->
				<div class='diligence_set'>
					<form action="/daylaborerservlet" method="post">
						<ul>
							<div id='table0'>
								<p class='caption'></p>
								<ul>
									<li class='w_135 c'><strong>勤務日</strong></li>
									<li class='con'><input name="inputdate" id="inputdate"
										type='date' value="" class='white' style="width: 190px;">
									</li>
								</ul>
								<ul>
									<li class='w_135 c'><strong>社員番号</strong></li>
									<li class='con'><input name="employeeId" id="employeeId"
										type='text' value="" class='white' style="width: 190px;">
									</li>
								</ul>
								<ul>
									<li class='w_135 c'><strong>現場プロジェクト</strong></li>
									<li class='con'><select name="frmDlgnCode"
										id="frmDlgnCode" style='width: 190px;'>
											<option value="現場1">現場1</option>
											<option value="現場2">現場2</option>
											<option value="現場3">現場3</option>
											<option value="現場4">現場4</option>
											<option value="現場5">現場5</option>
											<option value="現場6">現場6</option>
											<option value="現場7">現場7</option>
											<option value="現場8">現場8</option>
											<option value="現場9">現場9</option>
											<option value="現場10">現場10</option>
									</select></li>
								</ul>
								<ul>
									<li class='w_135 c'><strong>日給</strong></li>
									<li class='con'><input name="daliyrate" id="daliyrate"
										type='number' value="" class='white' style="width: 190px;">
									</li>
								</ul>

								<ul>
									<li class='w_135 c'><strong>所得税</strong></li>
									<li class='con'><input name="incomtax" id="incomtax"
										type='number' value="" class='white' style="width: 190px;">
									</li>
								</ul>
								<ul>
									<li class='w_135 c'><strong>地方所得税</strong></li>
									<li class='con'><input name="localincom" id="localincom"
										type='number' value='' class='white clsAmount'
										style='width: 210px; color: #eb4e5d; text-align: right;'
										placeholder=""></li>
								</ul>
								<ul>
									<li class='w_135 c'><strong>実支給額</strong></li>
									<li class='con'><input name="netpay" id="netpay"
										type='number' value='' class='white' style='width: 190px;'
										placeholder=""></li>
								</ul>
								<hr class='hr_5'></hr>
								<ul class='c' id="btnGroup">
									<li id="grpBtn01">
										<button type="submit" alt="保存" title="保存"
											onclick="return validateForm()">保存</button>
										<button type="button" class="p_l5" alt="内容を消去" title="内容を消去"
											onclick="clearForm()">内容を消去</button>
									</li>
									<li id="grpBtn02" class="disHide">
										<button type="submit" name="btnDlgnSaveUpd"
											id="btnDlgnSaveUpd" alt="修正" title="修正"
											onclick="return validateBeforeSubmit()">修正</button>
										<button type="button" alt='修正キャンセル' title='修正キャンセル'
											class='p_l5' onclick="closeModal()">修正キャンセル</button>
									</li>
								</ul>
					</form>
					<script>
    function validateForm() {
        var inputdate = document.getElementById('inputdate').value;
        var employeeId = document.getElementById('employeeId').value;
        var frmDlgnCode = document.getElementById('frmDlgnCode').value;
        var dailyrate = document.getElementById('daliyrate').value;
        var incomtax = document.getElementById('incomtax').value;
        var localincom = document.getElementById('localincom').value;
        var netpay = document.getElementById('netpay').value;

        // 각 필드가 비어 있는지 확인
        if (inputdate.trim() === '' || employeeId.trim() === '' ||
            frmDlgnCode.trim() === '' || dailyrate.trim() === '' ||
            incomtax.trim() === '' || localincom.trim() === '' ||
            netpay.trim() === '') {
            alert('모든 정보를 입력해주세요.');
            return false; // 서브밋 중지
        }
        return true; // 서브밋 허용
    }
    </script>




					<script>
						function clearForm() {
							document.getElementById("p_l5").reset();
							document.getElementById("grpBtn01").classList
									.add("disHide");
							document.getElementById("grpBtn02").classList
									.remove("disHide");
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
