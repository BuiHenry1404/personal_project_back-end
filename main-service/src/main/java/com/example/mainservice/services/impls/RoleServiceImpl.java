package com.example.mainservice.services.impls;

import com.example.common.service.entities.RoleEntity;
import com.example.common.service.enums.RoleEnum;
import com.example.common.service.exceptions.AppException;
import com.example.common.service.services.impls.CommonServiceImpl;
import com.example.mainservice.constants.ErrorModelConstants;
import com.example.mainservice.repositories.RoleRepository;
import com.example.mainservice.services.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoleServiceImpl extends CommonServiceImpl<RoleEntity,Long, RoleRepository> implements RoleService {

    @Autowired
    private RoleRepository repository;

    protected RoleServiceImpl(RoleRepository repo) {
        super(repo);
    }

    @Override
    public List<RoleEntity> findAllByIdIn(List<Long> roleIds) {
        return repository.findAllByIdIn(roleIds);
    }

    @Override
    @Transactional
    public RoleEntity create(RoleEnum role) {
        RoleEntity roleEntity = new RoleEntity();
        roleEntity.setName(role);
        return repository.save(roleEntity);
    }

    @Override
    public RoleEntity findByName(RoleEnum name) {
        return repository.findByName(name)
                .orElseThrow(() -> new AppException(ErrorModelConstants.ROLE_NOT_FOUND));
    }

    @Override
    public List<RoleEntity> findAllByNameIn(List<RoleEnum> names) {
        return repository.findAllByNameIn(names);
    }

}
