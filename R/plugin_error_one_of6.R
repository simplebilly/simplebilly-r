#' Create a new PluginErrorOneOf6
#'
#' @description
#' PluginErrorOneOf6 Class
#'
#' @docType class
#' @title PluginErrorOneOf6
#' @description PluginErrorOneOf6 Class
#' @format An \code{R6Class} generator object
#' @field NotImplemented  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginErrorOneOf6 <- R6::R6Class(
  "PluginErrorOneOf6",
  public = list(
    `NotImplemented` = NULL,

    #' @description
    #' Initialize a new PluginErrorOneOf6 class.
    #'
    #' @param NotImplemented NotImplemented
    #' @param ... Other optional arguments.
    initialize = function(`NotImplemented`, ...) {
      if (!missing(`NotImplemented`)) {
        if (!(is.character(`NotImplemented`) && length(`NotImplemented`) == 1)) {
          stop(paste("Error! Invalid data for `NotImplemented`. Must be a string:", `NotImplemented`))
        }
        self$`NotImplemented` <- `NotImplemented`
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
    #' @return PluginErrorOneOf6 as a base R list.
    #' @examples
    #' # convert array of PluginErrorOneOf6 (x) to a data frame
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
    #' Convert PluginErrorOneOf6 to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PluginErrorOneOf6Object <- list()
      if (!is.null(self$`NotImplemented`)) {
        PluginErrorOneOf6Object[["NotImplemented"]] <-
          self$`NotImplemented`
      }
      return(PluginErrorOneOf6Object)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf6
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf6
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`NotImplemented`)) {
        self$`NotImplemented` <- this_object$`NotImplemented`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PluginErrorOneOf6 in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginErrorOneOf6
    #'
    #' @param input_json the JSON input
    #' @return the instance of PluginErrorOneOf6
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`NotImplemented` <- this_object$`NotImplemented`
      self
    },

    #' @description
    #' Validate JSON input with respect to PluginErrorOneOf6 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `NotImplemented`
      if (!is.null(input_json$`NotImplemented`)) {
        if (!(is.character(input_json$`NotImplemented`) && length(input_json$`NotImplemented`) == 1)) {
          stop(paste("Error! Invalid data for `NotImplemented`. Must be a string:", input_json$`NotImplemented`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PluginErrorOneOf6: the required field `NotImplemented` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PluginErrorOneOf6
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `NotImplemented` is null
      if (is.null(self$`NotImplemented`)) {
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
      # check if the required `NotImplemented` is null
      if (is.null(self$`NotImplemented`)) {
        invalid_fields["NotImplemented"] <- "Non-nullable required field `NotImplemented` cannot be null."
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
# PluginErrorOneOf6$unlock()
#
## Below is an example to define the print function
# PluginErrorOneOf6$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PluginErrorOneOf6$lock()

