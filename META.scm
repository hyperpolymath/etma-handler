; SPDX-License-Identifier: AGPL-3.0-or-later
; META.scm - Architecture decisions and development practices

(define meta
  '((architecture-decisions

      ((id . "adr-001")
       (title . "Jakarta EE migration")
       (status . accepted)
       (date . "2024-11-19")
       (context . "javax.mail deprecated, Java 17+ requires Jakarta namespace")
       (decision . "Migrate from javax.mail to jakarta.mail via Angus Mail implementation")
       (consequences
         "Compatible with Java 17+"
         "Uses angus-mail-2.0.3 as implementation"
         "All javax.* imports changed to jakarta.*"))

      ((id . "adr-002")
       (title . "Java 25 Temurin as primary runtime")
       (status . accepted)
       (date . "2025-01-05")
       (context . "Need modern Java with long-term support")
       (decision . "Use Eclipse Temurin 25 LTS via asdf")
       (consequences
         "Requires --add-opens for Swing reflection"
         "Falls back to bundled JRE if asdf not available"
         "Better performance and security"))

      ((id . "adr-003")
       (title . "Zero npm desktop integration")
       (status . accepted)
       (date . "2025-01-05")
       (context . "Desktop entry creation should be simple")
       (decision . "Pure bash install.sh creates .desktop files with absolute paths")
       (consequences
         "No build tools required"
         "Works on any Linux desktop"
         "Handles spaces in paths correctly")))

    (development-practices
      (code-style
        (language . "java")
        (formatter . "google-java-format")
        (line-length . 120))

      (security
        (auth . "SAML via OU SSO")
        (notes . "Browser pre-auth workaround for SAML issues"))

      (testing
        (framework . "manual")
        (notes . "Legacy application, no automated tests"))

      (versioning
        (scheme . "semver")
        (current . "2.0.0"))

      (documentation
        (format . "markdown")
        (api-docs . "none"))

      (branching
        (model . "trunk-based")
        (main . "main")))

    (design-rationale
      (why-java . "Original OU application written in Java Swing")
      (why-jakarta . "javax.mail removed in Java 17+, Jakarta is the successor")
      (why-asdf . "Consistent Java version management across projects"))))
