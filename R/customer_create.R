#' Create a new CustomerCreate
#'
#' @description
#' CustomerCreate Class
#'
#' @docType class
#' @title CustomerCreate
#' @description CustomerCreate Class
#' @format An \code{R6Class} generator object
#' @field address  \link{AnyType} [optional]
#' @field contactPerson  character [optional]
#' @field email  character [optional]
#' @field externalOrderNumber  character [optional]
#' @field name  character
#' @field paymentGracePeriodDays  integer [optional]
#' @field phone  character [optional]
#' @field vatId  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CustomerCreate <- R6::R6Class(
  "CustomerCreate",
  public = list(
    `address` = NULL,
    `contactPerson` = NULL,
    `email` = NULL,
    `externalOrderNumber` = NULL,
    `name` = NULL,
    `paymentGracePeriodDays` = NULL,
    `phone` = NULL,
    `vatId` = NULL,

    #' @description
    #' Initialize a new CustomerCreate class.
    #'
    #' @param name name
    #' @param address address
    #' @param contactPerson contactPerson
    #' @param email email
    #' @param externalOrderNumber externalOrderNumber
    #' @param paymentGracePeriodDays paymentGracePeriodDays
    #' @param phone phone
    #' @param vatId vatId
    #' @param ... Other optional arguments.
    initialize = function(`name`, `address` = NULL, `contactPerson` = NULL, `email` = NULL, `externalOrderNumber` = NULL, `paymentGracePeriodDays` = NULL, `phone` = NULL, `vatId` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`address`)) {
        stopifnot(R6::is.R6(`address`))
        self$`address` <- `address`
      }
      if (!is.null(`contactPerson`)) {
        if (!(is.character(`contactPerson`) && length(`contactPerson`) == 1)) {
          stop(paste("Error! Invalid data for `contactPerson`. Must be a string:", `contactPerson`))
        }
        self$`contactPerson` <- `contactPerson`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`externalOrderNumber`)) {
        if (!(is.character(`externalOrderNumber`) && length(`externalOrderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `externalOrderNumber`. Must be a string:", `externalOrderNumber`))
        }
        self$`externalOrderNumber` <- `externalOrderNumber`
      }
      if (!is.null(`paymentGracePeriodDays`)) {
        if (!(is.numeric(`paymentGracePeriodDays`) && length(`paymentGracePeriodDays`) == 1)) {
          stop(paste("Error! Invalid data for `paymentGracePeriodDays`. Must be an integer:", `paymentGracePeriodDays`))
        }
        self$`paymentGracePeriodDays` <- `paymentGracePeriodDays`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`vatId`)) {
        if (!(is.character(`vatId`) && length(`vatId`) == 1)) {
          stop(paste("Error! Invalid data for `vatId`. Must be a string:", `vatId`))
        }
        self$`vatId` <- `vatId`
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
    #' @return CustomerCreate as a base R list.
    #' @examples
    #' # convert array of CustomerCreate (x) to a data frame
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
    #' Convert CustomerCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CustomerCreateObject <- list()
      if (!is.null(self$`address`)) {
        CustomerCreateObject[["address"]] <-
          self$extractSimpleType(self$`address`)
      }
      if (!is.null(self$`contactPerson`)) {
        CustomerCreateObject[["contactPerson"]] <-
          self$`contactPerson`
      }
      if (!is.null(self$`email`)) {
        CustomerCreateObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`externalOrderNumber`)) {
        CustomerCreateObject[["externalOrderNumber"]] <-
          self$`externalOrderNumber`
      }
      if (!is.null(self$`name`)) {
        CustomerCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`paymentGracePeriodDays`)) {
        CustomerCreateObject[["paymentGracePeriodDays"]] <-
          self$`paymentGracePeriodDays`
      }
      if (!is.null(self$`phone`)) {
        CustomerCreateObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`vatId`)) {
        CustomerCreateObject[["vatId"]] <-
          self$`vatId`
      }
      return(CustomerCreateObject)
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
    #' Deserialize JSON string into an instance of CustomerCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`address`)) {
        `address_object` <- AnyType$new()
        `address_object`$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
        self$`address` <- `address_object`
      }
      if (!is.null(this_object$`contactPerson`)) {
        self$`contactPerson` <- this_object$`contactPerson`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`externalOrderNumber`)) {
        self$`externalOrderNumber` <- this_object$`externalOrderNumber`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`paymentGracePeriodDays`)) {
        self$`paymentGracePeriodDays` <- this_object$`paymentGracePeriodDays`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`vatId`)) {
        self$`vatId` <- this_object$`vatId`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CustomerCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CustomerCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of CustomerCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`address` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`address`, auto_unbox = TRUE, digits = NA))
      self$`contactPerson` <- this_object$`contactPerson`
      self$`email` <- this_object$`email`
      self$`externalOrderNumber` <- this_object$`externalOrderNumber`
      self$`name` <- this_object$`name`
      self$`paymentGracePeriodDays` <- this_object$`paymentGracePeriodDays`
      self$`phone` <- this_object$`phone`
      self$`vatId` <- this_object$`vatId`
      self
    },

    #' @description
    #' Validate JSON input with respect to CustomerCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CustomerCreate: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CustomerCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`contactPerson`) > 255) {
        return(FALSE)
      }

      if (nchar(self$`externalOrderNumber`) > 100) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      if (self$`paymentGracePeriodDays` > 365) {
        return(FALSE)
      }
      if (self$`paymentGracePeriodDays` < 0) {
        return(FALSE)
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        return(FALSE)
      }

      if (!str_detect(self$`vatId`, "^[A-Z]{2}[0-9A-Z]{8,15}$")) {
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
      if (nchar(self$`contactPerson`) > 255) {
        invalid_fields["contactPerson"] <- "Invalid length for `contactPerson`, must be smaller than or equal to 255."
      }

      if (nchar(self$`externalOrderNumber`) > 100) {
        invalid_fields["externalOrderNumber"] <- "Invalid length for `externalOrderNumber`, must be smaller than or equal to 100."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      if (self$`paymentGracePeriodDays` > 365) {
        invalid_fields["paymentGracePeriodDays"] <- "Invalid value for `paymentGracePeriodDays`, must be smaller than or equal to 365."
      }
      if (self$`paymentGracePeriodDays` < 0) {
        invalid_fields["paymentGracePeriodDays"] <- "Invalid value for `paymentGracePeriodDays`, must be bigger than or equal to 0."
      }

      if (!str_detect(self$`phone`, "^\\+?[0-9\\s\\-\\(\\)]{7,20}$")) {
        invalid_fields["phone"] <- "Invalid value for `phone`, must conform to the pattern ^\\+?[0-9\\s\\-\\(\\)]{7,20}$."
      }

      if (!str_detect(self$`vatId`, "^[A-Z]{2}[0-9A-Z]{8,15}$")) {
        invalid_fields["vatId"] <- "Invalid value for `vatId`, must conform to the pattern ^[A-Z]{2}[0-9A-Z]{8,15}$."
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
# CustomerCreate$unlock()
#
## Below is an example to define the print function
# CustomerCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CustomerCreate$lock()

