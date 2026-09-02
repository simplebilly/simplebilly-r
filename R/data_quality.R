#' Create a new DataQuality
#'
#' @description
#' DataQuality Class
#'
#' @docType class
#' @title DataQuality
#' @description DataQuality Class
#' @format An \code{R6Class} generator object
#' @field activity_lines  integer
#' @field activity_share_pct  numeric
#' @field spend_lines  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataQuality <- R6::R6Class(
  "DataQuality",
  public = list(
    `activity_lines` = NULL,
    `activity_share_pct` = NULL,
    `spend_lines` = NULL,

    #' @description
    #' Initialize a new DataQuality class.
    #'
    #' @param activity_lines activity_lines
    #' @param activity_share_pct activity_share_pct
    #' @param spend_lines spend_lines
    #' @param ... Other optional arguments.
    initialize = function(`activity_lines`, `activity_share_pct`, `spend_lines`, ...) {
      if (!missing(`activity_lines`)) {
        if (!(is.numeric(`activity_lines`) && length(`activity_lines`) == 1)) {
          stop(paste("Error! Invalid data for `activity_lines`. Must be an integer:", `activity_lines`))
        }
        self$`activity_lines` <- `activity_lines`
      }
      if (!missing(`activity_share_pct`)) {
        if (!(is.numeric(`activity_share_pct`) && length(`activity_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `activity_share_pct`. Must be a number:", `activity_share_pct`))
        }
        self$`activity_share_pct` <- `activity_share_pct`
      }
      if (!missing(`spend_lines`)) {
        if (!(is.numeric(`spend_lines`) && length(`spend_lines`) == 1)) {
          stop(paste("Error! Invalid data for `spend_lines`. Must be an integer:", `spend_lines`))
        }
        self$`spend_lines` <- `spend_lines`
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
    #' @return DataQuality as a base R list.
    #' @examples
    #' # convert array of DataQuality (x) to a data frame
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
    #' Convert DataQuality to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DataQualityObject <- list()
      if (!is.null(self$`activity_lines`)) {
        DataQualityObject[["activity_lines"]] <-
          self$`activity_lines`
      }
      if (!is.null(self$`activity_share_pct`)) {
        DataQualityObject[["activity_share_pct"]] <-
          self$`activity_share_pct`
      }
      if (!is.null(self$`spend_lines`)) {
        DataQualityObject[["spend_lines"]] <-
          self$`spend_lines`
      }
      return(DataQualityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DataQuality
    #'
    #' @param input_json the JSON input
    #' @return the instance of DataQuality
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activity_lines`)) {
        self$`activity_lines` <- this_object$`activity_lines`
      }
      if (!is.null(this_object$`activity_share_pct`)) {
        self$`activity_share_pct` <- this_object$`activity_share_pct`
      }
      if (!is.null(this_object$`spend_lines`)) {
        self$`spend_lines` <- this_object$`spend_lines`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DataQuality in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DataQuality
    #'
    #' @param input_json the JSON input
    #' @return the instance of DataQuality
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activity_lines` <- this_object$`activity_lines`
      self$`activity_share_pct` <- this_object$`activity_share_pct`
      self$`spend_lines` <- this_object$`spend_lines`
      self
    },

    #' @description
    #' Validate JSON input with respect to DataQuality and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `activity_lines`
      if (!is.null(input_json$`activity_lines`)) {
        if (!(is.numeric(input_json$`activity_lines`) && length(input_json$`activity_lines`) == 1)) {
          stop(paste("Error! Invalid data for `activity_lines`. Must be an integer:", input_json$`activity_lines`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DataQuality: the required field `activity_lines` is missing."))
      }
      # check the required field `activity_share_pct`
      if (!is.null(input_json$`activity_share_pct`)) {
        if (!(is.numeric(input_json$`activity_share_pct`) && length(input_json$`activity_share_pct`) == 1)) {
          stop(paste("Error! Invalid data for `activity_share_pct`. Must be a number:", input_json$`activity_share_pct`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DataQuality: the required field `activity_share_pct` is missing."))
      }
      # check the required field `spend_lines`
      if (!is.null(input_json$`spend_lines`)) {
        if (!(is.numeric(input_json$`spend_lines`) && length(input_json$`spend_lines`) == 1)) {
          stop(paste("Error! Invalid data for `spend_lines`. Must be an integer:", input_json$`spend_lines`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DataQuality: the required field `spend_lines` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DataQuality
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `activity_lines` is null
      if (is.null(self$`activity_lines`)) {
        return(FALSE)
      }

      if (self$`activity_lines` < 0) {
        return(FALSE)
      }

      # check if the required `activity_share_pct` is null
      if (is.null(self$`activity_share_pct`)) {
        return(FALSE)
      }

      # check if the required `spend_lines` is null
      if (is.null(self$`spend_lines`)) {
        return(FALSE)
      }

      if (self$`spend_lines` < 0) {
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
      # check if the required `activity_lines` is null
      if (is.null(self$`activity_lines`)) {
        invalid_fields["activity_lines"] <- "Non-nullable required field `activity_lines` cannot be null."
      }

      if (self$`activity_lines` < 0) {
        invalid_fields["activity_lines"] <- "Invalid value for `activity_lines`, must be bigger than or equal to 0."
      }

      # check if the required `activity_share_pct` is null
      if (is.null(self$`activity_share_pct`)) {
        invalid_fields["activity_share_pct"] <- "Non-nullable required field `activity_share_pct` cannot be null."
      }

      # check if the required `spend_lines` is null
      if (is.null(self$`spend_lines`)) {
        invalid_fields["spend_lines"] <- "Non-nullable required field `spend_lines` cannot be null."
      }

      if (self$`spend_lines` < 0) {
        invalid_fields["spend_lines"] <- "Invalid value for `spend_lines`, must be bigger than or equal to 0."
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
# DataQuality$unlock()
#
## Below is an example to define the print function
# DataQuality$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DataQuality$lock()

