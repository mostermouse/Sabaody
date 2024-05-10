package org.sabaody.domain.user.model.attendancemanagement;


public class EmploymentInfo extends EmploymentStatus {


    private String dateofjoining;
    private String address;
    private String phonenumber;
    private String email;
    public EmploymentInfo(){}

        public EmploymentInfo(String address, String dateofjoining, String email, String phonenumber) {
                this.address = address;
                this.dateofjoining = dateofjoining;
                this.email = email;
                this.phonenumber = phonenumber;
        }

        public EmploymentInfo(String id, String attendanceRecord, String department, String division, String name, String position, String address, String dateofjoining, String email, String phonenumber) {
                super(id, attendanceRecord, department, division, name, position);
                this.address = address;
                this.dateofjoining = dateofjoining;
                this.email = email;
                this.phonenumber = phonenumber;
        }

        public String getAddress() {
                return address;
        }

        public void setAddress(String address) {
                this.address = address;
        }

        public String getDateofjoining() {
                return dateofjoining;
        }

        public void setDateofjoining(String dateofjoining) {
                this.dateofjoining = dateofjoining;
        }

        public String getEmail() {
                return email;
        }

        public void setEmail(String email) {
                this.email = email;
        }

        public String getPhonenumber() {
                return phonenumber;
        }

        public void setPhonenumber(String phonenumber) {
                this.phonenumber = phonenumber;
        }
}


