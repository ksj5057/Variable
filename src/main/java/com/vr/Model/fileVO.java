package com.vr.Model;

import org.springframework.web.multipart.MultipartFile;

public class fileVO {
	    
		private String fileName;
		private MultipartFile uploadFile;
		
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public MultipartFile getUploadFile() {
			return uploadFile;
		}
		public void setUploadFile(MultipartFile uploadFile) {
			this.uploadFile = uploadFile;
		}
		
	}