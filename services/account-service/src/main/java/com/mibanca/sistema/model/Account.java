package com.mibanca.sistema.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;
import java.math.BigDecimal;

@Table("accounts")
public record Account(
        @Id Long id,
        String accountNumber,
        BigDecimal balance
) {}