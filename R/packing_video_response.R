#' Create a new PackingVideoResponse
#'
#' @description
#' PackingVideoResponse Class
#'
#' @docType class
#' @title PackingVideoResponse
#' @description PackingVideoResponse Class
#' @format An \code{R6Class} generator object
#' @field message  character
#' @field recording_url  character [optional]
#' @field success  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackingVideoResponse <- R6::R6Class(
  "PackingVideoResponse",
  public = list(
    `message` = NULL,
    `recording_url` = NULL,
    `success` = NULL,

    #' @description
    #' Initialize a new PackingVideoResponse class.
    #'
    #' @param message message
    #' @param success success
    #' @param recording_url recording_url
    #' @param ... Other optional arguments.
    initialize = function(`message`, `success`, `recording_url` = NULL, ...) {
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
      if (!is.null(`recording_url`)) {
        if (!(is.character(`recording_url`) && length(`recording_url`) == 1)) {
          stop(paste("Error! Invalid data for `recording_url`. Must be a string:", `recording_url`))
        }
        self$`recording_url` <- `recording_url`
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
    #' @return PackingVideoResponse as a base R list.
    #' @examples
    #' # convert array of PackingVideoResponse (x) to a data frame
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
    #' Convert PackingVideoResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackingVideoResponseObject <- list()
      if (!is.null(self$`message`)) {
        PackingVideoResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`recording_url`)) {
        PackingVideoResponseObject[["recording_url"]] <-
          self$`recording_url`
      }
      if (!is.null(self$`success`)) {
        PackingVideoResponseObject[["success"]] <-
          self$`success`
      }
      return(PackingVideoResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingVideoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingVideoResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`recording_url`)) {
        self$`recording_url` <- this_object$`recording_url`
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
    #' @return PackingVideoResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingVideoResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingVideoResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`recording_url` <- this_object$`recording_url`
      self$`success` <- this_object$`success`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackingVideoResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PackingVideoResponse: the required field `message` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingVideoResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackingVideoResponse
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
# PackingVideoResponse$unlock()
#
## Below is an example to define the print function
# PackingVideoResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackingVideoResponse$lock()

