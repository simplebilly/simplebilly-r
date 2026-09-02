#' Create a new DeliveryAppointment
#'
#' @description
#' DeliveryAppointment Class
#'
#' @docType class
#' @title DeliveryAppointment
#' @description DeliveryAppointment Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field notes  character [optional]
#' @field phone  character [optional]
#' @field requestedDate  character
#' @field status One of: requested | confirmed | arrived | cancelled | completed \link{DeliveryAppointmentStatus}
#' @field supplierName  character
#' @field timeSlot e.g. \"08:00-10:00\" character [optional]
#' @field warehouseId References the warehouse entity. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeliveryAppointment <- R6::R6Class(
  "DeliveryAppointment",
  public = list(
    `email` = NULL,
    `notes` = NULL,
    `phone` = NULL,
    `requestedDate` = NULL,
    `status` = NULL,
    `supplierName` = NULL,
    `timeSlot` = NULL,
    `warehouseId` = NULL,

    #' @description
    #' Initialize a new DeliveryAppointment class.
    #'
    #' @param email email
    #' @param requestedDate requestedDate
    #' @param status One of: requested | confirmed | arrived | cancelled | completed
    #' @param supplierName supplierName
    #' @param warehouseId References the warehouse entity.
    #' @param notes notes
    #' @param phone phone
    #' @param timeSlot e.g. \"08:00-10:00\"
    #' @param ... Other optional arguments.
    initialize = function(`email`, `requestedDate`, `status`, `supplierName`, `warehouseId`, `notes` = NULL, `phone` = NULL, `timeSlot` = NULL, ...) {
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
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`supplierName`)) {
        if (!(is.character(`supplierName`) && length(`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", `supplierName`))
        }
        self$`supplierName` <- `supplierName`
      }
      if (!missing(`warehouseId`)) {
        if (!(is.character(`warehouseId`) && length(`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", `warehouseId`))
        }
        self$`warehouseId` <- `warehouseId`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
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
    #' @return DeliveryAppointment as a base R list.
    #' @examples
    #' # convert array of DeliveryAppointment (x) to a data frame
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
    #' Convert DeliveryAppointment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeliveryAppointmentObject <- list()
      if (!is.null(self$`email`)) {
        DeliveryAppointmentObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`notes`)) {
        DeliveryAppointmentObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`phone`)) {
        DeliveryAppointmentObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`requestedDate`)) {
        DeliveryAppointmentObject[["requestedDate"]] <-
          self$`requestedDate`
      }
      if (!is.null(self$`status`)) {
        DeliveryAppointmentObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierName`)) {
        DeliveryAppointmentObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`timeSlot`)) {
        DeliveryAppointmentObject[["timeSlot"]] <-
          self$`timeSlot`
      }
      if (!is.null(self$`warehouseId`)) {
        DeliveryAppointmentObject[["warehouseId"]] <-
          self$`warehouseId`
      }
      return(DeliveryAppointmentObject)
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
    #' Deserialize JSON string into an instance of DeliveryAppointment
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryAppointment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`requestedDate`)) {
        self$`requestedDate` <- this_object$`requestedDate`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- DeliveryAppointmentStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      if (!is.null(this_object$`timeSlot`)) {
        self$`timeSlot` <- this_object$`timeSlot`
      }
      if (!is.null(this_object$`warehouseId`)) {
        self$`warehouseId` <- this_object$`warehouseId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeliveryAppointment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeliveryAppointment
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeliveryAppointment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`notes` <- this_object$`notes`
      self$`phone` <- this_object$`phone`
      self$`requestedDate` <- this_object$`requestedDate`
      self$`status` <- DeliveryAppointmentStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`supplierName` <- this_object$`supplierName`
      self$`timeSlot` <- this_object$`timeSlot`
      self$`warehouseId` <- this_object$`warehouseId`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeliveryAppointment and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for DeliveryAppointment: the required field `email` is missing."))
      }
      # check the required field `requestedDate`
      if (!is.null(input_json$`requestedDate`)) {
        if (!(is.character(input_json$`requestedDate`) && length(input_json$`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", input_json$`requestedDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryAppointment: the required field `requestedDate` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryAppointment: the required field `status` is missing."))
      }
      # check the required field `supplierName`
      if (!is.null(input_json$`supplierName`)) {
        if (!(is.character(input_json$`supplierName`) && length(input_json$`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", input_json$`supplierName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryAppointment: the required field `supplierName` is missing."))
      }
      # check the required field `warehouseId`
      if (!is.null(input_json$`warehouseId`)) {
        if (!(is.character(input_json$`warehouseId`) && length(input_json$`warehouseId`) == 1)) {
          stop(paste("Error! Invalid data for `warehouseId`. Must be a string:", input_json$`warehouseId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeliveryAppointment: the required field `warehouseId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeliveryAppointment
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `supplierName` is null
      if (is.null(self$`supplierName`)) {
        return(FALSE)
      }

      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
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

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `supplierName` is null
      if (is.null(self$`supplierName`)) {
        invalid_fields["supplierName"] <- "Non-nullable required field `supplierName` cannot be null."
      }

      # check if the required `warehouseId` is null
      if (is.null(self$`warehouseId`)) {
        invalid_fields["warehouseId"] <- "Non-nullable required field `warehouseId` cannot be null."
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
# DeliveryAppointment$unlock()
#
## Below is an example to define the print function
# DeliveryAppointment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeliveryAppointment$lock()

