#' Create a new TenantUser
#'
#' @description
#' TenantUser Class
#'
#' @docType class
#' @title TenantUser
#' @description TenantUser Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field email_verified  character
#' @field is_active  character
#' @field joined_at  character
#' @field last_login  character [optional]
#' @field name  character
#' @field permissions  list(character)
#' @field role  character
#' @field user_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TenantUser <- R6::R6Class(
  "TenantUser",
  public = list(
    `email` = NULL,
    `email_verified` = NULL,
    `is_active` = NULL,
    `joined_at` = NULL,
    `last_login` = NULL,
    `name` = NULL,
    `permissions` = NULL,
    `role` = NULL,
    `user_id` = NULL,

    #' @description
    #' Initialize a new TenantUser class.
    #'
    #' @param email email
    #' @param email_verified email_verified
    #' @param is_active is_active
    #' @param joined_at joined_at
    #' @param name name
    #' @param permissions permissions
    #' @param role role
    #' @param user_id user_id
    #' @param last_login last_login
    #' @param ... Other optional arguments.
    initialize = function(`email`, `email_verified`, `is_active`, `joined_at`, `name`, `permissions`, `role`, `user_id`, `last_login` = NULL, ...) {
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
      if (!missing(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!missing(`joined_at`)) {
        if (!(is.character(`joined_at`) && length(`joined_at`) == 1)) {
          stop(paste("Error! Invalid data for `joined_at`. Must be a string:", `joined_at`))
        }
        self$`joined_at` <- `joined_at`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`permissions`)) {
        stopifnot(is.vector(`permissions`), length(`permissions`) != 0)
        sapply(`permissions`, function(x) stopifnot(is.character(x)))
        self$`permissions` <- `permissions`
      }
      if (!missing(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!missing(`user_id`)) {
        if (!(is.character(`user_id`) && length(`user_id`) == 1)) {
          stop(paste("Error! Invalid data for `user_id`. Must be a string:", `user_id`))
        }
        self$`user_id` <- `user_id`
      }
      if (!is.null(`last_login`)) {
        if (!is.character(`last_login`)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", `last_login`))
        }
        self$`last_login` <- `last_login`
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
    #' @return TenantUser as a base R list.
    #' @examples
    #' # convert array of TenantUser (x) to a data frame
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
    #' Convert TenantUser to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TenantUserObject <- list()
      if (!is.null(self$`email`)) {
        TenantUserObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`email_verified`)) {
        TenantUserObject[["email_verified"]] <-
          self$`email_verified`
      }
      if (!is.null(self$`is_active`)) {
        TenantUserObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`joined_at`)) {
        TenantUserObject[["joined_at"]] <-
          self$`joined_at`
      }
      if (!is.null(self$`last_login`)) {
        TenantUserObject[["last_login"]] <-
          self$`last_login`
      }
      if (!is.null(self$`name`)) {
        TenantUserObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`permissions`)) {
        TenantUserObject[["permissions"]] <-
          self$`permissions`
      }
      if (!is.null(self$`role`)) {
        TenantUserObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`user_id`)) {
        TenantUserObject[["user_id"]] <-
          self$`user_id`
      }
      return(TenantUserObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TenantUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of TenantUser
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`email_verified`)) {
        self$`email_verified` <- this_object$`email_verified`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`joined_at`)) {
        self$`joined_at` <- this_object$`joined_at`
      }
      if (!is.null(this_object$`last_login`)) {
        self$`last_login` <- this_object$`last_login`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`permissions`)) {
        self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`user_id`)) {
        self$`user_id` <- this_object$`user_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TenantUser in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TenantUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of TenantUser
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`email_verified` <- this_object$`email_verified`
      self$`is_active` <- this_object$`is_active`
      self$`joined_at` <- this_object$`joined_at`
      self$`last_login` <- this_object$`last_login`
      self$`name` <- this_object$`name`
      self$`permissions` <- ApiClient$new()$deserializeObj(this_object$`permissions`, "array[character]", loadNamespace("openapi"))
      self$`role` <- this_object$`role`
      self$`user_id` <- this_object$`user_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to TenantUser and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `email` is missing."))
      }
      # check the required field `email_verified`
      if (!is.null(input_json$`email_verified`)) {
        if (!(is.logical(input_json$`email_verified`) && length(input_json$`email_verified`) == 1)) {
          stop(paste("Error! Invalid data for `email_verified`. Must be a boolean:", input_json$`email_verified`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `email_verified` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `is_active` is missing."))
      }
      # check the required field `joined_at`
      if (!is.null(input_json$`joined_at`)) {
        if (!(is.character(input_json$`joined_at`) && length(input_json$`joined_at`) == 1)) {
          stop(paste("Error! Invalid data for `joined_at`. Must be a string:", input_json$`joined_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `joined_at` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `name` is missing."))
      }
      # check the required field `permissions`
      if (!is.null(input_json$`permissions`)) {
        stopifnot(is.vector(input_json$`permissions`), length(input_json$`permissions`) != 0)
        tmp <- sapply(input_json$`permissions`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `permissions` is missing."))
      }
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `role` is missing."))
      }
      # check the required field `user_id`
      if (!is.null(input_json$`user_id`)) {
        if (!(is.character(input_json$`user_id`) && length(input_json$`user_id`) == 1)) {
          stop(paste("Error! Invalid data for `user_id`. Must be a string:", input_json$`user_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TenantUser: the required field `user_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TenantUser
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `email_verified` is null
      if (is.null(self$`email_verified`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `joined_at` is null
      if (is.null(self$`joined_at`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `permissions` is null
      if (is.null(self$`permissions`)) {
        return(FALSE)
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        return(FALSE)
      }

      # check if the required `user_id` is null
      if (is.null(self$`user_id`)) {
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
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `email_verified` is null
      if (is.null(self$`email_verified`)) {
        invalid_fields["email_verified"] <- "Non-nullable required field `email_verified` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `joined_at` is null
      if (is.null(self$`joined_at`)) {
        invalid_fields["joined_at"] <- "Non-nullable required field `joined_at` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `permissions` is null
      if (is.null(self$`permissions`)) {
        invalid_fields["permissions"] <- "Non-nullable required field `permissions` cannot be null."
      }

      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
      }

      # check if the required `user_id` is null
      if (is.null(self$`user_id`)) {
        invalid_fields["user_id"] <- "Non-nullable required field `user_id` cannot be null."
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
# TenantUser$unlock()
#
## Below is an example to define the print function
# TenantUser$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TenantUser$lock()

