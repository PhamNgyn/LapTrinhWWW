package fit.se.model;

public class Student {
    private String maSV;
    private String hoTen;
    private String email;
    private String khoaHoc;

    public Student() {}

    public Student(String maSV, String hoTen, String email, String khoaHoc) {
        this.maSV = maSV;
        this.hoTen = hoTen;
        this.email = email;
        this.khoaHoc = khoaHoc;
    }

    public String getMaSV() {
        return maSV;
    }
    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public String getHoTen() {
        return hoTen;
    }
    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getKhoaHoc() {
        return khoaHoc;
    }
    public void setKhoaHoc(String khoaHoc) {
        this.khoaHoc = khoaHoc;
    }
}
