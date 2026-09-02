#' Create a new PluginErrorOneOf2
#'
#' @description
#' PluginErrorOneOf2 Class
#'
#' @docType class
#' @title PluginErrorOneOf2
#' @description PluginErrorOneOf2 Class
#' @format An \code{R6Class} generator object
#' @field Unauthorized  list(object)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf2 <- R6::R6Class(
  "PluginErrorOneOf2",
  public = list(
    `Unauthorized` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf2 class.
    #'
    #' @param Unauthorized Unauthorized
    #' @param ... Other optional arguments.
    initialize = function(`Unauthorized`, ...) {
      if (!missing(`Unauthorized`)) {
        stopifnot(is.vector(`Unauthorized`), length(`Unauthorized`) != 0)
        sapply(`Unauthorized`, function(x) stopifnot(is.character(x)))
        self$`Unauthorized` <- `Unauthorized`
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
    #' @return PluginErrorOneOf2 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf2 (x) to a data frame
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
    #' Convert PluginErrorOneOf2 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf2Object <- list()
      if (!is.null(self$`Unauthorized`)) {
        PluginErrorOneOf2Object[["Unauthorized"]] <-
          self$`Unauthorized`
      }
      return(PluginErrorOneOf2Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf2
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf2
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`Unauthorized`)) {
        self$`Unauthorized` <- ApiClient$new()$deserializeObj(this_object$`Unauthorized`, "array[object]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf2 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf2
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf2
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`Unauthorized` <- ApiClient$new()$deserializeObj(this_object$`Unauthorized`, "array[object]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf2 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `Unauthorized`
      if (!is.null(input_json$`Unauthorized`)) {
        stopifnot(is.vector(input_json$`Unauthorized`), length(input_json$`Unauthorized`) != 0)
        tmp <- sapply(input_json$`Unauthorized`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf2: the required field `Unauthorized` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf2
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `Unauthorized` is null
      if (is.null(self$`Unauthorized`)) {
        return(FALSE)
      }

      if (length(self$`Unauthorized`) > 2) {
        return(FALSE)
      }
      if (length(self$`Unauthorized`) < 2) {
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
      # check if the required `Unauthorized` is null
      if (is.null(self$`Unauthorized`)) {
        invalid_fields["Unauthorized"] <- "Non-nullable required field `Unauthorized` cannot be null."
      }

      if (length(self$`Unauthorized`) > 2) {
        invalid_fields["Unauthorized"] <- "Invalid length for `Unauthorized`, number of items must be less than or equal to 2."
      }
      if (length(self$`Unauthorized`) < 2) {
        invalid_fields["Unauthorized"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# PluginErrorOneOf2$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf2$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf2$lock()

