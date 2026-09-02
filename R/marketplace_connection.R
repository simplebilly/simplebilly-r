#' Create a new MarketplaceConnection
#'
#' @description
#' MarketplaceConnection Class
#'
#' @docType class
#' @title MarketplaceConnection
#' @description MarketplaceConnection Class
#' @format An \code{R6Class} generator object
#' @field config  \link{AnyType}
#' @field connection_id  character
#' @field connector_type  \link{ConnectorType}
#' @field created_at  character
#' @field is_active  character
#' @field label  character
#' @field last_sync_at  character [optional]
#' @field platform  character
#' @field platform_user_id  character [optional]
#' @field scopes  character [optional]
#' @field shop_domain  character [optional]
#' @field shop_name  character [optional]
#' @field sync_status  character [optional]
#' @field tenant_id  character
#' @field updated_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MarketplaceConnection <- R6::R6Class(
  "MarketplaceConnection",
  public = list(
    `config` = NULL,
    `connection_id` = NULL,
    `connector_type` = NULL,
    `created_at` = NULL,
    `is_active` = NULL,
    `label` = NULL,
    `last_sync_at` = NULL,
    `platform` = NULL,
    `platform_user_id` = NULL,
    `scopes` = NULL,
    `shop_domain` = NULL,
    `shop_name` = NULL,
    `sync_status` = NULL,
    `tenant_id` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new MarketplaceConnection class.
    #'
    #' @param config config
    #' @param connection_id connection_id
    #' @param connector_type connector_type
    #' @param created_at created_at
    #' @param is_active is_active
    #' @param label label
    #' @param platform platform
    #' @param tenant_id tenant_id
    #' @param last_sync_at last_sync_at
    #' @param platform_user_id platform_user_id
    #' @param scopes scopes
    #' @param shop_domain shop_domain
    #' @param shop_name shop_name
    #' @param sync_status sync_status
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`config`, `connection_id`, `connector_type`, `created_at`, `is_active`, `label`, `platform`, `tenant_id`, `last_sync_at` = NULL, `platform_user_id` = NULL, `scopes` = NULL, `shop_domain` = NULL, `shop_name` = NULL, `sync_status` = NULL, `updated_at` = NULL, ...) {
      if (!missing(`config`)) {
        stopifnot(R6::is.R6(`config`))
        self$`config` <- `config`
      }
      if (!missing(`connection_id`)) {
        if (!(is.character(`connection_id`) && length(`connection_id`) == 1)) {
          stop(paste("Error! Invalid data for `connection_id`. Must be a string:", `connection_id`))
        }
        self$`connection_id` <- `connection_id`
      }
      if (!missing(`connector_type`)) {
        if (!(`connector_type` %in% c())) {
          stop(paste("Error! \"", `connector_type`, "\" cannot be assigned to `connector_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`connector_type`))
        self$`connector_type` <- `connector_type`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!missing(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!is.null(`last_sync_at`)) {
        if (!is.character(`last_sync_at`)) {
          stop(paste("Error! Invalid data for `last_sync_at`. Must be a string:", `last_sync_at`))
        }
        self$`last_sync_at` <- `last_sync_at`
      }
      if (!is.null(`platform_user_id`)) {
        if (!(is.character(`platform_user_id`) && length(`platform_user_id`) == 1)) {
          stop(paste("Error! Invalid data for `platform_user_id`. Must be a string:", `platform_user_id`))
        }
        self$`platform_user_id` <- `platform_user_id`
      }
      if (!is.null(`scopes`)) {
        if (!(is.character(`scopes`) && length(`scopes`) == 1)) {
          stop(paste("Error! Invalid data for `scopes`. Must be a string:", `scopes`))
        }
        self$`scopes` <- `scopes`
      }
      if (!is.null(`shop_domain`)) {
        if (!(is.character(`shop_domain`) && length(`shop_domain`) == 1)) {
          stop(paste("Error! Invalid data for `shop_domain`. Must be a string:", `shop_domain`))
        }
        self$`shop_domain` <- `shop_domain`
      }
      if (!is.null(`shop_name`)) {
        if (!(is.character(`shop_name`) && length(`shop_name`) == 1)) {
          stop(paste("Error! Invalid data for `shop_name`. Must be a string:", `shop_name`))
        }
        self$`shop_name` <- `shop_name`
      }
      if (!is.null(`sync_status`)) {
        if (!(is.character(`sync_status`) && length(`sync_status`) == 1)) {
          stop(paste("Error! Invalid data for `sync_status`. Must be a string:", `sync_status`))
        }
        self$`sync_status` <- `sync_status`
      }
      if (!is.null(`updated_at`)) {
        if (!is.character(`updated_at`)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return MarketplaceConnection as a base R list.
    #' @examples
    #' # convert array of MarketplaceConnection (x) to a data frame
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
    #' Convert MarketplaceConnection to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MarketplaceConnectionObject <- list()
      if (!is.null(self$`config`)) {
        MarketplaceConnectionObject[["config"]] <-
          self$extractSimpleType(self$`config`)
      }
      if (!is.null(self$`connection_id`)) {
        MarketplaceConnectionObject[["connection_id"]] <-
          self$`connection_id`
      }
      if (!is.null(self$`connector_type`)) {
        MarketplaceConnectionObject[["connector_type"]] <-
          self$extractSimpleType(self$`connector_type`)
      }
      if (!is.null(self$`created_at`)) {
        MarketplaceConnectionObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`is_active`)) {
        MarketplaceConnectionObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`label`)) {
        MarketplaceConnectionObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`last_sync_at`)) {
        MarketplaceConnectionObject[["last_sync_at"]] <-
          self$`last_sync_at`
      }
      if (!is.null(self$`platform`)) {
        MarketplaceConnectionObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`platform_user_id`)) {
        MarketplaceConnectionObject[["platform_user_id"]] <-
          self$`platform_user_id`
      }
      if (!is.null(self$`scopes`)) {
        MarketplaceConnectionObject[["scopes"]] <-
          self$`scopes`
      }
      if (!is.null(self$`shop_domain`)) {
        MarketplaceConnectionObject[["shop_domain"]] <-
          self$`shop_domain`
      }
      if (!is.null(self$`shop_name`)) {
        MarketplaceConnectionObject[["shop_name"]] <-
          self$`shop_name`
      }
      if (!is.null(self$`sync_status`)) {
        MarketplaceConnectionObject[["sync_status"]] <-
          self$`sync_status`
      }
      if (!is.null(self$`tenant_id`)) {
        MarketplaceConnectionObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`updated_at`)) {
        MarketplaceConnectionObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(MarketplaceConnectionObject)
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
    #' Deserialize JSON string into an instance of MarketplaceConnection
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceConnection
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`config`)) {
        `config_object` <- AnyType$new()
        `config_object`$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
        self$`config` <- `config_object`
      }
      if (!is.null(this_object$`connection_id`)) {
        self$`connection_id` <- this_object$`connection_id`
      }
      if (!is.null(this_object$`connector_type`)) {
        `connector_type_object` <- ConnectorType$new()
        `connector_type_object`$fromJSON(jsonlite::toJSON(this_object$`connector_type`, auto_unbox = TRUE, digits = NA))
        self$`connector_type` <- `connector_type_object`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`last_sync_at`)) {
        self$`last_sync_at` <- this_object$`last_sync_at`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`platform_user_id`)) {
        self$`platform_user_id` <- this_object$`platform_user_id`
      }
      if (!is.null(this_object$`scopes`)) {
        self$`scopes` <- this_object$`scopes`
      }
      if (!is.null(this_object$`shop_domain`)) {
        self$`shop_domain` <- this_object$`shop_domain`
      }
      if (!is.null(this_object$`shop_name`)) {
        self$`shop_name` <- this_object$`shop_name`
      }
      if (!is.null(this_object$`sync_status`)) {
        self$`sync_status` <- this_object$`sync_status`
      }
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MarketplaceConnection in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MarketplaceConnection
    #'
    #' @param input_json the JSON input
    #' @return the instance of MarketplaceConnection
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`config` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`config`, auto_unbox = TRUE, digits = NA))
      self$`connection_id` <- this_object$`connection_id`
      self$`connector_type` <- ConnectorType$new()$fromJSON(jsonlite::toJSON(this_object$`connector_type`, auto_unbox = TRUE, digits = NA))
      self$`created_at` <- this_object$`created_at`
      self$`is_active` <- this_object$`is_active`
      self$`label` <- this_object$`label`
      self$`last_sync_at` <- this_object$`last_sync_at`
      self$`platform` <- this_object$`platform`
      self$`platform_user_id` <- this_object$`platform_user_id`
      self$`scopes` <- this_object$`scopes`
      self$`shop_domain` <- this_object$`shop_domain`
      self$`shop_name` <- this_object$`shop_name`
      self$`sync_status` <- this_object$`sync_status`
      self$`tenant_id` <- this_object$`tenant_id`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to MarketplaceConnection and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `config`
      if (!is.null(input_json$`config`)) {
        stopifnot(R6::is.R6(input_json$`config`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `config` is missing."))
      }
      # check the required field `connection_id`
      if (!is.null(input_json$`connection_id`)) {
        if (!(is.character(input_json$`connection_id`) && length(input_json$`connection_id`) == 1)) {
          stop(paste("Error! Invalid data for `connection_id`. Must be a string:", input_json$`connection_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `connection_id` is missing."))
      }
      # check the required field `connector_type`
      if (!is.null(input_json$`connector_type`)) {
        stopifnot(R6::is.R6(input_json$`connector_type`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `connector_type` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `created_at` is missing."))
      }
      # check the required field `is_active`
      if (!is.null(input_json$`is_active`)) {
        if (!(is.logical(input_json$`is_active`) && length(input_json$`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", input_json$`is_active`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `is_active` is missing."))
      }
      # check the required field `label`
      if (!is.null(input_json$`label`)) {
        if (!(is.character(input_json$`label`) && length(input_json$`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", input_json$`label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `label` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `platform` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MarketplaceConnection: the required field `tenant_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MarketplaceConnection
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connection_id` is null
      if (is.null(self$`connection_id`)) {
        return(FALSE)
      }

      # check if the required `connector_type` is null
      if (is.null(self$`connector_type`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        return(FALSE)
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
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
      # check if the required `connection_id` is null
      if (is.null(self$`connection_id`)) {
        invalid_fields["connection_id"] <- "Non-nullable required field `connection_id` cannot be null."
      }

      # check if the required `connector_type` is null
      if (is.null(self$`connector_type`)) {
        invalid_fields["connector_type"] <- "Non-nullable required field `connector_type` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `is_active` is null
      if (is.null(self$`is_active`)) {
        invalid_fields["is_active"] <- "Non-nullable required field `is_active` cannot be null."
      }

      # check if the required `label` is null
      if (is.null(self$`label`)) {
        invalid_fields["label"] <- "Non-nullable required field `label` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
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
# MarketplaceConnection$unlock()
#
## Below is an example to define the print function
# MarketplaceConnection$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MarketplaceConnection$lock()

