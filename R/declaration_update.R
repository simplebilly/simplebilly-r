#' Create a new DeclarationUpdate
#'
#' @description
#' DeclarationUpdate Class
#'
#' @docType class
#' @title DeclarationUpdate
#' @description DeclarationUpdate Class
#' @format An \code{R6Class} generator object
#' @field declarationType Art der Erklärung: \"dcgk\" (Entsprechenserklärung § 161 AktG) oder \"unternehmensfuehrung\" (Erklärung zur Unternehmensführung § 289f HGB). \link{DeclarationType} [optional]
#' @field isCurrent Kennzeichnet die aktuell gültige Fassung (max. eine je Mandant). character [optional]
#' @field text Inhalt der Erklärung als Markdown. character [optional]
#' @field validFrom Datum, ab dem die Erklärung gilt. character [optional]
#' @field version Versionsbezeichnung der Erklärung (z.B. \"2025-01\"). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeclarationUpdate <- R6::R6Class(
  "DeclarationUpdate",
  public = list(
    `declarationType` = NULL,
    `isCurrent` = NULL,
    `text` = NULL,
    `validFrom` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new DeclarationUpdate class.
    #'
    #' @param declarationType Art der Erklärung: \"dcgk\" (Entsprechenserklärung § 161 AktG) oder \"unternehmensfuehrung\" (Erklärung zur Unternehmensführung § 289f HGB).
    #' @param isCurrent Kennzeichnet die aktuell gültige Fassung (max. eine je Mandant).
    #' @param text Inhalt der Erklärung als Markdown.
    #' @param validFrom Datum, ab dem die Erklärung gilt.
    #' @param version Versionsbezeichnung der Erklärung (z.B. \"2025-01\").
    #' @param ... Other optional arguments.
    initialize = function(`declarationType` = NULL, `isCurrent` = NULL, `text` = NULL, `validFrom` = NULL, `version` = NULL, ...) {
      if (!is.null(`declarationType`)) {
        if (!(`declarationType` %in% c())) {
          stop(paste("Error! \"", `declarationType`, "\" cannot be assigned to `declarationType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`declarationType`))
        self$`declarationType` <- `declarationType`
      }
      if (!is.null(`isCurrent`)) {
        if (!(is.logical(`isCurrent`) && length(`isCurrent`) == 1)) {
          stop(paste("Error! Invalid data for `isCurrent`. Must be a boolean:", `isCurrent`))
        }
        self$`isCurrent` <- `isCurrent`
      }
      if (!is.null(`text`)) {
        if (!(is.character(`text`) && length(`text`) == 1)) {
          stop(paste("Error! Invalid data for `text`. Must be a string:", `text`))
        }
        self$`text` <- `text`
      }
      if (!is.null(`validFrom`)) {
        if (!is.character(`validFrom`)) {
          stop(paste("Error! Invalid data for `validFrom`. Must be a string:", `validFrom`))
        }
        self$`validFrom` <- `validFrom`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return DeclarationUpdate as a base R list.
    #' @examples
    #' # convert array of DeclarationUpdate (x) to a data frame
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
    #' Convert DeclarationUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeclarationUpdateObject <- list()
      if (!is.null(self$`declarationType`)) {
        DeclarationUpdateObject[["declarationType"]] <-
          self$extractSimpleType(self$`declarationType`)
      }
      if (!is.null(self$`isCurrent`)) {
        DeclarationUpdateObject[["isCurrent"]] <-
          self$`isCurrent`
      }
      if (!is.null(self$`text`)) {
        DeclarationUpdateObject[["text"]] <-
          self$`text`
      }
      if (!is.null(self$`validFrom`)) {
        DeclarationUpdateObject[["validFrom"]] <-
          self$`validFrom`
      }
      if (!is.null(self$`version`)) {
        DeclarationUpdateObject[["version"]] <-
          self$`version`
      }
      return(DeclarationUpdateObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of DeclarationUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeclarationUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`declarationType`)) {
        `declarationtype_object` <- DeclarationType$new()
        `declarationtype_object`$fromJSON(jsonlite::toJSON(this_object$`declarationType`, auto_unbox = TRUE, digits = NA))
        self$`declarationType` <- `declarationtype_object`
      }
      if (!is.null(this_object$`isCurrent`)) {
        self$`isCurrent` <- this_object$`isCurrent`
      }
      if (!is.null(this_object$`text`)) {
        self$`text` <- this_object$`text`
      }
      if (!is.null(this_object$`validFrom`)) {
        self$`validFrom` <- this_object$`validFrom`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeclarationUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeclarationUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeclarationUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`declarationType` <- DeclarationType$new()$fromJSON(jsonlite::toJSON(this_object$`declarationType`, auto_unbox = TRUE, digits = NA))
      self$`isCurrent` <- this_object$`isCurrent`
      self$`text` <- this_object$`text`
      self$`validFrom` <- this_object$`validFrom`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeclarationUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeclarationUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`text`) > 20000) {
        return(FALSE)
      }
      if (nchar(self$`text`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`version`) > 50) {
        return(FALSE)
      }
      if (nchar(self$`version`) < 1) {
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
      if (nchar(self$`text`) > 20000) {
        invalid_fields["text"] <- "Invalid length for `text`, must be smaller than or equal to 20000."
      }
      if (nchar(self$`text`) < 1) {
        invalid_fields["text"] <- "Invalid length for `text`, must be bigger than or equal to 1."
      }

      if (nchar(self$`version`) > 50) {
        invalid_fields["version"] <- "Invalid length for `version`, must be smaller than or equal to 50."
      }
      if (nchar(self$`version`) < 1) {
        invalid_fields["version"] <- "Invalid length for `version`, must be bigger than or equal to 1."
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
# DeclarationUpdate$unlock()
#
## Below is an example to define the print function
# DeclarationUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeclarationUpdate$lock()

