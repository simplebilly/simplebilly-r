#' Create a new PluginErrorOneOf5
#'
#' @description
#' PluginErrorOneOf5 Class
#'
#' @docType class
#' @title PluginErrorOneOf5
#' @description PluginErrorOneOf5 Class
#' @format An \code{R6Class} generator object
#' @field ValidationError  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf5 <- R6::R6Class(
  "PluginErrorOneOf5",
  public = list(
    `ValidationError` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf5 class.
    #'
    #' @param ValidationError ValidationError
    #' @param ... Other optional arguments.
    initialize = function(`ValidationError`, ...) {
      if (!missing(`ValidationError`)) {
        stopifnot(is.vector(`ValidationError`), length(`ValidationError`) != 0)
        sapply(`ValidationError`, function(x) stopifnot(is.character(x)))
        self$`ValidationError` <- `ValidationError`
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
    #' @return PluginErrorOneOf5 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf5 (x) to a data frame
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
    #' Convert PluginErrorOneOf5 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf5Object <- list()
      if (!is.null(self$`ValidationError`)) {
        PluginErrorOneOf5Object[["ValidationError"]] <-
          self$`ValidationError`
      }
      return(PluginErrorOneOf5Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf5
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf5
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ValidationError`)) {
        self$`ValidationError` <- ApiClient$new()$deserializeObj(this_object$`ValidationError`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf5 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf5
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf5
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ValidationError` <- ApiClient$new()$deserializeObj(this_object$`ValidationError`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf5 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ValidationError`
      if (!is.null(input_json$`ValidationError`)) {
        stopifnot(is.vector(input_json$`ValidationError`), length(input_json$`ValidationError`) != 0)
        tmp <- sapply(input_json$`ValidationError`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf5: the required field `ValidationError` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf5
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ValidationError` is null
      if (is.null(self$`ValidationError`)) {
        return(FALSE)
      }

      if (length(self$`ValidationError`) > 2) {
        return(FALSE)
      }
      if (length(self$`ValidationError`) < 2) {
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
      # check if the required `ValidationError` is null
      if (is.null(self$`ValidationError`)) {
        invalid_fields["ValidationError"] <- "Non-nullable required field `ValidationError` cannot be null."
      }

      if (length(self$`ValidationError`) > 2) {
        invalid_fields["ValidationError"] <- "Invalid length for `ValidationError`, number of items must be less than or equal to 2."
      }
      if (length(self$`ValidationError`) < 2) {
        invalid_fields["ValidationError"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf5$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf5$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf5$lock()

