#' Create a new ProviderInfo
#'
#' @description
#' ProviderInfo Class
#'
#' @docType class
#' @title ProviderInfo
#' @description ProviderInfo Class
#' @format An \code{R6Class} generator object
#' @field display_name  character
#' @field name  character
#' @field requires_api_key  character
#' @field services  list(character)
#' @field supports_label_creation  character
#' @field supports_rate_estimation  character
#' @field supports_tracking  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProviderInfo <- R6::R6Class(
  "ProviderInfo",
  public = list(
    `display_name` = NULL,
    `name` = NULL,
    `requires_api_key` = NULL,
    `services` = NULL,
    `supports_label_creation` = NULL,
    `supports_rate_estimation` = NULL,
    `supports_tracking` = NULL,

    #' @description
    #' Initialize a new ProviderInfo class.
    #'
    #' @param display_name display_name
    #' @param name name
    #' @param requires_api_key requires_api_key
    #' @param services services
    #' @param supports_label_creation supports_label_creation
    #' @param supports_rate_estimation supports_rate_estimation
    #' @param supports_tracking supports_tracking
    #' @param ... Other optional arguments.
    initialize = function(`display_name`, `name`, `requires_api_key`, `services`, `supports_label_creation`, `supports_rate_estimation`, `supports_tracking`, ...) {
      if (!missing(`display_name`)) {
        if (!(is.character(`display_name`) && length(`display_name`) == 1)) {
          stop(paste("Error! Invalid data for `display_name`. Must be a string:", `display_name`))
        }
        self$`display_name` <- `display_name`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`requires_api_key`)) {
        if (!(is.logical(`requires_api_key`) && length(`requires_api_key`) == 1)) {
          stop(paste("Error! Invalid data for `requires_api_key`. Must be a boolean:", `requires_api_key`))
        }
        self$`requires_api_key` <- `requires_api_key`
      }
      if (!missing(`services`)) {
        stopifnot(is.vector(`services`), length(`services`) != 0)
        sapply(`services`, function(x) stopifnot(is.character(x)))
        self$`services` <- `services`
      }
      if (!missing(`supports_label_creation`)) {
        if (!(is.logical(`supports_label_creation`) && length(`supports_label_creation`) == 1)) {
          stop(paste("Error! Invalid data for `supports_label_creation`. Must be a boolean:", `supports_label_creation`))
        }
        self$`supports_label_creation` <- `supports_label_creation`
      }
      if (!missing(`supports_rate_estimation`)) {
        if (!(is.logical(`supports_rate_estimation`) && length(`supports_rate_estimation`) == 1)) {
          stop(paste("Error! Invalid data for `supports_rate_estimation`. Must be a boolean:", `supports_rate_estimation`))
        }
        self$`supports_rate_estimation` <- `supports_rate_estimation`
      }
      if (!missing(`supports_tracking`)) {
        if (!(is.logical(`supports_tracking`) && length(`supports_tracking`) == 1)) {
          stop(paste("Error! Invalid data for `supports_tracking`. Must be a boolean:", `supports_tracking`))
        }
        self$`supports_tracking` <- `supports_tracking`
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
    #' @return ProviderInfo as a base R list.
    #' @examples
    #' # convert array of ProviderInfo (x) to a data frame
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
    #' Convert ProviderInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProviderInfoObject <- list()
      if (!is.null(self$`display_name`)) {
        ProviderInfoObject[["display_name"]] <-
          self$`display_name`
      }
      if (!is.null(self$`name`)) {
        ProviderInfoObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`requires_api_key`)) {
        ProviderInfoObject[["requires_api_key"]] <-
          self$`requires_api_key`
      }
      if (!is.null(self$`services`)) {
        ProviderInfoObject[["services"]] <-
          self$`services`
      }
      if (!is.null(self$`supports_label_creation`)) {
        ProviderInfoObject[["supports_label_creation"]] <-
          self$`supports_label_creation`
      }
      if (!is.null(self$`supports_rate_estimation`)) {
        ProviderInfoObject[["supports_rate_estimation"]] <-
          self$`supports_rate_estimation`
      }
      if (!is.null(self$`supports_tracking`)) {
        ProviderInfoObject[["supports_tracking"]] <-
          self$`supports_tracking`
      }
      return(ProviderInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProviderInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProviderInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`display_name`)) {
        self$`display_name` <- this_object$`display_name`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`requires_api_key`)) {
        self$`requires_api_key` <- this_object$`requires_api_key`
      }
      if (!is.null(this_object$`services`)) {
        self$`services` <- ApiClient$new()$deserializeObj(this_object$`services`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`supports_label_creation`)) {
        self$`supports_label_creation` <- this_object$`supports_label_creation`
      }
      if (!is.null(this_object$`supports_rate_estimation`)) {
        self$`supports_rate_estimation` <- this_object$`supports_rate_estimation`
      }
      if (!is.null(this_object$`supports_tracking`)) {
        self$`supports_tracking` <- this_object$`supports_tracking`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProviderInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProviderInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProviderInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`display_name` <- this_object$`display_name`
      self$`name` <- this_object$`name`
      self$`requires_api_key` <- this_object$`requires_api_key`
      self$`services` <- ApiClient$new()$deserializeObj(this_object$`services`, "array[character]", loadNamespace("openapi"))
      self$`supports_label_creation` <- this_object$`supports_label_creation`
      self$`supports_rate_estimation` <- this_object$`supports_rate_estimation`
      self$`supports_tracking` <- this_object$`supports_tracking`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProviderInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `display_name`
      if (!is.null(input_json$`display_name`)) {
        if (!(is.character(input_json$`display_name`) && length(input_json$`display_name`) == 1)) {
          stop(paste("Error! Invalid data for `display_name`. Must be a string:", input_json$`display_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `display_name` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `name` is missing."))
      }
      # check the required field `requires_api_key`
      if (!is.null(input_json$`requires_api_key`)) {
        if (!(is.logical(input_json$`requires_api_key`) && length(input_json$`requires_api_key`) == 1)) {
          stop(paste("Error! Invalid data for `requires_api_key`. Must be a boolean:", input_json$`requires_api_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `requires_api_key` is missing."))
      }
      # check the required field `services`
      if (!is.null(input_json$`services`)) {
        stopifnot(is.vector(input_json$`services`), length(input_json$`services`) != 0)
        tmp <- sapply(input_json$`services`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `services` is missing."))
      }
      # check the required field `supports_label_creation`
      if (!is.null(input_json$`supports_label_creation`)) {
        if (!(is.logical(input_json$`supports_label_creation`) && length(input_json$`supports_label_creation`) == 1)) {
          stop(paste("Error! Invalid data for `supports_label_creation`. Must be a boolean:", input_json$`supports_label_creation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `supports_label_creation` is missing."))
      }
      # check the required field `supports_rate_estimation`
      if (!is.null(input_json$`supports_rate_estimation`)) {
        if (!(is.logical(input_json$`supports_rate_estimation`) && length(input_json$`supports_rate_estimation`) == 1)) {
          stop(paste("Error! Invalid data for `supports_rate_estimation`. Must be a boolean:", input_json$`supports_rate_estimation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `supports_rate_estimation` is missing."))
      }
      # check the required field `supports_tracking`
      if (!is.null(input_json$`supports_tracking`)) {
        if (!(is.logical(input_json$`supports_tracking`) && length(input_json$`supports_tracking`) == 1)) {
          stop(paste("Error! Invalid data for `supports_tracking`. Must be a boolean:", input_json$`supports_tracking`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ProviderInfo: the required field `supports_tracking` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProviderInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `display_name` is null
      if (is.null(self$`display_name`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `requires_api_key` is null
      if (is.null(self$`requires_api_key`)) {
        return(FALSE)
      }

      # check if the required `services` is null
      if (is.null(self$`services`)) {
        return(FALSE)
      }

      # check if the required `supports_label_creation` is null
      if (is.null(self$`supports_label_creation`)) {
        return(FALSE)
      }

      # check if the required `supports_rate_estimation` is null
      if (is.null(self$`supports_rate_estimation`)) {
        return(FALSE)
      }

      # check if the required `supports_tracking` is null
      if (is.null(self$`supports_tracking`)) {
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
      # check if the required `display_name` is null
      if (is.null(self$`display_name`)) {
        invalid_fields["display_name"] <- "Non-nullable required field `display_name` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `requires_api_key` is null
      if (is.null(self$`requires_api_key`)) {
        invalid_fields["requires_api_key"] <- "Non-nullable required field `requires_api_key` cannot be null."
      }

      # check if the required `services` is null
      if (is.null(self$`services`)) {
        invalid_fields["services"] <- "Non-nullable required field `services` cannot be null."
      }

      # check if the required `supports_label_creation` is null
      if (is.null(self$`supports_label_creation`)) {
        invalid_fields["supports_label_creation"] <- "Non-nullable required field `supports_label_creation` cannot be null."
      }

      # check if the required `supports_rate_estimation` is null
      if (is.null(self$`supports_rate_estimation`)) {
        invalid_fields["supports_rate_estimation"] <- "Non-nullable required field `supports_rate_estimation` cannot be null."
      }

      # check if the required `supports_tracking` is null
      if (is.null(self$`supports_tracking`)) {
        invalid_fields["supports_tracking"] <- "Non-nullable required field `supports_tracking` cannot be null."
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
# ProviderInfo$unlock()
#
## Below is an example to define the print function
# ProviderInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProviderInfo$lock()

