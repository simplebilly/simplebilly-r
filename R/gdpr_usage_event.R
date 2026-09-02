#' Create a new GdprUsageEvent
#'
#' @description
#' GdprUsageEvent Class
#'
#' @docType class
#' @title GdprUsageEvent
#' @description GdprUsageEvent Class
#' @format An \code{R6Class} generator object
#' @field createdAt  character
#' @field eventType  character
#' @field id  character
#' @field quantity  integer
#' @field tenantId  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GdprUsageEvent <- R6::R6Class(
  "GdprUsageEvent",
  public = list(
    `createdAt` = NULL,
    `eventType` = NULL,
    `id` = NULL,
    `quantity` = NULL,
    `tenantId` = NULL,

    #' @description
    #' Initialize a new GdprUsageEvent class.
    #'
    #' @param createdAt createdAt
    #' @param eventType eventType
    #' @param id id
    #' @param quantity quantity
    #' @param tenantId tenantId
    #' @param ... Other optional arguments.
    initialize = function(`createdAt`, `eventType`, `id`, `quantity`, `tenantId`, ...) {
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`eventType`)) {
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
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
    #' @return GdprUsageEvent as a base R list.
    #' @examples
    #' # convert array of GdprUsageEvent (x) to a data frame
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
    #' Convert GdprUsageEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GdprUsageEventObject <- list()
      if (!is.null(self$`createdAt`)) {
        GdprUsageEventObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`eventType`)) {
        GdprUsageEventObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`id`)) {
        GdprUsageEventObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`quantity`)) {
        GdprUsageEventObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`tenantId`)) {
        GdprUsageEventObject[["tenantId"]] <-
          self$`tenantId`
      }
      return(GdprUsageEventObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprUsageEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprUsageEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`eventType`)) {
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
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
    #' @return GdprUsageEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GdprUsageEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of GdprUsageEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`createdAt` <- this_object$`createdAt`
      self$`eventType` <- this_object$`eventType`
      self$`id` <- this_object$`id`
      self$`quantity` <- this_object$`quantity`
      self$`tenantId` <- this_object$`tenantId`
      self
    },

    #' @description
    #' Validate JSON input with respect to GdprUsageEvent and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for GdprUsageEvent: the required field `createdAt` is missing."))
      }
      # check the required field `eventType`
      if (!is.null(input_json$`eventType`)) {
        if (!(is.character(input_json$`eventType`) && length(input_json$`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", input_json$`eventType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprUsageEvent: the required field `eventType` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprUsageEvent: the required field `id` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprUsageEvent: the required field `quantity` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GdprUsageEvent: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GdprUsageEvent
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

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
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

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        invalid_fields["eventType"] <- "Non-nullable required field `eventType` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
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
# GdprUsageEvent$unlock()
#
## Below is an example to define the print function
# GdprUsageEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GdprUsageEvent$lock()

