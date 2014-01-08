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

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.izerui.framework.domain.model.User;


public interface UserService {
	void save(User user, String rawPassword);

	User findOne(Integer id);

	Page<User> findAll(Pageable pageable);

	Page<User> findByNameLike(String name, Pageable pageable);

	void delete(User user);
}
