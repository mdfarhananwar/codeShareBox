package com.codeShareBox.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import com.codeShareBox.model.CodeShare;
import com.codeShareBox.repository.CodeShareRepository;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

/**
 * This class provides services related to code sharing via a RESTful API.
 * It handles new code creation, code retrieval, and other operations.
 */
@Service
public class CodeSharingServices {

    @Autowired
    private CodeShareRepository codeShareRepository;
    /**
     * Constructor for CodeSharingServices class.
     *
     * @param codeShareRepository The repository for managing code sharing.
     */



    /**
     * Get code details via REST API based on the provided ID.
     *
     * @param id The unique identifier of the code snippet.
     * @return ResponseEntity containing the code details or a 404 response if not found.
     */
    public ResponseEntity<CodeShare> getCodeApi(UUID id) {

        Optional<CodeShare> byId = codeShareRepository.findById(id);
        CodeShare codeShare = byId.orElse(new CodeShare());
        if (!codeShareRepository.existsById(id)) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

        if (codeShare.getInitialTime() > 0) {

            String date = codeShare.getDate();
            long time = codeShare.getTime();
            LocalDateTime then = LocalDateTime.parse(date);
            LocalDateTime now = LocalDateTime.now();
            Duration duration = Duration.between(then, now);
            long timeBetween = duration.getSeconds();
            codeShare.setTime(time - timeBetween);

        }
        if (codeShare.getInitialViews() > 0) {
            long views = codeShare.getViews();
            codeShare.setViews(--views);
        }
        if (codeShare.getInitialTime() > 0 || codeShare.getInitialViews() > 0) {
            if (codeShare.getInitialTime() <= 0 && codeShare.getViews() <= 0) {
                codeShareRepository.delete(codeShare);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }

            if (codeShare.getTime() <= 0 && codeShare.getInitialViews() <= 0) {
                codeShareRepository.delete(codeShare);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            if (codeShare.getViews() <= 0 && codeShare.getTime() <= 0) {
                codeShareRepository.delete(codeShare);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
        }
        return ResponseEntity.ok(codeShareRepository.save(codeShare));
    }

    /**
     * Create and save a new code snippet via REST API.
     *
     * @param codeShare The CodeShare object representing the code snippet.
     * @return ResponseEntity containing the ID of the newly created code snippet.
     */
    public ResponseEntity<?> postNewCode(CodeShare codeShare) {

        codeShare.setDate(String.valueOf(LocalDateTime.now()));
        codeShare.setInitialTime(codeShare.getTime());
        codeShare.setInitialViews(codeShare.getViews());

        // Calculate the size of the code in bytes
        int codeSizeInBytes = codeShare.getCode().getBytes(StandardCharsets.UTF_8).length;

        // Convert code size to kilobytes (KB)
        double codeSizeInKB = (double) codeSizeInBytes / 1024;
        codeShare.setSize(codeSizeInKB);
        codeShare = codeShareRepository.save(codeShare);
        return ResponseEntity.ok(Map.of("id", String.valueOf(codeShare.getId())));
    }

    /**
     * Get a list of the latest code snippets via REST API.
     *
     * @return A list of CodeShare objects representing the latest code snippets.
     */
    public List<CodeShare> getLatestCode() {
        System.out.println();
        long time = 0L;
        long views = 0L;
        return codeShareRepository
                .findTop10ByViewsAndTime(views,time, PageRequest.of(0, 10));
    }

}
