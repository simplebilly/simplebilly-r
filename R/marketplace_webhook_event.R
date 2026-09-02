#' Create a new MarketplaceWebhookEvent
#'
#' @description
#' MarketplaceWebhookEvent Class
#'
#' @docType class
#' @title MarketplaceWebhookEvent
#' @description MarketplaceWebhookEvent Class
#' @format An \code{R6Class} generator object
#' @field connectionId References the marketplace connection entity. character
#' @field eventBody  \link{AnyType} [optional]
#' @field eventType  character
#' @field headers  \link{AnyType} [optional]
#' @field platform  character
#' @field processed  character [optional]
#' @field processingError  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MarketplaceWebhookEvent <- R6::R6Class(
  "MarketplaceWebhookEvent",
  public = list(
    `connectionId` = NULL,
    `eventBody` = NULL,
    `eventType` = NULL,
    `headers` = NULL,
    `platform` = NULL,
    `processed` = NULL,
    `processingError` = NULL,

    #' @description
    #' Initialize a new MarketplaceWebhookEvent class.
    #'
    #' @param connectionId References the marketplace connection entity.
    #' @param eventType eventType
    #' @param platform platform
    #' @param eventBody eventBody
    #' @param headers headers
    #' @param processed processed
    #' @param processingError processingError
    #' @param ... Other optional arguments.
    initialize = function(`connectionId`, `eventType`, `platform`, `eventBody` = NULL, `headers` = NULL, `processed` = NULL, `processingError` = NULL, ...) {
      if (!missing(`connectionId`)) {
        if (!(is.character(`connectionId`) && length(`connectionId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionId`. Must be a string:", `connectionId`))
        }
        self$`connectionId` <- `connectionId`
      }
      if (!missing(`eventType`)) {
        if (!(is.character(`eventType`) && length(`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", `eventType`))
        }
        self$`eventType` <- `eventType`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!is.null(`eventBody`)) {
        stopifnot(R6::is.R6(`eventBody`))
        self$`eventBody` <- `eventBody`
      }
      if (!is.null(`headers`)) {
        stopifnot(R6::is.R6(`headers`))
        self$`headers` <- `headers`
      }
      if (!is.null(`processed`)) {
        if (!(is.logical(`processed`) && length(`processed`) == 1)) {
          stop(paste("Error! Invalid data for `processed`. Must be a boolean:", `processed`))
        }
        self$`processed` <- `processed`
      }
      if (!is.null(`processingError`)) {
        if (!(is.character(`processingError`) && length(`processingError`) == 1)) {
          stop(paste("Error! Invalid data for `processingError`. Must be a string:", `processingError`))
        }
        self$`processingError` <- `processingError`
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
    #' @return MarketplaceWebhookEvent as a base R list.
    #' @examples
    #' # convert array of MarketplaceWebhookEvent (x) to a data frame
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
    #' Convert MarketplaceWebhookEvent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MarketplaceWebhookEventObject <- list()
      if (!is.null(self$`connectionId`)) {
        MarketplaceWebhookEventObject[["connectionId"]] <-
          self$`connectionId`
      }
      if (!is.null(self$`eventBody`)) {
        MarketplaceWebhookEventObject[["eventBody"]] <-
          self$extractSimpleType(self$`eventBody`)
      }
      if (!is.null(self$`eventType`)) {
        MarketplaceWebhookEventObject[["eventType"]] <-
          self$`eventType`
      }
      if (!is.null(self$`headers`)) {
        MarketplaceWebhookEventObject[["headers"]] <-
          self$extractSimpleType(self$`headers`)
      }
      if (!is.null(self$`platform`)) {
        MarketplaceWebhookEventObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`processed`)) {
        MarketplaceWebhookEventObject[["processed"]] <-
          self$`processed`
      }
      if (!is.null(self$`processingError`)) {
        MarketplaceWebhookEventObject[["processingError"]] <-
          self$`processingError`
      }
      return(MarketplaceWebhookEventObject)
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
    #' Deserialize JSON string into an instance of MarketplaceWebhookEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceWebhookEvent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connectionId`)) {
        self$`connectionId` <- this_object$`connectionId`
      }
      if (!is.null(this_object$`eventBody`)) {
        `eventbody_object` <- AnyType$new()
        `eventbody_object`$fromJSON(jsonlite::toJSON(this_object$`eventBody`, auto_unbox = TRUE, digits = NA))
        self$`eventBody` <- `eventbody_object`
      }
      if (!is.null(this_object$`eventType`)) {
        self$`eventType` <- this_object$`eventType`
      }
      if (!is.null(this_object$`headers`)) {
        `headers_object` <- AnyType$new()
        `headers_object`$fromJSON(jsonlite::toJSON(this_object$`headers`, auto_unbox = TRUE, digits = NA))
        self$`headers` <- `headers_object`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`processed`)) {
        self$`processed` <- this_object$`processed`
      }
      if (!is.null(this_object$`processingError`)) {
        self$`processingError` <- this_object$`processingError`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MarketplaceWebhookEvent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MarketplaceWebhookEvent
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceWebhookEvent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`connectionId` <- this_object$`connectionId`
      self$`eventBody` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`eventBody`, auto_unbox = TRUE, digits = NA))
      self$`eventType` <- this_object$`eventType`
      self$`headers` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`headers`, auto_unbox = TRUE, digits = NA))
      self$`platform` <- this_object$`platform`
      self$`processed` <- this_object$`processed`
      self$`processingError` <- this_object$`processingError`
      self
    },

    #' @description
    #' Validate JSON input with respect to MarketplaceWebhookEvent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `connectionId`
      if (!is.null(input_json$`connectionId`)) {
        if (!(is.character(input_json$`connectionId`) && length(input_json$`connectionId`) == 1)) {
          stop(paste("Error! Invalid data for `connectionId`. Must be a string:", input_json$`connectionId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceWebhookEvent: the required field `connectionId` is missing."))
      }
      # check the required field `eventType`
      if (!is.null(input_json$`eventType`)) {
        if (!(is.character(input_json$`eventType`) && length(input_json$`eventType`) == 1)) {
          stop(paste("Error! Invalid data for `eventType`. Must be a string:", input_json$`eventType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceWebhookEvent: the required field `eventType` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceWebhookEvent: the required field `platform` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MarketplaceWebhookEvent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connectionId` is null
      if (is.null(self$`connectionId`)) {
        return(FALSE)
      }

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
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
      # check if the required `connectionId` is null
      if (is.null(self$`connectionId`)) {
        invalid_fields["connectionId"] <- "Non-nullable required field `connectionId` cannot be null."
      }

      # check if the required `eventType` is null
      if (is.null(self$`eventType`)) {
        invalid_fields["eventType"] <- "Non-nullable required field `eventType` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
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
# MarketplaceWebhookEvent$unlock()
#
## Below is an example to define the print function
# MarketplaceWebhookEvent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MarketplaceWebhookEvent$lock()

