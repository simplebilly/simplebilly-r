#' Create a new GoBDExportResponse
#'
#' @description
#' GoBDExportResponse Class
#'
#' @docType class
#' @title GoBDExportResponse
#' @description GoBDExportResponse Class
#' @format An \code{R6Class} generator object
#' @field booking_count  integer
#' @field csv_content  character
#' @field filename  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GoBDExportResponse <- R6::R6Class(
  "GoBDExportResponse",
  public = list(
    `booking_count` = NULL,
    `csv_content` = NULL,
    `filename` = NULL,

    #' @description
    #' Initialize a new GoBDExportResponse class.
    #'
    #' @param booking_count booking_count
    #' @param csv_content csv_content
    #' @param filename filename
    #' @param ... Other optional arguments.
    initialize = function(`booking_count`, `csv_content`, `filename`, ...) {
      if (!missing(`booking_count`)) {
        if (!(is.numeric(`booking_count`) && length(`booking_count`) == 1)) {
          stop(paste("Error! Invalid data for `booking_count`. Must be an integer:", `booking_count`))
        }
        self$`booking_count` <- `booking_count`
      }
      if (!missing(`csv_content`)) {
        if (!(is.character(`csv_content`) && length(`csv_content`) == 1)) {
          stop(paste("Error! Invalid data for `csv_content`. Must be a string:", `csv_content`))
        }
        self$`csv_content` <- `csv_content`
      }
      if (!missing(`filename`)) {
        if (!(is.character(`filename`) && length(`filename`) == 1)) {
          stop(paste("Error! Invalid data for `filename`. Must be a string:", `filename`))
        }
        self$`filename` <- `filename`
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
    #' @return GoBDExportResponse as a base R list.
    #' @examples
    #' # convert array of GoBDExportResponse (x) to a data frame
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
    #' Convert GoBDExportResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GoBDExportResponseObject <- list()
      if (!is.null(self$`booking_count`)) {
        GoBDExportResponseObject[["booking_count"]] <-
          self$`booking_count`
      }
      if (!is.null(self$`csv_content`)) {
        GoBDExportResponseObject[["csv_content"]] <-
          self$`csv_content`
      }
      if (!is.null(self$`filename`)) {
        GoBDExportResponseObject[["filename"]] <-
          self$`filename`
      }
      return(GoBDExportResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GoBDExportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GoBDExportResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`booking_count`)) {
        self$`booking_count` <- this_object$`booking_count`
      }
      if (!is.null(this_object$`csv_content`)) {
        self$`csv_content` <- this_object$`csv_content`
      }
      if (!is.null(this_object$`filename`)) {
        self$`filename` <- this_object$`filename`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GoBDExportResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GoBDExportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of GoBDExportResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`booking_count` <- this_object$`booking_count`
      self$`csv_content` <- this_object$`csv_content`
      self$`filename` <- this_object$`filename`
      self
    },

    #' @description
    #' Validate JSON input with respect to GoBDExportResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `booking_count`
      if (!is.null(input_json$`booking_count`)) {
        if (!(is.numeric(input_json$`booking_count`) && length(input_json$`booking_count`) == 1)) {
          stop(paste("Error! Invalid data for `booking_count`. Must be an integer:", input_json$`booking_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoBDExportResponse: the required field `booking_count` is missing."))
      }
      # check the required field `csv_content`
      if (!is.null(input_json$`csv_content`)) {
        if (!(is.character(input_json$`csv_content`) && length(input_json$`csv_content`) == 1)) {
          stop(paste("Error! Invalid data for `csv_content`. Must be a string:", input_json$`csv_content`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoBDExportResponse: the required field `csv_content` is missing."))
      }
      # check the required field `filename`
      if (!is.null(input_json$`filename`)) {
        if (!(is.character(input_json$`filename`) && length(input_json$`filename`) == 1)) {
          stop(paste("Error! Invalid data for `filename`. Must be a string:", input_json$`filename`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GoBDExportResponse: the required field `filename` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GoBDExportResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `booking_count` is null
      if (is.null(self$`booking_count`)) {
        return(FALSE)
      }

      if (self$`booking_count` < 0) {
        return(FALSE)
      }

      # check if the required `csv_content` is null
      if (is.null(self$`csv_content`)) {
        return(FALSE)
      }

      # check if the required `filename` is null
      if (is.null(self$`filename`)) {
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
      # check if the required `booking_count` is null
      if (is.null(self$`booking_count`)) {
        invalid_fields["booking_count"] <- "Non-nullable required field `booking_count` cannot be null."
      }

      if (self$`booking_count` < 0) {
        invalid_fields["booking_count"] <- "Invalid value for `booking_count`, must be bigger than or equal to 0."
      }

      # check if the required `csv_content` is null
      if (is.null(self$`csv_content`)) {
        invalid_fields["csv_content"] <- "Non-nullable required field `csv_content` cannot be null."
      }

      # check if the required `filename` is null
      if (is.null(self$`filename`)) {
        invalid_fields["filename"] <- "Non-nullable required field `filename` cannot be null."
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
# GoBDExportResponse$unlock()
#
## Below is an example to define the print function
# GoBDExportResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GoBDExportResponse$lock()

