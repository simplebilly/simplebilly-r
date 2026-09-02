#' Create a new AiConfigDto
#'
#' @description
#' AiConfigDto Class
#'
#' @docType class
#' @title AiConfigDto
#' @description AiConfigDto Class
#' @format An \code{R6Class} generator object
#' @field auto_reply  character [optional]
#' @field max_tool_calls  integer [optional]
#' @field model  character
#' @field name  character
#' @field provider  character
#' @field system_prompt  character [optional]
#' @field trigger_on  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiConfigDto <- R6::R6Class(
  "AiConfigDto",
  public = list(
    `auto_reply` = NULL,
    `max_tool_calls` = NULL,
    `model` = NULL,
    `name` = NULL,
    `provider` = NULL,
    `system_prompt` = NULL,
    `trigger_on` = NULL,

    #' @description
    #' Initialize a new AiConfigDto class.
    #'
    #' @param model model
    #' @param name name
    #' @param provider provider
    #' @param auto_reply auto_reply
    #' @param max_tool_calls max_tool_calls
    #' @param system_prompt system_prompt
    #' @param trigger_on trigger_on
    #' @param ... Other optional arguments.
    initialize = function(`model`, `name`, `provider`, `auto_reply` = NULL, `max_tool_calls` = NULL, `system_prompt` = NULL, `trigger_on` = NULL, ...) {
      if (!missing(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`auto_reply`)) {
        if (!(is.logical(`auto_reply`) && length(`auto_reply`) == 1)) {
          stop(paste("Error! Invalid data for `auto_reply`. Must be a boolean:", `auto_reply`))
        }
        self$`auto_reply` <- `auto_reply`
      }
      if (!is.null(`max_tool_calls`)) {
        if (!(is.numeric(`max_tool_calls`) && length(`max_tool_calls`) == 1)) {
          stop(paste("Error! Invalid data for `max_tool_calls`. Must be an integer:", `max_tool_calls`))
        }
        self$`max_tool_calls` <- `max_tool_calls`
      }
      if (!is.null(`system_prompt`)) {
        if (!(is.character(`system_prompt`) && length(`system_prompt`) == 1)) {
          stop(paste("Error! Invalid data for `system_prompt`. Must be a string:", `system_prompt`))
        }
        self$`system_prompt` <- `system_prompt`
      }
      if (!is.null(`trigger_on`)) {
        stopifnot(is.vector(`trigger_on`), length(`trigger_on`) != 0)
        sapply(`trigger_on`, function(x) stopifnot(is.character(x)))
        self$`trigger_on` <- `trigger_on`
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
    #' @return AiConfigDto as a base R list.
    #' @examples
    #' # convert array of AiConfigDto (x) to a data frame
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
    #' Convert AiConfigDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiConfigDtoObject <- list()
      if (!is.null(self$`auto_reply`)) {
        AiConfigDtoObject[["auto_reply"]] <-
          self$`auto_reply`
      }
      if (!is.null(self$`max_tool_calls`)) {
        AiConfigDtoObject[["max_tool_calls"]] <-
          self$`max_tool_calls`
      }
      if (!is.null(self$`model`)) {
        AiConfigDtoObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`name`)) {
        AiConfigDtoObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`provider`)) {
        AiConfigDtoObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`system_prompt`)) {
        AiConfigDtoObject[["system_prompt"]] <-
          self$`system_prompt`
      }
      if (!is.null(self$`trigger_on`)) {
        AiConfigDtoObject[["trigger_on"]] <-
          self$`trigger_on`
      }
      return(AiConfigDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiConfigDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiConfigDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`auto_reply`)) {
        self$`auto_reply` <- this_object$`auto_reply`
      }
      if (!is.null(this_object$`max_tool_calls`)) {
        self$`max_tool_calls` <- this_object$`max_tool_calls`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`system_prompt`)) {
        self$`system_prompt` <- this_object$`system_prompt`
      }
      if (!is.null(this_object$`trigger_on`)) {
        self$`trigger_on` <- ApiClient$new()$deserializeObj(this_object$`trigger_on`, "array[character]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiConfigDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiConfigDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiConfigDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`auto_reply` <- this_object$`auto_reply`
      self$`max_tool_calls` <- this_object$`max_tool_calls`
      self$`model` <- this_object$`model`
      self$`name` <- this_object$`name`
      self$`provider` <- this_object$`provider`
      self$`system_prompt` <- this_object$`system_prompt`
      self$`trigger_on` <- ApiClient$new()$deserializeObj(this_object$`trigger_on`, "array[character]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AiConfigDto and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiConfigDto: the required field `model` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiConfigDto: the required field `name` is missing."))
      }
      # check the required field `provider`
      if (!is.null(input_json$`provider`)) {
        if (!(is.character(input_json$`provider`) && length(input_json$`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", input_json$`provider`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiConfigDto: the required field `provider` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiConfigDto
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
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
      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
        invalid_fields["provider"] <- "Non-nullable required field `provider` cannot be null."
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
# AiConfigDto$unlock()
#
## Below is an example to define the print function
# AiConfigDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiConfigDto$lock()

