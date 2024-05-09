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

            <ul class="logInfo">팀장님 도와주세요
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
                <li class="n03"><button onclick="location.href='/kintaidetails'"
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
                            <option value="458597" selected="">2017_有給休暇</option>
                            <option value="458598">2017_報奨休暇</option>
                        </select>
                    </ul>
                    <ul class="p_l5">
                        <input name="srchAllKwrd" id="srchAllKwrd" type="text" value="検索キーワード入力" class="border w_170 height_22 p_l5" onfocus="this.value = (this.value == '検索キーワード入力')?'':this.value;">
                    </ul>
                    <ul class="p_t1">
                        <input type="image" value="検索" src="/_commonImg/btn_s_search.png" width="25px" height="23px" alt="検索" title="検索" class="p_l5 ">
                    </ul>
                </form>
                <a href="/pzDiligence/holidaysSearchResult.php?selLvItCode=">
                    <img name="btnSrchInit" id="btnSrchInit" type="image" value="全体表示" src="/_commonImg/btn_list_all01.png" width="74px" height="23px" alt="全体表示" title="全体表示" class="p_l5">
                </a>
                <ul class="right w_169 p_t1">
        <span name="btnSetSort" id="btnSetSort" class="anchor">
            <img src="/_commonImg/btn_align_set.png" width="114" height="23" class="p_l5" alt="整列基準 設定する" title="整列基準 設定する">
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
                        <li class="w_105 tit ">区分</li>
                        <li class="w_105 tit "><a href="/pzDiligence/holidaysSearchResult.php?selLvItCode=458597&amp;setEmplStatNum=1&amp;selPstnCode=&amp;setSortItem=emNo&amp;setSortType=asc" class="c_linkblue"><strong>社員番号</strong></a></li>
                        <li class="w_100 tit"><a href="/pzDiligence/holidaysSearchResult.php?selLvItCode=458597&amp;setEmplStatNum=1&amp;selPstnCode=&amp;setSortItem=emNm&amp;setSortType=asc" class="c_linkblue"><strong>姓名</strong></a></li>
                        <li class="w_120 tit"><a href="/pzDiligence/holidaysSearchResult.php?selLvItCode=458597&amp;setEmplStatNum=1&amp;selPstnCode=&amp;setSortItem=dprt&amp;setSortType=asc" class="c_linkblue"><strong>部署</strong></a></li>
                        <li class="w_120 tit"><a href="/pzDiligence/holidaysSearchResult.php?selLvItCode=458597&amp;setEmplStatNum=1&amp;selPstnCode=&amp;setSortItem=pstn&amp;setSortType=asc" class="c_linkblue"><strong>職位</strong></a></li>
                        <li class="w_170 tit">休暇項目</li>
                        <li class="w_140 tit">全体</li>
                        <li class="w_140 tit">使用</li>
                        <li class="w_140 tit">残余</li>
                    </ul>



                    <ul name="LILE1202620" id="LILE1202620" onclick="$.fn.viewLeavItemListInEmployee('1202620');" title="김웅 休暇使用 状況(No.1)" class="anchor clsListingTable sell_bg"> <!-- style="cursor:pointer;" -->
                        <li class="w_105  c_white">正規職</li>
                        <li class="w_105  c_white">No-140001</li>
                        <li class="w_100  c_white">김웅</li>
                        <li class="w_120  c_white">コンテンツチーム</li>
                        <li class="w_120  c_white">社員</li>
                        <li class="w_170  c_white">2017_有休</li>
                        <li class="w_140 bold c_white">19</li>
                        <li class="w_140 bold c_white">18</li>
                        <li class="w_140 bold c_white">1</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>18.0</li>
                    <li class='w_140  bold c_red'>1.0</li> -->

                    <ul name="LILE1202622" id="LILE1202622" onclick="$.fn.viewLeavItemListInEmployee('1202622');" title="함서운 休暇使用 状況(No.2)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140031</li>
                        <li class="w_100 ">함서운</li>
                        <li class="w_120 ">管理チーム</li>
                        <li class="w_120 ">部長</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">19</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">19</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>19.0</li> -->

                    <ul name="LILE1202623" id="LILE1202623" onclick="$.fn.viewLeavItemListInEmployee('1202623');" title="박치흥 休暇使用 状況(No.3)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140032</li>
                        <li class="w_100 ">박치흥</li>
                        <li class="w_120 ">戦略計画チーム</li>
                        <li class="w_120 ">部長</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">19</li>
                        <li class="w_140 bold c_blue">21.5</li>
                        <li class="w_140 bold c_red">-2.5</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>21.5</li>
                    <li class='w_140  bold c_red'>-2.5</li> -->

                    <ul name="LILE1202625" id="LILE1202625" onclick="$.fn.viewLeavItemListInEmployee('1202625');" title="이응열 休暇使用 状況(No.4)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140034</li>
                        <li class="w_100 ">이응열</li>
                        <li class="w_120 ">社長室</li>
                        <li class="w_120 ">社長</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">22</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">22</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>22.0</li> -->

                    <ul name="LILE1202626" id="LILE1202626" onclick="$.fn.viewLeavItemListInEmployee('1202626');" title="이수잔 休暇使用 状況(No.5)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140035</li>
                        <li class="w_100 ">이수잔</li>
                        <li class="w_120 ">デザインチーム</li>
                        <li class="w_120 ">代理</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">20</li>
                        <li class="w_140 bold c_blue">9.5</li>
                        <li class="w_140 bold c_red">10.5</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>9.5</li>
                    <li class='w_140  bold c_red'>10.5</li> -->

                    <ul name="LILE1202627" id="LILE1202627" onclick="$.fn.viewLeavItemListInEmployee('1202627');" title="이영희 休暇使用 状況(No.6)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">계약직</li>
                        <li class="w_105 ">No-140036</li>
                        <li class="w_100 ">이영희</li>
                        <li class="w_120 ">コンテンツチーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">17</li>
                        <li class="w_140 bold c_blue">9</li>
                        <li class="w_140 bold c_red">8</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>9.0</li>
                    <li class='w_140  bold c_red'>8.0</li> -->

                    <ul name="LILE1202628" id="LILE1202628" onclick="$.fn.viewLeavItemListInEmployee('1202628');" title="박철수 休暇使用 状況(No.7)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">임시직</li>
                        <li class="w_105 ">No-140037</li>
                        <li class="w_100 ">박철수</li>
                        <li class="w_120 ">デザインチーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">15</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">15</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>15.0</li> -->

                    <ul name="LILE1202629" id="LILE1202629" onclick="$.fn.viewLeavItemListInEmployee('1202629');" title="김동현 休暇使用 状況(No.8)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140038</li>
                        <li class="w_100 ">김동현</li>
                        <li class="w_120 ">管理チーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">15</li>
                        <li class="w_140 bold c_blue">21</li>
                        <li class="w_140 bold c_red">-6</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>21.0</li>
                    <li class='w_140  bold c_red'>-6.0</li> -->

                    <ul name="LILE1202630" id="LILE1202630" onclick="$.fn.viewLeavItemListInEmployee('1202630');" title="이기훈 休暇使用 状況(No.9)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">日傭職</li>
                        <li class="w_105 ">No-140039</li>
                        <li class="w_100 ">이기훈</li>
                        <li class="w_120 ">管理チーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">16</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">16</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>16.0</li> -->

                    <ul name="LILE1202631" id="LILE1202631" onclick="$.fn.viewLeavItemListInEmployee('1202631');" title="임형규 休暇使用 状況(No.10)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">日傭職</li>
                        <li class="w_105 ">No-140040</li>
                        <li class="w_100 ">임형규</li>
                        <li class="w_120 ">管理チーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">17</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">17</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>17.0</li> -->

                    <ul name="LILE1202632" id="LILE1202632" onclick="$.fn.viewLeavItemListInEmployee('1202632');" title="김광민 休暇使用 状況(No.11)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">日傭職</li>
                        <li class="w_105 ">No-140041</li>
                        <li class="w_100 ">김광민</li>
                        <li class="w_120 ">管理チーム</li>
                        <li class="w_120 ">社員</li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">16</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">16</li>
                    </ul>

                    <!-- <li class='w_140  bold c_blue'>0.0</li>
                    <li class='w_140  bold c_red'>16.0</li> -->

                    <ul name="LILE1202633" id="LILE1202633" onclick="$.fn.viewLeavItemListInEmployee('1202633');" title="홍길동 休暇使用 状況(No.12)" class="anchor clsListingTable"> <!-- style="cursor:pointer;" -->
                        <li class="w_105 ">正規職</li>
                        <li class="w_105 ">No-140042</li>
                        <li class="w_100 ">홍길동</li>
                        <li class="w_120 "></li>
                        <li class="w_120 "></li>
                        <li class="w_170 ">2017_有休</li>
                        <li class="w_140 bold">18</li>
                        <li class="w_140 bold c_blue">0</li>
                        <li class="w_140 bold c_red">18</li>
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


            <!-- 메인 버튼 사각형  빅사이즈
                <div class='btn c'>
                <li>
                <input type='image' value='신규 社員등록' src='/_commonImg/btn_new_employee.gif'  width='100px' height='100px' alt='신규 社員등록'  title='신규 社員등록'>
                   <input type='image' value='선택 삭제' src='/_commonImg/btn_select_delete.gif'  width='100px' height='100px'  hspace='15' alt='선택 삭제' title='선택 삭제'>
                <input type='image' value='엑셀로 다운로드' src='/_commonImg/btn_xls_down.gif'  width='100px' height='100px'  alt='엑셀로 다운로드' title='엑셀로 다운로드'>
                <input type='image' value='sms보내기' src='/_commonImg/btn_sms.gif'  width='100px' height='100px' hspace='15'  alt='sms보내기' title='sms보내기'>
                </li>
                </div>-->

            <div class="btn c">
                <li>
                    <input name="btnGetPrint" id="btnGetPrint" type="image" value="印刷" src="/_commonImg/btn_print_s.png" alt="印刷" title="印刷">
                    <input name="btnGetExcel" id="btnGetExcel" type="image" value="エクセルでダウンロード" src="/_commonImg/btn_xls_down_s.png" hspace="15" alt="エクセルでダウンロード" title="エクセルでダウンロード">
                </li>
            </div>
            <!-- 메인 버튼 사각형    <div class='btn c'>
              <li>
              <input type='image' value='신규 社員등록' src='/_commonImg/btn_new_employee01.gif'  width='139px' height='33px' alt='신규 社員등록'  title='신규 社員등록'>
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