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
package com.yaotrue.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年7月26日 上午12:14:43
 */
public class LangUtil {

	private static final Logger LOG = LoggerFactory.getLogger(LangUtil.class);
	
	public static final String                 ZH_CN        = "zh_CN";

    public static final String                 EN_US        = "en_US";

    public static final String                 I18_LANG_KEY = "clientlanguage";

    private String                             lang;

    private static final ThreadLocal<LangUtil> context      = new ThreadLocal<LangUtil>(){

                                                                @Override
                                                                protected LangUtil initialValue(){
                                                                    return new LangUtil();
                                                                }
                                                            };

    public static LangUtil getCurrentContext(){
        return context.get();

    }

    public static String getCurrentLang(){
        return getCurrentContext().lang;
    }

    public static void setCurrentLang(String lang){
    	if(LOG.isDebugEnabled()){
    		LOG.debug("set current lang:{}",lang);
    	}
        getCurrentContext().lang = lang;
    }

    public static void remove(){
        context.remove();
    }
}
