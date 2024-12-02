package com.nt.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.nt.SearchRequest.SearchRequest;
import com.nt.entity.CitizenPlan;

public interface IReportService {

	public List<String> getPlanNames();

	public List<String> getPlanStatus();

	public List<CitizenPlan> search(SearchRequest searchrequest);

	public boolean generateExcel(HttpServletResponse response) throws IOException;

	public boolean generatePdf(HttpServletResponse response) throws Exception;

}
