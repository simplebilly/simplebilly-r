#' Create a new ApiResponseTeamData
#'
#' @description
#' ApiResponseTeamData Class
#'
#' @docType class
#' @title ApiResponseTeamData
#' @description ApiResponseTeamData Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field description  character [optional]
#' @field id  character
#' @field name  character
#' @field parent_team_id  character [optional]
#' @field tenant_id  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseTeamData <- R6::R6Class(
  "ApiResponseTeamData",
  public = list(
    `created_at` = NULL,
    `description` = NULL,
    `id` = NULL,
    `name` = NULL,
    `parent_team_id` = NULL,
    `tenant_id` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new ApiResponseTeamData class.
    #'
    #' @param created_at created_at
    #' @param id id
    #' @param name name
    #' @param tenant_id tenant_id
    #' @param updated_at updated_at
    #' @param description description
    #' @param parent_team_id parent_team_id
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `id`, `name`, `tenant_id`, `updated_at`, `description` = NULL, `parent_team_id` = NULL, ...) {
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
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`parent_team_id`)) {
        if (!(is.character(`parent_team_id`) && length(`parent_team_id`) == 1)) {
          stop(paste("Error! Invalid data for `parent_team_id`. Must be a string:", `parent_team_id`))
        }
        self$`parent_team_id` <- `parent_team_id`
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
    #' @return ApiResponseTeamData as a base R list.
    #' @examples
    #' # convert array of ApiResponseTeamData (x) to a data frame
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
    #' Convert ApiResponseTeamData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiResponseTeamDataObject <- list()
      if (!is.null(self$`created_at`)) {
        ApiResponseTeamDataObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`description`)) {
        ApiResponseTeamDataObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        ApiResponseTeamDataObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        ApiResponseTeamDataObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`parent_team_id`)) {
        ApiResponseTeamDataObject[["parent_team_id"]] <-
          self$`parent_team_id`
      }
      if (!is.null(self$`tenant_id`)) {
        ApiResponseTeamDataObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`updated_at`)) {
        ApiResponseTeamDataObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(ApiResponseTeamDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseTeamData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseTeamData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`parent_team_id`)) {
        self$`parent_team_id` <- this_object$`parent_team_id`
      }
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
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
    #' @return ApiResponseTeamData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseTeamData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseTeamData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`parent_team_id` <- this_object$`parent_team_id`
      self$`tenant_id` <- this_object$`tenant_id`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiResponseTeamData and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseTeamData: the required field `created_at` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseTeamData: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseTeamData: the required field `name` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseTeamData: the required field `tenant_id` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseTeamData: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiResponseTeamData
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# ApiResponseTeamData$unlock()
#
## Below is an example to define the print function
# ApiResponseTeamData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiResponseTeamData$lock()

