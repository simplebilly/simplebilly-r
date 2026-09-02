#' Create a new CouponUpdate
#'
#' @description
#' CouponUpdate Class
#'
#' @docType class
#' @title CouponUpdate
#' @description CouponUpdate Class
#' @format An \code{R6Class} generator object
#' @field code  character [optional]
#' @field description  character [optional]
#' @field discountType  \link{DiscountType} [optional]
#' @field discountValue  character [optional]
#' @field expiresAt  character [optional]
#' @field isActive  character [optional]
#' @field isCombineable  character [optional]
#' @field maxDiscountAmount  character [optional]
#' @field maxUses  integer [optional]
#' @field maxUsesPerCustomer  integer [optional]
#' @field minOrderAmount  character [optional]
#' @field productIds  \link{AnyType} [optional]
#' @field startsAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CouponUpdate <- R6::R6Class(
  "CouponUpdate",
  public = list(
    `code` = NULL,
    `description` = NULL,
    `discountType` = NULL,
    `discountValue` = NULL,
    `expiresAt` = NULL,
    `isActive` = NULL,
    `isCombineable` = NULL,
    `maxDiscountAmount` = NULL,
    `maxUses` = NULL,
    `maxUsesPerCustomer` = NULL,
    `minOrderAmount` = NULL,
    `productIds` = NULL,
    `startsAt` = NULL,

    #' @description
    #' Initialize a new CouponUpdate class.
    #'
    #' @param code code
    #' @param description description
    #' @param discountType discountType
    #' @param discountValue discountValue
    #' @param expiresAt expiresAt
    #' @param isActive isActive
    #' @param isCombineable isCombineable
    #' @param maxDiscountAmount maxDiscountAmount
    #' @param maxUses maxUses
    #' @param maxUsesPerCustomer maxUsesPerCustomer
    #' @param minOrderAmount minOrderAmount
    #' @param productIds productIds
    #' @param startsAt startsAt
    #' @param ... Other optional arguments.
    initialize = function(`code` = NULL, `description` = NULL, `discountType` = NULL, `discountValue` = NULL, `expiresAt` = NULL, `isActive` = NULL, `isCombineable` = NULL, `maxDiscountAmount` = NULL, `maxUses` = NULL, `maxUsesPerCustomer` = NULL, `minOrderAmount` = NULL, `productIds` = NULL, `startsAt` = NULL, ...) {
      if (!is.null(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`discountType`)) {
        if (!(`discountType` %in% c())) {
          stop(paste("Error! \"", `discountType`, "\" cannot be assigned to `discountType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`discountType`))
        self$`discountType` <- `discountType`
      }
      if (!is.null(`discountValue`)) {
        if (!(is.character(`discountValue`) && length(`discountValue`) == 1)) {
          stop(paste("Error! Invalid data for `discountValue`. Must be a string:", `discountValue`))
        }
        self$`discountValue` <- `discountValue`
      }
      if (!is.null(`expiresAt`)) {
        if (!is.character(`expiresAt`)) {
          stop(paste("Error! Invalid data for `expiresAt`. Must be a string:", `expiresAt`))
        }
        self$`expiresAt` <- `expiresAt`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`isCombineable`)) {
        if (!(is.logical(`isCombineable`) && length(`isCombineable`) == 1)) {
          stop(paste("Error! Invalid data for `isCombineable`. Must be a boolean:", `isCombineable`))
        }
        self$`isCombineable` <- `isCombineable`
      }
      if (!is.null(`maxDiscountAmount`)) {
        if (!(is.character(`maxDiscountAmount`) && length(`maxDiscountAmount`) == 1)) {
          stop(paste("Error! Invalid data for `maxDiscountAmount`. Must be a string:", `maxDiscountAmount`))
        }
        self$`maxDiscountAmount` <- `maxDiscountAmount`
      }
      if (!is.null(`maxUses`)) {
        if (!(is.numeric(`maxUses`) && length(`maxUses`) == 1)) {
          stop(paste("Error! Invalid data for `maxUses`. Must be an integer:", `maxUses`))
        }
        self$`maxUses` <- `maxUses`
      }
      if (!is.null(`maxUsesPerCustomer`)) {
        if (!(is.numeric(`maxUsesPerCustomer`) && length(`maxUsesPerCustomer`) == 1)) {
          stop(paste("Error! Invalid data for `maxUsesPerCustomer`. Must be an integer:", `maxUsesPerCustomer`))
        }
        self$`maxUsesPerCustomer` <- `maxUsesPerCustomer`
      }
      if (!is.null(`minOrderAmount`)) {
        if (!(is.character(`minOrderAmount`) && length(`minOrderAmount`) == 1)) {
          stop(paste("Error! Invalid data for `minOrderAmount`. Must be a string:", `minOrderAmount`))
        }
        self$`minOrderAmount` <- `minOrderAmount`
      }
      if (!is.null(`productIds`)) {
        stopifnot(R6::is.R6(`productIds`))
        self$`productIds` <- `productIds`
      }
      if (!is.null(`startsAt`)) {
        if (!is.character(`startsAt`)) {
          stop(paste("Error! Invalid data for `startsAt`. Must be a string:", `startsAt`))
        }
        self$`startsAt` <- `startsAt`
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
    #' @return CouponUpdate as a base R list.
    #' @examples
    #' # convert array of CouponUpdate (x) to a data frame
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
    #' Convert CouponUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CouponUpdateObject <- list()
      if (!is.null(self$`code`)) {
        CouponUpdateObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`description`)) {
        CouponUpdateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`discountType`)) {
        CouponUpdateObject[["discountType"]] <-
          self$extractSimpleType(self$`discountType`)
      }
      if (!is.null(self$`discountValue`)) {
        CouponUpdateObject[["discountValue"]] <-
          self$`discountValue`
      }
      if (!is.null(self$`expiresAt`)) {
        CouponUpdateObject[["expiresAt"]] <-
          self$`expiresAt`
      }
      if (!is.null(self$`isActive`)) {
        CouponUpdateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`isCombineable`)) {
        CouponUpdateObject[["isCombineable"]] <-
          self$`isCombineable`
      }
      if (!is.null(self$`maxDiscountAmount`)) {
        CouponUpdateObject[["maxDiscountAmount"]] <-
          self$`maxDiscountAmount`
      }
      if (!is.null(self$`maxUses`)) {
        CouponUpdateObject[["maxUses"]] <-
          self$`maxUses`
      }
      if (!is.null(self$`maxUsesPerCustomer`)) {
        CouponUpdateObject[["maxUsesPerCustomer"]] <-
          self$`maxUsesPerCustomer`
      }
      if (!is.null(self$`minOrderAmount`)) {
        CouponUpdateObject[["minOrderAmount"]] <-
          self$`minOrderAmount`
      }
      if (!is.null(self$`productIds`)) {
        CouponUpdateObject[["productIds"]] <-
          self$extractSimpleType(self$`productIds`)
      }
      if (!is.null(self$`startsAt`)) {
        CouponUpdateObject[["startsAt"]] <-
          self$`startsAt`
      }
      return(CouponUpdateObject)
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
    #' Deserialize JSON string into an instance of CouponUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CouponUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`discountType`)) {
        `discounttype_object` <- DiscountType$new()
        `discounttype_object`$fromJSON(jsonlite::toJSON(this_object$`discountType`, auto_unbox = TRUE, digits = NA))
        self$`discountType` <- `discounttype_object`
      }
      if (!is.null(this_object$`discountValue`)) {
        self$`discountValue` <- this_object$`discountValue`
      }
      if (!is.null(this_object$`expiresAt`)) {
        self$`expiresAt` <- this_object$`expiresAt`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`isCombineable`)) {
        self$`isCombineable` <- this_object$`isCombineable`
      }
      if (!is.null(this_object$`maxDiscountAmount`)) {
        self$`maxDiscountAmount` <- this_object$`maxDiscountAmount`
      }
      if (!is.null(this_object$`maxUses`)) {
        self$`maxUses` <- this_object$`maxUses`
      }
      if (!is.null(this_object$`maxUsesPerCustomer`)) {
        self$`maxUsesPerCustomer` <- this_object$`maxUsesPerCustomer`
      }
      if (!is.null(this_object$`minOrderAmount`)) {
        self$`minOrderAmount` <- this_object$`minOrderAmount`
      }
      if (!is.null(this_object$`productIds`)) {
        `productids_object` <- AnyType$new()
        `productids_object`$fromJSON(jsonlite::toJSON(this_object$`productIds`, auto_unbox = TRUE, digits = NA))
        self$`productIds` <- `productids_object`
      }
      if (!is.null(this_object$`startsAt`)) {
        self$`startsAt` <- this_object$`startsAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CouponUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CouponUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CouponUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`description` <- this_object$`description`
      self$`discountType` <- DiscountType$new()$fromJSON(jsonlite::toJSON(this_object$`discountType`, auto_unbox = TRUE, digits = NA))
      self$`discountValue` <- this_object$`discountValue`
      self$`expiresAt` <- this_object$`expiresAt`
      self$`isActive` <- this_object$`isActive`
      self$`isCombineable` <- this_object$`isCombineable`
      self$`maxDiscountAmount` <- this_object$`maxDiscountAmount`
      self$`maxUses` <- this_object$`maxUses`
      self$`maxUsesPerCustomer` <- this_object$`maxUsesPerCustomer`
      self$`minOrderAmount` <- this_object$`minOrderAmount`
      self$`productIds` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`productIds`, auto_unbox = TRUE, digits = NA))
      self$`startsAt` <- this_object$`startsAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to CouponUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CouponUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`code`) > 50) {
        return(FALSE)
      }
      if (nchar(self$`code`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`description`) > 500) {
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
      if (nchar(self$`code`) > 50) {
        invalid_fields["code"] <- "Invalid length for `code`, must be smaller than or equal to 50."
      }
      if (nchar(self$`code`) < 1) {
        invalid_fields["code"] <- "Invalid length for `code`, must be bigger than or equal to 1."
      }

      if (nchar(self$`description`) > 500) {
        invalid_fields["description"] <- "Invalid length for `description`, must be smaller than or equal to 500."
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
# CouponUpdate$unlock()
#
## Below is an example to define the print function
# CouponUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CouponUpdate$lock()

