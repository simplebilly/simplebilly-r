#' Create a new Shareholder
#'
#' @description
#' Shareholder Class
#'
#' @docType class
#' @title Shareholder
#' @description Shareholder Class
#' @format An \code{R6Class} generator object
#' @field address Anschrift des Aktionärs (§ 67 Abs. 1 AktG). character [optional]
#' @field birthDate Geburtsdatum des Aktionärs (§ 67 Abs. 1 AktG). character [optional]
#' @field email Elektronische Adresse (E-Mail) für die Kommunikation der Gesellschaft. character [optional]
#' @field firstName Vorname des Aktionärs (§ 67 Abs. 1 AktG). character [optional]
#' @field lastName Nachname des Aktionärs (§ 67 Abs. 1 AktG). character [optional]
#' @field shareNumber Aktiennummer bzw. Sammelurkunde (bei Nennbetragsaktien). character [optional]
#' @field shares Stückzahl der gehaltenen Stückaktien (§ 67 Abs. 1 AktG). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Shareholder <- R6::R6Class(
  "Shareholder",
  public = list(
    `address` = NULL,
    `birthDate` = NULL,
    `email` = NULL,
    `firstName` = NULL,
    `lastName` = NULL,
    `shareNumber` = NULL,
    `shares` = NULL,

    #' @description
    #' Initialize a new Shareholder class.
    #'
    #' @param address Anschrift des Aktionärs (§ 67 Abs. 1 AktG).
    #' @param birthDate Geburtsdatum des Aktionärs (§ 67 Abs. 1 AktG).
    #' @param email Elektronische Adresse (E-Mail) für die Kommunikation der Gesellschaft.
    #' @param firstName Vorname des Aktionärs (§ 67 Abs. 1 AktG).
    #' @param lastName Nachname des Aktionärs (§ 67 Abs. 1 AktG).
    #' @param shareNumber Aktiennummer bzw. Sammelurkunde (bei Nennbetragsaktien).
    #' @param shares Stückzahl der gehaltenen Stückaktien (§ 67 Abs. 1 AktG).
    #' @param ... Other optional arguments.
    initialize = function(`address` = NULL, `birthDate` = NULL, `email` = NULL, `firstName` = NULL, `lastName` = NULL, `shareNumber` = NULL, `shares` = NULL, ...) {
      if (!is.null(`address`)) {
        if (!(is.character(`address`) && length(`address`) == 1)) {
          stop(paste("Error! Invalid data for `address`. Must be a string:", `address`))
        }
        self$`address` <- `address`
      }
      if (!is.null(`birthDate`)) {
        if (!is.character(`birthDate`)) {
          stop(paste("Error! Invalid data for `birthDate`. Must be a string:", `birthDate`))
        }
        self$`birthDate` <- `birthDate`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!is.null(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!is.null(`shareNumber`)) {
        if (!(is.character(`shareNumber`) && length(`shareNumber`) == 1)) {
          stop(paste("Error! Invalid data for `shareNumber`. Must be a string:", `shareNumber`))
        }
        self$`shareNumber` <- `shareNumber`
      }
      if (!is.null(`shares`)) {
        if (!(is.character(`shares`) && length(`shares`) == 1)) {
          stop(paste("Error! Invalid data for `shares`. Must be a string:", `shares`))
        }
        self$`shares` <- `shares`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Shareholder as a base R list.
    #' @examples
    #' # convert array of Shareholder (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Shareholder to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShareholderObject <- list()
      if (!is.null(self$`address`)) {
        ShareholderObject[["address"]] <-
          self$`address`
      }
      if (!is.null(self$`birthDate`)) {
        ShareholderObject[["birthDate"]] <-
          self$`birthDate`
      }
      if (!is.null(self$`email`)) {
        ShareholderObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`firstName`)) {
        ShareholderObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`lastName`)) {
        ShareholderObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`shareNumber`)) {
        ShareholderObject[["shareNumber"]] <-
          self$`shareNumber`
      }
      if (!is.null(self$`shares`)) {
        ShareholderObject[["shares"]] <-
          self$`shares`
      }
      return(ShareholderObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Shareholder
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shareholder
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        self$`address` <- this_object$`address`
      }
      if (!is.null(this_object$`birthDate`)) {
        self$`birthDate` <- this_object$`birthDate`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`shareNumber`)) {
        self$`shareNumber` <- this_object$`shareNumber`
      }
      if (!is.null(this_object$`shares`)) {
        self$`shares` <- this_object$`shares`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Shareholder in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Shareholder
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shareholder
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- this_object$`address`
      self$`birthDate` <- this_object$`birthDate`
      self$`email` <- this_object$`email`
      self$`firstName` <- this_object$`firstName`
      self$`lastName` <- this_object$`lastName`
      self$`shareNumber` <- this_object$`shareNumber`
      self$`shares` <- this_object$`shares`
      self
    },

    #' @description
    #' Validate JSON input with respect to Shareholder and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Shareholder
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`address`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`address`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`firstName`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`firstName`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`lastName`) > 100) {
        return(FALSE)
      }
      if (nchar(self$`lastName`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`shareNumber`) > 100) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      if (nchar(self$`address`) > 255) {
        invalid_fields["address"] <- "Invalid length for `address`, must be smaller than or equal to 255."
      }
      if (nchar(self$`address`) < 1) {
        invalid_fields["address"] <- "Invalid length for `address`, must be bigger than or equal to 1."
      }

      if (nchar(self$`firstName`) > 100) {
        invalid_fields["firstName"] <- "Invalid length for `firstName`, must be smaller than or equal to 100."
      }
      if (nchar(self$`firstName`) < 1) {
        invalid_fields["firstName"] <- "Invalid length for `firstName`, must be bigger than or equal to 1."
      }

      if (nchar(self$`lastName`) > 100) {
        invalid_fields["lastName"] <- "Invalid length for `lastName`, must be smaller than or equal to 100."
      }
      if (nchar(self$`lastName`) < 1) {
        invalid_fields["lastName"] <- "Invalid length for `lastName`, must be bigger than or equal to 1."
      }

      if (nchar(self$`shareNumber`) > 100) {
        invalid_fields["shareNumber"] <- "Invalid length for `shareNumber`, must be smaller than or equal to 100."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# Shareholder$unlock()
#
## Below is an example to define the print function
# Shareholder$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Shareholder$lock()

