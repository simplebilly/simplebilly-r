#' Create a new CustomerCommunicationCreate
#'
#' @description
#' CustomerCommunicationCreate Class
#'
#' @docType class
#' @title CustomerCommunicationCreate
#' @description CustomerCommunicationCreate Class
#' @format An \code{R6Class} generator object
#' @field body The message body, call summary or note text. character [optional]
#' @field channel  \link{CommunicationChannel}
#' @field contactId The contact (customer/supplier) this communication belongs to. References the contact entity. character
#' @field counterparty Email/phone of the counterparty, if applicable. character [optional]
#' @field direction  \link{CommunicationDirection}
#' @field occurredAt When the communication happened (defaults to now on create). character [optional]
#' @field subject  character [optional]
#' @field tags Free-form tags, e.g. `[\"follow-up-required\"]`. \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerCommunicationCreate <- R6::R6Class(
  "CustomerCommunicationCreate",
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
    #' Initialize a new CustomerCommunicationCreate class.
    #'
    #' @param channel channel
    #' @param contactId The contact (customer/supplier) this communication belongs to. References the contact entity.
    #' @param direction direction
    #' @param body The message body, call summary or note text.
    #' @param counterparty Email/phone of the counterparty, if applicable.
    #' @param occurredAt When the communication happened (defaults to now on create).
    #' @param subject subject
    #' @param tags Free-form tags, e.g. `[\"follow-up-required\"]`.
    #' @param ... Other optional arguments.
    initialize = function(`channel`, `contactId`, `direction`, `body` = NULL, `counterparty` = NULL, `occurredAt` = NULL, `subject` = NULL, `tags` = NULL, ...) {
      if (!missing(`channel`)) {
        if (!(`channel` %in% c())) {
          stop(paste("Error! \"", `channel`, "\" cannot be assigned to `channel`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`channel`))
        self$`channel` <- `channel`
      }
      if (!missing(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!missing(`direction`)) {
        if (!(`direction` %in% c())) {
          stop(paste("Error! \"", `direction`, "\" cannot be assigned to `direction`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`direction`))
        self$`direction` <- `direction`
      }
      if (!is.null(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!is.null(`counterparty`)) {
        if (!(is.character(`counterparty`) && length(`counterparty`) == 1)) {
          stop(paste("Error! Invalid data for `counterparty`. Must be a string:", `counterparty`))
        }
        self$`counterparty` <- `counterparty`
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
    #' @return CustomerCommunicationCreate as a base R list.
    #' @examples
    #' # convert array of CustomerCommunicationCreate (x) to a data frame
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
    #' Convert CustomerCommunicationCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerCommunicationCreateObject <- list()
      if (!is.null(self$`body`)) {
        CustomerCommunicationCreateObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`channel`)) {
        CustomerCommunicationCreateObject[["channel"]] <-
          self$extractSimpleType(self$`channel`)
      }
      if (!is.null(self$`contactId`)) {
        CustomerCommunicationCreateObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`counterparty`)) {
        CustomerCommunicationCreateObject[["counterparty"]] <-
          self$`counterparty`
      }
      if (!is.null(self$`direction`)) {
        CustomerCommunicationCreateObject[["direction"]] <-
          self$extractSimpleType(self$`direction`)
      }
      if (!is.null(self$`occurredAt`)) {
        CustomerCommunicationCreateObject[["occurredAt"]] <-
          self$`occurredAt`
      }
      if (!is.null(self$`subject`)) {
        CustomerCommunicationCreateObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`tags`)) {
        CustomerCommunicationCreateObject[["tags"]] <-
          self$extractSimpleType(self$`tags`)
      }
      return(CustomerCommunicationCreateObject)
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
    #' Deserialize JSON string into an instance of CustomerCommunicationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCommunicationCreate
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
    #' @return CustomerCommunicationCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerCommunicationCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCommunicationCreate
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
    #' Validate JSON input with respect to CustomerCommunicationCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `channel`
      if (!is.null(input_json$`channel`)) {
        stopifnot(R6::is.R6(input_json$`channel`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerCommunicationCreate: the required field `channel` is missing."))
      }
      # check the required field `contactId`
      if (!is.null(input_json$`contactId`)) {
        if (!(is.character(input_json$`contactId`) && length(input_json$`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", input_json$`contactId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerCommunicationCreate: the required field `contactId` is missing."))
      }
      # check the required field `direction`
      if (!is.null(input_json$`direction`)) {
        stopifnot(R6::is.R6(input_json$`direction`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerCommunicationCreate: the required field `direction` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerCommunicationCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `channel` is null
      if (is.null(self$`channel`)) {
        return(FALSE)
      }

      # check if the required `contactId` is null
      if (is.null(self$`contactId`)) {
        return(FALSE)
      }

      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
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
      # check if the required `channel` is null
      if (is.null(self$`channel`)) {
        invalid_fields["channel"] <- "Non-nullable required field `channel` cannot be null."
      }

      # check if the required `contactId` is null
      if (is.null(self$`contactId`)) {
        invalid_fields["contactId"] <- "Non-nullable required field `contactId` cannot be null."
      }

      # check if the required `direction` is null
      if (is.null(self$`direction`)) {
        invalid_fields["direction"] <- "Non-nullable required field `direction` cannot be null."
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
# CustomerCommunicationCreate$unlock()
#
## Below is an example to define the print function
# CustomerCommunicationCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerCommunicationCreate$lock()

