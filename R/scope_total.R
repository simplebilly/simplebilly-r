#' Create a new ScopeTotal
#'
#' @description
#' ScopeTotal Class
#'
#' @docType class
#' @title ScopeTotal
#' @description ScopeTotal Class
#' @format An \code{R6Class} generator object
#' @field scope  character
#' @field tco2e  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ScopeTotal <- R6::R6Class(
  "ScopeTotal",
  public = list(
    `scope` = NULL,
    `tco2e` = NULL,

    #' @description
    #' Initialize a new ScopeTotal class.
    #'
    #' @param scope scope
    #' @param tco2e tco2e
    #' @param ... Other optional arguments.
    initialize = function(`scope`, `tco2e`, ...) {
      if (!missing(`scope`)) {
        if (!(is.character(`scope`) && length(`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", `scope`))
        }
        self$`scope` <- `scope`
      }
      if (!missing(`tco2e`)) {
        if (!(is.character(`tco2e`) && length(`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", `tco2e`))
        }
        self$`tco2e` <- `tco2e`
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
    #' @return ScopeTotal as a base R list.
    #' @examples
    #' # convert array of ScopeTotal (x) to a data frame
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
    #' Convert ScopeTotal to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ScopeTotalObject <- list()
      if (!is.null(self$`scope`)) {
        ScopeTotalObject[["scope"]] <-
          self$`scope`
      }
      if (!is.null(self$`tco2e`)) {
        ScopeTotalObject[["tco2e"]] <-
          self$`tco2e`
      }
      return(ScopeTotalObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ScopeTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScopeTotal
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`scope`)) {
        self$`scope` <- this_object$`scope`
      }
      if (!is.null(this_object$`tco2e`)) {
        self$`tco2e` <- this_object$`tco2e`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ScopeTotal in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ScopeTotal
    #'
    #' @param input_json the JSON input
    #' @return the instance of ScopeTotal
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`scope` <- this_object$`scope`
      self$`tco2e` <- this_object$`tco2e`
      self
    },

    #' @description
    #' Validate JSON input with respect to ScopeTotal and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        if (!(is.character(input_json$`scope`) && length(input_json$`scope`) == 1)) {
          stop(paste("Error! Invalid data for `scope`. Must be a string:", input_json$`scope`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ScopeTotal: the required field `scope` is missing."))
      }
      # check the required field `tco2e`
      if (!is.null(input_json$`tco2e`)) {
        if (!(is.character(input_json$`tco2e`) && length(input_json$`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", input_json$`tco2e`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ScopeTotal: the required field `tco2e` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ScopeTotal
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        return(FALSE)
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
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
      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        invalid_fields["tco2e"] <- "Non-nullable required field `tco2e` cannot be null."
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
# ScopeTotal$unlock()
#
## Below is an example to define the print function
# ScopeTotal$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ScopeTotal$lock()

