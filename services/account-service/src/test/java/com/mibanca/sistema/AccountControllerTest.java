package com.mibanca.sistema;

import com.mibanca.sistema.controller.AccountController;
import com.mibanca.sistema.repository.AccountRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.reactive.WebFluxTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.reactive.server.WebTestClient;

@WebFluxTest(AccountController.class) // Solo levanta el controlador
class AccountControllerTest {

    @Autowired
    private WebTestClient webTestClient;

    @MockBean // Crea un repositorio "falso" para que el controlador no se queje
    private AccountRepository accountRepository;

    @Test
    void shouldReturnEmptyList() {
        webTestClient.get().uri("/api/v1/accounts")
            .exchange()
            .expectStatus().isOk();
    }
}