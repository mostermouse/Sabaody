<%@ page import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatusDAO"%>
<%@ page
        import="org.sabaody.domain.user.model.attendancemanagement.EmploymentStatus"%>
<%@ page import="java.util.List"%>
<%@ page import="org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiryDAO"%>
<%@ page import="org.sabaody.domain.vacationInquiry.model.vacationinquiry.VacationInquiry"%>
<%@ page import="org.sabaody.domain.user.model.attendancemanagement.AttendanceRecord"%>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2チーム <a
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

    /* 2014-11-06 社員목록 마우스오버 스타일 */
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

        // 日傭職 근무 조회 다운로드
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

        // 社員목록 마우스오버: 색상변경
        $(".ulDiligenceList").hover(function() { // over
            $(".ulDiligenceList").removeClass("cssOverColorSet");
            $(this).addClass("cssOverColorSet");
        }, function() { // out
            $(".ulDiligenceList").removeClass("cssOverColorSet");
        });

        // 社員목록 클릭 시: 상세검색 이동
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
        // 社員별 달력 토/일 표기
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
                <h2>休暇照会</h2>
                <li class='p_t5'>全社員の休暇状況を一度に見ることができます。 社員別の詳細休暇内訳も確認できます。</li>
            </ul>
            <!-- <span class="calculator anchor" onclick="$.layerCreateCommon('manualView','C02');"><img src='https://img.payzon.co.kr/_commonImg/icon_zoom.png'  width='27' height='27' alt='매뉴얼' title='매뉴얼'></span> <span class="calculator anchor" onclick="$.fn.CallCalc();"><img src='https://img.payzon.co.kr/_commonImg/icon_calculator.gif'  width='22' height='26' alt='계산기' title='계산기'></span>-->
        </div>
        <hr>




        <!-- 社員관리 -->
        <div class="main_titimg wp_100">
            <!-- 검색 & 정렬 -->
            <div class="search_box p_b10 p_l10">
                <input name="tmpSelEmployeeId" id="tmpSelEmployeeId" type="hidden" value="1202620">
                <form name="frmSrchEmployee" id="frmSrchEmployee" onsubmit="return $.fn.frmLeavItemSrchCheck();">
                    <input type="hidden" name="frmEmplStatNum" id="frmEmplStatNum" value="1">
                    <ul class="tit w_100 bold">* 休暇項目の選択&nbsp;</ul>
                    <ul class="p_t1">
                        <select name="selLvItCode" id="selLvItCode" style="width:130px;" class="goSelect">
                            <option value="goLeaveSet">休暇設定する</option>
                            <option value="458597" selected="">2024_有給休暇</option>
                            <option value="458598">2024_報奨休暇</option>
                        </select>
                    </ul>
                    <ul class="p_l5">
                        <input name="srchAllKwrd" id="srchAllKwrd" type="text" value="検索キーワード入力" class="border w_170 height_22 p_l5" onfocus="this.value = (this.value == '検索キーワード入力')?'':this.value;">
                    </ul>
                    <ul class="p_t1">
                        <input type="submit" value="検索" src="/_commonImg/btn_s_search.png" width="25px" height="23px" alt="検索" title="検索" class="p_l5 ">
                    </ul>
                </form>

                <ul class="right w_169 p_t1">
        <span name="btnSetSort" id="btnSetSort" class="anchor">

        </span>
                </ul>
                <ul class="right p_t1">
                    <div>
                        <!-- 상태 선택 -->
                        <select name="selEmplStat" id="selEmplStat" style="width:100px;" class="goSelect">
                            <option value="2">状態別</option>
                            <option value="1" selected="">在職</option>
                            <option value="0">退職</option>
                        </select>
                        <!-- 직원 구분 선택 -->
                        <select name="selEmplEmpl" id="selEmplEmpl" style="width:100px;" class="goSelect">
                            <option value="">区分別</option>
                            <option value="正規職">正規職</option>
                            <option value="契約職">契約職</option>
                            <option value="臨時職">臨時職</option>
                            <option value="派遣職">派遣職</option>
                            <option value="委囑職">委囑職</option>
                            <option value="日傭職">日傭職</option>
                            <!-- 다른 직원 유형들 -->
                        </select>
                        <!-- 부서 선택 -->
                        <select name="selDprtCode" id="selDprtCode" style="width:100px;" class="goSelect">
                            <option value="">部署別</option>
                            <option value="007">社長室</option>
                            <option value="007">開發チーム</option>
                            <option value="007">コンテンツチーム</option>
                            <option value="007">業務支援チーム</option>
                            <option value="007">デザインチーム</option>
                            <option value="007">管理チーム</option>
                            <option value="007">戦略計画チーム</option>                <!-- 다른 부서들 -->
                        </select>
                        <!-- 직급 선택 -->
                        <select name="selPstnCode" id="selPstnCode" style="width:100px;" class="goSelect">
                            <option value="">職級別</option>
                            <option value="02">理事</option>
                            <option value="02">次長</option>
                            <option value="02">社長</option>
                            <option value="02">部長</option>
                            <option value="02">課長</option>
                            <option value="02">代理</option>
                            <option value="02">主任</option>
                            <option value="02">社員</option>
                            <option value="02">室長</option>
                            <!-- 다른 직급들 -->
                        </select>
                        <!-- 리스트 수 선택 -->
                        <select name="scale" id="scale" class="goSelect">
                            <option value="">リスト数</option>
                            <option value="10">10個ずつ見る</option>
                            <option value="30" selected="">30個ずつ見る</option>
                            <option value="50">50個ずつ見る</option>
                            <option value="100">100個ずつ見る</option>
                            <!-- 다른 리스트 수 옵션들 -->
                        </select>
                    </div>
                </ul>
            </div>


            <input type="hidden" name="frmCurrEmpl" id="frmCurrEmpl" value="1202620">
            <!-- 휴가조회 리스트 -->
            <div class="e_total">
                <div id="table1">
                    <p class="caption"></p>
                    <ul>
                        <li class="w_105 tit">区分</li>
                        <li class="w_105 tit">社員番号</li>
                        <li class="w_100 tit">姓名</li>
                        <li class="w_120 tit">部署</li>
                        <li class="w_120 tit">職位</li>
                        <li class="w_170 tit">休暇項目</li>
                        <li class="w_140 tit">全体</li>
                        <li class="w_140 tit">使用</li>
                        <li class="w_140 tit">残余</li>
                    </ul>
                    <ul class="vacationinquiryTable">
                        <table>
                            <c:forEach var="inquiries" items="${vacation}">
                                <tr>

                                    <li class="w_105" style="text-align: center;">${inquiries.division}</li>
                                    <li class="w_105" style="text-align: center;">${inquiries.id}</li>
                                    <li class="w_100" style="text-align: center;">${inquiries.name}</li>
                                    <li class="w_120" style="text-align: center;">${inquiries.department}</li>
                                    <li class="w_120" style="text-align: center;">${inquiries.position}</li>
                                    <li class="w_170" style="text-align: center;">${inquiries.vacationItems}</li>
                                    <li class="w_140" style="text-align: center;">${inquiries.vacationTypes}</li>
                                    <li class="w_140" style="text-align: center;">${inquiries.usedVacationDays}</li>
                                    <li class="w_140" style="text-align: center;">${inquiries.remainingVacationDays}</li>
                                </tr>

                            </c:forEach>
                        </table>


                    </ul>




                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>18.0</li> -->

                </div>
            </div>
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
            <div class="paginate">
                <a href="#" onclick="msg_pagelink(''); return false;" class="prev">前のページ</a>
                <a href="#現在のページ" class="on"><strong>1</strong></a> <a href="#" onclick="msg_pagelink(''); return false;" class="next">次のページ</a>
            </div>
            <!-- 페이지 링크 끝 -->
            <script language="Javascript">
                function msg_pagelink(ptype) {
                    if(ptype);
                    else alert('これ以上移動するページがありません。');
                }
            </script>





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