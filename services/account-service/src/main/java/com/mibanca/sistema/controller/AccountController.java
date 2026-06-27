package com.mibanca.sistema.controller;

import com.mibanca.sistema.model.Account;
import com.mibanca.sistema.repository.AccountRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/api/v1/accounts")
@RequiredArgsConstructor
public class AccountController {

    private final AccountRepository repository;

    @GetMapping
    public Flux<Account> getAllAccounts() {
        return repository.findAll();
    }

    @GetMapping("/{accountNumber}")
    public Mono<Account> getAccount(@PathVariable String accountNumber) {
        return repository.findByAccountNumber(accountNumber);
    }
}