#' Create a new ApiResponseUserProfileData
#'
#' @description
#' ApiResponseUserProfileData Class
#'
#' @docType class
#' @title ApiResponseUserProfileData
#' @description ApiResponseUserProfileData Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field email  character
#' @field email_verified  character
#' @field first_name  character
#' @field full_name  character
#' @field id  character
#' @field last_name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseUserProfileData <- R6::R6Class(
  "ApiResponseUserProfileData",
  public = list(
    `created_at` = NULL,
    `email` = NULL,
    `email_verified` = NULL,
    `first_name` = NULL,
    `full_name` = NULL,
    `id` = NULL,
    `last_name` = NULL,

    #' @description
    #' Initialize a new ApiResponseUserProfileData class.
    #'
    #' @param created_at created_at
    #' @param email email
    #' @param email_verified email_verified
    #' @param first_name first_name
    #' @param full_name full_name
    #' @param id id
    #' @param last_name last_name
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `email`, `email_verified`, `first_name`, `full_name`, `id`, `last_name`, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`email_verified`)) {
        if (!(is.logical(`email_verified`) && length(`email_verified`) == 1)) {
          stop(paste("Error! Invalid data for `email_verified`. Must be a boolean:", `email_verified`))
        }
        self$`email_verified` <- `email_verified`
      }
      if (!missing(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!missing(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
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
    #' @return ApiResponseUserProfileData as a base R list.
    #' @examples
    #' # convert array of ApiResponseUserProfileData (x) to a data frame
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
    #' Convert ApiResponseUserProfileData to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApiResponseUserProfileDataObject <- list()
      if (!is.null(self$`created_at`)) {
        ApiResponseUserProfileDataObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`email`)) {
        ApiResponseUserProfileDataObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`email_verified`)) {
        ApiResponseUserProfileDataObject[["email_verified"]] <-
          self$`email_verified`
      }
      if (!is.null(self$`first_name`)) {
        ApiResponseUserProfileDataObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`full_name`)) {
        ApiResponseUserProfileDataObject[["full_name"]] <-
          self$`full_name`
      }
      if (!is.null(self$`id`)) {
        ApiResponseUserProfileDataObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`last_name`)) {
        ApiResponseUserProfileDataObject[["last_name"]] <-
          self$`last_name`
      }
      return(ApiResponseUserProfileDataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseUserProfileData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseUserProfileData
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`email_verified`)) {
        self$`email_verified` <- this_object$`email_verified`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApiResponseUserProfileData in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApiResponseUserProfileData
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApiResponseUserProfileData
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`email` <- this_object$`email`
      self$`email_verified` <- this_object$`email_verified`
      self$`first_name` <- this_object$`first_name`
      self$`full_name` <- this_object$`full_name`
      self$`id` <- this_object$`id`
      self$`last_name` <- this_object$`last_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApiResponseUserProfileData and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `created_at` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `email` is missing."))
      }
      # check the required field `email_verified`
      if (!is.null(input_json$`email_verified`)) {
        if (!(is.logical(input_json$`email_verified`) && length(input_json$`email_verified`) == 1)) {
          stop(paste("Error! Invalid data for `email_verified`. Must be a boolean:", input_json$`email_verified`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `email_verified` is missing."))
      }
      # check the required field `first_name`
      if (!is.null(input_json$`first_name`)) {
        if (!(is.character(input_json$`first_name`) && length(input_json$`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", input_json$`first_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `first_name` is missing."))
      }
      # check the required field `full_name`
      if (!is.null(input_json$`full_name`)) {
        if (!(is.character(input_json$`full_name`) && length(input_json$`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", input_json$`full_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `full_name` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `id` is missing."))
      }
      # check the required field `last_name`
      if (!is.null(input_json$`last_name`)) {
        if (!(is.character(input_json$`last_name`) && length(input_json$`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", input_json$`last_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ApiResponseUserProfileData: the required field `last_name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApiResponseUserProfileData
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

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `email_verified` is null
      if (is.null(self$`email_verified`)) {
        return(FALSE)
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        return(FALSE)
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
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

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `email_verified` is null
      if (is.null(self$`email_verified`)) {
        invalid_fields["email_verified"] <- "Non-nullable required field `email_verified` cannot be null."
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        invalid_fields["first_name"] <- "Non-nullable required field `first_name` cannot be null."
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        invalid_fields["full_name"] <- "Non-nullable required field `full_name` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        invalid_fields["last_name"] <- "Non-nullable required field `last_name` cannot be null."
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
# ApiResponseUserProfileData$unlock()
#
## Below is an example to define the print function
# ApiResponseUserProfileData$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApiResponseUserProfileData$lock()

