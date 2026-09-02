#' Create a new SupplierCondition
#'
#' @description
#' SupplierCondition Class
#'
#' @docType class
#' @title SupplierCondition
#' @description SupplierCondition Class
#' @format An \code{R6Class} generator object
#' @field currency Currency for the minimum order value. character
#' @field deliveryTerms Incoterms, e.g. \"EXW\", \"DAP\". character [optional]
#' @field earlyPaymentDiscountPercent Early-payment discount percentage (Skonto), e.g. 2.0. character [optional]
#' @field isDefault Is this the default condition for the supplier? character [optional]
#' @field minimumOrderValue Minimum order value required for this supplier. character [optional]
#' @field notes  character [optional]
#' @field paymentDueDays Number of days within which payment is due. integer [optional]
#' @field paymentTerms Payment terms, e.g. \"14 Tage, 2\% Skonto\". character [optional]
#' @field supplierContactId The supplier this condition applies to (`contact_id`). References the supplier entity. character
#' @field supplierName The name of the supplier, denormalized for easy listing. character [optional]
#' @field volumeDiscountTiers Tiered discounts: JSON array of `{min_quantity, discount_percent}`. \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SupplierCondition <- R6::R6Class(
  "SupplierCondition",
  public = list(
    `currency` = NULL,
    `deliveryTerms` = NULL,
    `earlyPaymentDiscountPercent` = NULL,
    `isDefault` = NULL,
    `minimumOrderValue` = NULL,
    `notes` = NULL,
    `paymentDueDays` = NULL,
    `paymentTerms` = NULL,
    `supplierContactId` = NULL,
    `supplierName` = NULL,
    `volumeDiscountTiers` = NULL,

    #' @description
    #' Initialize a new SupplierCondition class.
    #'
    #' @param currency Currency for the minimum order value.
    #' @param supplierContactId The supplier this condition applies to (`contact_id`). References the supplier entity.
    #' @param deliveryTerms Incoterms, e.g. \"EXW\", \"DAP\".
    #' @param earlyPaymentDiscountPercent Early-payment discount percentage (Skonto), e.g. 2.0.
    #' @param isDefault Is this the default condition for the supplier?
    #' @param minimumOrderValue Minimum order value required for this supplier.
    #' @param notes notes
    #' @param paymentDueDays Number of days within which payment is due.
    #' @param paymentTerms Payment terms, e.g. \"14 Tage, 2\% Skonto\".
    #' @param supplierName The name of the supplier, denormalized for easy listing.
    #' @param volumeDiscountTiers Tiered discounts: JSON array of `{min_quantity, discount_percent}`.
    #' @param ... Other optional arguments.
    initialize = function(`currency`, `supplierContactId`, `deliveryTerms` = NULL, `earlyPaymentDiscountPercent` = NULL, `isDefault` = NULL, `minimumOrderValue` = NULL, `notes` = NULL, `paymentDueDays` = NULL, `paymentTerms` = NULL, `supplierName` = NULL, `volumeDiscountTiers` = NULL, ...) {
      if (!missing(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!missing(`supplierContactId`)) {
        if (!(is.character(`supplierContactId`) && length(`supplierContactId`) == 1)) {
          stop(paste("Error! Invalid data for `supplierContactId`. Must be a string:", `supplierContactId`))
        }
        self$`supplierContactId` <- `supplierContactId`
      }
      if (!is.null(`deliveryTerms`)) {
        if (!(is.character(`deliveryTerms`) && length(`deliveryTerms`) == 1)) {
          stop(paste("Error! Invalid data for `deliveryTerms`. Must be a string:", `deliveryTerms`))
        }
        self$`deliveryTerms` <- `deliveryTerms`
      }
      if (!is.null(`earlyPaymentDiscountPercent`)) {
        if (!(is.character(`earlyPaymentDiscountPercent`) && length(`earlyPaymentDiscountPercent`) == 1)) {
          stop(paste("Error! Invalid data for `earlyPaymentDiscountPercent`. Must be a string:", `earlyPaymentDiscountPercent`))
        }
        self$`earlyPaymentDiscountPercent` <- `earlyPaymentDiscountPercent`
      }
      if (!is.null(`isDefault`)) {
        if (!(is.logical(`isDefault`) && length(`isDefault`) == 1)) {
          stop(paste("Error! Invalid data for `isDefault`. Must be a boolean:", `isDefault`))
        }
        self$`isDefault` <- `isDefault`
      }
      if (!is.null(`minimumOrderValue`)) {
        if (!(is.character(`minimumOrderValue`) && length(`minimumOrderValue`) == 1)) {
          stop(paste("Error! Invalid data for `minimumOrderValue`. Must be a string:", `minimumOrderValue`))
        }
        self$`minimumOrderValue` <- `minimumOrderValue`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`paymentDueDays`)) {
        if (!(is.numeric(`paymentDueDays`) && length(`paymentDueDays`) == 1)) {
          stop(paste("Error! Invalid data for `paymentDueDays`. Must be an integer:", `paymentDueDays`))
        }
        self$`paymentDueDays` <- `paymentDueDays`
      }
      if (!is.null(`paymentTerms`)) {
        if (!(is.character(`paymentTerms`) && length(`paymentTerms`) == 1)) {
          stop(paste("Error! Invalid data for `paymentTerms`. Must be a string:", `paymentTerms`))
        }
        self$`paymentTerms` <- `paymentTerms`
      }
      if (!is.null(`supplierName`)) {
        if (!(is.character(`supplierName`) && length(`supplierName`) == 1)) {
          stop(paste("Error! Invalid data for `supplierName`. Must be a string:", `supplierName`))
        }
        self$`supplierName` <- `supplierName`
      }
      if (!is.null(`volumeDiscountTiers`)) {
        stopifnot(R6::is.R6(`volumeDiscountTiers`))
        self$`volumeDiscountTiers` <- `volumeDiscountTiers`
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
    #' @return SupplierCondition as a base R list.
    #' @examples
    #' # convert array of SupplierCondition (x) to a data frame
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
    #' Convert SupplierCondition to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SupplierConditionObject <- list()
      if (!is.null(self$`currency`)) {
        SupplierConditionObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`deliveryTerms`)) {
        SupplierConditionObject[["deliveryTerms"]] <-
          self$`deliveryTerms`
      }
      if (!is.null(self$`earlyPaymentDiscountPercent`)) {
        SupplierConditionObject[["earlyPaymentDiscountPercent"]] <-
          self$`earlyPaymentDiscountPercent`
      }
      if (!is.null(self$`isDefault`)) {
        SupplierConditionObject[["isDefault"]] <-
          self$`isDefault`
      }
      if (!is.null(self$`minimumOrderValue`)) {
        SupplierConditionObject[["minimumOrderValue"]] <-
          self$`minimumOrderValue`
      }
      if (!is.null(self$`notes`)) {
        SupplierConditionObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`paymentDueDays`)) {
        SupplierConditionObject[["paymentDueDays"]] <-
          self$`paymentDueDays`
      }
      if (!is.null(self$`paymentTerms`)) {
        SupplierConditionObject[["paymentTerms"]] <-
          self$`paymentTerms`
      }
      if (!is.null(self$`supplierContactId`)) {
        SupplierConditionObject[["supplierContactId"]] <-
          self$`supplierContactId`
      }
      if (!is.null(self$`supplierName`)) {
        SupplierConditionObject[["supplierName"]] <-
          self$`supplierName`
      }
      if (!is.null(self$`volumeDiscountTiers`)) {
        SupplierConditionObject[["volumeDiscountTiers"]] <-
          self$extractSimpleType(self$`volumeDiscountTiers`)
      }
      return(SupplierConditionObject)
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
    #' Deserialize JSON string into an instance of SupplierCondition
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierCondition
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`deliveryTerms`)) {
        self$`deliveryTerms` <- this_object$`deliveryTerms`
      }
      if (!is.null(this_object$`earlyPaymentDiscountPercent`)) {
        self$`earlyPaymentDiscountPercent` <- this_object$`earlyPaymentDiscountPercent`
      }
      if (!is.null(this_object$`isDefault`)) {
        self$`isDefault` <- this_object$`isDefault`
      }
      if (!is.null(this_object$`minimumOrderValue`)) {
        self$`minimumOrderValue` <- this_object$`minimumOrderValue`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`paymentDueDays`)) {
        self$`paymentDueDays` <- this_object$`paymentDueDays`
      }
      if (!is.null(this_object$`paymentTerms`)) {
        self$`paymentTerms` <- this_object$`paymentTerms`
      }
      if (!is.null(this_object$`supplierContactId`)) {
        self$`supplierContactId` <- this_object$`supplierContactId`
      }
      if (!is.null(this_object$`supplierName`)) {
        self$`supplierName` <- this_object$`supplierName`
      }
      if (!is.null(this_object$`volumeDiscountTiers`)) {
        `volumediscounttiers_object` <- AnyType$new()
        `volumediscounttiers_object`$fromJSON(jsonlite::toJSON(this_object$`volumeDiscountTiers`, auto_unbox = TRUE, digits = NA))
        self$`volumeDiscountTiers` <- `volumediscounttiers_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SupplierCondition in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SupplierCondition
    #'
    #' @param input_json the JSON input
    #' @return the instance of SupplierCondition
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`currency` <- this_object$`currency`
      self$`deliveryTerms` <- this_object$`deliveryTerms`
      self$`earlyPaymentDiscountPercent` <- this_object$`earlyPaymentDiscountPercent`
      self$`isDefault` <- this_object$`isDefault`
      self$`minimumOrderValue` <- this_object$`minimumOrderValue`
      self$`notes` <- this_object$`notes`
      self$`paymentDueDays` <- this_object$`paymentDueDays`
      self$`paymentTerms` <- this_object$`paymentTerms`
      self$`supplierContactId` <- this_object$`supplierContactId`
      self$`supplierName` <- this_object$`supplierName`
      self$`volumeDiscountTiers` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`volumeDiscountTiers`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SupplierCondition and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `currency`
      if (!is.null(input_json$`currency`)) {
        if (!(is.character(input_json$`currency`) && length(input_json$`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", input_json$`currency`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierCondition: the required field `currency` is missing."))
      }
      # check the required field `supplierContactId`
      if (!is.null(input_json$`supplierContactId`)) {
        if (!(is.character(input_json$`supplierContactId`) && length(input_json$`supplierContactId`) == 1)) {
          stop(paste("Error! Invalid data for `supplierContactId`. Must be a string:", input_json$`supplierContactId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SupplierCondition: the required field `supplierContactId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SupplierCondition
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        return(FALSE)
      }

      if (nchar(self$`currency`) > 3) {
        return(FALSE)
      }
      if (nchar(self$`currency`) < 3) {
        return(FALSE)
      }

      # check if the required `supplierContactId` is null
      if (is.null(self$`supplierContactId`)) {
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
      # check if the required `currency` is null
      if (is.null(self$`currency`)) {
        invalid_fields["currency"] <- "Non-nullable required field `currency` cannot be null."
      }

      if (nchar(self$`currency`) > 3) {
        invalid_fields["currency"] <- "Invalid length for `currency`, must be smaller than or equal to 3."
      }
      if (nchar(self$`currency`) < 3) {
        invalid_fields["currency"] <- "Invalid length for `currency`, must be bigger than or equal to 3."
      }

      # check if the required `supplierContactId` is null
      if (is.null(self$`supplierContactId`)) {
        invalid_fields["supplierContactId"] <- "Non-nullable required field `supplierContactId` cannot be null."
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
# SupplierCondition$unlock()
#
## Below is an example to define the print function
# SupplierCondition$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SupplierCondition$lock()

