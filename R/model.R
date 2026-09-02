#' Create a new Model
#'
#' @description
#' Model Class
#'
#' @docType class
#' @title Model
#' @description Model Class
#' @format An \code{R6Class} generator object
#' @field backup_codes  list(character)
#' @field created_at  character
#' @field deleted_at  character [optional]
#' @field email  character
#' @field email_verified  character
#' @field id  character
#' @field is_active  character
#' @field is_totp_enabled  character
#' @field last_login  character [optional]
#' @field name  character
#' @field oauth_id  character [optional]
#' @field oauth_provider  character [optional]
#' @field password_changed_at Set on password change; auth/refresh tokens issued before this timestamp are rejected by the auth middleware. character [optional]
#' @field password_hash  character
#' @field picture  character [optional]
#' @field privacy_accepted_at When the user accepted the data privacy policy (GDPR consent record). character [optional]
#' @field totp_secret  character [optional]
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Model <- R6::R6Class(
  "Model",
  public = list(
    `backup_codes` = NULL,
    `created_at` = NULL,
    `deleted_at` = NULL,
    `email` = NULL,
    `email_verified` = NULL,
    `id` = NULL,
    `is_active` = NULL,
    `is_totp_enabled` = NULL,
    `last_login` = NULL,
    `name` = NULL,
    `oauth_id` = NULL,
    `oauth_provider` = NULL,
    `password_changed_at` = NULL,
    `password_hash` = NULL,
    `picture` = NULL,
    `privacy_accepted_at` = NULL,
    `totp_secret` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new Model class.
    #'
    #' @param backup_codes backup_codes
    #' @param created_at created_at
    #' @param email email
    #' @param email_verified email_verified
    #' @param id id
    #' @param is_active is_active
    #' @param is_totp_enabled is_totp_enabled
    #' @param name name
    #' @param password_hash password_hash
    #' @param updated_at updated_at
    #' @param deleted_at deleted_at
    #' @param last_login last_login
    #' @param oauth_id oauth_id
    #' @param oauth_provider oauth_provider
    #' @param password_changed_at Set on password change; auth/refresh tokens issued before this timestamp are rejected by the auth middleware.
    #' @param picture picture
    #' @param privacy_accepted_at When the user accepted the data privacy policy (GDPR consent record).
    #' @param totp_secret totp_secret
    #' @param ... Other optional arguments.
    initialize = function(`backup_codes`, `created_at`, `email`, `email_verified`, `id`, `is_active`, `is_totp_enabled`, `name`, `password_hash`, `updated_at`, `deleted_at` = NULL, `last_login` = NULL, `oauth_id` = NULL, `oauth_provider` = NULL, `password_changed_at` = NULL, `picture` = NULL, `privacy_accepted_at` = NULL, `totp_secret` = NULL, ...) {
      if (!missing(`backup_codes`)) {
        stopifnot(is.vector(`backup_codes`), length(`backup_codes`) != 0)
        sapply(`backup_codes`, function(x) stopifnot(is.character(x)))
        self$`backup_codes` <- `backup_codes`
      }
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
      if (!missing(`is_totp_enabled`)) {
        if (!(is.logical(`is_totp_enabled`) && length(`is_totp_enabled`) == 1)) {
          stop(paste("Error! Invalid data for `is_totp_enabled`. Must be a boolean:", `is_totp_enabled`))
        }
        self$`is_totp_enabled` <- `is_totp_enabled`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`password_hash`)) {
        if (!(is.character(`password_hash`) && length(`password_hash`) == 1)) {
          stop(paste("Error! Invalid data for `password_hash`. Must be a string:", `password_hash`))
        }
        self$`password_hash` <- `password_hash`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`deleted_at`)) {
        if (!is.character(`deleted_at`)) {
          stop(paste("Error! Invalid data for `deleted_at`. Must be a string:", `deleted_at`))
        }
        self$`deleted_at` <- `deleted_at`
      }
      if (!is.null(`last_login`)) {
        if (!is.character(`last_login`)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", `last_login`))
        }
        self$`last_login` <- `last_login`
      }
      if (!is.null(`oauth_id`)) {
        if (!(is.character(`oauth_id`) && length(`oauth_id`) == 1)) {
          stop(paste("Error! Invalid data for `oauth_id`. Must be a string:", `oauth_id`))
        }
        self$`oauth_id` <- `oauth_id`
      }
      if (!is.null(`oauth_provider`)) {
        if (!(is.character(`oauth_provider`) && length(`oauth_provider`) == 1)) {
          stop(paste("Error! Invalid data for `oauth_provider`. Must be a string:", `oauth_provider`))
        }
        self$`oauth_provider` <- `oauth_provider`
      }
      if (!is.null(`password_changed_at`)) {
        if (!is.character(`password_changed_at`)) {
          stop(paste("Error! Invalid data for `password_changed_at`. Must be a string:", `password_changed_at`))
        }
        self$`password_changed_at` <- `password_changed_at`
      }
      if (!is.null(`picture`)) {
        if (!(is.character(`picture`) && length(`picture`) == 1)) {
          stop(paste("Error! Invalid data for `picture`. Must be a string:", `picture`))
        }
        self$`picture` <- `picture`
      }
      if (!is.null(`privacy_accepted_at`)) {
        if (!is.character(`privacy_accepted_at`)) {
          stop(paste("Error! Invalid data for `privacy_accepted_at`. Must be a string:", `privacy_accepted_at`))
        }
        self$`privacy_accepted_at` <- `privacy_accepted_at`
      }
      if (!is.null(`totp_secret`)) {
        if (!(is.character(`totp_secret`) && length(`totp_secret`) == 1)) {
          stop(paste("Error! Invalid data for `totp_secret`. Must be a string:", `totp_secret`))
        }
        self$`totp_secret` <- `totp_secret`
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
    #' @return Model as a base R list.
    #' @examples
    #' # convert array of Model (x) to a data frame
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
    #' Convert Model to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ModelObject <- list()
      if (!is.null(self$`backup_codes`)) {
        ModelObject[["backup_codes"]] <-
          self$`backup_codes`
      }
      if (!is.null(self$`created_at`)) {
        ModelObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`deleted_at`)) {
        ModelObject[["deleted_at"]] <-
          self$`deleted_at`
      }
      if (!is.null(self$`email`)) {
        ModelObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`email_verified`)) {
        ModelObject[["email_verified"]] <-
          self$`email_verified`
      }
      if (!is.null(self$`id`)) {
        ModelObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`is_active`)) {
        ModelObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`is_totp_enabled`)) {
        ModelObject[["is_totp_enabled"]] <-
          self$`is_totp_enabled`
      }
      if (!is.null(self$`last_login`)) {
        ModelObject[["last_login"]] <-
          self$`last_login`
      }
      if (!is.null(self$`name`)) {
        ModelObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`oauth_id`)) {
        ModelObject[["oauth_id"]] <-
          self$`oauth_id`
      }
      if (!is.null(self$`oauth_provider`)) {
        ModelObject[["oauth_provider"]] <-
          self$`oauth_provider`
      }
      if (!is.null(self$`password_changed_at`)) {
        ModelObject[["password_changed_at"]] <-
          self$`password_changed_at`
      }
      if (!is.null(self$`password_hash`)) {
        ModelObject[["password_hash"]] <-
          self$`password_hash`
      }
      if (!is.null(self$`picture`)) {
        ModelObject[["picture"]] <-
          self$`picture`
      }
      if (!is.null(self$`privacy_accepted_at`)) {
        ModelObject[["privacy_accepted_at"]] <-
          self$`privacy_accepted_at`
      }
      if (!is.null(self$`totp_secret`)) {
        ModelObject[["totp_secret"]] <-
          self$`totp_secret`
      }
      if (!is.null(self$`updated_at`)) {
        ModelObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(ModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Model
    #'
    #' @param input_json the JSON input
    #' @return the instance of Model
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`backup_codes`)) {
        self$`backup_codes` <- ApiClient$new()$deserializeObj(this_object$`backup_codes`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`deleted_at`)) {
        self$`deleted_at` <- this_object$`deleted_at`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`email_verified`)) {
        self$`email_verified` <- this_object$`email_verified`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`is_totp_enabled`)) {
        self$`is_totp_enabled` <- this_object$`is_totp_enabled`
      }
      if (!is.null(this_object$`last_login`)) {
        self$`last_login` <- this_object$`last_login`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`oauth_id`)) {
        self$`oauth_id` <- this_object$`oauth_id`
      }
      if (!is.null(this_object$`oauth_provider`)) {
        self$`oauth_provider` <- this_object$`oauth_provider`
      }
      if (!is.null(this_object$`password_changed_at`)) {
        self$`password_changed_at` <- this_object$`password_changed_at`
      }
      if (!is.null(this_object$`password_hash`)) {
        self$`password_hash` <- this_object$`password_hash`
      }
      if (!is.null(this_object$`picture`)) {
        self$`picture` <- this_object$`picture`
      }
      if (!is.null(this_object$`privacy_accepted_at`)) {
        self$`privacy_accepted_at` <- this_object$`privacy_accepted_at`
      }
      if (!is.null(this_object$`totp_secret`)) {
        self$`totp_secret` <- this_object$`totp_secret`
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
    #' @return Model in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Model
    #'
    #' @param input_json the JSON input
    #' @return the instance of Model
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`backup_codes` <- ApiClient$new()$deserializeObj(this_object$`backup_codes`, "array[character]", loadNamespace("openapi"))
      self$`created_at` <- this_object$`created_at`
      self$`deleted_at` <- this_object$`deleted_at`
      self$`email` <- this_object$`email`
      self$`email_verified` <- this_object$`email_verified`
      self$`id` <- this_object$`id`
      self$`is_active` <- this_object$`is_active`
      self$`is_totp_enabled` <- this_object$`is_totp_enabled`
      self$`last_login` <- this_object$`last_login`
      self$`name` <- this_object$`name`
      self$`oauth_id` <- this_object$`oauth_id`
      self$`oauth_provider` <- this_object$`oauth_provider`
      self$`password_changed_at` <- this_object$`password_changed_at`
      self$`password_hash` <- this_object$`password_hash`
      self$`picture` <- this_object$`picture`
      self$`privacy_accepted_at` <- this_object$`privacy_accepted_at`
      self$`totp_secret` <- this_object$`totp_secret`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to Model and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `backup_codes`
      if (!is.null(input_json$`backup_codes`)) {
        stopifnot(is.vector(input_json$`backup_codes`), length(input_json$`backup_codes`) != 0)
        tmp <- sapply(input_json$`backup_codes`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `backup_codes` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `created_at` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `email` is missing."))
      }
      # check the required field `email_verified`
      if (!is.null(input_json$`email_verified`)) {
        if (!(is.logical(input_json$`email_verified`) && length(input_json$`email_verified`) == 1)) {
          stop(paste("Error! Invalid data for `email_verified`. Must be a boolean:", input_json$`email_verified`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `email_verified` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `id` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `is_active` is missing."))
      }
      # check the required field `is_totp_enabled`
      if (!is.null(input_json$`is_totp_enabled`)) {
        if (!(is.logical(input_json$`is_totp_enabled`) && length(input_json$`is_totp_enabled`) == 1)) {
          stop(paste("Error! Invalid data for `is_totp_enabled`. Must be a boolean:", input_json$`is_totp_enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `is_totp_enabled` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `name` is missing."))
      }
      # check the required field `password_hash`
      if (!is.null(input_json$`password_hash`)) {
        if (!(is.character(input_json$`password_hash`) && length(input_json$`password_hash`) == 1)) {
          stop(paste("Error! Invalid data for `password_hash`. Must be a string:", input_json$`password_hash`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `password_hash` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Model: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Model
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `backup_codes` is null
      if (is.null(self$`backup_codes`)) {
        return(FALSE)
      }

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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `is_totp_enabled` is null
      if (is.null(self$`is_totp_enabled`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `password_hash` is null
      if (is.null(self$`password_hash`)) {
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
      # check if the required `backup_codes` is null
      if (is.null(self$`backup_codes`)) {
        invalid_fields["backup_codes"] <- "Non-nullable required field `backup_codes` cannot be null."
      }

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

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `is_totp_enabled` is null
      if (is.null(self$`is_totp_enabled`)) {
        invalid_fields["is_totp_enabled"] <- "Non-nullable required field `is_totp_enabled` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `password_hash` is null
      if (is.null(self$`password_hash`)) {
        invalid_fields["password_hash"] <- "Non-nullable required field `password_hash` cannot be null."
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
# Model$unlock()
#
## Below is an example to define the print function
# Model$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Model$lock()

