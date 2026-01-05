; SPDX-License-Identifier: AGPL-3.0-or-later
; ECOSYSTEM.scm - Project position in the ecosystem

(ecosystem
  (version . "1.0")
  (name . "etma-handler")
  (type . "desktop-application")
  (purpose . "Open University eTMA (electronic Tutor-Marked Assignment) handler for tutors")

  (position-in-ecosystem
    (layer . "presentation")
    (role . "desktop-tool")
    (complements . ("rescript-full-stack"))
    (consumed-by . ()))

  (related-projects
    ((name . "rescript-full-stack")
     (relationship . parent-ecosystem)
     (notes . "Part of the broader hyperpolymath tooling ecosystem"))

    ((name . "rescript-runtime-tools")
     (relationship . sibling-tooling)
     (notes . "Both provide developer/user tooling"))

    ((name . "open-university")
     (relationship . upstream-dependency)
     (notes . "Interfaces with OU's eTMA system via SAML")))

  (what-this-is
    "Desktop Java Swing application for OU tutors"
    "Handles eTMA file processing and submission"
    "Modernized for Java 25 with Jakarta EE"
    "Includes spell checker with custom dictionary")

  (what-this-is-not
    "Not a web application"
    "Not written in ReScript (Java legacy)"
    "Not a general-purpose file handler"))
