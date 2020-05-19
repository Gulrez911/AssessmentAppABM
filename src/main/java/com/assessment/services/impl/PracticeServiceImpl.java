package com.assessment.services.impl;

import java.util.Date;
import java.util.List;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.assessment.Exceptions.AssessmentGenericException;
import com.assessment.data.PracticeCode;
import com.assessment.data.Question;
import com.assessment.repositories.PracticeRepository;
import com.assessment.services.PracticeService;

@Service
@Transactional
public class PracticeServiceImpl implements PracticeService {

	@Autowired
	PracticeRepository practiceRepository;

	@Override
	public void save(PracticeCode practiceCode) {
//		PracticeCode p = practiceRepository.findByPrimaryKey(practiceCode.getCreateDate(), practiceCode.getCompanyId());
//		if (p != null)
//		{
//
//			practiceCode.setId(p.getId());
//			p.setUpdateDate(new Date());
//			practiceRepository.save(p);
//		}
//		else {
//			practiceCode.setCreateDate(new Date());
			practiceRepository.save(practiceCode);
//		}
	}

	@Override
	public List<PracticeCode> findAllPracticeCode() {
		return practiceRepository.findAllList();
	}

	@Override
	public PracticeCode findByDate(Long id) {
		return practiceRepository.findById(id).get();
	}

	@Override
	public void updateCode(PracticeCode pr) {
		//pr.setUpdateDate(new Date());
		
		 PracticeCode pr2 = practiceRepository.findById(pr.getId()).get();
		/*
		 * PracticeCode pr2 = practiceRepository.findById(pr.getId()).get(); Mapper
		 * mapper = new DozerBeanMapper(); mapper.map(pr, pr2);
		 * pr2.setCreateDate(pr.getCreateDate());
		 */
		//Date Date = pr.getCreateDate();
		 pr.setCreateDate(pr2.getCreateDate());
		pr.setUpdateDate(new Date());
		practiceRepository.save(pr);		

	//	PracticeCode pr2 = practiceRepository.findById(pr.getId()).get();
		
		

	}

}
