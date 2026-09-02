#' Create a new PackingCompleteResponse
#'
#' @description
#' PackingCompleteResponse Class
#'
#' @docType class
#' @title PackingCompleteResponse
#' @description PackingCompleteResponse Class
#' @format An \code{R6Class} generator object
#' @field message  character
#' @field new_state  character
#' @field order_number  character
#' @field success  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackingCompleteResponse <- R6::R6Class(
  "PackingCompleteResponse",
  public = list(
    `message` = NULL,
    `new_state` = NULL,
    `order_number` = NULL,
    `success` = NULL,

    #' @description
    #' Initialize a new PackingCompleteResponse class.
    #'
    #' @param message message
    #' @param new_state new_state
    #' @param order_number order_number
    #' @param success success
    #' @param ... Other optional arguments.
    initialize = function(`message`, `new_state`, `order_number`, `success`, ...) {
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!missing(`new_state`)) {
        if (!(is.character(`new_state`) && length(`new_state`) == 1)) {
          stop(paste("Error! Invalid data for `new_state`. Must be a string:", `new_state`))
        }
        self$`new_state` <- `new_state`
      }
      if (!missing(`order_number`)) {
        if (!(is.character(`order_number`) && length(`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", `order_number`))
        }
        self$`order_number` <- `order_number`
      }
      if (!missing(`success`)) {
        if (!(is.logical(`success`) && length(`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", `success`))
        }
        self$`success` <- `success`
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
    #' @return PackingCompleteResponse as a base R list.
    #' @examples
    #' # convert array of PackingCompleteResponse (x) to a data frame
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
    #' Convert PackingCompleteResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackingCompleteResponseObject <- list()
      if (!is.null(self$`message`)) {
        PackingCompleteResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`new_state`)) {
        PackingCompleteResponseObject[["new_state"]] <-
          self$`new_state`
      }
      if (!is.null(self$`order_number`)) {
        PackingCompleteResponseObject[["order_number"]] <-
          self$`order_number`
      }
      if (!is.null(self$`success`)) {
        PackingCompleteResponseObject[["success"]] <-
          self$`success`
      }
      return(PackingCompleteResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingCompleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingCompleteResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`new_state`)) {
        self$`new_state` <- this_object$`new_state`
      }
      if (!is.null(this_object$`order_number`)) {
        self$`order_number` <- this_object$`order_number`
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
    #' @return PackingCompleteResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingCompleteResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingCompleteResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`message` <- this_object$`message`
      self$`new_state` <- this_object$`new_state`
      self$`order_number` <- this_object$`order_number`
      self$`success` <- this_object$`success`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackingCompleteResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PackingCompleteResponse: the required field `message` is missing."))
      }
      # check the required field `new_state`
      if (!is.null(input_json$`new_state`)) {
        if (!(is.character(input_json$`new_state`) && length(input_json$`new_state`) == 1)) {
          stop(paste("Error! Invalid data for `new_state`. Must be a string:", input_json$`new_state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingCompleteResponse: the required field `new_state` is missing."))
      }
      # check the required field `order_number`
      if (!is.null(input_json$`order_number`)) {
        if (!(is.character(input_json$`order_number`) && length(input_json$`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", input_json$`order_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingCompleteResponse: the required field `order_number` is missing."))
      }
      # check the required field `success`
      if (!is.null(input_json$`success`)) {
        if (!(is.logical(input_json$`success`) && length(input_json$`success`) == 1)) {
          stop(paste("Error! Invalid data for `success`. Must be a boolean:", input_json$`success`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PackingCompleteResponse: the required field `success` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackingCompleteResponse
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

      # check if the required `new_state` is null
      if (is.null(self$`new_state`)) {
        return(FALSE)
      }

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
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

      # check if the required `new_state` is null
      if (is.null(self$`new_state`)) {
        invalid_fields["new_state"] <- "Non-nullable required field `new_state` cannot be null."
      }

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        invalid_fields["order_number"] <- "Non-nullable required field `order_number` cannot be null."
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
# PackingCompleteResponse$unlock()
#
## Below is an example to define the print function
# PackingCompleteResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackingCompleteResponse$lock()

