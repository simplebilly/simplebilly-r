#' Create a new GdprRefreshToken
#'
#' @description
#' GdprRefreshToken Class
#'
#' @docType class
#' @title GdprRefreshToken
#' @description GdprRefreshToken Class
#' @format An \code{R6Class} generator object
#' @field createdAt  character
#' @field expiresAt  character
#' @field id  character
#' @field revokedAt  character [optional]
#' @field tenantId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprRefreshToken <- R6::R6Class(
  "GdprRefreshToken",
  public = list(
    `createdAt` = NULL,
    `expiresAt` = NULL,
    `id` = NULL,
    `revokedAt` = NULL,
    `tenantId` = NULL,

    #' @description
    #' Initialize a new GdprRefreshToken class.
    #'
    #' @param createdAt createdAt
    #' @param expiresAt expiresAt
    #' @param id id
    #' @param tenantId tenantId
    #' @param revokedAt revokedAt
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `expiresAt`, `id`, `tenantId`, `revokedAt` = NULL, ...) {
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`expiresAt`)) {
        if (!(is.character(`expiresAt`) && length(`expiresAt`) == 1)) {
          stop(paste("Error! Invalid data for `expiresAt`. Must be a string:", `expiresAt`))
        }
        self$`expiresAt` <- `expiresAt`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`revokedAt`)) {
        if (!is.character(`revokedAt`)) {
          stop(paste("Error! Invalid data for `revokedAt`. Must be a string:", `revokedAt`))
        }
        self$`revokedAt` <- `revokedAt`
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
    #' @return GdprRefreshToken as a base R list.
    #' @examples
    #' # convert array of GdprRefreshToken (x) to a data frame
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
    #' Convert GdprRefreshToken to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprRefreshTokenObject <- list()
      if (!is.null(self$`createdAt`)) {
        GdprRefreshTokenObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`expiresAt`)) {
        GdprRefreshTokenObject[["expiresAt"]] <-
          self$`expiresAt`
      }
      if (!is.null(self$`id`)) {
        GdprRefreshTokenObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`revokedAt`)) {
        GdprRefreshTokenObject[["revokedAt"]] <-
          self$`revokedAt`
      }
      if (!is.null(self$`tenantId`)) {
        GdprRefreshTokenObject[["tenantId"]] <-
          self$`tenantId`
      }
      return(GdprRefreshTokenObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprRefreshToken
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprRefreshToken
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
      if (!is.null(this_object$`revokedAt`)) {
        self$`revokedAt` <- this_object$`revokedAt`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GdprRefreshToken in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprRefreshToken
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprRefreshToken
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createdAt` <- this_object$`createdAt`
      self$`expiresAt` <- this_object$`expiresAt`
      self$`id` <- this_object$`id`
      self$`revokedAt` <- this_object$`revokedAt`
      self$`tenantId` <- this_object$`tenantId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprRefreshToken and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GdprRefreshToken: the required field `createdAt` is missing."))
      }
      # check the required field `expiresAt`
      if (!is.null(input_json$`expiresAt`)) {
        if (!(is.character(input_json$`expiresAt`) && length(input_json$`expiresAt`) == 1)) {
          stop(paste("Error! Invalid data for `expiresAt`. Must be a string:", input_json$`expiresAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprRefreshToken: the required field `expiresAt` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprRefreshToken: the required field `id` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprRefreshToken: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprRefreshToken
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

      # check if the required `expiresAt` is null
      if (is.null(self$`expiresAt`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
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

      # check if the required `expiresAt` is null
      if (is.null(self$`expiresAt`)) {
        invalid_fields["expiresAt"] <- "Non-nullable required field `expiresAt` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
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
# GdprRefreshToken$unlock()
#
## Below is an example to define the print function
# GdprRefreshToken$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprRefreshToken$lock()

