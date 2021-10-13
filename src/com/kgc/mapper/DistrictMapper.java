package com.kgc.mapper;

import com.kgc.pojo.District;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("dis")
public interface DistrictMapper {
    public List<District> getAll();

}
