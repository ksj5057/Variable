$(document).ready(function(){
	$('#db_num').keydown(function(){
		if (event.key === 'Enter') 
		{
			var db = $('#db_num').val();
			dbn({db:db});
		}

		function dbn(date){
			var db =date.db; 

			$.getJSON("/post/"+db+".json", function(date){
				//db에서 검색한 환자 생년월일을 date타입에 대입
				let patient = new Date(date.birth);
				// 년도
				year = patient.getYear();
				//문자로 치환
				let syear =(year).toString(); 
				for(y = 101; y <= syear; y++){
 					if(syear == y ){
 						syear = syear - 100;
					}
				}
				// 월 (월은 0~11을 반환하기에 +1)
				month = patient.getMonth() +1;
				
				//문자로 치환
				let smonth = (month).toString();
				
				//month의 값이 10이하 일 경우 앞자리에 0을 한개 더 붙여주기.
				for(j = 0; j < 10; j++){
					if(smonth == j ){
						smonth = "0"+smonth;
					}
				}
				//일
				day = patient.getDate();
				//문자로 치환
				let sday = (day).toString();
				//day의 값이 10이하 일 경우 앞자리에 0을 한개 더 붙여주기.
				for(i = 0; i < 10; i++){
					if(sday == i ){
						sday = "0"+sday;
					}
				}
				// yyyy-MM-dd형태를 
				//yyMMdd형태로 변경함
				spatient = syear + smonth + sday;
				let a = 0;
				while(a < 3){
					let ment = prompt("생년월일 6자리를 입력해주세요");
					if(ment == spatient){
						//환자의 문서번호가 중간자리가 01이면 진료확인서로
						if(date.hc == "01")
						{
							a = 4;
							location.href="ClinicCertificateDetailsNon_L?db="+date.db;
						}

						//환자의 문서번호가 중간자리가 02이면 입퇴원확인서로
						else if(date.hc == "02")
						{
							a = 4;
							location.href="HospitalizationCertificateDetailsNon_L?db="+date.db;
						}

						//환자의 문서번호가 중간자리가 03이면 수술확인서로
						else if(date.hc == "03")
						{
							a = 4;
							location.href="OperationCertificateDetailsNon_L?db="+date.db;
						}
					}else
					++a;
					if(a == 1) {
						alert("3회 안에 정확히 입력해주세요, 2번남았습니다")
					}else if(a == 2){
						alert("1번 남았습니다, 신중히입력해주세요")
					}else if(a == 3){
						alert("3회 입력에 실패하였습니다, 로그인 창으로 이동합니다")
						location.href="Login_L";
					}
					
				}
			})
		}






	})























})