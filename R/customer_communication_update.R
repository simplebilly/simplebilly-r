#' Create a new CustomerCommunicationUpdate
#'
#' @description
#' CustomerCommunicationUpdate Class
#'
#' @docType class
#' @title CustomerCommunicationUpdate
#' @description CustomerCommunicationUpdate Class
#' @format An \code{R6Class} generator object
#' @field body The message body, call summary or note text. character [optional]
#' @field channel  \link{CommunicationChannel} [optional]
#' @field contactId The contact (customer/supplier) this communication belongs to. References the contact entity. character [optional]
#' @field counterparty Email/phone of the counterparty, if applicable. character [optional]
#' @field direction  \link{CommunicationDirection} [optional]
#' @field occurredAt When the communication happened (defaults to now on create). character [optional]
#' @field subject  character [optional]
#' @field tags Free-form tags, e.g. `[\"follow-up-required\"]`. \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerCommunicationUpdate <- R6::R6Class(
  "CustomerCommunicationUpdate",
  public = list(
    `body` = NULL,
    `channel` = NULL,
    `contactId` = NULL,
    `counterparty` = NULL,
    `direction` = NULL,
    `occurredAt` = NULL,
    `subject` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new CustomerCommunicationUpdate class.
    #'
    #' @param body The message body, call summary or note text.
    #' @param channel channel
    #' @param contactId The contact (customer/supplier) this communication belongs to. References the contact entity.
    #' @param counterparty Email/phone of the counterparty, if applicable.
    #' @param direction direction
    #' @param occurredAt When the communication happened (defaults to now on create).
    #' @param subject subject
    #' @param tags Free-form tags, e.g. `[\"follow-up-required\"]`.
    #' @param ... Other optional arguments.
    initialize = function(`body` = NULL, `channel` = NULL, `contactId` = NULL, `counterparty` = NULL, `direction` = NULL, `occurredAt` = NULL, `subject` = NULL, `tags` = NULL, ...) {
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`channel`)) {
        if (!(`channel` %in% c())) {
          stop(paste("Error! \"", `channel`, "\" cannot be assigned to `channel`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`channel`))
        self$`channel` <- `channel`
      }
      if (!is.null(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!is.null(`counterparty`)) {
        if (!(is.character(`counterparty`) && length(`counterparty`) == 1)) {
          stop(paste("Error! Invalid data for `counterparty`. Must be a string:", `counterparty`))
        }
        self$`counterparty` <- `counterparty`
      }
      if (!is.null(`direction`)) {
        if (!(`direction` %in% c())) {
          stop(paste("Error! \"", `direction`, "\" cannot be assigned to `direction`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`direction`))
        self$`direction` <- `direction`
      }
      if (!is.null(`occurredAt`)) {
        if (!is.character(`occurredAt`)) {
          stop(paste("Error! Invalid data for `occurredAt`. Must be a string:", `occurredAt`))
        }
        self$`occurredAt` <- `occurredAt`
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
    #' @return CustomerCommunicationUpdate as a base R list.
    #' @examples
    #' # convert array of CustomerCommunicationUpdate (x) to a data frame
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
    #' Convert CustomerCommunicationUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerCommunicationUpdateObject <- list()
      if (!is.null(self$`body`)) {
        CustomerCommunicationUpdateObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`channel`)) {
        CustomerCommunicationUpdateObject[["channel"]] <-
          self$extractSimpleType(self$`channel`)
      }
      if (!is.null(self$`contactId`)) {
        CustomerCommunicationUpdateObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`counterparty`)) {
        CustomerCommunicationUpdateObject[["counterparty"]] <-
          self$`counterparty`
      }
      if (!is.null(self$`direction`)) {
        CustomerCommunicationUpdateObject[["direction"]] <-
          self$extractSimpleType(self$`direction`)
      }
      if (!is.null(self$`occurredAt`)) {
        CustomerCommunicationUpdateObject[["occurredAt"]] <-
          self$`occurredAt`
      }
      if (!is.null(self$`subject`)) {
        CustomerCommunicationUpdateObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`tags`)) {
        CustomerCommunicationUpdateObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      return(CustomerCommunicationUpdateObject)
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
    #' Deserialize JSON string into an instance of CustomerCommunicationUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCommunicationUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`channel`)) {
        `channel_object` <- CommunicationChannel$new()
        `channel_object`$fromJSON(jsonlite::toJSON(this_object$`channel`, auto_unbox = TRUE, digits = NA))
        self$`channel` <- `channel_object`
      }
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`counterparty`)) {
        self$`counterparty` <- this_object$`counterparty`
      }
      if (!is.null(this_object$`direction`)) {
        `direction_object` <- CommunicationDirection$new()
        `direction_object`$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
        self$`direction` <- `direction_object`
      }
      if (!is.null(this_object$`occurredAt`)) {
        self$`occurredAt` <- this_object$`occurredAt`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`tags`)) {
        `tags_object` <- AnyType$new()
        `tags_object`$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
        self$`tags` <- `tags_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomerCommunicationUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerCommunicationUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCommunicationUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`body` <- this_object$`body`
      self$`channel` <- CommunicationChannel$new()$fromJSON(jsonlite::toJSON(this_object$`channel`, auto_unbox = TRUE, digits = NA))
      self$`contactId` <- this_object$`contactId`
      self$`counterparty` <- this_object$`counterparty`
      self$`direction` <- CommunicationDirection$new()$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
      self$`occurredAt` <- this_object$`occurredAt`
      self$`subject` <- this_object$`subject`
      self$`tags` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`tags`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomerCommunicationUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerCommunicationUpdate
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
# CustomerCommunicationUpdate$unlock()
#
## Below is an example to define the print function
# CustomerCommunicationUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerCommunicationUpdate$lock()

