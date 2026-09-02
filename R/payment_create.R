#' Create a new PaymentCreate
#'
#' @description
#' PaymentCreate Class
#'
#' @docType class
#' @title PaymentCreate
#' @description PaymentCreate Class
#' @format An \code{R6Class} generator object
#' @field amount  character [optional]
#' @field attachment  \link{AnyType} [optional]
#' @field currency  character [optional]
#' @field customerId References the customer entity. character [optional]
#' @field description  character [optional]
#' @field metadata  \link{AnyType} [optional]
#' @field method  \link{PaymentMethod} [optional]
#' @field paymentDate  character [optional]
#' @field reference  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentCreate <- R6::R6Class(
  "PaymentCreate",
  public = list(
    `amount` = NULL,
    `attachment` = NULL,
    `currency` = NULL,
    `customerId` = NULL,
    `description` = NULL,
    `metadata` = NULL,
    `method` = NULL,
    `paymentDate` = NULL,
    `reference` = NULL,

    #' @description
    #' Initialize a new PaymentCreate class.
    #'
    #' @param amount amount
    #' @param attachment attachment
    #' @param currency currency
    #' @param customerId References the customer entity.
    #' @param description description
    #' @param metadata metadata
    #' @param method method
    #' @param paymentDate paymentDate
    #' @param reference reference
    #' @param ... Other optional arguments.
    initialize = function(`amount` = NULL, `attachment` = NULL, `currency` = NULL, `customerId` = NULL, `description` = NULL, `metadata` = NULL, `method` = NULL, `paymentDate` = NULL, `reference` = NULL, ...) {
      if (!is.null(`amount`)) {
        if (!(is.character(`amount`) && length(`amount`) == 1)) {
          stop(paste("Error! Invalid data for `amount`. Must be a string:", `amount`))
        }
        self$`amount` <- `amount`
      }
      if (!is.null(`attachment`)) {
        stopifnot(R6::is.R6(`attachment`))
        self$`attachment` <- `attachment`
      }
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`customerId`)) {
        if (!(is.character(`customerId`) && length(`customerId`) == 1)) {
          stop(paste("Error! Invalid data for `customerId`. Must be a string:", `customerId`))
        }
        self$`customerId` <- `customerId`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`metadata`)) {
        stopifnot(R6::is.R6(`metadata`))
        self$`metadata` <- `metadata`
      }
      if (!is.null(`method`)) {
        if (!(`method` %in% c())) {
          stop(paste("Error! \"", `method`, "\" cannot be assigned to `method`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!is.null(`paymentDate`)) {
        if (!is.character(`paymentDate`)) {
          stop(paste("Error! Invalid data for `paymentDate`. Must be a string:", `paymentDate`))
        }
        self$`paymentDate` <- `paymentDate`
      }
      if (!is.null(`reference`)) {
        if (!(is.character(`reference`) && length(`reference`) == 1)) {
          stop(paste("Error! Invalid data for `reference`. Must be a string:", `reference`))
        }
        self$`reference` <- `reference`
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
    #' @return PaymentCreate as a base R list.
    #' @examples
    #' # convert array of PaymentCreate (x) to a data frame
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
    #' Convert PaymentCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentCreateObject <- list()
      if (!is.null(self$`amount`)) {
        PaymentCreateObject[["amount"]] <-
          self$`amount`
      }
      if (!is.null(self$`attachment`)) {
        PaymentCreateObject[["attachment"]] <-
          self$extractSimpleType(self$`attachment`)
      }
      if (!is.null(self$`currency`)) {
        PaymentCreateObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`customerId`)) {
        PaymentCreateObject[["customerId"]] <-
          self$`customerId`
      }
      if (!is.null(self$`description`)) {
        PaymentCreateObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`metadata`)) {
        PaymentCreateObject[["metadata"]] <-
          self$extractSimpleType(self$`metadata`)
      }
      if (!is.null(self$`method`)) {
        PaymentCreateObject[["method"]] <-
          self$extractSimpleType(self$`method`)
      }
      if (!is.null(self$`paymentDate`)) {
        PaymentCreateObject[["paymentDate"]] <-
          self$`paymentDate`
      }
      if (!is.null(self$`reference`)) {
        PaymentCreateObject[["reference"]] <-
          self$`reference`
      }
      return(PaymentCreateObject)
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
    #' Deserialize JSON string into an instance of PaymentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`amount`)) {
        self$`amount` <- this_object$`amount`
      }
      if (!is.null(this_object$`attachment`)) {
        `attachment_object` <- AnyType$new()
        `attachment_object`$fromJSON(jsonlite::toJSON(this_object$`attachment`, auto_unbox = TRUE, digits = NA))
        self$`attachment` <- `attachment_object`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`customerId`)) {
        self$`customerId` <- this_object$`customerId`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`metadata`)) {
        `metadata_object` <- AnyType$new()
        `metadata_object`$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
        self$`metadata` <- `metadata_object`
      }
      if (!is.null(this_object$`method`)) {
        `method_object` <- PaymentMethod$new()
        `method_object`$fromJSON(jsonlite::toJSON(this_object$`method`, auto_unbox = TRUE, digits = NA))
        self$`method` <- `method_object`
      }
      if (!is.null(this_object$`paymentDate`)) {
        self$`paymentDate` <- this_object$`paymentDate`
      }
      if (!is.null(this_object$`reference`)) {
        self$`reference` <- this_object$`reference`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PaymentCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`amount` <- this_object$`amount`
      self$`attachment` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`attachment`, auto_unbox = TRUE, digits = NA))
      self$`currency` <- this_object$`currency`
      self$`customerId` <- this_object$`customerId`
      self$`description` <- this_object$`description`
      self$`metadata` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`metadata`, auto_unbox = TRUE, digits = NA))
      self$`method` <- PaymentMethod$new()$fromJSON(jsonlite::toJSON(this_object$`method`, auto_unbox = TRUE, digits = NA))
      self$`paymentDate` <- this_object$`paymentDate`
      self$`reference` <- this_object$`reference`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# PaymentCreate$unlock()
#
## Below is an example to define the print function
# PaymentCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentCreate$lock()

