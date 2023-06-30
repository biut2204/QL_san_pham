package Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Entity
@Table(name = "TaiKhoan")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TaiKhoanModel {
    @Id
    @Column(name = "Id",columnDefinition = "UNIQUEIDENTIFIER")
    @GeneratedValue
    UUID Id;

    @Column(name = "Email")
    String Email;

    @Column(name = "MatKhau")
    String MatKhau;

    @Column(name = "Fullname")
    String Fullname;

    @Column(name = "VaiTro")
    String VaiTro;
}
