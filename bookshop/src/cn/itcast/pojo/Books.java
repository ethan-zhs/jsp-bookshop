package cn.itcast.pojo;

import java.util.Date;

public class Books {
	private int id;
	private int bookNum;
	private String author;
	private String bookName;
	private double singlePrice;
	private String authorIntroduce;
	private String bookIntroduce;
	private String publishMessage;
	private Date publishTime;
	private String imgName;
	private int clickNum;
	private int saleNum;
	private String detailIntroduce;
	private BookListDetail bookListDetail;
	private int classify;
	
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public double getSinglePrice() {
		return singlePrice;
	}
	public void setSinglePrice(double singlePrice) {
		this.singlePrice = singlePrice;
	}
	public String getAuthorIntroduce() {
		return authorIntroduce;
	}
	public void setAuthorIntroduce(String authorIntroduce) {
		this.authorIntroduce = authorIntroduce;
	}
	public String getBookIntroduce() {
		return bookIntroduce;
	}
	public void setBookIntroduce(String bookIntroduce) {
		this.bookIntroduce = bookIntroduce;
	}
	public String getPublishMessage() {
		return publishMessage;
	}
	public void setPublishMessage(String publishMessage) {
		this.publishMessage = publishMessage;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}	
	
	public BookListDetail getBookListDetail() {
		return bookListDetail;
	}
	public void setBookListDetail(BookListDetail bookListDetail) {
		this.bookListDetail = bookListDetail;
	}
	public int getClickNum() {
		return clickNum;
	}
	public void setClickNum(int clickNum) {
		this.clickNum = clickNum;
	}
	public int getSaleNum() {
		return saleNum;
	}
	public void setSaleNum(int saleNum) {
		this.saleNum = saleNum;
	}
	public String getDetailIntroduce() {
		return detailIntroduce;
	}
	public void setDetailIntroduce(String detailIntroduce) {
		this.detailIntroduce = detailIntroduce;
	}
	public int getClassify() {
		return classify;
	}
	public void setClassify(int classify) {
		this.classify = classify;
	}
	
}
