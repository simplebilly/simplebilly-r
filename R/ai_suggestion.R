#' Create a new AiSuggestion
#'
#' @description
#' AiSuggestion Class
#'
#' @docType class
#' @title AiSuggestion
#' @description AiSuggestion Class
#' @format An \code{R6Class} generator object
#' @field confidence  numeric
#' @field reasoning  character
#' @field suggested_priority  character [optional]
#' @field suggested_reply  character
#' @field suggested_status  character [optional]
#' @field tool_calls  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiSuggestion <- R6::R6Class(
  "AiSuggestion",
  public = list(
    `confidence` = NULL,
    `reasoning` = NULL,
    `suggested_priority` = NULL,
    `suggested_reply` = NULL,
    `suggested_status` = NULL,
    `tool_calls` = NULL,

    #' @description
    #' Initialize a new AiSuggestion class.
    #'
    #' @param confidence confidence
    #' @param reasoning reasoning
    #' @param suggested_reply suggested_reply
    #' @param tool_calls tool_calls
    #' @param suggested_priority suggested_priority
    #' @param suggested_status suggested_status
    #' @param ... Other optional arguments.
    initialize = function(`confidence`, `reasoning`, `suggested_reply`, `tool_calls`, `suggested_priority` = NULL, `suggested_status` = NULL, ...) {
      if (!missing(`confidence`)) {
        if (!(is.numeric(`confidence`) && length(`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", `confidence`))
        }
        self$`confidence` <- `confidence`
      }
      if (!missing(`reasoning`)) {
        if (!(is.character(`reasoning`) && length(`reasoning`) == 1)) {
          stop(paste("Error! Invalid data for `reasoning`. Must be a string:", `reasoning`))
        }
        self$`reasoning` <- `reasoning`
      }
      if (!missing(`suggested_reply`)) {
        if (!(is.character(`suggested_reply`) && length(`suggested_reply`) == 1)) {
          stop(paste("Error! Invalid data for `suggested_reply`. Must be a string:", `suggested_reply`))
        }
        self$`suggested_reply` <- `suggested_reply`
      }
      if (!missing(`tool_calls`)) {
        stopifnot(is.vector(`tool_calls`), length(`tool_calls`) != 0)
        sapply(`tool_calls`, function(x) stopifnot(is.character(x)))
        self$`tool_calls` <- `tool_calls`
      }
      if (!is.null(`suggested_priority`)) {
        if (!(is.character(`suggested_priority`) && length(`suggested_priority`) == 1)) {
          stop(paste("Error! Invalid data for `suggested_priority`. Must be a string:", `suggested_priority`))
        }
        self$`suggested_priority` <- `suggested_priority`
      }
      if (!is.null(`suggested_status`)) {
        if (!(is.character(`suggested_status`) && length(`suggested_status`) == 1)) {
          stop(paste("Error! Invalid data for `suggested_status`. Must be a string:", `suggested_status`))
        }
        self$`suggested_status` <- `suggested_status`
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
    #' @return AiSuggestion as a base R list.
    #' @examples
    #' # convert array of AiSuggestion (x) to a data frame
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
    #' Convert AiSuggestion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiSuggestionObject <- list()
      if (!is.null(self$`confidence`)) {
        AiSuggestionObject[["confidence"]] <-
          self$`confidence`
      }
      if (!is.null(self$`reasoning`)) {
        AiSuggestionObject[["reasoning"]] <-
          self$`reasoning`
      }
      if (!is.null(self$`suggested_priority`)) {
        AiSuggestionObject[["suggested_priority"]] <-
          self$`suggested_priority`
      }
      if (!is.null(self$`suggested_reply`)) {
        AiSuggestionObject[["suggested_reply"]] <-
          self$`suggested_reply`
      }
      if (!is.null(self$`suggested_status`)) {
        AiSuggestionObject[["suggested_status"]] <-
          self$`suggested_status`
      }
      if (!is.null(self$`tool_calls`)) {
        AiSuggestionObject[["tool_calls"]] <-
          self$`tool_calls`
      }
      return(AiSuggestionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiSuggestion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`confidence`)) {
        self$`confidence` <- this_object$`confidence`
      }
      if (!is.null(this_object$`reasoning`)) {
        self$`reasoning` <- this_object$`reasoning`
      }
      if (!is.null(this_object$`suggested_priority`)) {
        self$`suggested_priority` <- this_object$`suggested_priority`
      }
      if (!is.null(this_object$`suggested_reply`)) {
        self$`suggested_reply` <- this_object$`suggested_reply`
      }
      if (!is.null(this_object$`suggested_status`)) {
        self$`suggested_status` <- this_object$`suggested_status`
      }
      if (!is.null(this_object$`tool_calls`)) {
        self$`tool_calls` <- ApiClient$new()$deserializeObj(this_object$`tool_calls`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiSuggestion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiSuggestion
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiSuggestion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`confidence` <- this_object$`confidence`
      self$`reasoning` <- this_object$`reasoning`
      self$`suggested_priority` <- this_object$`suggested_priority`
      self$`suggested_reply` <- this_object$`suggested_reply`
      self$`suggested_status` <- this_object$`suggested_status`
      self$`tool_calls` <- ApiClient$new()$deserializeObj(this_object$`tool_calls`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiSuggestion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `confidence`
      if (!is.null(input_json$`confidence`)) {
        if (!(is.numeric(input_json$`confidence`) && length(input_json$`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", input_json$`confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiSuggestion: the required field `confidence` is missing."))
      }
      # check the required field `reasoning`
      if (!is.null(input_json$`reasoning`)) {
        if (!(is.character(input_json$`reasoning`) && length(input_json$`reasoning`) == 1)) {
          stop(paste("Error! Invalid data for `reasoning`. Must be a string:", input_json$`reasoning`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiSuggestion: the required field `reasoning` is missing."))
      }
      # check the required field `suggested_reply`
      if (!is.null(input_json$`suggested_reply`)) {
        if (!(is.character(input_json$`suggested_reply`) && length(input_json$`suggested_reply`) == 1)) {
          stop(paste("Error! Invalid data for `suggested_reply`. Must be a string:", input_json$`suggested_reply`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiSuggestion: the required field `suggested_reply` is missing."))
      }
      # check the required field `tool_calls`
      if (!is.null(input_json$`tool_calls`)) {
        stopifnot(is.vector(input_json$`tool_calls`), length(input_json$`tool_calls`) != 0)
        tmp <- sapply(input_json$`tool_calls`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiSuggestion: the required field `tool_calls` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiSuggestion
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        return(FALSE)
      }

      # check if the required `reasoning` is null
      if (is.null(self$`reasoning`)) {
        return(FALSE)
      }

      # check if the required `suggested_reply` is null
      if (is.null(self$`suggested_reply`)) {
        return(FALSE)
      }

      # check if the required `tool_calls` is null
      if (is.null(self$`tool_calls`)) {
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
      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        invalid_fields["confidence"] <- "Non-nullable required field `confidence` cannot be null."
      }

      # check if the required `reasoning` is null
      if (is.null(self$`reasoning`)) {
        invalid_fields["reasoning"] <- "Non-nullable required field `reasoning` cannot be null."
      }

      # check if the required `suggested_reply` is null
      if (is.null(self$`suggested_reply`)) {
        invalid_fields["suggested_reply"] <- "Non-nullable required field `suggested_reply` cannot be null."
      }

      # check if the required `tool_calls` is null
      if (is.null(self$`tool_calls`)) {
        invalid_fields["tool_calls"] <- "Non-nullable required field `tool_calls` cannot be null."
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
# AiSuggestion$unlock()
#
## Below is an example to define the print function
# AiSuggestion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiSuggestion$lock()

