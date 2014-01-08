/**
 * Copyright (C) 2014 lyh (liuyuhua69@gmail.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.izerui.framework.domain.service.user;

import java.util.Date;

import javax.inject.Inject;

import org.joda.time.DateTime;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.izerui.framework.domain.common.exception.ResourceNotFoundException;
import com.izerui.framework.domain.model.User;
import com.izerui.framework.domain.repository.user.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Inject
    protected UserRepository userRepository;

    @Inject
    protected PasswordEncoder passwordEncoder;

    @Override
    public void save(User user, String rawPassword) {
        String password = passwordEncoder.encode(rawPassword);
        user.setPassword(password);

        Date now = new DateTime().toDate();
        if (user.getCreatedAt() == null) {
            user.setCreatedAt(now);
        }

        user.setUpdatedAt(now);
        userRepository.save(user);
    }

    @Override
    @Transactional(readOnly = true)
    public User findOne(Integer id) {
        User user = userRepository.findOne(id);
        if (user == null) {
            throw new ResourceNotFoundException("User [id=" + id
                    + "] is not found.");
        }
        return user;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<User> findAll(Pageable pageable) {
        Page<User> page = userRepository.findAll(pageable);
        return page;
    }

    @Override
    @Transactional(readOnly = true)
    public Page<User> findByNameLike(String name, Pageable pageable) {
        String query = name; // TODO escape
        Page<User> page = userRepository.findByNameLike(query, pageable);
        return page;
    }

    @Override
    public void delete(User user) {
        userRepository.delete(user);
    }

}
