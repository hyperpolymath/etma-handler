; SPDX-License-Identifier: PMPL-1.0-or-later
; STATE.scm - Current project state for etma-handler

(define state
  '((metadata
      (version . "2.0.0")
      (schema-version . "1.0")
      (created . "2018-05-01")
      (updated . "2025-01-05")
      (project . "etma-handler")
      (repo . "hyperpolymath/etma-handler"))

    (project-context
      (name . "eTMA File Handler")
      (tagline . "Open University eTMA handler modernized for Java 25")
      (tech-stack . (java jakarta-ee swing)))

    (current-position
      (phase . "production")
      (overall-completion . 95)
      (components
        (core-handler . ((status . complete) (completion . 100)))
        (jakarta-migration . ((status . complete) (completion . 100)))
        (spell-checker . ((status . complete) (completion . 100)))
        (launcher-scripts . ((status . complete) (completion . 100)))
        (desktop-integration . ((status . complete) (completion . 90))))
      (working-features
        "eTMA file processing"
        "SAML authentication with OU"
        "Spell checking with custom dictionary"
        "Desktop launcher integration"
        "Java 25 Temurin support"))

    (route-to-mvp
      (milestones
        ((name . "v1.0.0")
         (status . complete)
         (items
           "Original Java application"
           "javax.mail integration"
           "Swing UI"))
        ((name . "v2.0.0")
         (status . complete)
         (items
           "Jakarta EE migration (javax -> jakarta)"
           "Java 25 Temurin support"
           "Modern dependency versions"
           "Desktop entry installer"))))

    (blockers-and-issues
      (critical . ())
      (high . ())
      (medium
        "SAML auth sometimes requires browser pre-auth")
      (low
        "Could add dark mode support"
        "Consider native packaging (jpackage)"))

    (critical-next-actions
      (immediate . ())
      (this-week . ())
      (this-month
        "Monitor for Java 26 compatibility"))

    (session-history
      ((date . "2025-01-05")
       (snapshot . "ecosystem-integration")
       (accomplishments
         "Created README.md"
         "Created install.sh for desktop entry"
         "Pushed to GitHub"
         "Added to rescript-full-stack ecosystem")))))
