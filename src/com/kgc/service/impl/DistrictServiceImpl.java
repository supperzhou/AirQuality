package com.kgc.service.impl;

import com.kgc.mapper.DistrictMapper;
import com.kgc.pojo.District;
import com.kgc.service.DistrictService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("District")
public class DistrictServiceImpl implements DistrictService {
    @Resource(name = "dis")
    DistrictMapper mapper;

    @Override
    public List<District> getAll() {
        return mapper.getAll();
    }
}
