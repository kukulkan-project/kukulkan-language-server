# Kukulkan Grammar & Server Language
The XText grammar for Kukulkan and the Server Language for Kukulkan DSL

## Kukulkan DSL
Kukulkan DSL allows to describe the domain model in a single file.  
Look at the following example:  

    entity Persona(personas) {
        id: String,
        nombre: String,
        apellido: String
    }

    entity Libro {
        model: String
        color: String
    }

### Entity
- Use `entity` keyword to name an entity. Name should be in Pascal case
- Write in parentheses the name of the database table. Table name should be in snake_case
- Write a list of fields in brackets

### Field
- Write the name of field in lowercase followed by a semicolon. Field name should be in camel case
- Write the type of field, these are allowed types:
    - String
    - Integer
    - Long
    - BigDecimal
    - Float
    - Double
    - Boolean
    - Date
    - LocalDate
    - ZonedDateTime
    - Instant
    - Blob
    - AnyBlob
    - ImageBlob

### Kukulkan Language Server
The Kukulkan Language Server is used in [Kukulkan IDE](https://github.com/robertovillarejo/kukulkan-ide-electron) for parsing and validating.

#### Validation
The language server provides some basic validations:
- Entity name should be in Pascal case
- Entity name should be unique in a domain model
- Table name should be in snake case
- Table name should be unique in a domain model
- Field name should be unique inside an entity

## Getting Started
Run `./gradlew` to execute the **generateXtext** default task which generates all Xtext artifacts

Run `./gradlew shadowJar` in order to package the **Language Server** into a `jar`

## Usage
Import this project into Eclipse IDE. You may want to install the [Eclipse Xtext plugin](https://marketplace.eclipse.org/content/eclipse-xtext) for a better experience.
