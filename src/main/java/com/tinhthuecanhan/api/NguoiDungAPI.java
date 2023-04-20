package com.tinhthuecanhan.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.tinhthuecanhan.api.output.NguoiDungOutput;
import com.tinhthuecanhan.converter.NguoiDungConverter;
import com.tinhthuecanhan.dto.NguoiDungDTO;
import com.tinhthuecanhan.entity.NguoiDungEntity;
import com.tinhthuecanhan.service.INguoiDungService;

@CrossOrigin
@RestController
public class NguoiDungAPI {
	
	@Autowired
	private INguoiDungService nguoiDungService;
	
	@Autowired
	private NguoiDungConverter nguoiDungConverter;
		
    @GetMapping(value = "/nguoidung/{id}")
    public NguoiDungDTO getById(@PathVariable Long id) {
    	NguoiDungEntity nguoiDungEntity = nguoiDungService.findOne(id);
        
        return nguoiDungConverter.toDTO(nguoiDungEntity);
    }
    
    @PostMapping(value = "/nguoidung")
	public NguoiDungDTO createNew(@RequestBody NguoiDungDTO model) {
		return nguoiDungConverter.toDTO(nguoiDungService.save(model));
	}

    
	@GetMapping(value = "/nguoidung")
	public NguoiDungOutput showNew(@RequestParam(value = "page", required = false) Integer page,
							 @RequestParam(value = "limit", required = false) Integer limit) {
		NguoiDungOutput result = new NguoiDungOutput();
		if (page != null && limit != null) {
			result.setPage(page);
			Pageable pageable = new PageRequest(page - 1, limit);
			result.setListResult(nguoiDungService.findAll(pageable));
			result.setTotalPage((int) Math.ceil((double) (nguoiDungService.totalItem()) / limit));
		} else {
			result.setListResult(nguoiDungService.findAll());
		}
		return result;
	}


}
