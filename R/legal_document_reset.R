#' Create a new LegalDocumentReset
#'
#' @description
#' Optional filter for `POST /api/v1/legal/documents/reset`; empty body restores every document of the tenant.
#'
#' @docType class
#' @title LegalDocumentReset
#' @description LegalDocumentReset Class
#' @format An \code{R6Class} generator object
#' @field docType  character [optional]
#' @field lang  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LegalDocumentReset <- R6::R6Class(
  "LegalDocumentReset",
  public = list(
    `docType` = NULL,
    `lang` = NULL,

    #' @description
    #' Initialize a new LegalDocumentReset class.
    #'
    #' @param docType docType
    #' @param lang lang
    #' @param ... Other optional arguments.
    initialize = function(`docType` = NULL, `lang` = NULL, ...) {
      if (!is.null(`docType`)) {
        if (!(is.character(`docType`) && length(`docType`) == 1)) {
          stop(paste("Error! Invalid data for `docType`. Must be a string:", `docType`))
        }
        self$`docType` <- `docType`
      }
      if (!is.null(`lang`)) {
        if (!(is.character(`lang`) && length(`lang`) == 1)) {
          stop(paste("Error! Invalid data for `lang`. Must be a string:", `lang`))
        }
        self$`lang` <- `lang`
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
    #' @return LegalDocumentReset as a base R list.
    #' @examples
    #' # convert array of LegalDocumentReset (x) to a data frame
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
    #' Convert LegalDocumentReset to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LegalDocumentResetObject <- list()
      if (!is.null(self$`docType`)) {
        LegalDocumentResetObject[["docType"]] <-
          self$`docType`
      }
      if (!is.null(self$`lang`)) {
        LegalDocumentResetObject[["lang"]] <-
          self$`lang`
      }
      return(LegalDocumentResetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LegalDocumentReset
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegalDocumentReset
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`docType`)) {
        self$`docType` <- this_object$`docType`
      }
      if (!is.null(this_object$`lang`)) {
        self$`lang` <- this_object$`lang`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LegalDocumentReset in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LegalDocumentReset
    #'
    #' @param input_json the JSON input
    #' @return the instance of LegalDocumentReset
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`docType` <- this_object$`docType`
      self$`lang` <- this_object$`lang`
      self
    },

    #' @description
    #' Validate JSON input with respect to LegalDocumentReset and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LegalDocumentReset
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# LegalDocumentReset$unlock()
#
## Below is an example to define the print function
# LegalDocumentReset$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LegalDocumentReset$lock()

