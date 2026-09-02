#' Create a new PluginErrorOneOf
#'
#' @description
#' PluginErrorOneOf Class
#'
#' @docType class
#' @title PluginErrorOneOf
#' @description PluginErrorOneOf Class
#' @format An \code{R6Class} generator object
#' @field BadRequest  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf <- R6::R6Class(
  "PluginErrorOneOf",
  public = list(
    `BadRequest` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf class.
    #'
    #' @param BadRequest BadRequest
    #' @param ... Other optional arguments.
    initialize = function(`BadRequest`, ...) {
      if (!missing(`BadRequest`)) {
        stopifnot(is.vector(`BadRequest`), length(`BadRequest`) != 0)
        sapply(`BadRequest`, function(x) stopifnot(is.character(x)))
        self$`BadRequest` <- `BadRequest`
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
    #' @return PluginErrorOneOf as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf (x) to a data frame
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
    #' Convert PluginErrorOneOf to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOfObject <- list()
      if (!is.null(self$`BadRequest`)) {
        PluginErrorOneOfObject[["BadRequest"]] <-
          self$`BadRequest`
      }
      return(PluginErrorOneOfObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`BadRequest`)) {
        self$`BadRequest` <- ApiClient$new()$deserializeObj(this_object$`BadRequest`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`BadRequest` <- ApiClient$new()$deserializeObj(this_object$`BadRequest`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `BadRequest`
      if (!is.null(input_json$`BadRequest`)) {
        stopifnot(is.vector(input_json$`BadRequest`), length(input_json$`BadRequest`) != 0)
        tmp <- sapply(input_json$`BadRequest`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf: the required field `BadRequest` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `BadRequest` is null
      if (is.null(self$`BadRequest`)) {
        return(FALSE)
      }

      if (length(self$`BadRequest`) > 2) {
        return(FALSE)
      }
      if (length(self$`BadRequest`) < 2) {
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
      # check if the required `BadRequest` is null
      if (is.null(self$`BadRequest`)) {
        invalid_fields["BadRequest"] <- "Non-nullable required field `BadRequest` cannot be null."
      }

      if (length(self$`BadRequest`) > 2) {
        invalid_fields["BadRequest"] <- "Invalid length for `BadRequest`, number of items must be less than or equal to 2."
      }
      if (length(self$`BadRequest`) < 2) {
        invalid_fields["BadRequest"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf$lock()

