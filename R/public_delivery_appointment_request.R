#' Create a new PublicDeliveryAppointmentRequest
#'
#' @description
#' PublicDeliveryAppointmentRequest Class
#'
#' @docType class
#' @title PublicDeliveryAppointmentRequest
#' @description PublicDeliveryAppointmentRequest Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field notes  character [optional]
#' @field requestedDate  character
#' @field supplierName  character
#' @field timeSlot  character [optional]
#' @field warehouseCode Warehouse `code` — the supplier does not know the warehouse uuid. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicDeliveryAppointmentRequest <- R6::R6Class(
  "PublicDeliveryAppointmentRequest",
  public = list(
    `email` = NULL,
    `notes` = NULL,
    `requestedDate` = NULL,
    `supplierName` = NULL,
    `timeSlot` = NULL,
    `warehouseCode` = NULL,

    #' @description
    #' Initialize a new PublicDeliveryAppointmentRequest class.
    #'
    #' @param email email
    #' @param requestedDate requestedDate
    #' @param supplierName supplierName
    #' @param warehouseCode Warehouse `code` — the supplier does not know the warehouse uuid.
    #' @param notes notes
    #' @param timeSlot timeSlot
    #' @param ... Other optional arguments.
    initialize = function(`email`, `requestedDate`, `supplierName`, `warehouseCode`, `notes` = NULL, `timeSlot` = NULL, ...) {
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`requestedDate`)) {
        if (!(is.character(`requestedDate`) && length(`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", `requestedDate`))
        }
        self$`requestedDate` <- `requestedDate`
      }
      if (!missing(`supplierName`)) {
        if (!(is.character(`supplierName`) && length(`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", `supplierName`))
        }
        self$`supplierName` <- `supplierName`
      }
      if (!missing(`warehouseCode`)) {
        if (!(is.character(`warehouseCode`) && length(`warehouseCode`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseCode`. Must be a string:", `warehouseCode`))
        }
        self$`warehouseCode` <- `warehouseCode`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return PublicDeliveryAppointmentRequest as a base R list.
    #' @examples
    #' # convert array of PublicDeliveryAppointmentRequest (x) to a data frame
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
    #' Convert PublicDeliveryAppointmentRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicDeliveryAppointmentRequestObject <- list()
      if (!is.null(self$`email`)) {
        PublicDeliveryAppointmentRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`notes`)) {
        PublicDeliveryAppointmentRequestObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`requestedDate`)) {
        PublicDeliveryAppointmentRequestObject[["requestedDate"]] <-
          self$`requestedDate`
      }
      if (!is.null(self$`supplierName`)) {
        PublicDeliveryAppointmentRequestObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`timeSlot`)) {
        PublicDeliveryAppointmentRequestObject[["timeSlot"]] <-
          self$`timeSlot`
      }
      if (!is.null(self$`warehouseCode`)) {
        PublicDeliveryAppointmentRequestObject[["warehouseCode"]] <-
          self$`warehouseCode`
      }
      return(PublicDeliveryAppointmentRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`requestedDate`)) {
        self$`requestedDate` <- this_object$`requestedDate`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      if (!is.null(this_object$`timeSlot`)) {
        self$`timeSlot` <- this_object$`timeSlot`
      }
      if (!is.null(this_object$`warehouseCode`)) {
        self$`warehouseCode` <- this_object$`warehouseCode`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicDeliveryAppointmentRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicDeliveryAppointmentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicDeliveryAppointmentRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`notes` <- this_object$`notes`
      self$`requestedDate` <- this_object$`requestedDate`
      self$`supplierName` <- this_object$`supplierName`
      self$`timeSlot` <- this_object$`timeSlot`
      self$`warehouseCode` <- this_object$`warehouseCode`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicDeliveryAppointmentRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentRequest: the required field `email` is missing."))
      }
      # check the required field `requestedDate`
      if (!is.null(input_json$`requestedDate`)) {
        if (!(is.character(input_json$`requestedDate`) && length(input_json$`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", input_json$`requestedDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentRequest: the required field `requestedDate` is missing."))
      }
      # check the required field `supplierName`
      if (!is.null(input_json$`supplierName`)) {
        if (!(is.character(input_json$`supplierName`) && length(input_json$`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", input_json$`supplierName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentRequest: the required field `supplierName` is missing."))
      }
      # check the required field `warehouseCode`
      if (!is.null(input_json$`warehouseCode`)) {
        if (!(is.character(input_json$`warehouseCode`) && length(input_json$`warehouseCode`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseCode`. Must be a string:", input_json$`warehouseCode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicDeliveryAppointmentRequest: the required field `warehouseCode` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicDeliveryAppointmentRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        return(FALSE)
      }

      # check if the required `supplierName` is null
      if (is.null(self$`supplierName`)) {
        return(FALSE)
      }

      # check if the required `warehouseCode` is null
      if (is.null(self$`warehouseCode`)) {
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
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        invalid_fields["requestedDate"] <- "Non-nullable required field `requestedDate` cannot be null."
      }

      # check if the required `supplierName` is null
      if (is.null(self$`supplierName`)) {
        invalid_fields["supplierName"] <- "Non-nullable required field `supplierName` cannot be null."
      }

      # check if the required `warehouseCode` is null
      if (is.null(self$`warehouseCode`)) {
        invalid_fields["warehouseCode"] <- "Non-nullable required field `warehouseCode` cannot be null."
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
# PublicDeliveryAppointmentRequest$unlock()
#
## Below is an example to define the print function
# PublicDeliveryAppointmentRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicDeliveryAppointmentRequest$lock()

