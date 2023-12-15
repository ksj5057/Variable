function deletec(comn){
	let result = confirm("정말 삭제하시겠습니까"); 
	console.log(result);
	if(result == true){
		alert("삭제되었습니다.")
		location.href = "chartdelete?cno="+comn;
	}else{
		alert("취소되었습니다.")
		location.reload();
	}
}
