package com.mibanca.sistema.repository;

import com.mibanca.sistema.model.Account;
import org.springframework.data.repository.reactive.ReactiveCrudRepository;
import reactor.core.publisher.Mono;

public interface AccountRepository extends ReactiveCrudRepository<Account, Long> {
    Mono<Account> findByAccountNumber(String accountNumber);
}