<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.header_wrapper .header_section {
    height: 98px;
    padding: 0 20px;
    margin: 0 auto;
    max-width: 1200px;
}
.header_wrapper .header_section .top_header_section .lft_tit_section h1 {
    margin-bottom: 6px;
    padding-top: 25px;
}
h1, h2, h3, h4, h5, h6 {
    font-size: 12px;
    text-align: left;}
    
    .header_wrapper .header_section .header_search_section .top_search_form .search_text {
    width: 90%;
    height: 31px;
    border: 4px solid #2d58b5;
    background: #fff;
    text-align: left;
    padding-left: 10px;
    font-size: 16px;
    line-height: 31px;
}

@media screen and (max-width: 1023px)
.header_wrapper .header_section {
    position: fixed;
    top: 0;
    /* background: #fff; */
    z-index: 999;
    left: 0;
}
@media screen and (min-width: 640px) and (max-width: 1023px)
.header_wrapper .header_section {
    width: 100%;
    height: 130px;
    padding: 0;
    margin: 0 auto;
    min-width: 1px;
    max-width: 100%;

@media screen and (min-width: 640px) and (max-width: 1023px)
.header_wrapper .header_section .header_search_section .top_search_form .btn_search {
    position: absolute;
    top: 0;
    right: 0;
    height: 39px;
    border: 1px solid #2d58b5;
    background: #2d58b5;
    color: #fff;
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    margin-left: 12px;
}
</style>

<div class="header_section">
          <div class="top_header_section fix">
            <div class="m_head">
      
              <div class="lft_tit_section">
                <h1><a href="/index.do"><img src="/front/images/header/tit_logo.png" alt="SNUBH 분당서울대학교병원"></a></h1>
                <ul class="utility_section fix">
                
                  
                  <li><a href="javascript:memberLogin()">로그인</a></li>
                  <li><a href="/member/joinSelect.do">회원가입</a></li>
                     
                  
                  <li><a href="/sitemap/SiteMap.do">사이트맵</a></li>
                  <li class="bh_lang">
                    <a href="#" class="sk_lang_tit" title="언어선택"><span>Language</span></a>
                    <ul>
                      <li>
                        <a href="https://www.snubh.org/dh/en/" target="_blank" title="새창으로 열기">English</a>
                      </li>                      
                    </ul>
                  </li>
                </ul>
              </div>

              <div class="rit_navi_section">
                <h2 class="skip">주메뉴</h2>
                <div id="btn_top_menus" class="total_navi_div">
                  
				  <button class="bh_menu_p" id="bh_main_menus" tabindex="0" style=""><span class="skip">전체메뉴</span></button>

                  <div class="bh_menu_m">&nbsp;</div>
                  <div class="bh_mob_quick_wrap" style="display: none; width: 1188px;">
                    <div class="bh_mob_quick_1">
                      <a href="/medical/drMedicalTeam.do" class="btn_find">의료진<span></span>찾기</a>
                    </div>
                    <div class="bh_mob_quick_2">
                      <a href="/medical/deptListTime.do" class="btn_cal">외래진료<span></span>일정표</a>
                    </div>
                    <!-- <div class="bh_mob_quick_3">
                      <a href="/intro/map/road.do" class="btn_app_form">찾아오시는 <span></span>길</a>
                    </div> -->
                    <div class="bh_mob_quick_4">
                      <a href="/treatmentpay/PayMedicalList.do" class="btn_find">진료비<span></span>결제</a>
                    </div>
                     <!-- <div class="bh_mob_quick_5">
                            <a href="/personal/info/offMember.do" class="btn_cal">환자번호<span></span>확인</a>
                          </div> -->
                  </div>
                  <ul class="sec_total_navi_ul" style="display: none; width: 1188px;">
                                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">나의 진료정보</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: block;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/reserve/treatResvrInfo.do">
                                  		예약                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="/personal/resvrStatusList.do">
                                  		예약조회 및 취소                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_3">
                                  	<a tabindex="0" href="/personal/certi/ctfIssue.do">
                                  		증명서/의무기록 발급                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_4">
                                  	<a tabindex="0" href="/treatmentpay/PayMedicalList.do">
                                  		진료비 결제                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_5">
                                  	<a tabindex="0" href="/personal/health4u.do">
                                  		Health4U                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_6">
                                  	<a tabindex="0" href="/personal/bookMark/bookMarkList.do">
                                  		관심 콘텐츠                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_7">
                                  	<a tabindex="0" href="/personal/myHichart.do">
                                  		처방동영상                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_8">
                                  	<a tabindex="0" href="/personal/voice/letter/list.do">
                                  		칭찬레터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_9">
                                  	<a tabindex="0" href="/personal/info/myInfoChk.do">
                                  		개인정보                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_10">
                                  	<a tabindex="0" href="/personal/spsorDonationList.do">
                                  		기부현황조회                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          
                          
                          <!-- 간편상담예약 -->
                          <div id="sub_s_1" class="snb_conts_wrap" style="display: none; width: 817px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <ul class="bh_snb_ul">
                                  <li class="bh_snb_li_1">
                                    <a href="/reserve/onlineReserve.do">
                                      <strong>온라인 예약</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_2">
                                    <a href="/reserve/firstReserve.do">
                                      <strong>첫 방문 예약상담</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_3">
                                    <a href="/personal/resvrStatusList.do">
                                      <strong>예약현황조회</strong>
                                    </a>
                                  </li>
                                </ul><br>
								<p class="bh_snb_desc">
                                  분당서울대학교병원은 빠르고 편리한 <span>온라인 진료예약이 가능합니다.</span>
                                </p>
                                <form onsubmit="return chkPhone(this)">
                                  <strong class="bh_snb_tit">첫 방문 예약상담</strong>
                                  <div class="bh_snb_input fix">
                                    <p class="f_left">
                                      <input type="tel" tabindex="0" class="input_snb_text" style="width:200px; padding:0 5px 0 20px;" maxlength="12" name="phone" title="연락처" placeholder="000 - 0000 - 0000">                                      
                                    </p>
                                    <p class="f_right">
                                      <input class="btn_snb_blue" type="submit" value="예약상담">
                                    </p>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                          <!-- //간편상담예약 -->
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
              
              
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">진료안내</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/medical/deptList.do">
                                  		진료과                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="/medical/supDeptList.do">
                                  		진료지원부서                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_3">
                                  	<a tabindex="0" href="/medical/drMedicalTeam2.do">
                                  		의료진                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_4">
                                  	<a tabindex="0" href="/medical/out/clinic01.do">
                                  		외래진료                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_5">
                                  	<a tabindex="0" href="/medical/deptListTime.do">
                                  		외래진료일정표                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_6">
                                  	<a tabindex="0" href="/medical/day/surgeryCenter01.do">
                                  		당일수술센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_7">
                                  	<a tabindex="0" href="/medical/emergency/center.do">
                                  		응급의료센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_8">
                                  	<a tabindex="0" href="/medical/home/nursing01.do">
                                  		가정간호                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_9">
                                  	<a tabindex="0" href="/medical/inOut/hospital01.do">
                                  		입원/퇴원                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_10">
                                  	<a tabindex="0" href="/medical/visit.do">
                                  		병문안(면회)                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_11">
                                  	<a tabindex="0" href="https://hpc.snubh.org/index.do" target="_blank">
                                  		건강검진안내                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_12">
                                  	<a tabindex="0" href="/outcomesbook.do">
                                  		Outcomes Book                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          <!-- 의료진/진료과찾기 -->
                          <div id="sub_s_2" class="snb_conts_wrap" style="display: none; width: 817px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">의료진/진료과찾기</strong>
                                
                                <form action="/search.do" onsubmit="return chkTxt( this );">
                                  <div class="bh_snb_input">
									<label for="search_txt" class="skip">의료진, 진료과 입력</label>
                                    <input tabindex="0" class="input_snb_text" type="text" name="search_txt" id="search_txt" placeholder="의료진,진료과 입력">
                                    <input class="btn_snb_blue" type="submit" value="찾기">
                                  </div>
                                </form>
                                
                                <p class="bh_snb_desc1">
                                  분당서울대학교병원 <span>진료관련 절차에 대한 안내입니다.</span>
                                </p>
                                <ul class="bh_snb_ul">
                                  <li class="bh_snb_li_4">
                                    <a href="/medical/out/clinic01.do">
                                      <strong>외래진료</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_5">
                                    <a href="/medical/inOut/hospital01.do">
                                      <strong>입원/퇴원</strong>
                                    </a>
                                  </li>
                                  <li class="bh_snb_li_6">
                                    <a href="/medical/visit.do">
                                      <strong>면회</strong>
                                    </a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <!-- //의료진/진료과찾기 -->
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
              
              
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">병원소개</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/intro/hospital/introduce.do">
                                  		병원소개                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="/intro/floor/guide.do">
                                  		층별안내                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_3">
                                  	<a tabindex="0" href="/intro/news/realname/list.do">
                                  		병원소식                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_4">
                                  	<a tabindex="0" href="/intro/amenity/amenity01.do">
                                  		편의시설                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_5">
                                  	<a tabindex="0" href="/intro/spaceU.do">
                                  		SPACE U(전시)                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_6">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/mc" target="_blank">
                                  		공공부문                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_7">
                                  	<a tabindex="0" href="/intro/supporters.do">
                                  		발전후원회                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_8">
                                  	<a tabindex="0" href="/intro/tell.do">
                                  		주요전화번호안내                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_9">
                                  	<a tabindex="0" href="/intro/map/road.do">
                                  		찾아오시는길                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          <!-- 찾아오시는길 안내 -->
                          <div id="sub_s_3" class="snb_conts_wrap" style="display: none; width: 817px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">찾아오시는길</strong>
            
                                <p class="bh_snb_desc2">
                                  분당서울대학교병원에 <span>찾아오시는 길입니다.</span>
                                </p>

                                <div class="bh_snb_btn_wrap">
                                  <a href="/intro/map/road.do" class="bh_btn_b1" tabindex="0">자세히 보기</a>
                                </div>
                
                                <div class="bh_snb_map_img">
                                  <img src="/front/images/header/img_gnb_map.jpg" alt="분당서울대학교병원 찾아오시는 길 약도">
								  <div class="skip">
                                	<p>우)13620, 경기도 성남시 분당구 구미로173번길 82</p>
                                	<div class="">대중교통 이용</div>
                                	<ul class=""> 
										<li> <dl> <dt>미금역에서 버스 이용시</dt> <dd>미금역 3번 출구 → 마을버스(7번, 7-1번), 8446번 버스 탑승 → 분당서울대학교병원</dd> <dd>미금역 2번 출구 → 51번 버스 탑승 → 분당서울대학교병원</dd> <dd>미금역 8번 출구 → 마을버스(19번), 380번 버스 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>오리역에서 버스 이용시</dt> <dd>오리역 7번 출구 → 10m 앞 마을버스(19번) 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>정자역에서 버스 이용시</dt> <dd>정자역 3번 출구 → 마을버스(19번, 111번), 380번, 8446번 버스 탑승 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>헬스케어혁신파크(상행) 하차시</dt> <dd>분당서울대학교병원 방향 탄천길로 도보 15분</dd> </dl> </li> 
									</ul>
									<div class="">자동차 이용</div>
                                	<ul class=""> 
										<li> <dl> <dt>판교 IC 방면</dt> <dd>판교 IC → 분당방향으로 직진 → 서현로 → 분당구청 방향으로 우회전 → 분당구청 →  분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>성수대교 방면</dt> <dd>성수대교 → 구룡터널 → 분당내곡간 고속화도로(약 15분 직진) → 분당 도착해서 직진 → 분당구청 → 수내역 방향으로 우회전 → 정자역 → 분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>청담대교 방면</dt> <dd>청담대교 → 분당수서간 고속화도로(약 25분 직진) → 초림지하차도 → 정자지하차도(2번째 지하도) 지난 후 우측차선으로 빠짐 → 미금역 방향 → 미금역 방향으로 좌회전 → 돌마교사거리에서 우회전 → 700m정도 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>수원 IC 방면</dt> <dd>수원 IC → 신갈오거리 → 신갈중학교 앞 → 구성삼거리 → 마북삼거리 → 보정교차로 → 죽전사거리 → 오리역 → 낙생교 지나자마자 우회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
										<li> <dl> <dt>수서역 SRT 방면</dt> <dd>밤고개로(약 5분 직진) → 분당내곡간 고속화도로(약 10분 직진) → 분당 도착해서 직진 → 분당구청 → 수내역 방향으로 우회전 → 정자역 → 분당정보산업고교에서 좌회전 → 돌마교사거리에서 직진 → 아름다운 교회에서 좌회전 → 미금교 → 분당서울대학교병원</dd> </dl> </li> 
									</ul>
                                </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </li>
                      <li>
                        
                        
                          <a href="/intro/news/noti/list.do" tabindex="0">공지사항</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/intro/news/noti/list.do">
                                  		공지사항                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          <!-- 공지사항 -->
                          <div id="sub_s_5" class="snb_conts_wrap" style="display: none; width: 817px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">공지사항</strong>
                                
                                <p class="bh_snb_desc4">
                                  분당서울대학교병원의 공지사항을 알려드립니다.
                                </p>
                                
                                <ul class="main_notice_board">
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1247" tabindex="0"> 23년 10월 2일(월) 임시공휴일 정상진료 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1244" tabindex="0"> 홈페이지 비밀번호를 안전하게 관리하는 방법 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1128" tabindex="0"> 입원환자 및 상주보호자 입원 전 코로나19 검사 관련 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=1099" tabindex="0"> 코로나19(코로나바이러스감염증-19) 관련 안내</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=993" tabindex="0"> 홈페이지 서비스 이용 가이드</a></li>
                                  
                                  <li><em>공지</em><a href="/intro/news/noti/view.do?BNO=926" tabindex="0"> [분당서울대학교병원 홈페이지 회원 관리 정책 안내]</a></li>
                                  
                                </ul>
                                
                              </div>
                            </div>
                          </div>
                          <!-- //공지사항 -->
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
              
              
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">건강정보</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/service/lecture/healthLectList.do">
                                  		건강강좌 일정                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="/service/healthtv/list.do">
                                  		건강TV                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_3">
                                  	<a tabindex="0" href="/service/info/com/list.do">
                                  		건강상식                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_4">
                                  	<a tabindex="0" href="/service/info/folks/list.do">
                                  		시선집중                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_5">
                                  	<a tabindex="0" href="/intro/news/snubhStory/list.do">
                                  		병원이야기                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_6">
                                  	<a tabindex="0" href="/service/info/ebook/list.do">
                                  		나음플러스(사보)                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_7">
                                  	<a tabindex="0" href="/service/info/web/list.do">
                                  		HEALTH PLUS(웹진)                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_8">
                                  	<a tabindex="0" href="/service/hichart/list.do" target="_blank">
                                  		검사안내 동영상                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          <!-- 헬스포커스 -->
                          <div id="sub_s_4" class="snb_conts_wrap" style="display: none; width: 817px;">
                            <div class="snb_conts_box">
                              <div class="snb_conts">
                                <strong class="bh_snb_tit">건강정보</strong>
            
                                <p class="bh_snb_desc3">
                                  다양하고 유익한 건강상식을 <span>제공해 드립니다.</span>
                                </p>

                                <ul class="bh_snb_bab">
                                  
                                  
                                    
                                    
                                    <li class="fix">
                                      <p>
                                        <a href="/service/info/com/view.do?BNO=486&amp;Board_ID=B004" tabindex="0">
                                          <img src="/upload/board/B004/202311_webzine_thumb01_20231030022029.jpg
" alt="먹고 말하고 숨쉬게 하는 기관, 두경부">
                                        </a>
                                      </p>
                                      <dl>
                                        <dt>
                                          <a href="/service/info/com/view.do?BNO=486&amp;Board_ID=B004">
                                            먹고 말하고 숨쉬게 하는 기관, 두경부
                                          </a>
                                        </dt>
                                        <dd>
                                          <a href="/service/info/com/view.do?BNO=486&amp;Board_ID=B004">
                                            먹고 말하고 숨쉬게 하는 기관     두경부     감수. 이비인후과
<b> 지정연 </b>교수       산업통상자원부 국가기술표준원이 진행한 ‘제8차 한국인 인체치수조사’에 따르면 한국인의 두신지수(키/머리 길이)는 7.2~7.3 정도라고 한다. 쉽게 말해 한국인이 평균 7.2~7.3등신이라는 소리다. 두경부는 우리 신체의 약 1/7 정도에 해당한다. 두경부가 머리를 가리키는 것이라 생각하기 쉽지만, 그와는 개념이 다르다. 두경부의 특징과 두경부에 발생하는 여러 질환에 대해 알아보자.   기관이 많은 만큼 질환도 많은 두경부 두경부(Head and Neck, 頭頸部)란 쇄골 위쪽 머리와 목 부위를 통칭하는 말이다. 사람을 대할 때 가장 먼저 바라보게 되는 신체 부위이기도 하다. 의학적인 진단/치료 구분상 두경부에서 뇌와 경추, 안구, 귀, 치아, 식도는 별도로 다뤄진다. 따라서 병원에서 일반적으로 말하는 두경부는 앞서 말한 부위를 제외하고 눈 아래 얼굴 앞면과 옆면, 쇄골 위의 목 부분에 위치한 기관들이다. 우리가 먹고, 말하고, 숨 쉬는 데 필요한 중요한 신체 부위가 모두 포함돼 있다. 안면과 코, 입, 점막, 구강, 혀, 후두개, 성대, 비강, 부비동, 인두, 후두, 침샘, 갑상선, 림프조직 등 다양한 기관이 두경부에 속한다.        두경부는 여러 기관이 촘촘하게 붙어 있으며 그 구조가 복잡하다. 포함하고 있는 기관의 개수가 많고, 기관당 발생하는 질환도 제각각이어서 관련 질환 또한 매우 많다. 또한, 각 기관에 분포하는 중요한 신경들과 뇌로 향하는 혈류를 담당하는 경동맥 등 중요한 구조들이 복잡하게 얽혀 분포하기 때문에 종종 전문적인 진료를 필요로 한다. 이러한 두경부 질환은 일반적으로 이비인후과에서 담당한다. 갑상선 또한 두경부에 속하며, 수술을 요하는 갑상선 질환의 진료도 이비인후과에서 담당하고 있다. 두경부 질환은 크게 감염성 질환과 종양으로 나눠볼 수 있다. 감염성 질환은 세균과 바이러스에 의해 발생하며, 종양은 그 원인이 확실히 규명되지 않았다. 두경부가 생존에 중요한 역할을 담당하고, 의사소통 등 사회생활이나 대인 관계에도 큰 영향을 미치는 만큼 질환의 경중에 따라 환자의 일상을 크게 흔들 수 있다.   대표적인 두경부 감염 질환 편도염 ‘편도염’은 살면서 누구나 흔하게 앓게 되는 질환이다. 편도는 목 안과 코 뒤에 위치한 조직으로 세균으로부터 우리 몸을 방어한다. 혀편도, 인두편도, 구개편도로 이뤄져 있으며, 일반적으로 말하는 편도염은 주로 구개편도에 발생하는 급성 염증이다. 급성 편도염은 대부분 세균이나 바이러스 감염을 통해 발생한다. 청년기나 젊은 성인층에서 발생률이 높고 다른 연령층에서는 상대적으로 발생률이 낮다. 급성 편도염에 걸리면 편도가 충혈되고 비대해진다. 대부분 갑작스러운 고열과 오한 증상이 나타나며, 인후염을 동반해 인후통이 발생하는 경우가 많다. 인두 근육에 염증이 생기면 연하곤란 증상이 생기고 환자는 두통, 전신 쇠약감, 관절통 등의 신체 전반 증상을 호소하기도 한다. 급성 편도염은 대개 자연적으로 증상이 좋아진다. 치료 시 염증 제거와 증상 완화를 위해 항생제나 진통제를 투여하게 되며, 세균성 급성 편도염의 경우에도 항생제 투약 후 4~5일 이내에 증상이 호전된다.      인후염 ‘인후염’은 바이러스나 세균 등에 감염돼 인두와 후두를 포함한 상기도 점막에 염증이 생기는 것이다. 초기에는 인두의 이물감과 건조함, 가벼운 기침 등이 나타나고, 심해지면 통증으로 음식을 삼키기 어렵고 고열과 두통, 전신권태, 식욕부진 등의 증상을 보인다. 입에서 냄새가 나거나 귀 부분 통증을 호소하기도 하고, 후두까지 염증이 번지면 목소리가 쉰다. 급성은 급격한 기온 변화나 감기, 열성 질환, 과로, 허약 체질, 세균 감염 등으로 발생하며, 만성은 급성인후염이 반복해 재발하거나 지나친 흡연, 음주, 과로, 자극적인 음식 섭취, 목의 혹사, 인후두 역류질환 등이 원인이다. 세균성 인후염은 항생제 사용 후 2~3일이면 증상이 호전된다. 바이러스성 인후염에는 항생제를 쓰지 않으며 대부분의 증상은 10일 이내로 사라진다. 환자 상태에 따라 해열진통제를 복용할 수도 있다. 
<b>* 이물감, 기침으로 일상 괴롭히는 ‘인후두역류질환’:</b> 두경부 질환의 하나인 인후두역류질환은 식도가 제 기능을 못해 위산과 위 내용물이 목으로 올라오는 질환이다. 인두의 이물감, 목소리 변화, 기침 등 목에 불편한 증상을 일으킨다. 인후두역류질환은 무엇보다 예방과 관리가 중요하다. 커피나 술, 콜라, 자극적인 음식 등 위산 분비를 증가시키고 식도 기능을 저해하는 음식물을 제한하는 식이요법과 생활습관 개선이 필요하다.      침샘염 침은 음식을 삼키는 데 도움을 주며 입안을 깨끗하게 유지하는 데도 중요한 역할을 담당한다. 침을 생성하는 주요 침샘 세 쌍은 귀밑과 턱밑, 혀 밑에 자리 잡고 있다. ‘침샘염’은 이런 침샘에 염증이 생긴 것으로, 대부분은 바이러스 감염에 의한 것이나 구강 내 세균 감염에 의해서도 발생할 수 있다. 면역력이 저하된 상태에서 발병하기 쉽다. 흔히 볼거리라 불리는 유행성 이하선염이 대표적인 침샘염 질환이다. 침샘염에 걸리면 침샘 부위에 동통이나 부종이 나타나며 발열, 오한, 전신 쇠약감 등 전신증상을 보이기도 한다. 특히 식사 후 부종이나 통증이 심해질 수 있다. 침샘염 치료는 항생제/항바이러스제 혹은 스테로이드를 포함한 약물치료, 침 분비를 위한 충분한 수분 섭취로 이뤄진다. 급성 염증성 질환에서는 진통제와 국소 온열요법, 마사지로 증상을 완화할 수 있다. 약물치료로 증상이 호전되지 않거나, 타석이 원인일 경우에는 외과적인 수술을 고려해야 한다.      
<b>목 무리해 사용하면 ‘성대결절’과 ‘성대폴립’ 위험 :</b> 목소리는 후두의 성대가 진동하며 만드는 소리다. 평소 목소리를 많이 내거나 무리하게 발성하는 경우 성대결절이나 성대폴립이 발생 할 수 있다. 성대결절은 성대점막 일부분이 점점 단단해지며 굳은살이 생긴 것과 비슷하고, 성대폴립은 말미잘 모양의 물혹이 생기는 것이다. 성대결절과 성대폴립이 생긴 사람은 발성법에 문제가 있는 경우가 많으므로 발성법에 대한 교정이 필요하다.  대표적인 두경부 종양 사례 두경부 어느 곳에서나 종양이 생길 수 있다. 종양은 양성과 악성으로 나뉘며 종양이 발생한 부위에 따라 그 증세와 치료법, 예후가 달라진다. 양성종양은 매우 서서히 자라며 대부분 간단한 절제수술로 완치된다. 하지만 악성종양은 크기가 자라면서 주변 조직을 침범하거나 전이가 일어날 수 있기 때문에 제대로 치료가 이뤄지지 않을 경우 생명을 위협할 수 있다. 두경부에 발생하는 종양은 그 위치에 따라서 숨 쉬고 먹고 마시는 데에 큰 장애를 일으킬 수 있다. 따라서 두경부에 종양이 생기면 반드시 조기에 진단해 양성 인지 악성인지 파악하고 상황에 맞는 치료를 시행해야 한다. 두경부에 발생하는 양성종양으로는 표피낭종, 유피낭종, 점액종, 혈관종, 지방종, 신경섬유종, 신경종, 섬유종, 다양한 종류의 침샘 종양 등이 있다. 일반적으로 별다른 증세없이 종양 덩어리가 만져지거나 눈에 띄는 경우가 많고, 목 안에 생긴 종양은 삼킬 때 걸리는 느낌이나 목소리 변화 등을 유발할 수 있다. 종양의 크기나 부위에 따라서는 주변 조직을 누르거나 모양을 변형시킬 수 있어 주의가 필요하다. 보통은 양성종양도 모두 제거한다. 하지만 주변 조직의 기능에 장애를 일으키거나 합병증을 유발할 가능성이 크고 변형된 모습을 더욱 심하게 만들 것으로 판단되면 일부만 제거하거나 조직검사 후 추적 관찰하기도 한다. 두경부에 발생하는 악성종양으로는 편평상피암, 기저세포암, 악성흑색종 및 여러가지 선종, 육종 등이 있으며, 편평상피암이 가장 흔하고 대표적이다. 악성종양 역시 초기에는 아무런 증세가 없는 경우가 많다. 그러나 종양이 진행됨에 따라 주변 조직을 침범하고 통증 또는 출혈을 일으키거나 주변 기관의 기능을 방해할 수 있다. 두경부 악성종양은 위치와 크기에 따라 삼킴 어려움, 쉰 목소리, 호흡곤란 등을 일으킬 수 있으며 폐, 척추 등 온몸으로 퍼져 나가기도 한다. 악성종양이 의심되는 경우에는 우선 조직검사를 통한 확진이 필요하며, 확진될 경우 종양이 얼마나 퍼졌는지 평가하는 여러 가지 검사가 필요하다. 두경부 악성종양 치료는 이비인후과에 방사선종양학과, 혈액종양내과, 영상 의학과, 그리고 병리과 의료진이 참여하는 다학제 논의 이후 환자와 최종 상의해 결정한다. 수술적으로 치료하는 경우, 종양 자체뿐 아니라 종양이 파급된 주변 조직까지 반드시 함께 제거해야 한다. 악성종양 제거로 외형이나 조직 기능에 이상이 생기면 그에 맞는 재건수술을 시행하기도 한다. 방사선 치료 및 항암치료를 우선 적용하는 경우도 있으며, 수술 후 추가로 시행하기도 한다. 우연히 목에서 혹이 만져져 이비인후과를 찾는 경우가 있는데, 이런 혹을 경부 종괴 또는 종양이라고 한다. 경부 종괴는 나이와 혹의 위치가 매우 중요하다. 어릴수록 선천적인 문제일 가능성이 높고, 나이가 많을수록 암일 확률이 높다. 주요 침샘 세 쌍이 위치한 귀밑이나 턱밑, 혀밑 등이 붓거나 어떤 혹이 만져진다면 침샘염이나 침샘종양을 의심할 수 있다. 그런데 침샘 주변에는 중요한 신경들이 지나가기 때문에 수술 후 안면마비 또는 혀의 감각 저하 등 신경마비 증상이 발생할 수 있어 주의해야 한다. 따라서 의심 증상이 있다면 병을 키우지 말고 조기에 진단, 치료할 수 있도록 빠르게 병원 진료를 받는 것이 좋다.        두경부 질환 예방법 7가지  ➊ 금연 실천 및 간접흡연 피하기 ➋ 과도한 음주 자제하기 ➌ 구강 및 코, 손 등 개인 청결 유지하기 ➍ 자극적인 음식을 피하고 건강한 식생활 유지하기 ➎ 과로에 유의하고 면역력 올리기 ➏ 목을 무리해서 사용하지 않기 ➐ 환절기 감기에 유의하기   의료진 소개   이비인후과 
<strong>지정연 </strong>    
<b>[전문진료분야]</b>  
<b>이비인후과</b> : 두경부종양, 갑상선종양, 음성 및 후두질환, 침샘질환 
<b>이비인후과 (암센터)</b> : 구강양성질환,두경부종양,음성장애,성대마비,타석증   의료진소개        ※ 해당 기사와 사진은 분당서울대학교병원의 저작물로 임의로 복사, 수정, 변형, 재가공하여 게시, 배포하였다면 이는 저작권자인 당사의 허가없이 2차저작물을 작성한 것으로 저작권 위반에 해당됩니다.
                                          </a>
                                        </dd>
                                      </dl>
                                    </li>
                                  
								  
                                  
                                    
                                    
                                    <li class="fix">
                                      <p>
                                        <a href="/service/info/com/view.do?BNO=12&amp;Board_ID=B067" tabindex="0">
                                          <img src="/upload/board/B067/202309_webzine_thumb05_20230829073626.jpg
" alt="복잡한 심혈관 조영술 분석‧시술에 인공지능 기술을 활용하면?">
                                        </a>
                                      </p>
                                      <dl>
                                        <dt>
                                          <a href="/service/info/com/view.do?BNO=12&amp;Board_ID=B067">
                                            복잡한 심혈관 조영술 분석‧시술에 인공지능 기술을 활용하면?
                                          </a>
                                        </dt>
                                        <dd>
                                          <a href="/service/info/com/view.do?BNO=12&amp;Board_ID=B067">
                                            복잡한 심혈관 조영술 분석‧시술에      인공지능 기술을 활용하면?     인터뷰. 순환기내과
<b> 강시혁 </b>교수       심혈관이 좁아지거나 막히면 심혈관 스텐트 삽입술을 시행하게 된다. 이때 심혈관 모양이나 협착 여부를 파악하려면 심혈관 조영술을 먼저 시행해야 한다. 하지만 작은 혈관 안의 3차원 구조를 파악하는 일은 쉽지 않아 의료진의 역량에 크게 좌우된다. 순환기내과 강시혁 교수 연구팀은 이 복잡한 심혈관 조영술 분석‧시술에 인공지능 기술을 활용할 수 있음을 증명했다.  심혈관 스텐트 삽입술이란 무엇인지, 어떤 때에 필요한 시술인지 궁금합니다. 고령화 사회로 변모하면서 동맥경화성 질환이 주요 질환으로 대두되고 있습니다. 동맥경화성 질환은 혈관에 기름때가 끼면서 병이 들고, 혈관이 좁아지는 질환으로 협심증, 심근경색 같은 관상동맥질환이 대표적입니다. 최근 널리 쓰이는 ‘스텐트 삽입술’은 좁아진 혈관을 넓히고, 다시 좁아지지 않도록 금속 철망으로 이뤄진 스텐트를 삽입하는 것입니다. 스텐트 삽입술을 통해 환자가 겪는 증상을 개선하고, 급사와 같은 위험한 일이 발생하지 않도록 막을 수 있습니다. 몸에 삽입된 스텐트는 평생 몸에 지니게 되는데 생체친화적인 금속이라 안전합니다. 가끔 걱정하는 분들이 있는데, 검색대에 걸리지 않고 X-레이나 MRI 촬영도 문제없습니다. 동맥경화성 질환은 전신에 영향을 미치기 때문에 재시술하는 분들도 많습니다. 재발 위험이 1년에 5% 정도입니다. 스텐트 삽입술을 시행한 안에서 다시 발생하는 경우가 절반이고, 나머지 절반은 스텐트 밖에서 새롭게 생긴 경우입니다.      스텐트 삽입술을 시행하기 위해서는 심혈관 조영술이 필요한데, 이것이 여러 단점을 가지고 있다고 들었습니다. 설명을 부탁드립니다. 심혈관 조영술은 심장 혈관을 평가하는 가장 정확한 최종 진단 방법입니다. 환자의 몸속으로 들어가 혈관의 모양새를 관찰할 수 있는 가장 직접적인 방법이죠. 하지만 수술처럼 몸을 열고 들어가는 게 아니라 혈관을 통해 가는 관을 따라 접근하기 때문에 한계가 있습니다.  혈관 모양을 보기 위해 조영제라는 물감을 흘려주며 X-레이 촬영을 하게 됩니다. 3차원의 심장을 2차원 영상으로 압축해서 보여주므로 시술자가 머릿속에서 3차원 구조를 상상해야만 합니다. 또 심장은 움직이는 장기라서 한 장의 영상으로 보여줄 수 없고, 심장 박동을 따라가면서 동영상으로 촬영해야 합니다. 이와 같은 어려움 때문에 심혈관 조영술을 이해하는 전문의를 키워내는 데에는 많은 시간과 노력이 요구됩니다. 또 질병 상태에 따라서는 전문가들도 놓치거나 모호할 때가 있어 다른 전문가와 상의가 필요한 경우도 있습니다.       위와 같은 어려움을 극복하기 위해 심혈관을 자동으로 분석하는 인공지능 소프트웨어(AI-QCA)가 혈관 내 초음파 검사와 60~80% 유사한 결과를 내고, 병변 식별률도 89%에 달한다는 사실을 확인하셨습니다. 어떤 내용인지 말씀해주세요.  연구에 사용한 AI-QCA는 심혈관 조영술 영상을 인공지능(AI) 기술로 분석하는 기능을 갖췄습니다. 혈관의 위치와 모양을 자동으로 분석하고 정량화시켜 줍니다. 본 연구는 이 중 정량화 기능의 정확도를 평가하기 위한 목적으로 이뤄졌습니다. 참고로 혈관 내 초음파 검사는 심혈관 조영술의 단점을 극복하기 위한 방법으로, 심장 혈관 안에 초음파 장비를 넣고 관찰하는 것입니다. 혈관 단면 관찰 등 정확도는 매우 높지만, 고가의 장비가 요구되고 초음파 기기를 혈관 안에 넣어야 하는 침습적인 검사 방법입니다. 본 연구는 심혈관 조영술 과정에서 혈관 내 초음파 검사를 시행한 47명을 대상으로, AI 소프트웨어가 분석한 값이 혈관 내 초음파를 통해 분석한 값과 얼마나 일치하는지를 분석했습니다. 그 결과 병변은 거의 정확하게 식별해냈고, 정량적으로 측정한 혈관 크기나 길이, 협착 정도도 60~80%가량 일치함을 확인했습니다. 심혈관 조영술은 약간 주관적인 측면이 존재하기 때문에 100% 정확한 것은 없고, 80~90%면 상당히 정확하다고 할 수 있습니다.  연구에 활용된 인공지능 소프트웨어(AI-QCA)는 어떻게 만들어진 것인가요? 국내의 한 스타트업이 국내 연구자들과 손잡고 개발한 것입니다. 4차 산업혁명 시대에 발맞춰 실력 있는 인공지능 연구자들이 창업한 의료기기 회사인데, 저를 포함해서 의욕 넘치는 심장내과 의사들이 자문을 제공하며 공동연구를 수행하고 있죠. 혈관을 식별, 추출하고 정량화하는 기술 외에도 여러 가지 인공지능 기법들을 심혈관 질환 진단/치료 분야에 적용하려고 노력 중입니다.  이번 연구 결과가 어떻게 활용되길 바라시나요? 이번 연구는 앞서 말씀드린 AI 소프트웨어의 정확도를 검증하는 과정의 일환이었습니다. 이 소프트웨어는 국내에서 이미 식약처 인허가를 받았고, 조만간 국내와 해외에서 임상 현장에 도입될 예정입니다. 이런 연구 결과들이 소프트웨어를 사용하는 전 세계 심장내과 의사들에게 신뢰를 제공하는 근거가 되길 바랍니다. 앞으로 데이터가 축적될수록 소프트웨어의 정확도가 높아지리라 생각합니다.  앞으로의 목표, 계획에 대해 말씀해주십시오. AI 기술 강국인 우리나라에서 심혈관 영상을 다루는 스타트업이 생겨나 반가운 마음입니다. 의료 영역 기술은 공학자의 실력도 중요하지만, 의료인 입장에서 임상 현장에서의 미충족 수요를 전달하고 개발된 기술을 검증하는 것이 중요합니다. AI 연구자들과 계속해 협업하며 임상 현장에 필요한 기술 개발에 이바지할 계획입니다. 이런 국내 연구진들의 노력이 모여 우리나라가 머지않은 미래에 독일이나 이스라엘처럼 전 세계 의료시장을 무대로 활약하는 나라로 성장하길 기대합니다.  마지막으로, '나음 플러스' 독자들에게 전하고 싶은 말씀이 있다면 해주시기 바랍니다.  심혈관 질환은 일단 생기고 나면 사망 위험도 크고 합병증도 심한 질환입니다. 따라서 조기진단보다도 예방이 훨씬 더 중요합니다. 고혈압, 당뇨, 고지혈증 관리와 더불어 건강한 식단을 유지하고 운동도 꾸준히 병행해야 합니다. 금연과 스트레스 관리도 중요합니다. 처방된 약이 있다면 의료진의 설명에 맞춰 잘 챙겨 드셔야 합니다. 그리고 무엇보다 평상시와 다르게 숨이 차거나 가슴이 아픈 증상이 있다면 바로 병원을 찾아 진료받으시길 당부드립니다.         의료진 소개      순환기내과
<strong> 강시혁 </strong>    
<b>[전문진료분야]</b>  
<b>순환기내과</b> : 협심증, 심근경색, 관상동맥질환, 대동맥판막협착 , 저항성고혈압 
<b>순환기내과 (심장혈관센터)</b> : 협심증, 심근경색, 관상동맥질환, 대동맥판막협착 , 저항성고혈압   의료진소개        ※ 해당 기사와 사진은 분당서울대학교병원의 저작물로 임의로 복사, 수정, 변형, 재가공하여 게시, 배포하였다면 이는 저작권자인 당사의 허가없이 2차저작물을 작성한 것으로 저작권 위반에 해당됩니다.
                                          </a>
                                        </dd>
                                      </dl>
                                    </li>
                                  
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">바로가기</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="https://cancer.snubh.org/index.do" target="_blank">
                                  		암센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="https://bcni.snubh.org/index.do" target="_blank">
                                  		뇌신경센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_3">
                                  	<a tabindex="0" href="https://sbrc.snubh.org/index.do" target="_blank">
                                  		진료협력센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_4">
                                  	<a tabindex="0" href="https://hpc.snubh.org/index.do" target="_blank">
                                  		건강증진센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_5">
                                  	<a tabindex="0" href="https://snubh.recruiter.co.kr" target="_blank">
                                  		채용                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_6">
                                  	<a tabindex="0" href="https://funeral.snubh.org/index.do" target="_blank">
                                  		장례식장                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_7">
                                  	<a tabindex="0" href="https://msri.snubh.org/index.do" target="_blank">
                                  		의생명연구원                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_8">
                                  	<a tabindex="0" href="https://library.snubh.org" target="_blank">
                                  		의학자료정보실                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_9">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/mc/" target="_blank">
                                  		공공부문                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_10">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/hcd7/" target="_blank">
                                  		발전후원회                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_11">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/en/" target="_blank">
                                  		국제진료센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_12">
                                  	<a tabindex="0" href="https://bri.snubh.org/" target="_blank">
                                  		헬스케어혁신파크                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_13">
                                  	<a tabindex="0" href="http://ggccvc.snubh.org/" target="_blank">
                                  		권역심뇌혈관질환센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_14">
                                  	<a tabindex="0" href="http://e-allergy.org/" target="_blank">
                                  		아토피·천식교육정보센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_15">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/rdc/" target="_blank">
                                  		희귀질환센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_16">
                                  	<a tabindex="0" href="/intro/news/noti/view.do?BNO=1199">
                                  		연명의료상담 안내                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_17">
                                  	<a tabindex="0" href="http://www.alio.go.kr/" target="_blank">
                                  		알리오                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_18">
                                  	<a tabindex="0" href="http://www.ggpi.or.kr/" target="_blank">
                                  		경기도<br> 공공보건의료지원단                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_19">
                                  	<a tabindex="0" href="http://www.gidcc.or.kr/" target="_blank">
                                  		경기도 감염병관리지원단                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_20">
                                  	<a tabindex="0" href="https://www.snubh.org/dh/clean" target="_blank">
                                  		클린센터                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                          <a href="/openInfo.do" tabindex="0">정보공개</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/openInfo.do">
                                  		정보공개                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
                <div id="sub_s_6" class="snb_conts_wrap" style="display: none; width: 817px;">
                <div class="snb_conts_box">
                  <div class="snb_conts">
                  
                  </div>
                </div>
                </div>                       
                
              <!-- 정보공개 -->
                          
              
              
                          
                        </div>
                      </li>
                      
                      
                      
                    
                      
                      
                      <li>
                        
                        
                        <a href="#" tabindex="0">고객의 소리</a>
                        
                        
                        <div class="total_navi_div2">
                          <ul class="snb" style="display: none;">
                            
                            
                              
                                  <li class="sds_1">
                                  	<a tabindex="0" href="/personal/voice/customervoiceInfo.do">
                                  		안내 및 등록                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                              
                                  <li class="sds_2">
                                  	<a tabindex="0" href="/personal/voice/customervoiceList.do">
                                  		문의내역                                  		
                                  	</a>
                                  </li>
                              
                              
                            
                          </ul>
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                             <!-- 정보공개 -->
              
              <!-- 정보공개 -->
                          
              
              
                          
                        </div>
                      </li>
                      
                      
                      
                    
                    
                    
                  </ul>

                  <div class="m_dp_num pc_none" style="display: none; width: 1188px;">
                    <div class="bh_tel_area_n">
                      <span><em style="color:#2d58b6">대표전화</em> <a href="tel:1588-3369">1588-3369</a></span> 
					  
                    </div>
                    <div class="lang_wrap fix">
                    <a href="https://www.snubh.org/dh/en" class="on">ENGLISH</a>
                    <a href="https://www.snubh.org">KOREAN</a>
                    </div>
                  </div>
                </div>
                
              </div>
              
			        <div class="bh_nav_close_comp skip" tabindex="0"></div>                
              
                <p class="btn_login"><a href="/member/login.do"><span class="skip">모바일 로그인</span></a></p>
              
              
              <p class="btn_m_cc" style="display: none;"><a class="btn_m_c"><span class="skip">모바일 메뉴 닫기</span></a></p>
              <div class="btn_m_off" style="display: none;"><span class="skip">모바일 메뉴 DIM처리 배경</span></div>
              <div class="bh_menu_bg" style="display: none; width: 1230px;">
                <div class="bh_menu_inner_bg" style="width: 80px; display: none;"><span class="skip">모바일 메뉴 배경</span></div>
              </div>
            
            </div>

            <!--검색-->
            <div class="header_search_section">
              <div class="header_form">
                <form action="/search.do" onsubmit="return chkTxt( this );">
                  <fieldset>
                    <legend>통합검색</legend>
                    <div class="top_search_form">
						<label for="bh_search_txts" class="skip">통합검색 검색어 입력</label>
                      <input class="search_text" id="bh_search_txts" type="text" name="search_txt" placeholder="예) 질병명 , 의료진명" value="" onkeyup="autoComplete( this )" autocomplete="off">
                      <input class="btn_search" type="submit" value="통합검색">
                    </div>
                    
                    <!-- 자동완성 검색어 영역 -->
                    <ul class="auto_add_word" style="display:none;" id="autocomplate_area"></ul>
                  </fieldset>
                </form>
              </div>
            </div>
            <!--/검색-->

          </div>
          
        </div>