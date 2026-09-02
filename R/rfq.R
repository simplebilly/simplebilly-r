#' Create a new Rfq
#'
#' @description
#' Rfq Class
#'
#' @docType class
#' @title Rfq
#' @description Rfq Class
#' @format An \code{R6Class} generator object
#' @field currency  character [optional]
#' @field lineItems JSON array of `{product_id, name, sku, quantity, requested_unit_price?, quoted_unit_price?}`. \link{AnyType}
#' @field notes  character [optional]
#' @field requestedDate  character
#' @field responseDate  character [optional]
#' @field rfqNumber  character
#' @field status One of: draft | sent | offer_received | rejected | converted \link{RfqStatus}
#' @field supplierContactId References the supplier entity. character [optional]
#' @field supplierName  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Rfq <- R6::R6Class(
  "Rfq",
  public = list(
    `currency` = NULL,
    `lineItems` = NULL,
    `notes` = NULL,
    `requestedDate` = NULL,
    `responseDate` = NULL,
    `rfqNumber` = NULL,
    `status` = NULL,
    `supplierContactId` = NULL,
    `supplierName` = NULL,

    #' @description
    #' Initialize a new Rfq class.
    #'
    #' @param lineItems JSON array of `{product_id, name, sku, quantity, requested_unit_price?, quoted_unit_price?}`.
    #' @param requestedDate requestedDate
    #' @param rfqNumber rfqNumber
    #' @param status One of: draft | sent | offer_received | rejected | converted
    #' @param currency currency
    #' @param notes notes
    #' @param responseDate responseDate
    #' @param supplierContactId References the supplier entity.
    #' @param supplierName supplierName
    #' @param ... Other optional arguments.
    initialize = function(`lineItems`, `requestedDate`, `rfqNumber`, `status`, `currency` = NULL, `notes` = NULL, `responseDate` = NULL, `supplierContactId` = NULL, `supplierName` = NULL, ...) {
      if (!missing(`lineItems`)) {
        stopifnot(R6::is.R6(`lineItems`))
        self$`lineItems` <- `lineItems`
      }
      if (!missing(`requestedDate`)) {
        if (!(is.character(`requestedDate`) && length(`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", `requestedDate`))
        }
        self$`requestedDate` <- `requestedDate`
      }
      if (!missing(`rfqNumber`)) {
        if (!(is.character(`rfqNumber`) && length(`rfqNumber`) == 1)) {
          stop(paste("Error! Invalid data for `rfqNumber`. Must be a string:", `rfqNumber`))
        }
        self$`rfqNumber` <- `rfqNumber`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`responseDate`)) {
        if (!is.character(`responseDate`)) {
          stop(paste("Error! Invalid data for `responseDate`. Must be a string:", `responseDate`))
        }
        self$`responseDate` <- `responseDate`
      }
      if (!is.null(`supplierContactId`)) {
        if (!(is.character(`supplierContactId`) && length(`supplierContactId`) == 1)) {
          stop(paste("Error! Invalid data for `supplierContactId`. Must be a string:", `supplierContactId`))
        }
        self$`supplierContactId` <- `supplierContactId`
      }
      if (!is.null(`supplierName`)) {
        if (!(is.character(`supplierName`) && length(`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", `supplierName`))
        }
        self$`supplierName` <- `supplierName`
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
    #' @return Rfq as a base R list.
    #' @examples
    #' # convert array of Rfq (x) to a data frame
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
    #' Convert Rfq to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RfqObject <- list()
      if (!is.null(self$`currency`)) {
        RfqObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`lineItems`)) {
        RfqObject[["lineItems"]] <-
          self$extractSimpleType(self$`lineItems`)
      }
      if (!is.null(self$`notes`)) {
        RfqObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`requestedDate`)) {
        RfqObject[["requestedDate"]] <-
          self$`requestedDate`
      }
      if (!is.null(self$`responseDate`)) {
        RfqObject[["responseDate"]] <-
          self$`responseDate`
      }
      if (!is.null(self$`rfqNumber`)) {
        RfqObject[["rfqNumber"]] <-
          self$`rfqNumber`
      }
      if (!is.null(self$`status`)) {
        RfqObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`supplierContactId`)) {
        RfqObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        RfqObject[["supplierName"]] <-
          self$`supplierName`
      }
      return(RfqObject)
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
    #' Deserialize JSON string into an instance of Rfq
    #'
    #' @param input_json the JSON input
    #' @return the instance of Rfq
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`lineItems`)) {
        `lineitems_object` <- AnyType$new()
        `lineitems_object`$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
        self$`lineItems` <- `lineitems_object`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`requestedDate`)) {
        self$`requestedDate` <- this_object$`requestedDate`
      }
      if (!is.null(this_object$`responseDate`)) {
        self$`responseDate` <- this_object$`responseDate`
      }
      if (!is.null(this_object$`rfqNumber`)) {
        self$`rfqNumber` <- this_object$`rfqNumber`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- RfqStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`supplierContactId`)) {
        self$`supplierContactId` <- this_object$`supplierContactId`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Rfq in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Rfq
    #'
    #' @param input_json the JSON input
    #' @return the instance of Rfq
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`lineItems` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`lineItems`, auto_unbox = TRUE, digits = NA))
      self$`notes` <- this_object$`notes`
      self$`requestedDate` <- this_object$`requestedDate`
      self$`responseDate` <- this_object$`responseDate`
      self$`rfqNumber` <- this_object$`rfqNumber`
      self$`status` <- RfqStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`supplierContactId` <- this_object$`supplierContactId`
      self$`supplierName` <- this_object$`supplierName`
      self
    },

    #' @description
    #' Validate JSON input with respect to Rfq and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `lineItems`
      if (!is.null(input_json$`lineItems`)) {
        stopifnot(R6::is.R6(input_json$`lineItems`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Rfq: the required field `lineItems` is missing."))
      }
      # check the required field `requestedDate`
      if (!is.null(input_json$`requestedDate`)) {
        if (!(is.character(input_json$`requestedDate`) && length(input_json$`requestedDate`) == 1)) {
          stop(paste("Error! Invalid data for `requestedDate`. Must be a string:", input_json$`requestedDate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Rfq: the required field `requestedDate` is missing."))
      }
      # check the required field `rfqNumber`
      if (!is.null(input_json$`rfqNumber`)) {
        if (!(is.character(input_json$`rfqNumber`) && length(input_json$`rfqNumber`) == 1)) {
          stop(paste("Error! Invalid data for `rfqNumber`. Must be a string:", input_json$`rfqNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Rfq: the required field `rfqNumber` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Rfq: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Rfq
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        return(FALSE)
      }

      # check if the required `rfqNumber` is null
      if (is.null(self$`rfqNumber`)) {
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
      # check if the required `requestedDate` is null
      if (is.null(self$`requestedDate`)) {
        invalid_fields["requestedDate"] <- "Non-nullable required field `requestedDate` cannot be null."
      }

      # check if the required `rfqNumber` is null
      if (is.null(self$`rfqNumber`)) {
        invalid_fields["rfqNumber"] <- "Non-nullable required field `rfqNumber` cannot be null."
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
# Rfq$unlock()
#
## Below is an example to define the print function
# Rfq$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Rfq$lock()

