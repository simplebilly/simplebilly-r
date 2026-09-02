#' Create a new TicketMessage
#'
#' @description
#' TicketMessage Class
#'
#' @docType class
#' @title TicketMessage
#' @description TicketMessage Class
#' @format An \code{R6Class} generator object
#' @field authorEmail  character [optional]
#' @field authorName  character [optional]
#' @field body  character
#' @field bodyHtml  character [optional]
#' @field channelId  character [optional]
#' @field createdAt  character
#' @field direction  \link{MessageDirection}
#' @field externalId  character [optional]
#' @field isInternal  character
#' @field messageType  \link{MessageType}
#' @field metadata  \link{AnyType}
#' @field tenantId  character
#' @field ticketId References the ticket entity. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TicketMessage <- R6::R6Class(
  "TicketMessage",
  public = list(
    `authorEmail` = NULL,
    `authorName` = NULL,
    `body` = NULL,
    `bodyHtml` = NULL,
    `channelId` = NULL,
    `createdAt` = NULL,
    `direction` = NULL,
    `externalId` = NULL,
    `isInternal` = NULL,
    `messageType` = NULL,
    `metadata` = NULL,
    `tenantId` = NULL,
    `ticketId` = NULL,

    #' @description
    #' Initialize a new TicketMessage class.
    #'
    #' @param body body
    #' @param createdAt createdAt
    #' @param direction direction
    #' @param isInternal isInternal
    #' @param messageType messageType
    #' @param metadata metadata
    #' @param tenantId tenantId
    #' @param ticketId References the ticket entity.
    #' @param authorEmail authorEmail
    #' @param authorName authorName
    #' @param bodyHtml bodyHtml
    #' @param channelId channelId
    #' @param externalId externalId
    #' @param ... Other optional arguments.
    initialize = function(`body`, `createdAt`, `direction`, `isInternal`, `messageType`, `metadata`, `tenantId`, `ticketId`, `authorEmail` = NULL, `authorName` = NULL, `bodyHtml` = NULL, `channelId` = NULL, `externalId` = NULL, ...) {
      if (!missing(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`direction`)) {
        if (!(`direction` %in% c())) {
          stop(paste("Error! \"", `direction`, "\" cannot be assigned to `direction`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`direction`))
        self$`direction` <- `direction`
      }
      if (!missing(`isInternal`)) {
        if (!(is.logical(`isInternal`) && length(`isInternal`) == 1)) {
          stop(paste("Error! Invalid data for `isInternal`. Must be a boolean:", `isInternal`))
        }
        self$`isInternal` <- `isInternal`
      }
      if (!missing(`messageType`)) {
        if (!(`messageType` %in% c())) {
          stop(paste("Error! \"", `messageType`, "\" cannot be assigned to `messageType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`messageType`))
        self$`messageType` <- `messageType`
      }
      if (!missing(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!missing(`ticketId`)) {
        if (!(is.character(`ticketId`) && length(`ticketId`) == 1)) {
          stop(paste("Error! Invalid data for `ticketId`. Must be a string:", `ticketId`))
        }
        self$`ticketId` <- `ticketId`
      }
      if (!is.null(`authorEmail`)) {
        if (!(is.character(`authorEmail`) && length(`authorEmail`) == 1)) {
          stop(paste("Error! Invalid data for `authorEmail`. Must be a string:", `authorEmail`))
        }
        self$`authorEmail` <- `authorEmail`
      }
      if (!is.null(`authorName`)) {
        if (!(is.character(`authorName`) && length(`authorName`) == 1)) {
          stop(paste("Error! Invalid data for `authorName`. Must be a string:", `authorName`))
        }
        self$`authorName` <- `authorName`
      }
      if (!is.null(`bodyHtml`)) {
        if (!(is.character(`bodyHtml`) && length(`bodyHtml`) == 1)) {
          stop(paste("Error! Invalid data for `bodyHtml`. Must be a string:", `bodyHtml`))
        }
        self$`bodyHtml` <- `bodyHtml`
      }
      if (!is.null(`channelId`)) {
        if (!(is.character(`channelId`) && length(`channelId`) == 1)) {
          stop(paste("Error! Invalid data for `channelId`. Must be a string:", `channelId`))
        }
        self$`channelId` <- `channelId`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
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
    #' @return TicketMessage as a base R list.
    #' @examples
    #' # convert array of TicketMessage (x) to a data frame
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
    #' Convert TicketMessage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TicketMessageObject <- list()
      if (!is.null(self$`authorEmail`)) {
        TicketMessageObject[["authorEmail"]] <-
          self$`authorEmail`
      }
      if (!is.null(self$`authorName`)) {
        TicketMessageObject[["authorName"]] <-
          self$`authorName`
      }
      if (!is.null(self$`body`)) {
        TicketMessageObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`bodyHtml`)) {
        TicketMessageObject[["bodyHtml"]] <-
          self$`bodyHtml`
      }
      if (!is.null(self$`channelId`)) {
        TicketMessageObject[["channelId"]] <-
          self$`channelId`
      }
      if (!is.null(self$`createdAt`)) {
        TicketMessageObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`direction`)) {
        TicketMessageObject[["direction"]] <-
          self$extractSimpleType(self$`direction`)
      }
      if (!is.null(self$`externalId`)) {
        TicketMessageObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`isInternal`)) {
        TicketMessageObject[["isInternal"]] <-
          self$`isInternal`
      }
      if (!is.null(self$`messageType`)) {
        TicketMessageObject[["messageType"]] <-
          self$extractSimpleType(self$`messageType`)
      }
      if (!is.null(self$`metadata`)) {
        TicketMessageObject[["metadata"]] <-
          self$extractSimpleType(self$`metadata`)
      }
      if (!is.null(self$`tenantId`)) {
        TicketMessageObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`ticketId`)) {
        TicketMessageObject[["ticketId"]] <-
          self$`ticketId`
      }
      return(TicketMessageObject)
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
    #' Deserialize JSON string into an instance of TicketMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketMessage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`authorEmail`)) {
        self$`authorEmail` <- this_object$`authorEmail`
      }
      if (!is.null(this_object$`authorName`)) {
        self$`authorName` <- this_object$`authorName`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`bodyHtml`)) {
        self$`bodyHtml` <- this_object$`bodyHtml`
      }
      if (!is.null(this_object$`channelId`)) {
        self$`channelId` <- this_object$`channelId`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`direction`)) {
        `direction_object` <- MessageDirection$new()
        `direction_object`$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
        self$`direction` <- `direction_object`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`isInternal`)) {
        self$`isInternal` <- this_object$`isInternal`
      }
      if (!is.null(this_object$`messageType`)) {
        `messagetype_object` <- MessageType$new()
        `messagetype_object`$fromJSON(jsonlite::toJSON(this_object$`messageType`, auto_unbox = TRUE, digits = NA))
        self$`messageType` <- `messagetype_object`
      }
      if (!is.null(this_object$`metadata`)) {
        `metadata_object` <- AnyType$new()
        `metadata_object`$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
        self$`metadata` <- `metadata_object`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
      }
      if (!is.null(this_object$`ticketId`)) {
        self$`ticketId` <- this_object$`ticketId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TicketMessage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TicketMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of TicketMessage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`authorEmail` <- this_object$`authorEmail`
      self$`authorName` <- this_object$`authorName`
      self$`body` <- this_object$`body`
      self$`bodyHtml` <- this_object$`bodyHtml`
      self$`channelId` <- this_object$`channelId`
      self$`createdAt` <- this_object$`createdAt`
      self$`direction` <- MessageDirection$new()$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
      self$`externalId` <- this_object$`externalId`
      self$`isInternal` <- this_object$`isInternal`
      self$`messageType` <- MessageType$new()$fromJSON(jsonlite::toJSON(this_object$`messageType`, auto_unbox = TRUE, digits = NA))
      self$`metadata` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`ticketId` <- this_object$`ticketId`
      self
    },

    #' @description
    #' Validate JSON input with respect to TicketMessage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `body` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `createdAt` is missing."))
      }
      # check the required field `direction`
      if (!is.null(input_json$`direction`)) {
        stopifnot(R6::is.R6(input_json$`direction`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `direction` is missing."))
      }
      # check the required field `isInternal`
      if (!is.null(input_json$`isInternal`)) {
        if (!(is.logical(input_json$`isInternal`) && length(input_json$`isInternal`) == 1)) {
          stop(paste("Error! Invalid data for `isInternal`. Must be a boolean:", input_json$`isInternal`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `isInternal` is missing."))
      }
      # check the required field `messageType`
      if (!is.null(input_json$`messageType`)) {
        stopifnot(R6::is.R6(input_json$`messageType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `messageType` is missing."))
      }
      # check the required field `metadata`
      if (!is.null(input_json$`metadata`)) {
        stopifnot(R6::is.R6(input_json$`metadata`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `metadata` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `tenantId` is missing."))
      }
      # check the required field `ticketId`
      if (!is.null(input_json$`ticketId`)) {
        if (!(is.character(input_json$`ticketId`) && length(input_json$`ticketId`) == 1)) {
          stop(paste("Error! Invalid data for `ticketId`. Must be a string:", input_json$`ticketId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TicketMessage: the required field `ticketId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TicketMessage
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `body` is null
      if (is.null(self$`body`)) {
        return(FALSE)
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
        return(FALSE)
      }

      # check if the required `isInternal` is null
      if (is.null(self$`isInternal`)) {
        return(FALSE)
      }

      # check if the required `messageType` is null
      if (is.null(self$`messageType`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        return(FALSE)
      }

      # check if the required `ticketId` is null
      if (is.null(self$`ticketId`)) {
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
      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
      }

      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
        invalid_fields["direction"] <- "Non-nullable required field `direction` cannot be null."
      }

      # check if the required `isInternal` is null
      if (is.null(self$`isInternal`)) {
        invalid_fields["isInternal"] <- "Non-nullable required field `isInternal` cannot be null."
      }

      # check if the required `messageType` is null
      if (is.null(self$`messageType`)) {
        invalid_fields["messageType"] <- "Non-nullable required field `messageType` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
      }

      # check if the required `ticketId` is null
      if (is.null(self$`ticketId`)) {
        invalid_fields["ticketId"] <- "Non-nullable required field `ticketId` cannot be null."
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
# TicketMessage$unlock()
#
## Below is an example to define the print function
# TicketMessage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TicketMessage$lock()

