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
package com.yaotrue.learn.solr;

import java.io.IOException;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.SolrPingResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a>
 * 2017年6月9日 下午2:09:33
 */
public class SolrTest extends BaseTest {

	private static final Logger LOG = LoggerFactory.getLogger(SolrTest.class);
	
	@Autowired
	private SolrClient solrClient;
	
	@Test
	public void testPing(){
		try {
			SolrPingResponse solrPingResponse = solrClient.ping();
			LOG.info("--------------solr status:{}",solrPingResponse.getStatus());
		} catch (SolrServerException | IOException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSeach() throws SolrServerException, IOException{
		SolrQuery solrQuery = new SolrQuery("*:*");
		QueryResponse queryResponse = solrClient.query(solrQuery);
		SolrDocumentList documentList = queryResponse.getResults();
		
		for (SolrDocument solrDocument : documentList) {
			System.out.println(solrDocument.getFieldValue("id"));
		}
	}
	
}
