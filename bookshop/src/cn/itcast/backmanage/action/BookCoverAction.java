package cn.itcast.backmanage.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import cn.itcast.dao.BookDao;
import cn.itcast.pojo.Books;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BookCoverAction extends ActionSupport{
	@Resource BookDao bookDao;	
	private int bookId;
	private Books book;
	private File file;
	private String uploadContentType;
	private String uploadFileName;
	private String savePath;
	
	
	public String toUploadCover(){
		book = bookDao.getBook(bookId);
		return SUCCESS;
	}
	public String uploadCover() throws Exception{
		book = bookDao.getBook(bookId);
		book.setImgName(bookId+".jpg");
		bookDao.update(book);
		System.out.println(uploadContentType);
		FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + bookId+".jpg");
		FileInputStream fis = new FileInputStream(getFile());
		byte[] buffer = new byte[1024];
		int len = 0;
		while((len = fis.read(buffer)) > 0){
			fos.write(buffer, 0, len);
		}
		fos.close();
		fis.close();
		return SUCCESS;
	}
	

	public File getFile() {
		return file;
	}
	public void setUpload(File file) {
		this.file = file;
	}
	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public Books getBook() {
		return book;
	}

	public void setBook(Books book) {
		this.book = book;
	}


	public String getUploadContentType() {
		return uploadContentType;
	}



	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}



	public String getUploadFileName() {
		return uploadFileName;
	}



	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}



	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath("/lib/bookImages/" + savePath);
	}



	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	
}
