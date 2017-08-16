/*
 * Copyright 1999-2017 YaoTrue.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.yaotrue.jasypt;

import java.util.ArrayList;
import java.util.List;

import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.encryption.pbe.config.EnvironmentStringPBEConfig;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.yaotrue.BaseTest;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年7月28日 下午9:59:11
 */
public class JasyptTest extends BaseTest {
	
	private static final Logger LOG = LoggerFactory.getLogger(JasyptTest.class);

	private static final StandardPBEStringEncryptor ENCRYPTOR = new StandardPBEStringEncryptor();
	static {
		EnvironmentStringPBEConfig config = new EnvironmentStringPBEConfig();
		config.setProvider(new BouncyCastleProvider());
		config.setAlgorithm("PBEWITHSHA256AND128BITAES-CBC-BC");
		// 自己在用的时候更改此密码 
		config.setPasswordEnvName("ZYS_ENCRYPTION_PASSWORD");

		ENCRYPTOR.setConfig(config);
	}
	
	@Test
	public void testEncrypt(){
		List<String> encryptStrList = new ArrayList<>();
		encryptStrList.add("test");
		
		int i=0;
		for(String encryptStr : encryptStrList){
			LOG.debug("index:{} encrypt after:{}",i++,ENCRYPTOR.encrypt(encryptStr));
		}
	}
	
	@Test
	public void testDecrypt(){
		String text = "F3wyURmXKksmO0zZOMpyylZsDXSrq520e3s47qjnecE=";
		LOG.debug("text:{} decrypt after:{}",text,ENCRYPTOR.decrypt(text));
	}
}
