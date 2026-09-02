#' Create a new GdprNotification
#'
#' @description
#' GdprNotification Class
#'
#' @docType class
#' @title GdprNotification
#' @description GdprNotification Class
#' @format An \code{R6Class} generator object
#' @field createdAt  character
#' @field id  character
#' @field isRead  character
#' @field message  character [optional]
#' @field tenantId  character
#' @field title  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprNotification <- R6::R6Class(
  "GdprNotification",
  public = list(
    `createdAt` = NULL,
    `id` = NULL,
    `isRead` = NULL,
    `message` = NULL,
    `tenantId` = NULL,
    `title` = NULL,

    #' @description
    #' Initialize a new GdprNotification class.
    #'
    #' @param createdAt createdAt
    #' @param id id
    #' @param isRead isRead
    #' @param tenantId tenantId
    #' @param title title
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `id`, `isRead`, `tenantId`, `title`, `message` = NULL, ...) {
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`isRead`)) {
        if (!(is.logical(`isRead`) && length(`isRead`) == 1)) {
          stop(paste("Error! Invalid data for `isRead`. Must be a boolean:", `isRead`))
        }
        self$`isRead` <- `isRead`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
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
    #' @return GdprNotification as a base R list.
    #' @examples
    #' # convert array of GdprNotification (x) to a data frame
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
    #' Convert GdprNotification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprNotificationObject <- list()
      if (!is.null(self$`createdAt`)) {
        GdprNotificationObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`id`)) {
        GdprNotificationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`isRead`)) {
        GdprNotificationObject[["isRead"]] <-
          self$`isRead`
      }
      if (!is.null(self$`message`)) {
        GdprNotificationObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`tenantId`)) {
        GdprNotificationObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`title`)) {
        GdprNotificationObject[["title"]] <-
          self$`title`
      }
      return(GdprNotificationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprNotification
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprNotification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`isRead`)) {
        self$`isRead` <- this_object$`isRead`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GdprNotification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprNotification
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprNotification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createdAt` <- this_object$`createdAt`
      self$`id` <- this_object$`id`
      self$`isRead` <- this_object$`isRead`
      self$`message` <- this_object$`message`
      self$`tenantId` <- this_object$`tenantId`
      self$`title` <- this_object$`title`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprNotification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprNotification: the required field `createdAt` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprNotification: the required field `id` is missing."))
      }
      # check the required field `isRead`
      if (!is.null(input_json$`isRead`)) {
        if (!(is.logical(input_json$`isRead`) && length(input_json$`isRead`) == 1)) {
          stop(paste("Error! Invalid data for `isRead`. Must be a boolean:", input_json$`isRead`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprNotification: the required field `isRead` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprNotification: the required field `tenantId` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprNotification: the required field `title` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprNotification
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `isRead` is null
      if (is.null(self$`isRead`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
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
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `isRead` is null
      if (is.null(self$`isRead`)) {
        invalid_fields["isRead"] <- "Non-nullable required field `isRead` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
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
# GdprNotification$unlock()
#
## Below is an example to define the print function
# GdprNotification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprNotification$lock()

