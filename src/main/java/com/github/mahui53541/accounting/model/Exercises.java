package com.github.mahui53541.accounting.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import javax.persistence.*;

@Table(name = "exercises")
public class Exercises {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "exercises_name")
    private String exercisesName;

    @Column(name = "exercises_url")
    private String exercisesUrl;

    /**
     * 习题类型：0：练习题 ；1：自测题；2：试卷
     */
    @Column(name = "exercises_type")
    private String exercisesType;

    @Column(name = "upload_time")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
    private Date uploadTime;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return exercises_name
     */
    public String getExercisesName() {
        return exercisesName;
    }

    /**
     * @param exercisesName
     */
    public void setExercisesName(String exercisesName) {
        this.exercisesName = exercisesName;
    }

    /**
     * @return exercises_url
     */
    public String getExercisesUrl() {
        return exercisesUrl;
    }

    /**
     * @param exercisesUrl
     */
    public void setExercisesUrl(String exercisesUrl) {
        this.exercisesUrl = exercisesUrl;
    }

    /**
     * 获取习题类型：0：练习题 ；1：自测题；2：试卷
     *
     * @return exercises_type - 习题类型：0：练习题 ；1：自测题；2：试卷
     */
    public String getExercisesType() {
        return exercisesType;
    }

    /**
     * 设置习题类型：0：练习题 ；1：自测题；2：试卷
     *
     * @param exercisesType 习题类型：0：练习题 ；1：自测题；2：试卷
     */
    public void setExercisesType(String exercisesType) {
        this.exercisesType = exercisesType;
    }

    /**
     * @return upload_time
     */
    public Date getUploadTime() {
        return uploadTime;
    }

    /**
     * @param uploadTime
     */
    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }
}