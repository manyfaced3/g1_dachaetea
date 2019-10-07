package com.kh.myapp.bbs.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kh.myapp.bbs.dto.RbbsDTO;

@Repository
public class RbbsDAOImplXML implements RbbsDAO {
	
	private static final Logger logger = 
			LoggerFactory.getLogger("RbbsDAOImplXML.class");

	@Override
	public int write(RbbsDTO rbbsDTO) {
		//
		return 0;
	}

	@Override
	public List<RbbsDTO> list(String bnum) {
		//
		return null;
	}

	@Override
	public List<RbbsDTO> list(String bnum, int startRec, int endRec) {
		//
		return null;
	}

	@Override
	public int modify(RbbsDTO rbbsDTO) {
		//
		return 0;
	}

	@Override
	public int delete(String rnum) {
		//
		return 0;
	}

	@Override
	public int goodOrBad(String rnum, String goodOrBad) {
		//
		return 0;
	}

	@Override
	public int reply(RbbsDTO rbbsDTO) {
		//
		return 0;
	}

	@Override
	public int replyTotalRec(String bnum) {
		//
		return 0;
	}


}
