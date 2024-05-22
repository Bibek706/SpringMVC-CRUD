package com.cglia.pm.controller;


import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cglia.pm.model.Patient;
import com.cglia.pm.service.PatientService;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

@Controller
public class PDFController {

	@Autowired
	private PatientService service;

	@RequestMapping(path = "/downloadpdf",method=RequestMethod.GET)
	public void pdfDownload(HttpServletResponse response) {

		response.setContentType("application/pdf");
		response.setHeader("Content-Disposition", "attachment; filename = Patient_List.pdf");

		try {
			Document document = new Document();
			PdfWriter.getInstance(document, response.getOutputStream());
			document.open();
			Font titleFont = FontFactory.getFont(FontFactory.HELVETICA, 16, BaseColor.GRAY);
			Paragraph title = new Paragraph("Patient List", titleFont);
			title.setAlignment(Element.ALIGN_CENTER);
			document.add(title);

			document.add(Chunk.NEWLINE);

			List<Patient> patients = service.getAllPatient();

			if(!patients.isEmpty()) {
				PdfPTable table = new PdfPTable(7);
				float[] width = {10f, 30f, 16f, 15f, 25f, 16f, 50f};
				table.setWidths(width);

				table.addCell(createHeader("ID"));
				table.addCell(createHeader("Full Name"));
				table.addCell(createHeader("Marital Status"));
				table.addCell(createHeader("Gender"));
				table.addCell(createHeader("Mobile Number"));
				table.addCell(createHeader("Payment"));
				table.addCell(createHeader("Address"));

				for(Patient patient : patients) {
					table.addCell(createBody(String.valueOf(patient.getPatientId())));
					table.addCell(createBody(patient.getFullName()));
					table.addCell(createBody(patient.getMaritalStatus()));
					table.addCell(createBody(patient.getGender()));
					table.addCell(createBody(String.valueOf(patient.getMobNo())));
					table.addCell(createBody(String.valueOf(patient.getPayment())));
					table.addCell(createBody(String.valueOf(patient.getAddress())));

				}
				document.add(table);
			}else {
				document.add(new Paragraph("No Patients Record Found"));
			}

			document.close();

		}
		catch(Exception e) {
			e.getMessage();
		}
	}

	private PdfPCell createHeader(String content) {

		PdfPCell cell = new PdfPCell(new Phrase(content));
		cell.setHorizontalAlignment(PdfPCell.ALIGN_CENTER);
		cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
		return cell;
	}
	private PdfPCell createBody(String content) {
		PdfPCell cell = new PdfPCell(new Phrase(content));

		cell.setHorizontalAlignment(Element.ALIGN_LEFT);
		return cell;
	}

}


