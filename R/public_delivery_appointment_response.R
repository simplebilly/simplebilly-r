#' Create a new PublicDeliveryAppointmentResponse
#'
#' @description
#' PublicDeliveryAppointmentResponse Class
#'
#' @docType class
#' @title PublicDeliveryAppointmentResponse
#' @description PublicDeliveryAppointmentResponse Class
#' @format An \code{R6Class} generator object
#' @field appointmentId  character
#' @field confirmationHint Carries the status-check token (email is out of scope for now). character
#' @field message  character
#' @field status  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicDeliveryAppointmentResponse <- R6::R6Class(
  "PublicDeliveryAppointmentResponse",
  public = list(
    `appointmentId` = NULL,
    `confirmationHint` = NULL,
    `message` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new PublicDeliveryAppointmentResponse class.
    #'
    #' @param appointmentId appointmentId
    #' @param confirmationHint Carries the status-check token (email is out of scope for now).
    #' @param message message
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`appointmentId`, `confirmationHint`, `message`, `status`, ...) {
      if (!missing(`appointmentId`)) {
        if (!(is.character(`appointmentId`) && length(`appointmentId`) == 1)) {
          stop(paste("Error! Invalid data for `appointmentId`. Must be a string:", `appointmentId`))
        }
        self$`appointmentId` <- `appointmentId`
      }
      if (!missing(`confirmationHint`)) {
        if (!(is.character(`confirmationHint`) && length(`confirmationHint`) == 1)) {
          stop(paste("Error! Invalid data for `confirmationHint`. Must be a string:", `confirmationHint`))
        }
        self$`confirmationHint` <- `confirmationHint`
      }
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
    #' @return PublicDeliveryAppointmentResponse as a base R list.
    #' @examples
    #' # convert array of PublicDeliveryAppointmentResponse (x) to a data frame
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
    #' Convert PublicDeliveryAppointmentResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicDeliveryAppointmentResponseObject <- list()
      if (!is.null(self$`appointmentId`)) {
        PublicDeliveryAppointmentResponseObject[["appointmentId"]] <-
          self$`appointmentId`
      }
      if (!is.null(self$`confirmationHint`)) {
        PublicDeliveryAppointmentResponseObject[["confirmationHint"]] <-
          self$`confirmationHint`
      }
      if (!is.null(self$`message`)) {
        PublicDeliveryAppointmentResponseObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`status`)) {
        PublicDeliveryAppointmentResponseObject[["status"]] <-
          self$`status`
      }
      return(PublicDeliveryAppointmentResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`appointmentId`)) {
        self$`appointmentId` <- this_object$`appointmentId`
      }
      if (!is.null(this_object$`confirmationHint`)) {
        self$`confirmationHint` <- this_object$`confirmationHint`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicDeliveryAppointmentResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`appointmentId` <- this_object$`appointmentId`
      self$`confirmationHint` <- this_object$`confirmationHint`
      self$`message` <- this_object$`message`
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicDeliveryAppointmentResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `appointmentId`
      if (!is.null(input_json$`appointmentId`)) {
        if (!(is.character(input_json$`appointmentId`) && length(input_json$`appointmentId`) == 1)) {
          stop(paste("Error! Invalid data for `appointmentId`. Must be a string:", input_json$`appointmentId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentResponse: the required field `appointmentId` is missing."))
      }
      # check the required field `confirmationHint`
      if (!is.null(input_json$`confirmationHint`)) {
        if (!(is.character(input_json$`confirmationHint`) && length(input_json$`confirmationHint`) == 1)) {
          stop(paste("Error! Invalid data for `confirmationHint`. Must be a string:", input_json$`confirmationHint`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentResponse: the required field `confirmationHint` is missing."))
      }
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentResponse: the required field `message` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentResponse: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicDeliveryAppointmentResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `appointmentId` is null
      if (is.null(self$`appointmentId`)) {
        return(FALSE)
      }

      # check if the required `confirmationHint` is null
      if (is.null(self$`confirmationHint`)) {
        return(FALSE)
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `appointmentId` is null
      if (is.null(self$`appointmentId`)) {
        invalid_fields["appointmentId"] <- "Non-nullable required field `appointmentId` cannot be null."
      }

      # check if the required `confirmationHint` is null
      if (is.null(self$`confirmationHint`)) {
        invalid_fields["confirmationHint"] <- "Non-nullable required field `confirmationHint` cannot be null."
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# PublicDeliveryAppointmentResponse$unlock()
#
## Below is an example to define the print function
# PublicDeliveryAppointmentResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicDeliveryAppointmentResponse$lock()

