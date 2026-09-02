#' Create a new StilleExportResponse
#'
#' @description
#' StilleExportResponse Class
#'
#' @docType class
#' @title StilleExportResponse
#' @description StilleExportResponse Class
#' @format An \code{R6Class} generator object
#' @field csv_content  character
#' @field filename  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StilleExportResponse <- R6::R6Class(
  "StilleExportResponse",
  public = list(
    `csv_content` = NULL,
    `filename` = NULL,

    #' @description
    #' Initialize a new StilleExportResponse class.
    #'
    #' @param csv_content csv_content
    #' @param filename filename
    #' @param ... Other optional arguments.
    initialize = function(`csv_content`, `filename`, ...) {
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
    #' @return StilleExportResponse as a base R list.
    #' @examples
    #' # convert array of StilleExportResponse (x) to a data frame
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
    #' Convert StilleExportResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StilleExportResponseObject <- list()
      if (!is.null(self$`csv_content`)) {
        StilleExportResponseObject[["csv_content"]] <-
          self$`csv_content`
      }
      if (!is.null(self$`filename`)) {
        StilleExportResponseObject[["filename"]] <-
          self$`filename`
      }
      return(StilleExportResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of StilleExportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StilleExportResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
    #' @return StilleExportResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StilleExportResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of StilleExportResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`csv_content` <- this_object$`csv_content`
      self$`filename` <- this_object$`filename`
      self
    },

    #' @description
    #' Validate JSON input with respect to StilleExportResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `csv_content`
      if (!is.null(input_json$`csv_content`)) {
        if (!(is.character(input_json$`csv_content`) && length(input_json$`csv_content`) == 1)) {
          stop(paste("Error! Invalid data for `csv_content`. Must be a string:", input_json$`csv_content`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StilleExportResponse: the required field `csv_content` is missing."))
      }
      # check the required field `filename`
      if (!is.null(input_json$`filename`)) {
        if (!(is.character(input_json$`filename`) && length(input_json$`filename`) == 1)) {
          stop(paste("Error! Invalid data for `filename`. Must be a string:", input_json$`filename`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StilleExportResponse: the required field `filename` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StilleExportResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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
# StilleExportResponse$unlock()
#
## Below is an example to define the print function
# StilleExportResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StilleExportResponse$lock()

