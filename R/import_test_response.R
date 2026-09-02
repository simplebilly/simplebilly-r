#' Create a new ImportTestResponse
#'
#' @description
#' ImportTestResponse Class
#'
#' @docType class
#' @title ImportTestResponse
#' @description ImportTestResponse Class
#' @format An \code{R6Class} generator object
#' @field error  character [optional]
#' @field ok  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportTestResponse <- R6::R6Class(
  "ImportTestResponse",
  public = list(
    `error` = NULL,
    `ok` = NULL,

    #' @description
    #' Initialize a new ImportTestResponse class.
    #'
    #' @param ok ok
    #' @param error error
    #' @param ... Other optional arguments.
    initialize = function(`ok`, `error` = NULL, ...) {
      if (!missing(`ok`)) {
        if (!(is.logical(`ok`) && length(`ok`) == 1)) {
          stop(paste("Error! Invalid data for `ok`. Must be a boolean:", `ok`))
        }
        self$`ok` <- `ok`
      }
      if (!is.null(`error`)) {
        if (!(is.character(`error`) && length(`error`) == 1)) {
          stop(paste("Error! Invalid data for `error`. Must be a string:", `error`))
        }
        self$`error` <- `error`
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
    #' @return ImportTestResponse as a base R list.
    #' @examples
    #' # convert array of ImportTestResponse (x) to a data frame
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
    #' Convert ImportTestResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ImportTestResponseObject <- list()
      if (!is.null(self$`error`)) {
        ImportTestResponseObject[["error"]] <-
          self$`error`
      }
      if (!is.null(self$`ok`)) {
        ImportTestResponseObject[["ok"]] <-
          self$`ok`
      }
      return(ImportTestResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportTestResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportTestResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`error`)) {
        self$`error` <- this_object$`error`
      }
      if (!is.null(this_object$`ok`)) {
        self$`ok` <- this_object$`ok`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ImportTestResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportTestResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportTestResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`error` <- this_object$`error`
      self$`ok` <- this_object$`ok`
      self
    },

    #' @description
    #' Validate JSON input with respect to ImportTestResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ok`
      if (!is.null(input_json$`ok`)) {
        if (!(is.logical(input_json$`ok`) && length(input_json$`ok`) == 1)) {
          stop(paste("Error! Invalid data for `ok`. Must be a boolean:", input_json$`ok`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportTestResponse: the required field `ok` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportTestResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ok` is null
      if (is.null(self$`ok`)) {
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
      # check if the required `ok` is null
      if (is.null(self$`ok`)) {
        invalid_fields["ok"] <- "Non-nullable required field `ok` cannot be null."
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
# ImportTestResponse$unlock()
#
## Below is an example to define the print function
# ImportTestResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportTestResponse$lock()

