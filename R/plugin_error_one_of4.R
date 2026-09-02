#' Create a new PluginErrorOneOf4
#'
#' @description
#' PluginErrorOneOf4 Class
#'
#' @docType class
#' @title PluginErrorOneOf4
#' @description PluginErrorOneOf4 Class
#' @format An \code{R6Class} generator object
#' @field DatabaseError  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf4 <- R6::R6Class(
  "PluginErrorOneOf4",
  public = list(
    `DatabaseError` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf4 class.
    #'
    #' @param DatabaseError DatabaseError
    #' @param ... Other optional arguments.
    initialize = function(`DatabaseError`, ...) {
      if (!missing(`DatabaseError`)) {
        stopifnot(is.vector(`DatabaseError`), length(`DatabaseError`) != 0)
        sapply(`DatabaseError`, function(x) stopifnot(is.character(x)))
        self$`DatabaseError` <- `DatabaseError`
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
    #' @return PluginErrorOneOf4 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf4 (x) to a data frame
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
    #' Convert PluginErrorOneOf4 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf4Object <- list()
      if (!is.null(self$`DatabaseError`)) {
        PluginErrorOneOf4Object[["DatabaseError"]] <-
          self$`DatabaseError`
      }
      return(PluginErrorOneOf4Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf4
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf4
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`DatabaseError`)) {
        self$`DatabaseError` <- ApiClient$new()$deserializeObj(this_object$`DatabaseError`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf4 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf4
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf4
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`DatabaseError` <- ApiClient$new()$deserializeObj(this_object$`DatabaseError`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf4 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `DatabaseError`
      if (!is.null(input_json$`DatabaseError`)) {
        stopifnot(is.vector(input_json$`DatabaseError`), length(input_json$`DatabaseError`) != 0)
        tmp <- sapply(input_json$`DatabaseError`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf4: the required field `DatabaseError` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf4
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `DatabaseError` is null
      if (is.null(self$`DatabaseError`)) {
        return(FALSE)
      }

      if (length(self$`DatabaseError`) > 2) {
        return(FALSE)
      }
      if (length(self$`DatabaseError`) < 2) {
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
      # check if the required `DatabaseError` is null
      if (is.null(self$`DatabaseError`)) {
        invalid_fields["DatabaseError"] <- "Non-nullable required field `DatabaseError` cannot be null."
      }

      if (length(self$`DatabaseError`) > 2) {
        invalid_fields["DatabaseError"] <- "Invalid length for `DatabaseError`, number of items must be less than or equal to 2."
      }
      if (length(self$`DatabaseError`) < 2) {
        invalid_fields["DatabaseError"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf4$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf4$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf4$lock()

