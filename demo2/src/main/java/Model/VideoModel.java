package Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "Video")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class VideoModel {

    @jakarta.persistence.Id
    @Column(name = "Id",columnDefinition = "UNIQUEIDENTIFIER")
    @GeneratedValue
    UUID Id;

    @Column(name = "Link")
    String Link;

    @Column(name = "Titile")
    String Titile;

    @Column(name = "Poster")
    String Poster;

    @Column(name = "Views")
    int Views;

    @Column(name = "Description")
    String Description;

    @Column(name = "Active")
    int Active;

    @OneToMany(mappedBy = "videoModel")
    List<FavoriteModel> favoriteModels;

}
