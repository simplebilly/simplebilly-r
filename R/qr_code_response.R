#' Create a new QRCodeResponse
#'
#' @description
#' QRCodeResponse Class
#'
#' @docType class
#' @title QRCodeResponse
#' @description QRCodeResponse Class
#' @format An \code{R6Class} generator object
#' @field content_type  character
#' @field qr_code_base64  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QRCodeResponse <- R6::R6Class(
  "QRCodeResponse",
  public = list(
    `content_type` = NULL,
    `qr_code_base64` = NULL,

    #' @description
    #' Initialize a new QRCodeResponse class.
    #'
    #' @param content_type content_type
    #' @param qr_code_base64 qr_code_base64
    #' @param ... Other optional arguments.
    initialize = function(`content_type`, `qr_code_base64`, ...) {
      if (!missing(`content_type`)) {
        if (!(is.character(`content_type`) && length(`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", `content_type`))
        }
        self$`content_type` <- `content_type`
      }
      if (!missing(`qr_code_base64`)) {
        if (!(is.character(`qr_code_base64`) && length(`qr_code_base64`) == 1)) {
          stop(paste("Error! Invalid data for `qr_code_base64`. Must be a string:", `qr_code_base64`))
        }
        self$`qr_code_base64` <- `qr_code_base64`
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
    #' @return QRCodeResponse as a base R list.
    #' @examples
    #' # convert array of QRCodeResponse (x) to a data frame
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
    #' Convert QRCodeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QRCodeResponseObject <- list()
      if (!is.null(self$`content_type`)) {
        QRCodeResponseObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`qr_code_base64`)) {
        QRCodeResponseObject[["qr_code_base64"]] <-
          self$`qr_code_base64`
      }
      return(QRCodeResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QRCodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QRCodeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
      }
      if (!is.null(this_object$`qr_code_base64`)) {
        self$`qr_code_base64` <- this_object$`qr_code_base64`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QRCodeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QRCodeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of QRCodeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content_type` <- this_object$`content_type`
      self$`qr_code_base64` <- this_object$`qr_code_base64`
      self
    },

    #' @description
    #' Validate JSON input with respect to QRCodeResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for QRCodeResponse: the required field `content_type` is missing."))
      }
      # check the required field `qr_code_base64`
      if (!is.null(input_json$`qr_code_base64`)) {
        if (!(is.character(input_json$`qr_code_base64`) && length(input_json$`qr_code_base64`) == 1)) {
          stop(paste("Error! Invalid data for `qr_code_base64`. Must be a string:", input_json$`qr_code_base64`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for QRCodeResponse: the required field `qr_code_base64` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QRCodeResponse
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

      # check if the required `qr_code_base64` is null
      if (is.null(self$`qr_code_base64`)) {
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

      # check if the required `qr_code_base64` is null
      if (is.null(self$`qr_code_base64`)) {
        invalid_fields["qr_code_base64"] <- "Non-nullable required field `qr_code_base64` cannot be null."
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
# QRCodeResponse$unlock()
#
## Below is an example to define the print function
# QRCodeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QRCodeResponse$lock()

