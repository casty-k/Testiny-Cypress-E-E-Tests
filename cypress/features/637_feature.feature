Feature: 637
  637 feature scenarios

@637 @1
Scenario: Minimum TLS version and cipher policy enforced
    Given HTTPS and TLS policy configured
    Then Attempt a handshake using a TLS version below the minimum or a weak cipher. Connection rejected; only approved TLS versions and ciphers are accepted
