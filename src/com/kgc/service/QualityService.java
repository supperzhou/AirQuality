package com.kgc.service;

import com.kgc.pojo.Quality;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface QualityService {
    public List<Quality> getAll(@Param("districtId")int districtId);
    public Quality getByteId(int id);
    public int add(Quality q);
    public int update(Quality q);
    public int delete(int id);
}
