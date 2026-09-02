#' Create a new PluginErrorOneOf1
#'
#' @description
#' PluginErrorOneOf1 Class
#'
#' @docType class
#' @title PluginErrorOneOf1
#' @description PluginErrorOneOf1 Class
#' @format An \code{R6Class} generator object
#' @field NotFound  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf1 <- R6::R6Class(
  "PluginErrorOneOf1",
  public = list(
    `NotFound` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf1 class.
    #'
    #' @param NotFound NotFound
    #' @param ... Other optional arguments.
    initialize = function(`NotFound`, ...) {
      if (!missing(`NotFound`)) {
        stopifnot(is.vector(`NotFound`), length(`NotFound`) != 0)
        sapply(`NotFound`, function(x) stopifnot(is.character(x)))
        self$`NotFound` <- `NotFound`
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
    #' @return PluginErrorOneOf1 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf1 (x) to a data frame
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
    #' Convert PluginErrorOneOf1 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf1Object <- list()
      if (!is.null(self$`NotFound`)) {
        PluginErrorOneOf1Object[["NotFound"]] <-
          self$`NotFound`
      }
      return(PluginErrorOneOf1Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf1
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`NotFound`)) {
        self$`NotFound` <- ApiClient$new()$deserializeObj(this_object$`NotFound`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf1 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf1
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf1
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`NotFound` <- ApiClient$new()$deserializeObj(this_object$`NotFound`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf1 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `NotFound`
      if (!is.null(input_json$`NotFound`)) {
        stopifnot(is.vector(input_json$`NotFound`), length(input_json$`NotFound`) != 0)
        tmp <- sapply(input_json$`NotFound`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf1: the required field `NotFound` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf1
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `NotFound` is null
      if (is.null(self$`NotFound`)) {
        return(FALSE)
      }

      if (length(self$`NotFound`) > 2) {
        return(FALSE)
      }
      if (length(self$`NotFound`) < 2) {
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
      # check if the required `NotFound` is null
      if (is.null(self$`NotFound`)) {
        invalid_fields["NotFound"] <- "Non-nullable required field `NotFound` cannot be null."
      }

      if (length(self$`NotFound`) > 2) {
        invalid_fields["NotFound"] <- "Invalid length for `NotFound`, number of items must be less than or equal to 2."
      }
      if (length(self$`NotFound`) < 2) {
        invalid_fields["NotFound"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf1$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf1$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf1$lock()

