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
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.client.solrj.impl.XMLResponseParser;
import org.apache.solr.client.solrj.response.FacetField;
import org.apache.solr.client.solrj.response.FacetField.Count;
import org.apache.solr.client.solrj.response.Group;
import org.apache.solr.client.solrj.response.GroupCommand;
import org.apache.solr.client.solrj.response.GroupResponse;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.client.solrj.response.SpellCheckResponse;
import org.apache.solr.client.solrj.response.SpellCheckResponse.Suggestion;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.params.GroupParams;
import org.apache.solr.common.util.NamedList;
import org.junit.Before;
import org.junit.Test;

/**
 * @author <a href="mailto:yaotrue@163.com">yaotrue</a> 2017年6月15日 下午9:25:05
 */
public class SolrjTest {

	private HttpSolrClient solrClient;

	@Before
	public void initSolr() {
		solrClient = new HttpSolrClient("http://localhost:8080/solr/i.t");
		solrClient.setParser(new XMLResponseParser());
		solrClient.setConnectionTimeout(1000 * 3);
	}

	@Test
	public void testFacet() throws SolrServerException, IOException {
		SolrQuery solrQuery = new SolrQuery("*:*");
		solrQuery.setFacet(true);
		solrQuery.addFacetQuery("sale_price:[0 TO 200]");
		solrQuery.addFacetQuery("sale_price:[201 TO 300]");
		solrQuery.addFacetQuery("sale_price:[300 TO 400]");
		solrQuery.setFacetSort("count");
		
		solrQuery.addFacetField("code");
		solrQuery.setFacetMinCount(0);
		solrQuery.setFacetLimit(-1);

		QueryResponse response = solrClient.query(solrQuery);
		if (response != null) {
			List<FacetField> facetFields = response.getFacetFields();
			for (FacetField facetField : facetFields) {
				List<Count> countList = null;
				if (facetField != null) {
					countList = facetField.getValues();
					if (countList != null) {
						for (Count count : countList) {
							System.out.println(count.getName() + count.getCount());
						}
					}
				}
			}
			
			Map<String, Integer> map = response.getFacetQuery();
			for(String key : map.keySet()){
				System.out.println(key + ":" + map.get(key));
			}
		}
	}
	
	@Test
	public void testGroup() throws SolrServerException, IOException{
		SolrQuery solrQuery = new SolrQuery("*:*");
		
		solrQuery.set(GroupParams.GROUP, true);
		solrQuery.set(GroupParams.GROUP_TOTAL_COUNT, true);
		solrQuery.set(GroupParams.GROUP_LIMIT, 12);
		solrQuery.set(GroupParams.GROUP_FORMAT, "grouped");
		solrQuery.set(GroupParams.GROUP_FACET, true);
		solrQuery.set(GroupParams.GROUP_FIELD, "style");
		
		QueryResponse queryResponse = solrClient.query(solrQuery);
		GroupResponse groupResponse = queryResponse.getGroupResponse();
		if(null != groupResponse){
			List<GroupCommand> groupCommandList = groupResponse.getValues();
			for (GroupCommand groupCommand : groupCommandList) {
				int matches = groupCommand.getMatches();
				String name = groupCommand.getName();
				Integer ngroups = groupCommand.getNGroups();

				List<Group> groupList = groupCommand.getValues();
				for (Group group : groupList) {
					 SolrDocumentList solrDocumentList = group.getResult();
					 ListIterator<SolrDocument> listIterator = solrDocumentList.listIterator();
					 while(listIterator.hasNext()){
						 SolrDocument solrDocument = listIterator.next();
						 System.out.println(solrDocument.get("code"));
					 }
				}
			}
			
		}
	}
	
	@Test
	public void testSuggest() throws SolrServerException, IOException{
		SolrQuery params = new SolrQuery();
		params.set("qt", "/suggest");
		params.set("suggest", true);
		params.set("suggest.dictionary", "mySuggester");
		params.set("suggest.q", "商品");
		QueryResponse query = solrClient.query(params);
		NamedList<Object> response = query.getResponse();
//		response.get("suggest")
		SpellCheckResponse spellCheckResponse = query.getSpellCheckResponse();
		List<Suggestion> suggestions = spellCheckResponse.getSuggestions();
		for (Suggestion suggestion : suggestions) {//JAVA
			List<String> suggestions2 = suggestion.getAlternatives();
			for (String string : suggestions2) {
				System.out.println(string);
			}
		}
		SolrDocumentList results = query.getResults();
		for (int i = 0; i < results.getNumFound(); i++) {
			System.out.println(results.get(i).get("suggestion"));
		}
	}
}
