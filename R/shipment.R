#' Create a new Shipment
#'
#' @description
#' Shipment Class
#'
#' @docType class
#' @title Shipment
#' @description Shipment Class
#' @format An \code{R6Class} generator object
#' @field deliveredAt  character [optional]
#' @field labelUrl  character [optional]
#' @field lineItemsShipment  \link{AnyType} [optional]
#' @field orderId References the order entity. character
#' @field recipientAddress  \link{AnyType} [optional]
#' @field shipmentDate  character
#' @field shippingCarrier  character
#' @field shippingCost  character [optional]
#' @field shippingMethod  character [optional]
#' @field signedBy  character [optional]
#' @field status  character
#' @field trackingEvents Latest carrier tracking events (from the live tracking API). \link{AnyType} [optional]
#' @field trackingNumber  character [optional]
#' @field trackingUrl  character [optional]
#' @field weightKg  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Shipment <- R6::R6Class(
  "Shipment",
  public = list(
    `deliveredAt` = NULL,
    `labelUrl` = NULL,
    `lineItemsShipment` = NULL,
    `orderId` = NULL,
    `recipientAddress` = NULL,
    `shipmentDate` = NULL,
    `shippingCarrier` = NULL,
    `shippingCost` = NULL,
    `shippingMethod` = NULL,
    `signedBy` = NULL,
    `status` = NULL,
    `trackingEvents` = NULL,
    `trackingNumber` = NULL,
    `trackingUrl` = NULL,
    `weightKg` = NULL,

    #' @description
    #' Initialize a new Shipment class.
    #'
    #' @param orderId References the order entity.
    #' @param shipmentDate shipmentDate
    #' @param shippingCarrier shippingCarrier
    #' @param status status
    #' @param deliveredAt deliveredAt
    #' @param labelUrl labelUrl
    #' @param lineItemsShipment lineItemsShipment
    #' @param recipientAddress recipientAddress
    #' @param shippingCost shippingCost
    #' @param shippingMethod shippingMethod
    #' @param signedBy signedBy
    #' @param trackingEvents Latest carrier tracking events (from the live tracking API).
    #' @param trackingNumber trackingNumber
    #' @param trackingUrl trackingUrl
    #' @param weightKg weightKg
    #' @param ... Other optional arguments.
    initialize = function(`orderId`, `shipmentDate`, `shippingCarrier`, `status`, `deliveredAt` = NULL, `labelUrl` = NULL, `lineItemsShipment` = NULL, `recipientAddress` = NULL, `shippingCost` = NULL, `shippingMethod` = NULL, `signedBy` = NULL, `trackingEvents` = NULL, `trackingNumber` = NULL, `trackingUrl` = NULL, `weightKg` = NULL, ...) {
      if (!missing(`orderId`)) {
        if (!(is.character(`orderId`) && length(`orderId`) == 1)) {
          stop(paste("Error! Invalid data for `orderId`. Must be a string:", `orderId`))
        }
        self$`orderId` <- `orderId`
      }
      if (!missing(`shipmentDate`)) {
        if (!(is.character(`shipmentDate`) && length(`shipmentDate`) == 1)) {
          stop(paste("Error! Invalid data for `shipmentDate`. Must be a string:", `shipmentDate`))
        }
        self$`shipmentDate` <- `shipmentDate`
      }
      if (!missing(`shippingCarrier`)) {
        if (!(is.character(`shippingCarrier`) && length(`shippingCarrier`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCarrier`. Must be a string:", `shippingCarrier`))
        }
        self$`shippingCarrier` <- `shippingCarrier`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`deliveredAt`)) {
        if (!is.character(`deliveredAt`)) {
          stop(paste("Error! Invalid data for `deliveredAt`. Must be a string:", `deliveredAt`))
        }
        self$`deliveredAt` <- `deliveredAt`
      }
      if (!is.null(`labelUrl`)) {
        if (!(is.character(`labelUrl`) && length(`labelUrl`) == 1)) {
          stop(paste("Error! Invalid data for `labelUrl`. Must be a string:", `labelUrl`))
        }
        self$`labelUrl` <- `labelUrl`
      }
      if (!is.null(`lineItemsShipment`)) {
        stopifnot(R6::is.R6(`lineItemsShipment`))
        self$`lineItemsShipment` <- `lineItemsShipment`
      }
      if (!is.null(`recipientAddress`)) {
        stopifnot(R6::is.R6(`recipientAddress`))
        self$`recipientAddress` <- `recipientAddress`
      }
      if (!is.null(`shippingCost`)) {
        if (!(is.character(`shippingCost`) && length(`shippingCost`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCost`. Must be a string:", `shippingCost`))
        }
        self$`shippingCost` <- `shippingCost`
      }
      if (!is.null(`shippingMethod`)) {
        if (!(is.character(`shippingMethod`) && length(`shippingMethod`) == 1)) {
          stop(paste("Error! Invalid data for `shippingMethod`. Must be a string:", `shippingMethod`))
        }
        self$`shippingMethod` <- `shippingMethod`
      }
      if (!is.null(`signedBy`)) {
        if (!(is.character(`signedBy`) && length(`signedBy`) == 1)) {
          stop(paste("Error! Invalid data for `signedBy`. Must be a string:", `signedBy`))
        }
        self$`signedBy` <- `signedBy`
      }
      if (!is.null(`trackingEvents`)) {
        stopifnot(R6::is.R6(`trackingEvents`))
        self$`trackingEvents` <- `trackingEvents`
      }
      if (!is.null(`trackingNumber`)) {
        if (!(is.character(`trackingNumber`) && length(`trackingNumber`) == 1)) {
          stop(paste("Error! Invalid data for `trackingNumber`. Must be a string:", `trackingNumber`))
        }
        self$`trackingNumber` <- `trackingNumber`
      }
      if (!is.null(`trackingUrl`)) {
        if (!(is.character(`trackingUrl`) && length(`trackingUrl`) == 1)) {
          stop(paste("Error! Invalid data for `trackingUrl`. Must be a string:", `trackingUrl`))
        }
        self$`trackingUrl` <- `trackingUrl`
      }
      if (!is.null(`weightKg`)) {
        if (!(is.numeric(`weightKg`) && length(`weightKg`) == 1)) {
          stop(paste("Error! Invalid data for `weightKg`. Must be a number:", `weightKg`))
        }
        self$`weightKg` <- `weightKg`
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
    #' @return Shipment as a base R list.
    #' @examples
    #' # convert array of Shipment (x) to a data frame
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
    #' Convert Shipment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentObject <- list()
      if (!is.null(self$`deliveredAt`)) {
        ShipmentObject[["deliveredAt"]] <-
          self$`deliveredAt`
      }
      if (!is.null(self$`labelUrl`)) {
        ShipmentObject[["labelUrl"]] <-
          self$`labelUrl`
      }
      if (!is.null(self$`lineItemsShipment`)) {
        ShipmentObject[["lineItemsShipment"]] <-
          self$extractSimpleType(self$`lineItemsShipment`)
      }
      if (!is.null(self$`orderId`)) {
        ShipmentObject[["orderId"]] <-
          self$`orderId`
      }
      if (!is.null(self$`recipientAddress`)) {
        ShipmentObject[["recipientAddress"]] <-
          self$extractSimpleType(self$`recipientAddress`)
      }
      if (!is.null(self$`shipmentDate`)) {
        ShipmentObject[["shipmentDate"]] <-
          self$`shipmentDate`
      }
      if (!is.null(self$`shippingCarrier`)) {
        ShipmentObject[["shippingCarrier"]] <-
          self$`shippingCarrier`
      }
      if (!is.null(self$`shippingCost`)) {
        ShipmentObject[["shippingCost"]] <-
          self$`shippingCost`
      }
      if (!is.null(self$`shippingMethod`)) {
        ShipmentObject[["shippingMethod"]] <-
          self$`shippingMethod`
      }
      if (!is.null(self$`signedBy`)) {
        ShipmentObject[["signedBy"]] <-
          self$`signedBy`
      }
      if (!is.null(self$`status`)) {
        ShipmentObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`trackingEvents`)) {
        ShipmentObject[["trackingEvents"]] <-
          self$extractSimpleType(self$`trackingEvents`)
      }
      if (!is.null(self$`trackingNumber`)) {
        ShipmentObject[["trackingNumber"]] <-
          self$`trackingNumber`
      }
      if (!is.null(self$`trackingUrl`)) {
        ShipmentObject[["trackingUrl"]] <-
          self$`trackingUrl`
      }
      if (!is.null(self$`weightKg`)) {
        ShipmentObject[["weightKg"]] <-
          self$`weightKg`
      }
      return(ShipmentObject)
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
    #' Deserialize JSON string into an instance of Shipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shipment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deliveredAt`)) {
        self$`deliveredAt` <- this_object$`deliveredAt`
      }
      if (!is.null(this_object$`labelUrl`)) {
        self$`labelUrl` <- this_object$`labelUrl`
      }
      if (!is.null(this_object$`lineItemsShipment`)) {
        `lineitemsshipment_object` <- AnyType$new()
        `lineitemsshipment_object`$fromJSON(jsonlite::toJSON(this_object$`lineItemsShipment`, auto_unbox = TRUE, digits = NA))
        self$`lineItemsShipment` <- `lineitemsshipment_object`
      }
      if (!is.null(this_object$`orderId`)) {
        self$`orderId` <- this_object$`orderId`
      }
      if (!is.null(this_object$`recipientAddress`)) {
        `recipientaddress_object` <- AnyType$new()
        `recipientaddress_object`$fromJSON(jsonlite::toJSON(this_object$`recipientAddress`, auto_unbox = TRUE, digits = NA))
        self$`recipientAddress` <- `recipientaddress_object`
      }
      if (!is.null(this_object$`shipmentDate`)) {
        self$`shipmentDate` <- this_object$`shipmentDate`
      }
      if (!is.null(this_object$`shippingCarrier`)) {
        self$`shippingCarrier` <- this_object$`shippingCarrier`
      }
      if (!is.null(this_object$`shippingCost`)) {
        self$`shippingCost` <- this_object$`shippingCost`
      }
      if (!is.null(this_object$`shippingMethod`)) {
        self$`shippingMethod` <- this_object$`shippingMethod`
      }
      if (!is.null(this_object$`signedBy`)) {
        self$`signedBy` <- this_object$`signedBy`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`trackingEvents`)) {
        `trackingevents_object` <- AnyType$new()
        `trackingevents_object`$fromJSON(jsonlite::toJSON(this_object$`trackingEvents`, auto_unbox = TRUE, digits = NA))
        self$`trackingEvents` <- `trackingevents_object`
      }
      if (!is.null(this_object$`trackingNumber`)) {
        self$`trackingNumber` <- this_object$`trackingNumber`
      }
      if (!is.null(this_object$`trackingUrl`)) {
        self$`trackingUrl` <- this_object$`trackingUrl`
      }
      if (!is.null(this_object$`weightKg`)) {
        self$`weightKg` <- this_object$`weightKg`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Shipment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Shipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Shipment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deliveredAt` <- this_object$`deliveredAt`
      self$`labelUrl` <- this_object$`labelUrl`
      self$`lineItemsShipment` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItemsShipment`, auto_unbox = TRUE, digits = NA))
      self$`orderId` <- this_object$`orderId`
      self$`recipientAddress` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`recipientAddress`, auto_unbox = TRUE, digits = NA))
      self$`shipmentDate` <- this_object$`shipmentDate`
      self$`shippingCarrier` <- this_object$`shippingCarrier`
      self$`shippingCost` <- this_object$`shippingCost`
      self$`shippingMethod` <- this_object$`shippingMethod`
      self$`signedBy` <- this_object$`signedBy`
      self$`status` <- this_object$`status`
      self$`trackingEvents` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`trackingEvents`, auto_unbox = TRUE, digits = NA))
      self$`trackingNumber` <- this_object$`trackingNumber`
      self$`trackingUrl` <- this_object$`trackingUrl`
      self$`weightKg` <- this_object$`weightKg`
      self
    },

    #' @description
    #' Validate JSON input with respect to Shipment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `orderId`
      if (!is.null(input_json$`orderId`)) {
        if (!(is.character(input_json$`orderId`) && length(input_json$`orderId`) == 1)) {
          stop(paste("Error! Invalid data for `orderId`. Must be a string:", input_json$`orderId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Shipment: the required field `orderId` is missing."))
      }
      # check the required field `shipmentDate`
      if (!is.null(input_json$`shipmentDate`)) {
        if (!(is.character(input_json$`shipmentDate`) && length(input_json$`shipmentDate`) == 1)) {
          stop(paste("Error! Invalid data for `shipmentDate`. Must be a string:", input_json$`shipmentDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Shipment: the required field `shipmentDate` is missing."))
      }
      # check the required field `shippingCarrier`
      if (!is.null(input_json$`shippingCarrier`)) {
        if (!(is.character(input_json$`shippingCarrier`) && length(input_json$`shippingCarrier`) == 1)) {
          stop(paste("Error! Invalid data for `shippingCarrier`. Must be a string:", input_json$`shippingCarrier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Shipment: the required field `shippingCarrier` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Shipment: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Shipment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `orderId` is null
      if (is.null(self$`orderId`)) {
        return(FALSE)
      }

      # check if the required `shipmentDate` is null
      if (is.null(self$`shipmentDate`)) {
        return(FALSE)
      }

      # check if the required `shippingCarrier` is null
      if (is.null(self$`shippingCarrier`)) {
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
      # check if the required `orderId` is null
      if (is.null(self$`orderId`)) {
        invalid_fields["orderId"] <- "Non-nullable required field `orderId` cannot be null."
      }

      # check if the required `shipmentDate` is null
      if (is.null(self$`shipmentDate`)) {
        invalid_fields["shipmentDate"] <- "Non-nullable required field `shipmentDate` cannot be null."
      }

      # check if the required `shippingCarrier` is null
      if (is.null(self$`shippingCarrier`)) {
        invalid_fields["shippingCarrier"] <- "Non-nullable required field `shippingCarrier` cannot be null."
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
# Shipment$unlock()
#
## Below is an example to define the print function
# Shipment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Shipment$lock()

