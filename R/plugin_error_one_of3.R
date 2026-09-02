#' Create a new PluginErrorOneOf3
#'
#' @description
#' PluginErrorOneOf3 Class
#'
#' @docType class
#' @title PluginErrorOneOf3
#' @description PluginErrorOneOf3 Class
#' @format An \code{R6Class} generator object
#' @field InternalError  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf3 <- R6::R6Class(
  "PluginErrorOneOf3",
  public = list(
    `InternalError` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf3 class.
    #'
    #' @param InternalError InternalError
    #' @param ... Other optional arguments.
    initialize = function(`InternalError`, ...) {
      if (!missing(`InternalError`)) {
        stopifnot(is.vector(`InternalError`), length(`InternalError`) != 0)
        sapply(`InternalError`, function(x) stopifnot(is.character(x)))
        self$`InternalError` <- `InternalError`
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
    #' @return PluginErrorOneOf3 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf3 (x) to a data frame
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
    #' Convert PluginErrorOneOf3 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf3Object <- list()
      if (!is.null(self$`InternalError`)) {
        PluginErrorOneOf3Object[["InternalError"]] <-
          self$`InternalError`
      }
      return(PluginErrorOneOf3Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf3
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf3
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`InternalError`)) {
        self$`InternalError` <- ApiClient$new()$deserializeObj(this_object$`InternalError`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf3 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf3
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf3
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`InternalError` <- ApiClient$new()$deserializeObj(this_object$`InternalError`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf3 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `InternalError`
      if (!is.null(input_json$`InternalError`)) {
        stopifnot(is.vector(input_json$`InternalError`), length(input_json$`InternalError`) != 0)
        tmp <- sapply(input_json$`InternalError`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf3: the required field `InternalError` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf3
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `InternalError` is null
      if (is.null(self$`InternalError`)) {
        return(FALSE)
      }

      if (length(self$`InternalError`) > 2) {
        return(FALSE)
      }
      if (length(self$`InternalError`) < 2) {
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
      # check if the required `InternalError` is null
      if (is.null(self$`InternalError`)) {
        invalid_fields["InternalError"] <- "Non-nullable required field `InternalError` cannot be null."
      }

      if (length(self$`InternalError`) > 2) {
        invalid_fields["InternalError"] <- "Invalid length for `InternalError`, number of items must be less than or equal to 2."
      }
      if (length(self$`InternalError`) < 2) {
        invalid_fields["InternalError"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf3$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf3$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf3$lock()

