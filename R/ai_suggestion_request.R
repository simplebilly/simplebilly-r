#' Create a new AiSuggestionRequest
#'
#' @description
#' AiSuggestionRequest Class
#'
#' @docType class
#' @title AiSuggestionRequest
#' @description AiSuggestionRequest Class
#' @format An \code{R6Class} generator object
#' @field instructions  character [optional]
#' @field message_body  character [optional]
#' @field ticket_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiSuggestionRequest <- R6::R6Class(
  "AiSuggestionRequest",
  public = list(
    `instructions` = NULL,
    `message_body` = NULL,
    `ticket_id` = NULL,

    #' @description
    #' Initialize a new AiSuggestionRequest class.
    #'
    #' @param ticket_id ticket_id
    #' @param instructions instructions
    #' @param message_body message_body
    #' @param ... Other optional arguments.
    initialize = function(`ticket_id`, `instructions` = NULL, `message_body` = NULL, ...) {
      if (!missing(`ticket_id`)) {
        if (!(is.character(`ticket_id`) && length(`ticket_id`) == 1)) {
          stop(paste("Error! Invalid data for `ticket_id`. Must be a string:", `ticket_id`))
        }
        self$`ticket_id` <- `ticket_id`
      }
      if (!is.null(`instructions`)) {
        if (!(is.character(`instructions`) && length(`instructions`) == 1)) {
          stop(paste("Error! Invalid data for `instructions`. Must be a string:", `instructions`))
        }
        self$`instructions` <- `instructions`
      }
      if (!is.null(`message_body`)) {
        if (!(is.character(`message_body`) && length(`message_body`) == 1)) {
          stop(paste("Error! Invalid data for `message_body`. Must be a string:", `message_body`))
        }
        self$`message_body` <- `message_body`
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
    #' @return AiSuggestionRequest as a base R list.
    #' @examples
    #' # convert array of AiSuggestionRequest (x) to a data frame
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
    #' Convert AiSuggestionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiSuggestionRequestObject <- list()
      if (!is.null(self$`instructions`)) {
        AiSuggestionRequestObject[["instructions"]] <-
          self$`instructions`
      }
      if (!is.null(self$`message_body`)) {
        AiSuggestionRequestObject[["message_body"]] <-
          self$`message_body`
      }
      if (!is.null(self$`ticket_id`)) {
        AiSuggestionRequestObject[["ticket_id"]] <-
          self$`ticket_id`
      }
      return(AiSuggestionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiSuggestionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiSuggestionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`instructions`)) {
        self$`instructions` <- this_object$`instructions`
      }
      if (!is.null(this_object$`message_body`)) {
        self$`message_body` <- this_object$`message_body`
      }
      if (!is.null(this_object$`ticket_id`)) {
        self$`ticket_id` <- this_object$`ticket_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiSuggestionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiSuggestionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiSuggestionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`instructions` <- this_object$`instructions`
      self$`message_body` <- this_object$`message_body`
      self$`ticket_id` <- this_object$`ticket_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiSuggestionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ticket_id`
      if (!is.null(input_json$`ticket_id`)) {
        if (!(is.character(input_json$`ticket_id`) && length(input_json$`ticket_id`) == 1)) {
          stop(paste("Error! Invalid data for `ticket_id`. Must be a string:", input_json$`ticket_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiSuggestionRequest: the required field `ticket_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiSuggestionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ticket_id` is null
      if (is.null(self$`ticket_id`)) {
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
      # check if the required `ticket_id` is null
      if (is.null(self$`ticket_id`)) {
        invalid_fields["ticket_id"] <- "Non-nullable required field `ticket_id` cannot be null."
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
# AiSuggestionRequest$unlock()
#
## Below is an example to define the print function
# AiSuggestionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiSuggestionRequest$lock()

