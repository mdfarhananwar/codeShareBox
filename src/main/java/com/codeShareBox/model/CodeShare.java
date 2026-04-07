package com.codeShareBox.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import java.util.UUID;

/**
 * Represents a code sharing entity.
 */
@Entity
@Table(name = "codeshare")
public class CodeShare {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(columnDefinition = "uuid") // Let Postgres use its native UUID type
    private UUID id;
//    @Column(columnDefinition = "BINARY(16)") // Use BINARY(16) for UUID
//    private UUID id; // Change the type to UUID
//    @Column(name = "code")
//    @Lob // Use the @Lob annotation to indicate CLOB
//    private String code;
    @Column(name = "code", columnDefinition = "TEXT") // Use TEXT data type
    private String code;
    @JsonIgnore
    private String date;
    private Long time;
    private Long views;
    @JsonIgnore
    private Long initialTime;
    @JsonIgnore
    private Long initialViews;
    @JsonIgnore
    @Column(name = "code_size")
    private double size;

    /**
     * Constructs a CodeShare instance with the given code, date, and time.
     *
     * @param code The code to share.
     * @param date The date when the code was shared.
     * @param time The time (in seconds) for which the code will be available.
     */
    public CodeShare(String code, String date, Long time) {
//        this.id = UUID.randomUUID().toString();
        this.code = code;
        this.date = date;
        this.time = time;
        initialTime = time;
        initialViews = this.views;
    }

    /**
     * Default constructor for CodeShare.
     */
    public CodeShare() {
    }

    // Getters and setters for fields...

    public long getTime() {
            return time;
        }

    public void setTime(Long time) {
        this.time = time;
    }

    public void setViews(Long views) {
        this.views = views;
    }

    public Long getViews() {
        return views;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    @JsonSerialize(using = ToStringSerializer.class)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public Long getInitialTime() {
        return initialTime;
    }

    public void setInitialTime(Long initialTime) {
        this.initialTime = initialTime;
    }

    public Long getInitialViews() {
        return initialViews;
    }

    public void setInitialViews(Long initialViews) {
        this.initialViews = initialViews;
    }

    public double getSize() {
        return size;
    }

    public void setSize(double size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "CodeShare{" +
                "id='" + id + '\'' +
                ", code='" + code + '\'' +
                ", date='" + date + '\'' +
                ", time=" + time +
                ", views=" + views +
                '}';
    }

}
