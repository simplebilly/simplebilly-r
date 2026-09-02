#' Create a new AiWorkerConfig
#'
#' @description
#' AiWorkerConfig Class
#'
#' @docType class
#' @title AiWorkerConfig
#' @description AiWorkerConfig Class
#' @format An \code{R6Class} generator object
#' @field auto_reply  character
#' @field created_at  character
#' @field id  character
#' @field is_active  character
#' @field max_tool_calls  integer
#' @field model  character
#' @field name  character
#' @field provider  character
#' @field system_prompt  character
#' @field tenant_id  character
#' @field trigger_on  list(character)
#' @field updated_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AiWorkerConfig <- R6::R6Class(
  "AiWorkerConfig",
  public = list(
    `auto_reply` = NULL,
    `created_at` = NULL,
    `id` = NULL,
    `is_active` = NULL,
    `max_tool_calls` = NULL,
    `model` = NULL,
    `name` = NULL,
    `provider` = NULL,
    `system_prompt` = NULL,
    `tenant_id` = NULL,
    `trigger_on` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new AiWorkerConfig class.
    #'
    #' @param auto_reply auto_reply
    #' @param created_at created_at
    #' @param id id
    #' @param is_active is_active
    #' @param max_tool_calls max_tool_calls
    #' @param model model
    #' @param name name
    #' @param provider provider
    #' @param system_prompt system_prompt
    #' @param tenant_id tenant_id
    #' @param trigger_on trigger_on
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`auto_reply`, `created_at`, `id`, `is_active`, `max_tool_calls`, `model`, `name`, `provider`, `system_prompt`, `tenant_id`, `trigger_on`, `updated_at` = NULL, ...) {
      if (!missing(`auto_reply`)) {
        if (!(is.logical(`auto_reply`) && length(`auto_reply`) == 1)) {
          stop(paste("Error! Invalid data for `auto_reply`. Must be a boolean:", `auto_reply`))
        }
        self$`auto_reply` <- `auto_reply`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!missing(`max_tool_calls`)) {
        if (!(is.numeric(`max_tool_calls`) && length(`max_tool_calls`) == 1)) {
          stop(paste("Error! Invalid data for `max_tool_calls`. Must be an integer:", `max_tool_calls`))
        }
        self$`max_tool_calls` <- `max_tool_calls`
      }
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
      if (!missing(`system_prompt`)) {
        if (!(is.character(`system_prompt`) && length(`system_prompt`) == 1)) {
          stop(paste("Error! Invalid data for `system_prompt`. Must be a string:", `system_prompt`))
        }
        self$`system_prompt` <- `system_prompt`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!missing(`trigger_on`)) {
        stopifnot(is.vector(`trigger_on`), length(`trigger_on`) != 0)
        sapply(`trigger_on`, function(x) stopifnot(is.character(x)))
        self$`trigger_on` <- `trigger_on`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return AiWorkerConfig as a base R list.
    #' @examples
    #' # convert array of AiWorkerConfig (x) to a data frame
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
    #' Convert AiWorkerConfig to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AiWorkerConfigObject <- list()
      if (!is.null(self$`auto_reply`)) {
        AiWorkerConfigObject[["auto_reply"]] <-
          self$`auto_reply`
      }
      if (!is.null(self$`created_at`)) {
        AiWorkerConfigObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`id`)) {
        AiWorkerConfigObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`is_active`)) {
        AiWorkerConfigObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`max_tool_calls`)) {
        AiWorkerConfigObject[["max_tool_calls"]] <-
          self$`max_tool_calls`
      }
      if (!is.null(self$`model`)) {
        AiWorkerConfigObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`name`)) {
        AiWorkerConfigObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`provider`)) {
        AiWorkerConfigObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`system_prompt`)) {
        AiWorkerConfigObject[["system_prompt"]] <-
          self$`system_prompt`
      }
      if (!is.null(self$`tenant_id`)) {
        AiWorkerConfigObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`trigger_on`)) {
        AiWorkerConfigObject[["trigger_on"]] <-
          self$`trigger_on`
      }
      if (!is.null(self$`updated_at`)) {
        AiWorkerConfigObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(AiWorkerConfigObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AiWorkerConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiWorkerConfig
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`auto_reply`)) {
        self$`auto_reply` <- this_object$`auto_reply`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
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
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
      }
      if (!is.null(this_object$`trigger_on`)) {
        self$`trigger_on` <- ApiClient$new()$deserializeObj(this_object$`trigger_on`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AiWorkerConfig in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AiWorkerConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of AiWorkerConfig
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`auto_reply` <- this_object$`auto_reply`
      self$`created_at` <- this_object$`created_at`
      self$`id` <- this_object$`id`
      self$`is_active` <- this_object$`is_active`
      self$`max_tool_calls` <- this_object$`max_tool_calls`
      self$`model` <- this_object$`model`
      self$`name` <- this_object$`name`
      self$`provider` <- this_object$`provider`
      self$`system_prompt` <- this_object$`system_prompt`
      self$`tenant_id` <- this_object$`tenant_id`
      self$`trigger_on` <- ApiClient$new()$deserializeObj(this_object$`trigger_on`, "array[character]", loadNamespace("openapi"))
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to AiWorkerConfig and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `auto_reply`
      if (!is.null(input_json$`auto_reply`)) {
        if (!(is.logical(input_json$`auto_reply`) && length(input_json$`auto_reply`) == 1)) {
          stop(paste("Error! Invalid data for `auto_reply`. Must be a boolean:", input_json$`auto_reply`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `auto_reply` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `created_at` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `id` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `is_active` is missing."))
      }
      # check the required field `max_tool_calls`
      if (!is.null(input_json$`max_tool_calls`)) {
        if (!(is.numeric(input_json$`max_tool_calls`) && length(input_json$`max_tool_calls`) == 1)) {
          stop(paste("Error! Invalid data for `max_tool_calls`. Must be an integer:", input_json$`max_tool_calls`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `max_tool_calls` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `model` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `name` is missing."))
      }
      # check the required field `provider`
      if (!is.null(input_json$`provider`)) {
        if (!(is.character(input_json$`provider`) && length(input_json$`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", input_json$`provider`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `provider` is missing."))
      }
      # check the required field `system_prompt`
      if (!is.null(input_json$`system_prompt`)) {
        if (!(is.character(input_json$`system_prompt`) && length(input_json$`system_prompt`) == 1)) {
          stop(paste("Error! Invalid data for `system_prompt`. Must be a string:", input_json$`system_prompt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `system_prompt` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `tenant_id` is missing."))
      }
      # check the required field `trigger_on`
      if (!is.null(input_json$`trigger_on`)) {
        stopifnot(is.vector(input_json$`trigger_on`), length(input_json$`trigger_on`) != 0)
        tmp <- sapply(input_json$`trigger_on`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AiWorkerConfig: the required field `trigger_on` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AiWorkerConfig
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `auto_reply` is null
      if (is.null(self$`auto_reply`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `max_tool_calls` is null
      if (is.null(self$`max_tool_calls`)) {
        return(FALSE)
      }

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

      # check if the required `system_prompt` is null
      if (is.null(self$`system_prompt`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        return(FALSE)
      }

      # check if the required `trigger_on` is null
      if (is.null(self$`trigger_on`)) {
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
      # check if the required `auto_reply` is null
      if (is.null(self$`auto_reply`)) {
        invalid_fields["auto_reply"] <- "Non-nullable required field `auto_reply` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `max_tool_calls` is null
      if (is.null(self$`max_tool_calls`)) {
        invalid_fields["max_tool_calls"] <- "Non-nullable required field `max_tool_calls` cannot be null."
      }

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

      # check if the required `system_prompt` is null
      if (is.null(self$`system_prompt`)) {
        invalid_fields["system_prompt"] <- "Non-nullable required field `system_prompt` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
      }

      # check if the required `trigger_on` is null
      if (is.null(self$`trigger_on`)) {
        invalid_fields["trigger_on"] <- "Non-nullable required field `trigger_on` cannot be null."
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
# AiWorkerConfig$unlock()
#
## Below is an example to define the print function
# AiWorkerConfig$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AiWorkerConfig$lock()

