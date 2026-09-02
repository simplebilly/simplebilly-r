#' Create a new SupportChannel
#'
#' @description
#' SupportChannel Class
#'
#' @docType class
#' @title SupportChannel
#' @description SupportChannel Class
#' @format An \code{R6Class} generator object
#' @field channelType  \link{SupportChannelType}
#' @field config  \link{AnyType}
#' @field createdAt  character
#' @field isActive  character
#' @field name  character
#' @field tenantId  character
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SupportChannel <- R6::R6Class(
  "SupportChannel",
  public = list(
    `channelType` = NULL,
    `config` = NULL,
    `createdAt` = NULL,
    `isActive` = NULL,
    `name` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new SupportChannel class.
    #'
    #' @param channelType channelType
    #' @param config config
    #' @param createdAt createdAt
    #' @param isActive isActive
    #' @param name name
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`channelType`, `config`, `createdAt`, `isActive`, `name`, `tenantId`, `updatedAt` = NULL, ...) {
      if (!missing(`channelType`)) {
        if (!(`channelType` %in% c())) {
          stop(paste("Error! \"", `channelType`, "\" cannot be assigned to `channelType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`channelType`))
        self$`channelType` <- `channelType`
      }
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return SupportChannel as a base R list.
    #' @examples
    #' # convert array of SupportChannel (x) to a data frame
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
    #' Convert SupportChannel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SupportChannelObject <- list()
      if (!is.null(self$`channelType`)) {
        SupportChannelObject[["channelType"]] <-
          self$extractSimpleType(self$`channelType`)
      }
      if (!is.null(self$`config`)) {
        SupportChannelObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`createdAt`)) {
        SupportChannelObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`isActive`)) {
        SupportChannelObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`name`)) {
        SupportChannelObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tenantId`)) {
        SupportChannelObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        SupportChannelObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(SupportChannelObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of SupportChannel
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupportChannel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`channelType`)) {
        `channeltype_object` <- SupportChannelType$new()
        `channeltype_object`$fromJSON(jsonlite::toJSON(this_object$`channelType`, auto_unbox = TRUE, digits = NA))
        self$`channelType` <- `channeltype_object`
      }
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SupportChannel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SupportChannel
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupportChannel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`channelType` <- SupportChannelType$new()$fromJSON(jsonlite::toJSON(this_object$`channelType`, auto_unbox = TRUE, digits = NA))
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`isActive` <- this_object$`isActive`
      self$`name` <- this_object$`name`
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to SupportChannel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `channelType`
      if (!is.null(input_json$`channelType`)) {
        stopifnot(R6::is.R6(input_json$`channelType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `channelType` is missing."))
      }
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `config` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `createdAt` is missing."))
      }
      # check the required field `isActive`
      if (!is.null(input_json$`isActive`)) {
        if (!(is.logical(input_json$`isActive`) && length(input_json$`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", input_json$`isActive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `isActive` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `name` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupportChannel: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SupportChannel
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `channelType` is null
      if (is.null(self$`channelType`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `isActive` is null
      if (is.null(self$`isActive`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `channelType` is null
      if (is.null(self$`channelType`)) {
        invalid_fields["channelType"] <- "Non-nullable required field `channelType` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `isActive` is null
      if (is.null(self$`isActive`)) {
        invalid_fields["isActive"] <- "Non-nullable required field `isActive` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# SupportChannel$unlock()
#
## Below is an example to define the print function
# SupportChannel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SupportChannel$lock()

