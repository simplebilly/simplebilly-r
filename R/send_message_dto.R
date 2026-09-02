#' Create a new SendMessageDto
#'
#' @description
#' SendMessageDto Class
#'
#' @docType class
#' @title SendMessageDto
#' @description SendMessageDto Class
#' @format An \code{R6Class} generator object
#' @field body  character
#' @field is_internal  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendMessageDto <- R6::R6Class(
  "SendMessageDto",
  public = list(
    `body` = NULL,
    `is_internal` = NULL,

    #' @description
    #' Initialize a new SendMessageDto class.
    #'
    #' @param body body
    #' @param is_internal is_internal
    #' @param ... Other optional arguments.
    initialize = function(`body`, `is_internal` = NULL, ...) {
      if (!missing(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`is_internal`)) {
        if (!(is.logical(`is_internal`) && length(`is_internal`) == 1)) {
          stop(paste("Error! Invalid data for `is_internal`. Must be a boolean:", `is_internal`))
        }
        self$`is_internal` <- `is_internal`
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
    #' @return SendMessageDto as a base R list.
    #' @examples
    #' # convert array of SendMessageDto (x) to a data frame
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
    #' Convert SendMessageDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendMessageDtoObject <- list()
      if (!is.null(self$`body`)) {
        SendMessageDtoObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`is_internal`)) {
        SendMessageDtoObject[["is_internal"]] <-
          self$`is_internal`
      }
      return(SendMessageDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SendMessageDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendMessageDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`is_internal`)) {
        self$`is_internal` <- this_object$`is_internal`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendMessageDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendMessageDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendMessageDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`body` <- this_object$`body`
      self$`is_internal` <- this_object$`is_internal`
      self
    },

    #' @description
    #' Validate JSON input with respect to SendMessageDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SendMessageDto: the required field `body` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendMessageDto
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `body` is null
      if (is.null(self$`body`)) {
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
      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
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
# SendMessageDto$unlock()
#
## Below is an example to define the print function
# SendMessageDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendMessageDto$lock()

