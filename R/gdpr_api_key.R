#' Create a new GdprApiKey
#'
#' @description
#' GdprApiKey Class
#'
#' @docType class
#' @title GdprApiKey
#' @description GdprApiKey Class
#' @format An \code{R6Class} generator object
#' @field createdAt  character
#' @field expiresAt  character [optional]
#' @field id  character
#' @field keyId  character
#' @field name  character
#' @field revoked  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprApiKey <- R6::R6Class(
  "GdprApiKey",
  public = list(
    `createdAt` = NULL,
    `expiresAt` = NULL,
    `id` = NULL,
    `keyId` = NULL,
    `name` = NULL,
    `revoked` = NULL,

    #' @description
    #' Initialize a new GdprApiKey class.
    #'
    #' @param createdAt createdAt
    #' @param id id
    #' @param keyId keyId
    #' @param name name
    #' @param revoked revoked
    #' @param expiresAt expiresAt
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `id`, `keyId`, `name`, `revoked`, `expiresAt` = NULL, ...) {
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
      if (!missing(`keyId`)) {
        if (!(is.character(`keyId`) && length(`keyId`) == 1)) {
          stop(paste("Error! Invalid data for `keyId`. Must be a string:", `keyId`))
        }
        self$`keyId` <- `keyId`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`revoked`)) {
        if (!(is.logical(`revoked`) && length(`revoked`) == 1)) {
          stop(paste("Error! Invalid data for `revoked`. Must be a boolean:", `revoked`))
        }
        self$`revoked` <- `revoked`
      }
      if (!is.null(`expiresAt`)) {
        if (!is.character(`expiresAt`)) {
          stop(paste("Error! Invalid data for `expiresAt`. Must be a string:", `expiresAt`))
        }
        self$`expiresAt` <- `expiresAt`
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
    #' @return GdprApiKey as a base R list.
    #' @examples
    #' # convert array of GdprApiKey (x) to a data frame
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
    #' Convert GdprApiKey to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprApiKeyObject <- list()
      if (!is.null(self$`createdAt`)) {
        GdprApiKeyObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`expiresAt`)) {
        GdprApiKeyObject[["expiresAt"]] <-
          self$`expiresAt`
      }
      if (!is.null(self$`id`)) {
        GdprApiKeyObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`keyId`)) {
        GdprApiKeyObject[["keyId"]] <-
          self$`keyId`
      }
      if (!is.null(self$`name`)) {
        GdprApiKeyObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`revoked`)) {
        GdprApiKeyObject[["revoked"]] <-
          self$`revoked`
      }
      return(GdprApiKeyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprApiKey
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprApiKey
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`expiresAt`)) {
        self$`expiresAt` <- this_object$`expiresAt`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`keyId`)) {
        self$`keyId` <- this_object$`keyId`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`revoked`)) {
        self$`revoked` <- this_object$`revoked`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GdprApiKey in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprApiKey
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprApiKey
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createdAt` <- this_object$`createdAt`
      self$`expiresAt` <- this_object$`expiresAt`
      self$`id` <- this_object$`id`
      self$`keyId` <- this_object$`keyId`
      self$`name` <- this_object$`name`
      self$`revoked` <- this_object$`revoked`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprApiKey and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GdprApiKey: the required field `createdAt` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprApiKey: the required field `id` is missing."))
      }
      # check the required field `keyId`
      if (!is.null(input_json$`keyId`)) {
        if (!(is.character(input_json$`keyId`) && length(input_json$`keyId`) == 1)) {
          stop(paste("Error! Invalid data for `keyId`. Must be a string:", input_json$`keyId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprApiKey: the required field `keyId` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprApiKey: the required field `name` is missing."))
      }
      # check the required field `revoked`
      if (!is.null(input_json$`revoked`)) {
        if (!(is.logical(input_json$`revoked`) && length(input_json$`revoked`) == 1)) {
          stop(paste("Error! Invalid data for `revoked`. Must be a boolean:", input_json$`revoked`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprApiKey: the required field `revoked` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprApiKey
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

      # check if the required `keyId` is null
      if (is.null(self$`keyId`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `revoked` is null
      if (is.null(self$`revoked`)) {
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

      # check if the required `keyId` is null
      if (is.null(self$`keyId`)) {
        invalid_fields["keyId"] <- "Non-nullable required field `keyId` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `revoked` is null
      if (is.null(self$`revoked`)) {
        invalid_fields["revoked"] <- "Non-nullable required field `revoked` cannot be null."
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
# GdprApiKey$unlock()
#
## Below is an example to define the print function
# GdprApiKey$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprApiKey$lock()

