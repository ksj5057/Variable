/**
 * 
 */

let initBodyHtml;

function printPage(){
	window.print();
}

function beforePrint() {
	initBodyHtml = document.body.innerHTML;
	document.body.innerHTML = document.getElementById('printpage').innerHTML;
}
function afterPrint() {
	document.body.innerHTML = initBodyHtml;
}

window.onbeforeprint = beforePrint;
window.onafterprint = afterPrint;

//입퇴원 확인서 다운로드
	function HdownloadPdf() {
		const divToPrint = document.getElementById('printpage');
		html2canvas(divToPrint, { scale: 2 }).then(canvas => {
			const imgData = canvas.toDataURL('image/png');
			const doc = new jsPDF('p', 'mm', 'a4');
			doc.addImage(imgData, 'PNG', 0, 0, 210, 297);
			const fileName = '입퇴원확인서.pdf';
			const options = {
				orientation: 'portrait',
				unit: 'mm',
				format: 'a4',
			};
			doc.save(fileName, options);
		});
	}
	
//진료 확인서
	function CdownloadPdf() {
		const divToPrint = document.getElementById('printpage');
		html2canvas(divToPrint, { scale: 2 }).then(canvas => {
			const imgData = canvas.toDataURL('image/png');
			const doc = new jsPDF('p', 'mm', 'a4');
			doc.addImage(imgData, 'PNG', 0, 0, 210, 297);
			const fileName = '진료확인서.pdf';
			const options = {
				orientation: 'portrait',
				unit: 'mm',
				format: 'a4',
			};
			doc.save(fileName, options);
		});
	}
	
	//수술 확인서
	function OdownloadPdf() {
		const divToPrint = document.getElementById('printpage');
		html2canvas(divToPrint, { scale: 2 }).then(canvas => {
			const imgData = canvas.toDataURL('image/png');
			const doc = new jsPDF('p', 'mm', 'a4');
			doc.addImage(imgData, 'PNG', 0, 0, 210, 297);
			const fileName = '수수확인서.pdf';
			const options = {
				orientation: 'portrait',
				unit: 'mm',
				format: 'a4',
			};
			doc.save(fileName, options);
		});
	}