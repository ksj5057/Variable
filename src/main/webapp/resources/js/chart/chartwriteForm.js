
const input = document.querySelector('input[type="text"]');

input.addEventListener('keydown', function(event) {
  if (event.key === 'Enter') {
    // 엔터키를 눌렀을 때 수행할 동작
    console.log('엔터키를 눌렀습니다.');
  }
  
  function loadFn() {
      alert("데이터 요청");

      $.ajax({
          url: "ajax/db.jsp",		// 데이터를 가져올 경로 설정
          type: "get",		// 데이터를 가져오는 방식
          success: function(data){	// 데이터를 가져왔을때 동작. 매개변수로 data 입력
              alert("연결성공");
              var json = JSON.parse(data.trim());	// 가져온 데이터를 자바스크립트 객체로 변환해주는 작업이 필요
                                                  	// trim()을 통해 불필요한 여백 제거
              for (var i = 0; i < json.length; i++) {
                  bidx = json[i].BIDX;
                  subject = json[i].SUBJECT;
                  content = json[i].CONTENT;
                  writer = json[i].WRITER;
                  $("tbody").append("<tr>"+		// append: 셀렉터 안에 요소를 추가
                                          "<td>"+bidx+"</td>"+
                                          "<td>"+subject+"</td>"+
                                          "<td>"+content+"</td>"+
                                          "<td>"+writer+"</td>"+
                                      "</tr>");
              }
          }
      }) 	
   }
출처: https://hei-jayden.tistory.com/248 [알음알음 성장로그:티스토리]
});
