package com.kgc.service.impl;

import com.kgc.mapper.QualityMapper;
import com.kgc.pojo.Quality;
import com.kgc.service.QualityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("Quality")
public class QualityServiceImpl implements QualityService {
    @Resource(name = "Qua")
    QualityMapper mapper;

    @Override
    public List<Quality> getAll(int districtId) {
        return mapper.getAll(districtId);
    }

    @Override
    public Quality getByteId(int id) {
        return mapper.getByteId(id);
    }

    @Override
    public int add(Quality q) {
        return mapper.add(q);
    }

    @Override
    public int update(Quality q) {
        return mapper.update(q);
    }

    @Override
    public int delete(int id) {
        return mapper.delete(id);
    }
}
