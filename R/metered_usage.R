#' Create a new MeteredUsage
#'
#' @description
#' MeteredUsage Class
#'
#' @docType class
#' @title MeteredUsage
#' @description MeteredUsage Class
#' @format An \code{R6Class} generator object
#' @field limit  integer
#' @field meter  character
#' @field used  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MeteredUsage <- R6::R6Class(
  "MeteredUsage",
  public = list(
    `limit` = NULL,
    `meter` = NULL,
    `used` = NULL,

    #' @description
    #' Initialize a new MeteredUsage class.
    #'
    #' @param limit limit
    #' @param meter meter
    #' @param used used
    #' @param ... Other optional arguments.
    initialize = function(`limit`, `meter`, `used`, ...) {
      if (!missing(`limit`)) {
        if (!(is.numeric(`limit`) && length(`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", `limit`))
        }
        self$`limit` <- `limit`
      }
      if (!missing(`meter`)) {
        if (!(is.character(`meter`) && length(`meter`) == 1)) {
          stop(paste("Error! Invalid data for `meter`. Must be a string:", `meter`))
        }
        self$`meter` <- `meter`
      }
      if (!missing(`used`)) {
        if (!(is.numeric(`used`) && length(`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", `used`))
        }
        self$`used` <- `used`
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
    #' @return MeteredUsage as a base R list.
    #' @examples
    #' # convert array of MeteredUsage (x) to a data frame
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
    #' Convert MeteredUsage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MeteredUsageObject <- list()
      if (!is.null(self$`limit`)) {
        MeteredUsageObject[["limit"]] <-
          self$`limit`
      }
      if (!is.null(self$`meter`)) {
        MeteredUsageObject[["meter"]] <-
          self$`meter`
      }
      if (!is.null(self$`used`)) {
        MeteredUsageObject[["used"]] <-
          self$`used`
      }
      return(MeteredUsageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MeteredUsage
    #'
    #' @param input_json the JSON input
    #' @return the instance of MeteredUsage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`limit`)) {
        self$`limit` <- this_object$`limit`
      }
      if (!is.null(this_object$`meter`)) {
        self$`meter` <- this_object$`meter`
      }
      if (!is.null(this_object$`used`)) {
        self$`used` <- this_object$`used`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MeteredUsage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MeteredUsage
    #'
    #' @param input_json the JSON input
    #' @return the instance of MeteredUsage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`limit` <- this_object$`limit`
      self$`meter` <- this_object$`meter`
      self$`used` <- this_object$`used`
      self
    },

    #' @description
    #' Validate JSON input with respect to MeteredUsage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `limit`
      if (!is.null(input_json$`limit`)) {
        if (!(is.numeric(input_json$`limit`) && length(input_json$`limit`) == 1)) {
          stop(paste("Error! Invalid data for `limit`. Must be an integer:", input_json$`limit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MeteredUsage: the required field `limit` is missing."))
      }
      # check the required field `meter`
      if (!is.null(input_json$`meter`)) {
        if (!(is.character(input_json$`meter`) && length(input_json$`meter`) == 1)) {
          stop(paste("Error! Invalid data for `meter`. Must be a string:", input_json$`meter`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MeteredUsage: the required field `meter` is missing."))
      }
      # check the required field `used`
      if (!is.null(input_json$`used`)) {
        if (!(is.numeric(input_json$`used`) && length(input_json$`used`) == 1)) {
          stop(paste("Error! Invalid data for `used`. Must be an integer:", input_json$`used`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MeteredUsage: the required field `used` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MeteredUsage
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        return(FALSE)
      }

      # check if the required `meter` is null
      if (is.null(self$`meter`)) {
        return(FALSE)
      }

      # check if the required `used` is null
      if (is.null(self$`used`)) {
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
      # check if the required `limit` is null
      if (is.null(self$`limit`)) {
        invalid_fields["limit"] <- "Non-nullable required field `limit` cannot be null."
      }

      # check if the required `meter` is null
      if (is.null(self$`meter`)) {
        invalid_fields["meter"] <- "Non-nullable required field `meter` cannot be null."
      }

      # check if the required `used` is null
      if (is.null(self$`used`)) {
        invalid_fields["used"] <- "Non-nullable required field `used` cannot be null."
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
# MeteredUsage$unlock()
#
## Below is an example to define the print function
# MeteredUsage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MeteredUsage$lock()

