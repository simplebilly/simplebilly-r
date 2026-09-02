#' Create a new PrintDeliveryNoteResponse
#'
#' @description
#' PrintDeliveryNoteResponse Class
#'
#' @docType class
#' @title PrintDeliveryNoteResponse
#' @description PrintDeliveryNoteResponse Class
#' @format An \code{R6Class} generator object
#' @field message  character
#' @field pdf_url  character [optional]
#' @field success  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PrintDeliveryNoteResponse <- R6::R6Class(
  "PrintDeliveryNoteResponse",
  public = list(
    `message` = NULL,
    `pdf_url` = NULL,
    `success` = NULL,

    #' @description
    #' Initialize a new PrintDeliveryNoteResponse class.
    #'
    #' @param message message
    #' @param success success
    #' @param pdf_url pdf_url
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `pdf_url` = NULL, ...) {
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
      }
      if (!is.null(`pdf_url`)) {
        if (!(is.character(`pdf_url`) && length(`pdf_url`) == 1)) {
          stop(paste("Error! Invalid data for `pdf_url`. Must be a string:", `pdf_url`))
        }
        self$`pdf_url` <- `pdf_url`
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
    #' @return PrintDeliveryNoteResponse as a base R list.
    #' @examples
    #' # convert array of PrintDeliveryNoteResponse (x) to a data frame
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
    #' Convert PrintDeliveryNoteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PrintDeliveryNoteResponseObject <- list()
      if (!is.null(self$`message`)) {
        PrintDeliveryNoteResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`pdf_url`)) {
        PrintDeliveryNoteResponseObject[["pdf_url"]] <-
          self$`pdf_url`
      }
      if (!is.null(self$`success`)) {
        PrintDeliveryNoteResponseObject[["success"]] <-
          self$`success`
      }
      return(PrintDeliveryNoteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PrintDeliveryNoteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrintDeliveryNoteResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`pdf_url`)) {
        self$`pdf_url` <- this_object$`pdf_url`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PrintDeliveryNoteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PrintDeliveryNoteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrintDeliveryNoteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`pdf_url` <- this_object$`pdf_url`
      self$`success` <- this_object$`success`
      self
    },

    #' @description
    #' Validate JSON input with respect to PrintDeliveryNoteResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PrintDeliveryNoteResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PrintDeliveryNoteResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PrintDeliveryNoteResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `success` is null
      if (is.null(self$`success`)) {
        invalid_fields["success"] <- "Non-nullable required field `success` cannot be null."
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
# PrintDeliveryNoteResponse$unlock()
#
## Below is an example to define the print function
# PrintDeliveryNoteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PrintDeliveryNoteResponse$lock()

