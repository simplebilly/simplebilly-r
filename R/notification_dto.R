#' Create a new NotificationDto
#'
#' @description
#' Wire shape of a notification row (mirrors frontend Notification type).
#'
#' @docType class
#' @title NotificationDto
#' @description NotificationDto Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field id  character
#' @field is_read  character
#' @field message  character [optional]
#' @field sent_via_email  character
#' @field tenant_id  character
#' @field title  character
#' @field user_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationDto <- R6::R6Class(
  "NotificationDto",
  public = list(
    `created_at` = NULL,
    `id` = NULL,
    `is_read` = NULL,
    `message` = NULL,
    `sent_via_email` = NULL,
    `tenant_id` = NULL,
    `title` = NULL,
    `user_id` = NULL,

    #' @description
    #' Initialize a new NotificationDto class.
    #'
    #' @param created_at created_at
    #' @param id id
    #' @param is_read is_read
    #' @param sent_via_email sent_via_email
    #' @param tenant_id tenant_id
    #' @param title title
    #' @param user_id user_id
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `id`, `is_read`, `sent_via_email`, `tenant_id`, `title`, `user_id`, `message` = NULL, ...) {
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
      if (!missing(`is_read`)) {
        if (!(is.logical(`is_read`) && length(`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", `is_read`))
        }
        self$`is_read` <- `is_read`
      }
      if (!missing(`sent_via_email`)) {
        if (!(is.logical(`sent_via_email`) && length(`sent_via_email`) == 1)) {
          stop(paste("Error! Invalid data for `sent_via_email`. Must be a boolean:", `sent_via_email`))
        }
        self$`sent_via_email` <- `sent_via_email`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`user_id`)) {
        if (!(is.character(`user_id`) && length(`user_id`) == 1)) {
          stop(paste("Error! Invalid data for `user_id`. Must be a string:", `user_id`))
        }
        self$`user_id` <- `user_id`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return NotificationDto as a base R list.
    #' @examples
    #' # convert array of NotificationDto (x) to a data frame
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
    #' Convert NotificationDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationDtoObject <- list()
      if (!is.null(self$`created_at`)) {
        NotificationDtoObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`id`)) {
        NotificationDtoObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`is_read`)) {
        NotificationDtoObject[["is_read"]] <-
          self$`is_read`
      }
      if (!is.null(self$`message`)) {
        NotificationDtoObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`sent_via_email`)) {
        NotificationDtoObject[["sent_via_email"]] <-
          self$`sent_via_email`
      }
      if (!is.null(self$`tenant_id`)) {
        NotificationDtoObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`title`)) {
        NotificationDtoObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`user_id`)) {
        NotificationDtoObject[["user_id"]] <-
          self$`user_id`
      }
      return(NotificationDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`is_read`)) {
        self$`is_read` <- this_object$`is_read`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`sent_via_email`)) {
        self$`sent_via_email` <- this_object$`sent_via_email`
      }
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
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
    #' @return NotificationDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`id` <- this_object$`id`
      self$`is_read` <- this_object$`is_read`
      self$`message` <- this_object$`message`
      self$`sent_via_email` <- this_object$`sent_via_email`
      self$`tenant_id` <- this_object$`tenant_id`
      self$`title` <- this_object$`title`
      self$`user_id` <- this_object$`user_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationDto and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `created_at` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `id` is missing."))
      }
      # check the required field `is_read`
      if (!is.null(input_json$`is_read`)) {
        if (!(is.logical(input_json$`is_read`) && length(input_json$`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", input_json$`is_read`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `is_read` is missing."))
      }
      # check the required field `sent_via_email`
      if (!is.null(input_json$`sent_via_email`)) {
        if (!(is.logical(input_json$`sent_via_email`) && length(input_json$`sent_via_email`) == 1)) {
          stop(paste("Error! Invalid data for `sent_via_email`. Must be a boolean:", input_json$`sent_via_email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `sent_via_email` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `tenant_id` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `title` is missing."))
      }
      # check the required field `user_id`
      if (!is.null(input_json$`user_id`)) {
        if (!(is.character(input_json$`user_id`) && length(input_json$`user_id`) == 1)) {
          stop(paste("Error! Invalid data for `user_id`. Must be a string:", input_json$`user_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationDto: the required field `user_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationDto
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

      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
        return(FALSE)
      }

      # check if the required `sent_via_email` is null
      if (is.null(self$`sent_via_email`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
        invalid_fields["is_read"] <- "Non-nullable required field `is_read` cannot be null."
      }

      # check if the required `sent_via_email` is null
      if (is.null(self$`sent_via_email`)) {
        invalid_fields["sent_via_email"] <- "Non-nullable required field `sent_via_email` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
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
# NotificationDto$unlock()
#
## Below is an example to define the print function
# NotificationDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationDto$lock()

