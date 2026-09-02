#' Create a new SupportTicketUpdate
#'
#' @description
#' SupportTicketUpdate Class
#'
#' @docType class
#' @title SupportTicketUpdate
#' @description SupportTicketUpdate Class
#' @format An \code{R6Class} generator object
#' @field assignedTo  character [optional]
#' @field channelId  character [optional]
#' @field channelType  \link{SupportChannelType} [optional]
#' @field closedAt  character [optional]
#' @field createdAt  character [optional]
#' @field customerEmail  character [optional]
#' @field customerId References the customer entity. character [optional]
#' @field customerName  character [optional]
#' @field externalId  character [optional]
#' @field firstMessageAt  character [optional]
#' @field lastMessageAt  character [optional]
#' @field leadId References the lead entity. character [optional]
#' @field messageCount  integer [optional]
#' @field orderRef  character [optional]
#' @field priority  \link{TicketPriority} [optional]
#' @field resolution  character [optional]
#' @field status  \link{SupportTicketStatus} [optional]
#' @field subject  character [optional]
#' @field tags  \link{AnyType} [optional]
#' @field tenantId  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SupportTicketUpdate <- R6::R6Class(
  "SupportTicketUpdate",
  public = list(
    `assignedTo` = NULL,
    `channelId` = NULL,
    `channelType` = NULL,
    `closedAt` = NULL,
    `createdAt` = NULL,
    `customerEmail` = NULL,
    `customerId` = NULL,
    `customerName` = NULL,
    `externalId` = NULL,
    `firstMessageAt` = NULL,
    `lastMessageAt` = NULL,
    `leadId` = NULL,
    `messageCount` = NULL,
    `orderRef` = NULL,
    `priority` = NULL,
    `resolution` = NULL,
    `status` = NULL,
    `subject` = NULL,
    `tags` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new SupportTicketUpdate class.
    #'
    #' @param assignedTo assignedTo
    #' @param channelId channelId
    #' @param channelType channelType
    #' @param closedAt closedAt
    #' @param createdAt createdAt
    #' @param customerEmail customerEmail
    #' @param customerId References the customer entity.
    #' @param customerName customerName
    #' @param externalId externalId
    #' @param firstMessageAt firstMessageAt
    #' @param lastMessageAt lastMessageAt
    #' @param leadId References the lead entity.
    #' @param messageCount messageCount
    #' @param orderRef orderRef
    #' @param priority priority
    #' @param resolution resolution
    #' @param status status
    #' @param subject subject
    #' @param tags tags
    #' @param tenantId tenantId
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`assignedTo` = NULL, `channelId` = NULL, `channelType` = NULL, `closedAt` = NULL, `createdAt` = NULL, `customerEmail` = NULL, `customerId` = NULL, `customerName` = NULL, `externalId` = NULL, `firstMessageAt` = NULL, `lastMessageAt` = NULL, `leadId` = NULL, `messageCount` = NULL, `orderRef` = NULL, `priority` = NULL, `resolution` = NULL, `status` = NULL, `subject` = NULL, `tags` = NULL, `tenantId` = NULL, `updatedAt` = NULL, ...) {
      if (!is.null(`assignedTo`)) {
        if (!(is.character(`assignedTo`) && length(`assignedTo`) == 1)) {
          stop(paste("Error! Invalid data for `assignedTo`. Must be a string:", `assignedTo`))
        }
        self$`assignedTo` <- `assignedTo`
      }
      if (!is.null(`channelId`)) {
        if (!(is.character(`channelId`) && length(`channelId`) == 1)) {
          stop(paste("Error! Invalid data for `channelId`. Must be a string:", `channelId`))
        }
        self$`channelId` <- `channelId`
      }
      if (!is.null(`channelType`)) {
        if (!(`channelType` %in% c())) {
          stop(paste("Error! \"", `channelType`, "\" cannot be assigned to `channelType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`channelType`))
        self$`channelType` <- `channelType`
      }
      if (!is.null(`closedAt`)) {
        if (!is.character(`closedAt`)) {
          stop(paste("Error! Invalid data for `closedAt`. Must be a string:", `closedAt`))
        }
        self$`closedAt` <- `closedAt`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`customerEmail`)) {
        if (!(is.character(`customerEmail`) && length(`customerEmail`) == 1)) {
          stop(paste("Error! Invalid data for `customerEmail`. Must be a string:", `customerEmail`))
        }
        self$`customerEmail` <- `customerEmail`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`customerName`)) {
        if (!(is.character(`customerName`) && length(`customerName`) == 1)) {
          stop(paste("Error! Invalid data for `customerName`. Must be a string:", `customerName`))
        }
        self$`customerName` <- `customerName`
      }
      if (!is.null(`externalId`)) {
        if (!(is.character(`externalId`) && length(`externalId`) == 1)) {
          stop(paste("Error! Invalid data for `externalId`. Must be a string:", `externalId`))
        }
        self$`externalId` <- `externalId`
      }
      if (!is.null(`firstMessageAt`)) {
        if (!is.character(`firstMessageAt`)) {
          stop(paste("Error! Invalid data for `firstMessageAt`. Must be a string:", `firstMessageAt`))
        }
        self$`firstMessageAt` <- `firstMessageAt`
      }
      if (!is.null(`lastMessageAt`)) {
        if (!is.character(`lastMessageAt`)) {
          stop(paste("Error! Invalid data for `lastMessageAt`. Must be a string:", `lastMessageAt`))
        }
        self$`lastMessageAt` <- `lastMessageAt`
      }
      if (!is.null(`leadId`)) {
        if (!(is.character(`leadId`) && length(`leadId`) == 1)) {
          stop(paste("Error! Invalid data for `leadId`. Must be a string:", `leadId`))
        }
        self$`leadId` <- `leadId`
      }
      if (!is.null(`messageCount`)) {
        if (!(is.numeric(`messageCount`) && length(`messageCount`) == 1)) {
          stop(paste("Error! Invalid data for `messageCount`. Must be an integer:", `messageCount`))
        }
        self$`messageCount` <- `messageCount`
      }
      if (!is.null(`orderRef`)) {
        if (!(is.character(`orderRef`) && length(`orderRef`) == 1)) {
          stop(paste("Error! Invalid data for `orderRef`. Must be a string:", `orderRef`))
        }
        self$`orderRef` <- `orderRef`
      }
      if (!is.null(`priority`)) {
        if (!(`priority` %in% c())) {
          stop(paste("Error! \"", `priority`, "\" cannot be assigned to `priority`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`priority`))
        self$`priority` <- `priority`
      }
      if (!is.null(`resolution`)) {
        if (!(is.character(`resolution`) && length(`resolution`) == 1)) {
          stop(paste("Error! Invalid data for `resolution`. Must be a string:", `resolution`))
        }
        self$`resolution` <- `resolution`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`tags`)) {
        stopifnot(R6::is.R6(`tags`))
        self$`tags` <- `tags`
      }
      if (!is.null(`tenantId`)) {
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
    #' @return SupportTicketUpdate as a base R list.
    #' @examples
    #' # convert array of SupportTicketUpdate (x) to a data frame
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
    #' Convert SupportTicketUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SupportTicketUpdateObject <- list()
      if (!is.null(self$`assignedTo`)) {
        SupportTicketUpdateObject[["assignedTo"]] <-
          self$`assignedTo`
      }
      if (!is.null(self$`channelId`)) {
        SupportTicketUpdateObject[["channelId"]] <-
          self$`channelId`
      }
      if (!is.null(self$`channelType`)) {
        SupportTicketUpdateObject[["channelType"]] <-
          self$extractSimpleType(self$`channelType`)
      }
      if (!is.null(self$`closedAt`)) {
        SupportTicketUpdateObject[["closedAt"]] <-
          self$`closedAt`
      }
      if (!is.null(self$`createdAt`)) {
        SupportTicketUpdateObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`customerEmail`)) {
        SupportTicketUpdateObject[["customerEmail"]] <-
          self$`customerEmail`
      }
      if (!is.null(self$`customerId`)) {
        SupportTicketUpdateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`customerName`)) {
        SupportTicketUpdateObject[["customerName"]] <-
          self$`customerName`
      }
      if (!is.null(self$`externalId`)) {
        SupportTicketUpdateObject[["externalId"]] <-
          self$`externalId`
      }
      if (!is.null(self$`firstMessageAt`)) {
        SupportTicketUpdateObject[["firstMessageAt"]] <-
          self$`firstMessageAt`
      }
      if (!is.null(self$`lastMessageAt`)) {
        SupportTicketUpdateObject[["lastMessageAt"]] <-
          self$`lastMessageAt`
      }
      if (!is.null(self$`leadId`)) {
        SupportTicketUpdateObject[["leadId"]] <-
          self$`leadId`
      }
      if (!is.null(self$`messageCount`)) {
        SupportTicketUpdateObject[["messageCount"]] <-
          self$`messageCount`
      }
      if (!is.null(self$`orderRef`)) {
        SupportTicketUpdateObject[["orderRef"]] <-
          self$`orderRef`
      }
      if (!is.null(self$`priority`)) {
        SupportTicketUpdateObject[["priority"]] <-
          self$extractSimpleType(self$`priority`)
      }
      if (!is.null(self$`resolution`)) {
        SupportTicketUpdateObject[["resolution"]] <-
          self$`resolution`
      }
      if (!is.null(self$`status`)) {
        SupportTicketUpdateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subject`)) {
        SupportTicketUpdateObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`tags`)) {
        SupportTicketUpdateObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      if (!is.null(self$`tenantId`)) {
        SupportTicketUpdateObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        SupportTicketUpdateObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(SupportTicketUpdateObject)
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
    #' Deserialize JSON string into an instance of SupportTicketUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupportTicketUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assignedTo`)) {
        self$`assignedTo` <- this_object$`assignedTo`
      }
      if (!is.null(this_object$`channelId`)) {
        self$`channelId` <- this_object$`channelId`
      }
      if (!is.null(this_object$`channelType`)) {
        `channeltype_object` <- SupportChannelType$new()
        `channeltype_object`$fromJSON(jsonlite::toJSON(this_object$`channelType`, auto_unbox = TRUE, digits = NA))
        self$`channelType` <- `channeltype_object`
      }
      if (!is.null(this_object$`closedAt`)) {
        self$`closedAt` <- this_object$`closedAt`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`customerEmail`)) {
        self$`customerEmail` <- this_object$`customerEmail`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`customerName`)) {
        self$`customerName` <- this_object$`customerName`
      }
      if (!is.null(this_object$`externalId`)) {
        self$`externalId` <- this_object$`externalId`
      }
      if (!is.null(this_object$`firstMessageAt`)) {
        self$`firstMessageAt` <- this_object$`firstMessageAt`
      }
      if (!is.null(this_object$`lastMessageAt`)) {
        self$`lastMessageAt` <- this_object$`lastMessageAt`
      }
      if (!is.null(this_object$`leadId`)) {
        self$`leadId` <- this_object$`leadId`
      }
      if (!is.null(this_object$`messageCount`)) {
        self$`messageCount` <- this_object$`messageCount`
      }
      if (!is.null(this_object$`orderRef`)) {
        self$`orderRef` <- this_object$`orderRef`
      }
      if (!is.null(this_object$`priority`)) {
        `priority_object` <- TicketPriority$new()
        `priority_object`$fromJSON(jsonlite::toJSON(this_object$`priority`, auto_unbox = TRUE, digits = NA))
        self$`priority` <- `priority_object`
      }
      if (!is.null(this_object$`resolution`)) {
        self$`resolution` <- this_object$`resolution`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- SupportTicketStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`tags`)) {
        `tags_object` <- AnyType$new()
        `tags_object`$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
        self$`tags` <- `tags_object`
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
    #' @return SupportTicketUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SupportTicketUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupportTicketUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assignedTo` <- this_object$`assignedTo`
      self$`channelId` <- this_object$`channelId`
      self$`channelType` <- SupportChannelType$new()$fromJSON(jsonlite::toJSON(this_object$`channelType`, auto_unbox = TRUE, digits = NA))
      self$`closedAt` <- this_object$`closedAt`
      self$`createdAt` <- this_object$`createdAt`
      self$`customerEmail` <- this_object$`customerEmail`
      self$`customerId` <- this_object$`customerId`
      self$`customerName` <- this_object$`customerName`
      self$`externalId` <- this_object$`externalId`
      self$`firstMessageAt` <- this_object$`firstMessageAt`
      self$`lastMessageAt` <- this_object$`lastMessageAt`
      self$`leadId` <- this_object$`leadId`
      self$`messageCount` <- this_object$`messageCount`
      self$`orderRef` <- this_object$`orderRef`
      self$`priority` <- TicketPriority$new()$fromJSON(jsonlite::toJSON(this_object$`priority`, auto_unbox = TRUE, digits = NA))
      self$`resolution` <- this_object$`resolution`
      self$`status` <- SupportTicketStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`subject` <- this_object$`subject`
      self$`tags` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to SupportTicketUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SupportTicketUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# SupportTicketUpdate$unlock()
#
## Below is an example to define the print function
# SupportTicketUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SupportTicketUpdate$lock()

