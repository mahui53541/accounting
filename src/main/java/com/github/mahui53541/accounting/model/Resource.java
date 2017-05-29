package com.github.mahui53541.accounting.model;

import javax.persistence.*;

@Table(name = "resource")
public class Resource {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "resource_sn")
    private String resourceSn;

    @Column(name = "resource_url")
    private String resourceUrl;

    @Column(name = "resource_name")
    private String resourceName;

    @Column(name = "parent_resource_sn")
    private String parentResourceSn;

    @Column(name = "show_sequence")
    @OrderBy
    private Byte showSequence;

    @Column(name = "has_menu_child")
    private Boolean hasMenuChild;

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
     * @return resource_sn
     */
    public String getResourceSn() {
        return resourceSn;
    }

    /**
     * @param resourceSn
     */
    public void setResourceSn(String resourceSn) {
        this.resourceSn = resourceSn;
    }

    /**
     * @return resource_url
     */
    public String getResourceUrl() {
        return resourceUrl;
    }

    /**
     * @param resourceUrl
     */
    public void setResourceUrl(String resourceUrl) {
        this.resourceUrl = resourceUrl;
    }

    /**
     * @return resource_name
     */
    public String getResourceName() {
        return resourceName;
    }

    /**
     * @param resourceName
     */
    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    /**
     * @return parent_resource_sn
     */
    public String getParentResourceSn() {
        return parentResourceSn;
    }

    /**
     * @param parentResourceSn
     */
    public void setParentResourceSn(String parentResourceSn) {
        this.parentResourceSn = parentResourceSn;
    }

    /**
     * @return show_sequence
     */
    public Byte getShowSequence() {
        return showSequence;
    }

    /**
     * @param showSequence
     */
    public void setShowSequence(Byte showSequence) {
        this.showSequence = showSequence;
    }

    /**
     * @return has_menu_child
     */
    public Boolean getHasMenuChild() {
        return hasMenuChild;
    }

    /**
     * @param hasMenuChild
     */
    public void setHasMenuChild(Boolean hasMenuChild) {
        this.hasMenuChild = hasMenuChild;
    }
}