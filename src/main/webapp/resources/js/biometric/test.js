/*
 * 실시간 온도 그래프
 */

$('#btn3').click(function() {
			
     $.ajax({
				
         type: 'GET',
         url: '/ajax/basic/m3.action',
         data: 'seq=' + $('#seq3').val(),
         dataType: 'json',
         success: function(dto) {
             $('#m3').text('온도: ' + dto.temp + ', 시간: ' + dto.today);
         },
         error: function(a, b, c) {
             console.log(a, b, c);
         }
				
    });
});