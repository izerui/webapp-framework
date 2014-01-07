package com.izerui.framework;

import ma.glasnost.orika.MapperFactory;
import ma.glasnost.orika.impl.ConfigurableMapper;
import ma.glasnost.orika.impl.DefaultMapperFactory.Builder;

/** 
 * @author  izerui.com
 * @version createtime：2014年1月6日 下午4:23:16 
 */
public class BeanMapper extends ConfigurableMapper {
	@Override
	protected void configure(MapperFactory factory) {
//		factory
	}
	
	@Override
	protected void configureFactoryBuilder(Builder factoryBuilder) {
		factoryBuilder.mapNulls(false);
	}
}
