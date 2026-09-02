#' Create a new PaymentGatewayUpdate
#'
#' @description
#' PaymentGatewayUpdate Class
#'
#' @docType class
#' @title PaymentGatewayUpdate
#' @description PaymentGatewayUpdate Class
#' @format An \code{R6Class} generator object
#' @field config  \link{AnyType} [optional]
#' @field createdAt  character [optional]
#' @field deletedAt  character [optional]
#' @field enabled  character [optional]
#' @field gatewayType  \link{GatewayType} [optional]
#' @field label  character [optional]
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentGatewayUpdate <- R6::R6Class(
  "PaymentGatewayUpdate",
  public = list(
    `config` = NULL,
    `createdAt` = NULL,
    `deletedAt` = NULL,
    `enabled` = NULL,
    `gatewayType` = NULL,
    `label` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new PaymentGatewayUpdate class.
    #'
    #' @param config config
    #' @param createdAt createdAt
    #' @param deletedAt deletedAt
    #' @param enabled enabled
    #' @param gatewayType gatewayType
    #' @param label label
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`config` = NULL, `createdAt` = NULL, `deletedAt` = NULL, `enabled` = NULL, `gatewayType` = NULL, `label` = NULL, `updatedAt` = NULL, ...) {
      if (!is.null(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!is.null(`createdAt`)) {
        if (!is.character(`createdAt`)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!is.null(`deletedAt`)) {
        if (!is.character(`deletedAt`)) {
          stop(paste("Error! Invalid data for `deletedAt`. Must be a string:", `deletedAt`))
        }
        self$`deletedAt` <- `deletedAt`
      }
      if (!is.null(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!is.null(`gatewayType`)) {
        if (!(`gatewayType` %in% c())) {
          stop(paste("Error! \"", `gatewayType`, "\" cannot be assigned to `gatewayType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gatewayType`))
        self$`gatewayType` <- `gatewayType`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return PaymentGatewayUpdate as a base R list.
    #' @examples
    #' # convert array of PaymentGatewayUpdate (x) to a data frame
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
    #' Convert PaymentGatewayUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentGatewayUpdateObject <- list()
      if (!is.null(self$`config`)) {
        PaymentGatewayUpdateObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`createdAt`)) {
        PaymentGatewayUpdateObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`deletedAt`)) {
        PaymentGatewayUpdateObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`enabled`)) {
        PaymentGatewayUpdateObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`gatewayType`)) {
        PaymentGatewayUpdateObject[["gatewayType"]] <-
          self$extractSimpleType(self$`gatewayType`)
      }
      if (!is.null(self$`label`)) {
        PaymentGatewayUpdateObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`updatedAt`)) {
        PaymentGatewayUpdateObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(PaymentGatewayUpdateObject)
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
    #' Deserialize JSON string into an instance of PaymentGatewayUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentGatewayUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`createdAt`)) {
        self$`createdAt` <- this_object$`createdAt`
      }
      if (!is.null(this_object$`deletedAt`)) {
        self$`deletedAt` <- this_object$`deletedAt`
      }
      if (!is.null(this_object$`enabled`)) {
        self$`enabled` <- this_object$`enabled`
      }
      if (!is.null(this_object$`gatewayType`)) {
        `gatewaytype_object` <- GatewayType$new()
        `gatewaytype_object`$fromJSON(jsonlite::toJSON(this_object$`gatewayType`, auto_unbox = TRUE, digits = NA))
        self$`gatewayType` <- `gatewaytype_object`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PaymentGatewayUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentGatewayUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentGatewayUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`enabled` <- this_object$`enabled`
      self$`gatewayType` <- GatewayType$new()$fromJSON(jsonlite::toJSON(this_object$`gatewayType`, auto_unbox = TRUE, digits = NA))
      self$`label` <- this_object$`label`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentGatewayUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentGatewayUpdate
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
# PaymentGatewayUpdate$unlock()
#
## Below is an example to define the print function
# PaymentGatewayUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentGatewayUpdate$lock()

