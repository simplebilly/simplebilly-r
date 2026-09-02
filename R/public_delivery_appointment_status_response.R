#' Create a new PublicDeliveryAppointmentStatusResponse
#'
#' @description
#' PublicDeliveryAppointmentStatusResponse Class
#'
#' @docType class
#' @title PublicDeliveryAppointmentStatusResponse
#' @description PublicDeliveryAppointmentStatusResponse Class
#' @format An \code{R6Class} generator object
#' @field appointmentId  character
#' @field requestedDate  character
#' @field status  character
#' @field timeSlot  character [optional]
#' @field warehouseName  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicDeliveryAppointmentStatusResponse <- R6::R6Class(
  "PublicDeliveryAppointmentStatusResponse",
  public = list(
    `appointmentId` = NULL,
    `requestedDate` = NULL,
    `status` = NULL,
    `timeSlot` = NULL,
    `warehouseName` = NULL,

    #' @description
    #' Initialize a new PublicDeliveryAppointmentStatusResponse class.
    #'
    #' @param appointmentId appointmentId
    #' @param requestedDate requestedDate
    #' @param status status
    #' @param warehouseName warehouseName
    #' @param timeSlot timeSlot
    #' @param ... Other optional arguments.
    initialize = function(`appointmentId`, `requestedDate`, `status`, `warehouseName`, `timeSlot` = NULL, ...) {
      if (!missing(`appointmentId`)) {
        if (!(is.character(`appointmentId`) && length(`appointmentId`) == 1)) {
          stop(paste("Error! Invalid data for `appointmentId`. Must be a string:", `appointmentId`))
        }
        self$`appointmentId` <- `appointmentId`
      }
      if (!missing(`requestedDate`)) {
        if (!(is.character(`requestedDate`) && length(`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", `requestedDate`))
        }
        self$`requestedDate` <- `requestedDate`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`warehouseName`)) {
        if (!(is.character(`warehouseName`) && length(`warehouseName`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseName`. Must be a string:", `warehouseName`))
        }
        self$`warehouseName` <- `warehouseName`
      }
      if (!is.null(`timeSlot`)) {
        if (!(is.character(`timeSlot`) && length(`timeSlot`) == 1)) {
          stop(paste("Error! Invalid data for `timeSlot`. Must be a string:", `timeSlot`))
        }
        self$`timeSlot` <- `timeSlot`
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
    #' @return PublicDeliveryAppointmentStatusResponse as a base R list.
    #' @examples
    #' # convert array of PublicDeliveryAppointmentStatusResponse (x) to a data frame
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
    #' Convert PublicDeliveryAppointmentStatusResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicDeliveryAppointmentStatusResponseObject <- list()
      if (!is.null(self$`appointmentId`)) {
        PublicDeliveryAppointmentStatusResponseObject[["appointmentId"]] <-
          self$`appointmentId`
      }
      if (!is.null(self$`requestedDate`)) {
        PublicDeliveryAppointmentStatusResponseObject[["requestedDate"]] <-
          self$`requestedDate`
      }
      if (!is.null(self$`status`)) {
        PublicDeliveryAppointmentStatusResponseObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`timeSlot`)) {
        PublicDeliveryAppointmentStatusResponseObject[["timeSlot"]] <-
          self$`timeSlot`
      }
      if (!is.null(self$`warehouseName`)) {
        PublicDeliveryAppointmentStatusResponseObject[["warehouseName"]] <-
          self$`warehouseName`
      }
      return(PublicDeliveryAppointmentStatusResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentStatusResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`appointmentId`)) {
        self$`appointmentId` <- this_object$`appointmentId`
      }
      if (!is.null(this_object$`requestedDate`)) {
        self$`requestedDate` <- this_object$`requestedDate`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`timeSlot`)) {
        self$`timeSlot` <- this_object$`timeSlot`
      }
      if (!is.null(this_object$`warehouseName`)) {
        self$`warehouseName` <- this_object$`warehouseName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicDeliveryAppointmentStatusResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentStatusResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentStatusResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`appointmentId` <- this_object$`appointmentId`
      self$`requestedDate` <- this_object$`requestedDate`
      self$`status` <- this_object$`status`
      self$`timeSlot` <- this_object$`timeSlot`
      self$`warehouseName` <- this_object$`warehouseName`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicDeliveryAppointmentStatusResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentStatusResponse: the required field `appointmentId` is missing."))
      }
      # check the required field `requestedDate`
      if (!is.null(input_json$`requestedDate`)) {
        if (!(is.character(input_json$`requestedDate`) && length(input_json$`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", input_json$`requestedDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentStatusResponse: the required field `requestedDate` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentStatusResponse: the required field `status` is missing."))
      }
      # check the required field `warehouseName`
      if (!is.null(input_json$`warehouseName`)) {
        if (!(is.character(input_json$`warehouseName`) && length(input_json$`warehouseName`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseName`. Must be a string:", input_json$`warehouseName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentStatusResponse: the required field `warehouseName` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicDeliveryAppointmentStatusResponse
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

      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `warehouseName` is null
      if (is.null(self$`warehouseName`)) {
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

      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        invalid_fields["requestedDate"] <- "Non-nullable required field `requestedDate` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `warehouseName` is null
      if (is.null(self$`warehouseName`)) {
        invalid_fields["warehouseName"] <- "Non-nullable required field `warehouseName` cannot be null."
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
# PublicDeliveryAppointmentStatusResponse$unlock()
#
## Below is an example to define the print function
# PublicDeliveryAppointmentStatusResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicDeliveryAppointmentStatusResponse$lock()

