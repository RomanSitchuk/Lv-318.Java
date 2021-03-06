package org.uatransport.entity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UpdatePasswordDTO {

    private String oldPassword;
    private String newPassword;
    private String passwordConfirmation;
}
