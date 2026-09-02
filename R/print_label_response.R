#' Create a new PrintLabelResponse
#'
#' @description
#' PrintLabelResponse Class
#'
#' @docType class
#' @title PrintLabelResponse
#' @description PrintLabelResponse Class
#' @format An \code{R6Class} generator object
#' @field label_url  character [optional]
#' @field message  character
#' @field sscc  character [optional]
#' @field success  character
#' @field tracking_number  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PrintLabelResponse <- R6::R6Class(
  "PrintLabelResponse",
  public = list(
    `label_url` = NULL,
    `message` = NULL,
    `sscc` = NULL,
    `success` = NULL,
    `tracking_number` = NULL,

    #' @description
    #' Initialize a new PrintLabelResponse class.
    #'
    #' @param message message
    #' @param success success
    #' @param label_url label_url
    #' @param sscc sscc
    #' @param tracking_number tracking_number
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `label_url` = NULL, `sscc` = NULL, `tracking_number` = NULL, ...) {
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
      if (!is.null(`label_url`)) {
        if (!(is.character(`label_url`) && length(`label_url`) == 1)) {
          stop(paste("Error! Invalid data for `label_url`. Must be a string:", `label_url`))
        }
        self$`label_url` <- `label_url`
      }
      if (!is.null(`sscc`)) {
        if (!(is.character(`sscc`) && length(`sscc`) == 1)) {
          stop(paste("Error! Invalid data for `sscc`. Must be a string:", `sscc`))
        }
        self$`sscc` <- `sscc`
      }
      if (!is.null(`tracking_number`)) {
        if (!(is.character(`tracking_number`) && length(`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", `tracking_number`))
        }
        self$`tracking_number` <- `tracking_number`
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
    #' @return PrintLabelResponse as a base R list.
    #' @examples
    #' # convert array of PrintLabelResponse (x) to a data frame
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
    #' Convert PrintLabelResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PrintLabelResponseObject <- list()
      if (!is.null(self$`label_url`)) {
        PrintLabelResponseObject[["label_url"]] <-
          self$`label_url`
      }
      if (!is.null(self$`message`)) {
        PrintLabelResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`sscc`)) {
        PrintLabelResponseObject[["sscc"]] <-
          self$`sscc`
      }
      if (!is.null(self$`success`)) {
        PrintLabelResponseObject[["success"]] <-
          self$`success`
      }
      if (!is.null(self$`tracking_number`)) {
        PrintLabelResponseObject[["tracking_number"]] <-
          self$`tracking_number`
      }
      return(PrintLabelResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PrintLabelResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrintLabelResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`label_url`)) {
        self$`label_url` <- this_object$`label_url`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`sscc`)) {
        self$`sscc` <- this_object$`sscc`
      }
      if (!is.null(this_object$`success`)) {
        self$`success` <- this_object$`success`
      }
      if (!is.null(this_object$`tracking_number`)) {
        self$`tracking_number` <- this_object$`tracking_number`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PrintLabelResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PrintLabelResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PrintLabelResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`label_url` <- this_object$`label_url`
      self$`message` <- this_object$`message`
      self$`sscc` <- this_object$`sscc`
      self$`success` <- this_object$`success`
      self$`tracking_number` <- this_object$`tracking_number`
      self
    },

    #' @description
    #' Validate JSON input with respect to PrintLabelResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PrintLabelResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PrintLabelResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PrintLabelResponse
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
# PrintLabelResponse$unlock()
#
## Below is an example to define the print function
# PrintLabelResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PrintLabelResponse$lock()

