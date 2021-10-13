package com.kgc.mapper;

import com.kgc.pojo.Quality;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

    @Repository("Qua")
public interface QualityMapper {
    public List<Quality> getAll(@Param("districtId")int districtId);
    public Quality getByteId(int id);
    public int add(Quality q);
    public int update(Quality q);
    public int delete(int id);
}
