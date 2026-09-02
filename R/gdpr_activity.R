#' Create a new GdprActivity
#'
#' @description
#' GdprActivity Class
#'
#' @docType class
#' @title GdprActivity
#' @description GdprActivity Class
#' @format An \code{R6Class} generator object
#' @field action  character
#' @field createdAt  character
#' @field description  character [optional]
#' @field id  character
#' @field tenantId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprActivity <- R6::R6Class(
  "GdprActivity",
  public = list(
    `action` = NULL,
    `createdAt` = NULL,
    `description` = NULL,
    `id` = NULL,
    `tenantId` = NULL,

    #' @description
    #' Initialize a new GdprActivity class.
    #'
    #' @param action action
    #' @param createdAt createdAt
    #' @param id id
    #' @param tenantId tenantId
    #' @param description description
    #' @param ... Other optional arguments.
    initialize = function(`action`, `createdAt`, `id`, `tenantId`, `description` = NULL, ...) {
      if (!missing(`action`)) {
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
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
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return GdprActivity as a base R list.
    #' @examples
    #' # convert array of GdprActivity (x) to a data frame
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
    #' Convert GdprActivity to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprActivityObject <- list()
      if (!is.null(self$`action`)) {
        GdprActivityObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`createdAt`)) {
        GdprActivityObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`description`)) {
        GdprActivityObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        GdprActivityObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`tenantId`)) {
        GdprActivityObject[["tenantId"]] <-
          self$`tenantId`
      }
      return(GdprActivityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprActivity
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprActivity
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
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
    #' @return GdprActivity in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprActivity
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprActivity
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`action` <- this_object$`action`
      self$`createdAt` <- this_object$`createdAt`
      self$`description` <- this_object$`description`
      self$`id` <- this_object$`id`
      self$`tenantId` <- this_object$`tenantId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprActivity and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `action`
      if (!is.null(input_json$`action`)) {
        if (!(is.character(input_json$`action`) && length(input_json$`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", input_json$`action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprActivity: the required field `action` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprActivity: the required field `createdAt` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprActivity: the required field `id` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprActivity: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprActivity
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `action` is null
      if (is.null(self$`action`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
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
      # check if the required `action` is null
      if (is.null(self$`action`)) {
        invalid_fields["action"] <- "Non-nullable required field `action` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
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
# GdprActivity$unlock()
#
## Below is an example to define the print function
# GdprActivity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprActivity$lock()

