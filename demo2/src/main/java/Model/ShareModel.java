package Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.UUID;

@Entity
@Table(name = "Share",uniqueConstraints={@UniqueConstraint(columnNames={"VideoID","TaiKhoanId"})})
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShareModel {
    @jakarta.persistence.Id
    @Column(name = "Id",columnDefinition = "UNIQUEIDENTIFIER")
    @GeneratedValue
    UUID Id;

    @ManyToOne
    @JoinColumn(name = "TaiKhoanId")
    TaiKhoanModel taiKhoanModel;

    @ManyToOne
    @JoinColumn(name = "VideoID")
    VideoModel videoModel;

    @Column(name = "Email")
    String Email;

    @Column(name = "ShareDate")
    Date ShareDate;
}
