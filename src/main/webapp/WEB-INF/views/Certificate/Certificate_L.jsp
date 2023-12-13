<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  
<c:choose>
<c:when test="${sessionScope.login.id eq null}">
<script>
//�α��� ���� null�� ��� �α��� ��Ʈ �� ������ �α���ȭ������ �̵���Ű��.
alert("�α��� �� �̿� ��Ź�帳�ϴ�."), location.href="Login_L";
</script>

</c:when>

<c:when test="${sessionScope.login.id ne null}">
<script>
location.href="Serch";
//�α����ϸ� id���� ���� 3������ ���᳻���� Ȯ���Ͽ� ���� ����

</script>
</c:when>

</c:choose> 
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߱�</title>
<link rel="stylesheet" href="/resources/css/Certificate.css">
</head>
<body>

	<!-- ��� -->
	<jsp:include page="../include/header.jsp"></jsp:include>

	<div class="contents_section">
		<div class="contents_section_L">
			<div class="bh_mgb35">
				<h5 class="tit_h5">�¶��� �߱� (���� �湮 ���� ���ͳ�(�޴���/PC) ��û �� ���� �߱� ����)</h5>
			</div>
			<div class="bh_mgb35">
				<h6 class="tit_h4">��û ����</h6>
				<div class="bh_flow_circle8_wrap">
					<ol class="bh_flow_circle8_ol sty1">
						<li class="bh_flow_circle8_li_1"><strong>�α���<span></span></strong></li>
						<li class="bh_flow_circle8_li_2"><strong>��û �� <span></span>���񼭷�
								���ε�
						</strong></li>
						<li class="bh_flow_circle8_li_3"><strong>����� Ȯ��<span></span><em><br>(������
									���� �ִ� 3�� �ҿ�)</em></strong></li>
						<li class="bh_flow_circle8_li_4"><strong>�¶��� ����<span></span><em><br>(����
									�ź� Ȯ��)</em></strong></li>
						<li class="bh_flow_circle8_li_5"><strong>��� �Ǵ�<span></span>PDF
								�ٿ�ε�
						</strong></li>
					</ol>
				</div>
			</div>
			<br>

			<p class="bh_normal_txt">- �¶��� �ǹ���ϻ纻 �߱��� ȯ�� ���ΰ� ȯ���� ģ���� ���ؼ���
				�����մϴ�.(���ñٰ� �Ƿ�� �����Ģ ��13����3)</p>
			<p class="bh_normal_txt">
				- <em class="bh_color_red">�����ڷ�(CD/DVD)�� ���� �湮�ϼž� �߱� �����մϴ�(�¶���
					��û �Ұ�)</em>
			</p>
		</div>
		<div class="bh_mgb35">
			<ul class="bh_normal_txt">
				<li>* ������(�ܷ����, �Կ���� ��), �˻�����(���װ˻�, �Һ��˻�, �����˻�, CT�ǵ� ��� ��)
					�纻�߱��� �����մϴ�.</li>
				<li>* ����Ȯ�μ�, ������, ���γ����� ���� �¶������� ��û���� �߱ް����մϴ�.</li>
				<li>* PDF �ٿ�ε� ��, ���� ������(\2,200��) �߻��մϴ�.</li>
			</ul>
		</div>
		<section class="subContents">
			<div class="contBlock">

				<div class="contents_form">
					<!-- ���� �߱� -->
					<div class="ctfIssue_section">
						<div class="ctfBox_wrap">
							<div class="ctfBox sty01">
								<div class="ctfBox_header">
									<!--  ����Ȯ�μ� -->
									<p class="tit">���� Ȯ�μ�</p>
									<p class="txt">
										<br>
									</p>
								</div>
								<div class="ctfBox_contents">
									<p class="tit">Ȯ�� ����</p>
									<p class="bul_sty">�̸� �� �ֹε�Ϲ�ȣ�� ����Ǿ� ����</p>
									<p class="bul_sty">��� ���ڸ� ����Ǿ� ����</p>
									<p class="bul_sty">�������� ���⿡ ����</p>
								</div>
								<div class="ctfBox_btm">
									<a href="ClinicCertificateDetails_L"><span>�߱� �ޱ�</span></a>
								</div>
							</div>

							<!--  �����Ȯ�μ�-->
							<div class="ctfBox sty02">
								<div class="ctfBox_header">
									<p class="tit">�ԡ���� Ȯ�μ�</p>
									<p class="txt">
										<br>
									</p>
								</div>
								<div class="ctfBox_contents">
									<p class="tit">Ȯ�� ����</p>
									<p class="bul_sty">�̸� �� �ֹε�Ϲ�ȣ�� ����Ǿ� ����</p>
									<p class="bul_sty">�Կ� �Ⱓ�� ����Ǿ� ����</p>
									<p class="bul_sty">�������� ���⿡ ����</p>
								</div>
								<div class="ctfBox_btm">
									<a href="HospitalizationCertificateDetails_L"><span>�߱�
											�ޱ�</span></a>
								</div>
							</div>

							<!--  ����Ȯ�μ�-->
							<div class="ctfBox sty03">
								<div class="ctfBox_header">
									<p class="tit">���� Ȯ�μ�</p>
									<p class="txt">
										<br>
									</p>
								</div>

								<div class="ctfBox_contents">
									<p class="tit">Ȯ�� ����</p>
									<p class="bul_sty">�̸� �� �ֹε�Ϲ�ȣ�� ����Ǿ� ����</p>
									<p class="bul_sty">���� �� ���������� ����Ǿ� ����</p>
									<p class="bul_sty">�������� ���⿡ ����</p>
								</div>
								<div class="ctfBox_btm">
									<a href="OperationCertificateDetails_L"><span>�߱� �ޱ�</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>



	</div>
</body>
</html>