package com.vr.Model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public class TempleDAO {

	@Repository
	public class AjaxDAO {

	    @Autowired
	    private SqlSessionTemplate template;

	    public TempleDTO getSeqUser(String seq) {
	        return template.selectOne("ajax.getSeqUser", seq);
	    }
	}
	
}
