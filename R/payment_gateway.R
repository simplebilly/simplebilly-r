#' Create a new PaymentGateway
#'
#' @description
#' PaymentGateway Class
#'
#' @docType class
#' @title PaymentGateway
#' @description PaymentGateway Class
#' @format An \code{R6Class} generator object
#' @field config  \link{AnyType}
#' @field createdAt  character
#' @field deletedAt  character [optional]
#' @field enabled  character
#' @field gatewayId  character
#' @field gatewayType  \link{GatewayType}
#' @field label  character
#' @field tenantId  character
#' @field updatedAt  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaymentGateway <- R6::R6Class(
  "PaymentGateway",
  public = list(
    `config` = NULL,
    `createdAt` = NULL,
    `deletedAt` = NULL,
    `enabled` = NULL,
    `gatewayId` = NULL,
    `gatewayType` = NULL,
    `label` = NULL,
    `tenantId` = NULL,
    `updatedAt` = NULL,

    #' @description
    #' Initialize a new PaymentGateway class.
    #'
    #' @param config config
    #' @param createdAt createdAt
    #' @param enabled enabled
    #' @param gatewayId gatewayId
    #' @param gatewayType gatewayType
    #' @param label label
    #' @param tenantId tenantId
    #' @param deletedAt deletedAt
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`config`, `createdAt`, `enabled`, `gatewayId`, `gatewayType`, `label`, `tenantId`, `deletedAt` = NULL, `updatedAt` = NULL, ...) {
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`createdAt`)) {
        if (!(is.character(`createdAt`) && length(`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", `createdAt`))
        }
        self$`createdAt` <- `createdAt`
      }
      if (!missing(`enabled`)) {
        if (!(is.logical(`enabled`) && length(`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", `enabled`))
        }
        self$`enabled` <- `enabled`
      }
      if (!missing(`gatewayId`)) {
        if (!(is.character(`gatewayId`) && length(`gatewayId`) == 1)) {
          stop(paste("Error! Invalid data for `gatewayId`. Must be a string:", `gatewayId`))
        }
        self$`gatewayId` <- `gatewayId`
      }
      if (!missing(`gatewayType`)) {
        if (!(`gatewayType` %in% c())) {
          stop(paste("Error! \"", `gatewayType`, "\" cannot be assigned to `gatewayType`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gatewayType`))
        self$`gatewayType` <- `gatewayType`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`tenantId`)) {
        if (!(is.character(`tenantId`) && length(`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", `tenantId`))
        }
        self$`tenantId` <- `tenantId`
      }
      if (!is.null(`deletedAt`)) {
        if (!is.character(`deletedAt`)) {
          stop(paste("Error! Invalid data for `deletedAt`. Must be a string:", `deletedAt`))
        }
        self$`deletedAt` <- `deletedAt`
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
    #' @return PaymentGateway as a base R list.
    #' @examples
    #' # convert array of PaymentGateway (x) to a data frame
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
    #' Convert PaymentGateway to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PaymentGatewayObject <- list()
      if (!is.null(self$`config`)) {
        PaymentGatewayObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`createdAt`)) {
        PaymentGatewayObject[["createdAt"]] <-
          self$`createdAt`
      }
      if (!is.null(self$`deletedAt`)) {
        PaymentGatewayObject[["deletedAt"]] <-
          self$`deletedAt`
      }
      if (!is.null(self$`enabled`)) {
        PaymentGatewayObject[["enabled"]] <-
          self$`enabled`
      }
      if (!is.null(self$`gatewayId`)) {
        PaymentGatewayObject[["gatewayId"]] <-
          self$`gatewayId`
      }
      if (!is.null(self$`gatewayType`)) {
        PaymentGatewayObject[["gatewayType"]] <-
          self$extractSimpleType(self$`gatewayType`)
      }
      if (!is.null(self$`label`)) {
        PaymentGatewayObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`tenantId`)) {
        PaymentGatewayObject[["tenantId"]] <-
          self$`tenantId`
      }
      if (!is.null(self$`updatedAt`)) {
        PaymentGatewayObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      return(PaymentGatewayObject)
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
    #' Deserialize JSON string into an instance of PaymentGateway
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentGateway
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
      if (!is.null(this_object$`gatewayId`)) {
        self$`gatewayId` <- this_object$`gatewayId`
      }
      if (!is.null(this_object$`gatewayType`)) {
        `gatewaytype_object` <- GatewayType$new()
        `gatewaytype_object`$fromJSON(jsonlite::toJSON(this_object$`gatewayType`, auto_unbox = TRUE, digits = NA))
        self$`gatewayType` <- `gatewaytype_object`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`tenantId`)) {
        self$`tenantId` <- this_object$`tenantId`
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
    #' @return PaymentGateway in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaymentGateway
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaymentGateway
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`createdAt` <- this_object$`createdAt`
      self$`deletedAt` <- this_object$`deletedAt`
      self$`enabled` <- this_object$`enabled`
      self$`gatewayId` <- this_object$`gatewayId`
      self$`gatewayType` <- GatewayType$new()$fromJSON(jsonlite::toJSON(this_object$`gatewayType`, auto_unbox = TRUE, digits = NA))
      self$`label` <- this_object$`label`
      self$`tenantId` <- this_object$`tenantId`
      self$`updatedAt` <- this_object$`updatedAt`
      self
    },

    #' @description
    #' Validate JSON input with respect to PaymentGateway and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `config` is missing."))
      }
      # check the required field `createdAt`
      if (!is.null(input_json$`createdAt`)) {
        if (!(is.character(input_json$`createdAt`) && length(input_json$`createdAt`) == 1)) {
          stop(paste("Error! Invalid data for `createdAt`. Must be a string:", input_json$`createdAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `createdAt` is missing."))
      }
      # check the required field `enabled`
      if (!is.null(input_json$`enabled`)) {
        if (!(is.logical(input_json$`enabled`) && length(input_json$`enabled`) == 1)) {
          stop(paste("Error! Invalid data for `enabled`. Must be a boolean:", input_json$`enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `enabled` is missing."))
      }
      # check the required field `gatewayId`
      if (!is.null(input_json$`gatewayId`)) {
        if (!(is.character(input_json$`gatewayId`) && length(input_json$`gatewayId`) == 1)) {
          stop(paste("Error! Invalid data for `gatewayId`. Must be a string:", input_json$`gatewayId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `gatewayId` is missing."))
      }
      # check the required field `gatewayType`
      if (!is.null(input_json$`gatewayType`)) {
        stopifnot(R6::is.R6(input_json$`gatewayType`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `gatewayType` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `label` is missing."))
      }
      # check the required field `tenantId`
      if (!is.null(input_json$`tenantId`)) {
        if (!(is.character(input_json$`tenantId`) && length(input_json$`tenantId`) == 1)) {
          stop(paste("Error! Invalid data for `tenantId`. Must be a string:", input_json$`tenantId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PaymentGateway: the required field `tenantId` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaymentGateway
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        return(FALSE)
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        return(FALSE)
      }

      # check if the required `gatewayId` is null
      if (is.null(self$`gatewayId`)) {
        return(FALSE)
      }

      # check if the required `gatewayType` is null
      if (is.null(self$`gatewayType`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
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
      # check if the required `createdAt` is null
      if (is.null(self$`createdAt`)) {
        invalid_fields["createdAt"] <- "Non-nullable required field `createdAt` cannot be null."
      }

      # check if the required `enabled` is null
      if (is.null(self$`enabled`)) {
        invalid_fields["enabled"] <- "Non-nullable required field `enabled` cannot be null."
      }

      # check if the required `gatewayId` is null
      if (is.null(self$`gatewayId`)) {
        invalid_fields["gatewayId"] <- "Non-nullable required field `gatewayId` cannot be null."
      }

      # check if the required `gatewayType` is null
      if (is.null(self$`gatewayType`)) {
        invalid_fields["gatewayType"] <- "Non-nullable required field `gatewayType` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `tenantId` is null
      if (is.null(self$`tenantId`)) {
        invalid_fields["tenantId"] <- "Non-nullable required field `tenantId` cannot be null."
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
# PaymentGateway$unlock()
#
## Below is an example to define the print function
# PaymentGateway$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaymentGateway$lock()

