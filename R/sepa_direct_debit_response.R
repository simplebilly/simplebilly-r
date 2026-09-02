#' Create a new SepaDirectDebitResponse
#'
#' @description
#' SepaDirectDebitResponse Class
#'
#' @docType class
#' @title SepaDirectDebitResponse
#' @description SepaDirectDebitResponse Class
#' @format An \code{R6Class} generator object
#' @field content_type  character
#' @field filename  character
#' @field xml_content  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SepaDirectDebitResponse <- R6::R6Class(
  "SepaDirectDebitResponse",
  public = list(
    `content_type` = NULL,
    `filename` = NULL,
    `xml_content` = NULL,

    #' @description
    #' Initialize a new SepaDirectDebitResponse class.
    #'
    #' @param content_type content_type
    #' @param filename filename
    #' @param xml_content xml_content
    #' @param ... Other optional arguments.
    initialize = function(`content_type`, `filename`, `xml_content`, ...) {
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
      if (!missing(`xml_content`)) {
        if (!(is.character(`xml_content`) && length(`xml_content`) == 1)) {
          stop(paste("Error! Invalid data for `xml_content`. Must be a string:", `xml_content`))
        }
        self$`xml_content` <- `xml_content`
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
    #' @return SepaDirectDebitResponse as a base R list.
    #' @examples
    #' # convert array of SepaDirectDebitResponse (x) to a data frame
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
    #' Convert SepaDirectDebitResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SepaDirectDebitResponseObject <- list()
      if (!is.null(self$`content_type`)) {
        SepaDirectDebitResponseObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`filename`)) {
        SepaDirectDebitResponseObject[["filename"]] <-
          self$`filename`
      }
      if (!is.null(self$`xml_content`)) {
        SepaDirectDebitResponseObject[["xml_content"]] <-
          self$`xml_content`
      }
      return(SepaDirectDebitResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SepaDirectDebitResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SepaDirectDebitResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
      }
      if (!is.null(this_object$`filename`)) {
        self$`filename` <- this_object$`filename`
      }
      if (!is.null(this_object$`xml_content`)) {
        self$`xml_content` <- this_object$`xml_content`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SepaDirectDebitResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SepaDirectDebitResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of SepaDirectDebitResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content_type` <- this_object$`content_type`
      self$`filename` <- this_object$`filename`
      self$`xml_content` <- this_object$`xml_content`
      self
    },

    #' @description
    #' Validate JSON input with respect to SepaDirectDebitResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `content_type`
      if (!is.null(input_json$`content_type`)) {
        if (!(is.character(input_json$`content_type`) && length(input_json$`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", input_json$`content_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SepaDirectDebitResponse: the required field `content_type` is missing."))
      }
      # check the required field `filename`
      if (!is.null(input_json$`filename`)) {
        if (!(is.character(input_json$`filename`) && length(input_json$`filename`) == 1)) {
          stop(paste("Error! Invalid data for `filename`. Must be a string:", input_json$`filename`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SepaDirectDebitResponse: the required field `filename` is missing."))
      }
      # check the required field `xml_content`
      if (!is.null(input_json$`xml_content`)) {
        if (!(is.character(input_json$`xml_content`) && length(input_json$`xml_content`) == 1)) {
          stop(paste("Error! Invalid data for `xml_content`. Must be a string:", input_json$`xml_content`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SepaDirectDebitResponse: the required field `xml_content` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SepaDirectDebitResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `content_type` is null
      if (is.null(self$`content_type`)) {
        return(FALSE)
      }

      # check if the required `filename` is null
      if (is.null(self$`filename`)) {
        return(FALSE)
      }

      # check if the required `xml_content` is null
      if (is.null(self$`xml_content`)) {
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
      # check if the required `content_type` is null
      if (is.null(self$`content_type`)) {
        invalid_fields["content_type"] <- "Non-nullable required field `content_type` cannot be null."
      }

      # check if the required `filename` is null
      if (is.null(self$`filename`)) {
        invalid_fields["filename"] <- "Non-nullable required field `filename` cannot be null."
      }

      # check if the required `xml_content` is null
      if (is.null(self$`xml_content`)) {
        invalid_fields["xml_content"] <- "Non-nullable required field `xml_content` cannot be null."
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
# SepaDirectDebitResponse$unlock()
#
## Below is an example to define the print function
# SepaDirectDebitResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SepaDirectDebitResponse$lock()

