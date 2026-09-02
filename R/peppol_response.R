#' Create a new PeppolResponse
#'
#' @description
#' PeppolResponse Class
#'
#' @docType class
#' @title PeppolResponse
#' @description PeppolResponse Class
#' @format An \code{R6Class} generator object
#' @field content  character
#' @field content_type  character
#' @field filename  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PeppolResponse <- R6::R6Class(
  "PeppolResponse",
  public = list(
    `content` = NULL,
    `content_type` = NULL,
    `filename` = NULL,

    #' @description
    #' Initialize a new PeppolResponse class.
    #'
    #' @param content content
    #' @param content_type content_type
    #' @param filename filename
    #' @param ... Other optional arguments.
    initialize = function(`content`, `content_type`, `filename`, ...) {
      if (!missing(`content`)) {
        if (!(is.character(`content`) && length(`content`) == 1)) {
          stop(paste("Error! Invalid data for `content`. Must be a string:", `content`))
        }
        self$`content` <- `content`
      }
      if (!missing(`content_type`)) {
        if (!(is.character(`content_type`) && length(`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", `content_type`))
        }
        self$`content_type` <- `content_type`
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
    #' @return PeppolResponse as a base R list.
    #' @examples
    #' # convert array of PeppolResponse (x) to a data frame
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
    #' Convert PeppolResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PeppolResponseObject <- list()
      if (!is.null(self$`content`)) {
        PeppolResponseObject[["content"]] <-
          self$`content`
      }
      if (!is.null(self$`content_type`)) {
        PeppolResponseObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`filename`)) {
        PeppolResponseObject[["filename"]] <-
          self$`filename`
      }
      return(PeppolResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PeppolResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeppolResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        self$`content` <- this_object$`content`
      }
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
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
    #' @return PeppolResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PeppolResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PeppolResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- this_object$`content`
      self$`content_type` <- this_object$`content_type`
      self$`filename` <- this_object$`filename`
      self
    },

    #' @description
    #' Validate JSON input with respect to PeppolResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        if (!(is.character(input_json$`content`) && length(input_json$`content`) == 1)) {
          stop(paste("Error! Invalid data for `content`. Must be a string:", input_json$`content`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeppolResponse: the required field `content` is missing."))
      }
      # check the required field `content_type`
      if (!is.null(input_json$`content_type`)) {
        if (!(is.character(input_json$`content_type`) && length(input_json$`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", input_json$`content_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeppolResponse: the required field `content_type` is missing."))
      }
      # check the required field `filename`
      if (!is.null(input_json$`filename`)) {
        if (!(is.character(input_json$`filename`) && length(input_json$`filename`) == 1)) {
          stop(paste("Error! Invalid data for `filename`. Must be a string:", input_json$`filename`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PeppolResponse: the required field `filename` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PeppolResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        return(FALSE)
      }

      # check if the required `content_type` is null
      if (is.null(self$`content_type`)) {
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
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        invalid_fields["content"] <- "Non-nullable required field `content` cannot be null."
      }

      # check if the required `content_type` is null
      if (is.null(self$`content_type`)) {
        invalid_fields["content_type"] <- "Non-nullable required field `content_type` cannot be null."
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
# PeppolResponse$unlock()
#
## Below is an example to define the print function
# PeppolResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PeppolResponse$lock()

