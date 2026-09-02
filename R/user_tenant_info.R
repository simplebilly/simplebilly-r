#' Create a new UserTenantInfo
#'
#' @description
#' UserTenantInfo Class
#'
#' @docType class
#' @title UserTenantInfo
#' @description UserTenantInfo Class
#' @format An \code{R6Class} generator object
#' @field custom_domain  character [optional]
#' @field role  character
#' @field subdomain  character [optional]
#' @field tenant_id  character
#' @field tenant_name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserTenantInfo <- R6::R6Class(
  "UserTenantInfo",
  public = list(
    `custom_domain` = NULL,
    `role` = NULL,
    `subdomain` = NULL,
    `tenant_id` = NULL,
    `tenant_name` = NULL,

    #' @description
    #' Initialize a new UserTenantInfo class.
    #'
    #' @param role role
    #' @param tenant_id tenant_id
    #' @param tenant_name tenant_name
    #' @param custom_domain custom_domain
    #' @param subdomain subdomain
    #' @param ... Other optional arguments.
    initialize = function(`role`, `tenant_id`, `tenant_name`, `custom_domain` = NULL, `subdomain` = NULL, ...) {
      if (!missing(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!missing(`tenant_id`)) {
        if (!(is.character(`tenant_id`) && length(`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", `tenant_id`))
        }
        self$`tenant_id` <- `tenant_id`
      }
      if (!missing(`tenant_name`)) {
        if (!(is.character(`tenant_name`) && length(`tenant_name`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_name`. Must be a string:", `tenant_name`))
        }
        self$`tenant_name` <- `tenant_name`
      }
      if (!is.null(`custom_domain`)) {
        if (!(is.character(`custom_domain`) && length(`custom_domain`) == 1)) {
          stop(paste("Error! Invalid data for `custom_domain`. Must be a string:", `custom_domain`))
        }
        self$`custom_domain` <- `custom_domain`
      }
      if (!is.null(`subdomain`)) {
        if (!(is.character(`subdomain`) && length(`subdomain`) == 1)) {
          stop(paste("Error! Invalid data for `subdomain`. Must be a string:", `subdomain`))
        }
        self$`subdomain` <- `subdomain`
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
    #' @return UserTenantInfo as a base R list.
    #' @examples
    #' # convert array of UserTenantInfo (x) to a data frame
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
    #' Convert UserTenantInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserTenantInfoObject <- list()
      if (!is.null(self$`custom_domain`)) {
        UserTenantInfoObject[["custom_domain"]] <-
          self$`custom_domain`
      }
      if (!is.null(self$`role`)) {
        UserTenantInfoObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`subdomain`)) {
        UserTenantInfoObject[["subdomain"]] <-
          self$`subdomain`
      }
      if (!is.null(self$`tenant_id`)) {
        UserTenantInfoObject[["tenant_id"]] <-
          self$`tenant_id`
      }
      if (!is.null(self$`tenant_name`)) {
        UserTenantInfoObject[["tenant_name"]] <-
          self$`tenant_name`
      }
      return(UserTenantInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserTenantInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserTenantInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`custom_domain`)) {
        self$`custom_domain` <- this_object$`custom_domain`
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`subdomain`)) {
        self$`subdomain` <- this_object$`subdomain`
      }
      if (!is.null(this_object$`tenant_id`)) {
        self$`tenant_id` <- this_object$`tenant_id`
      }
      if (!is.null(this_object$`tenant_name`)) {
        self$`tenant_name` <- this_object$`tenant_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserTenantInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserTenantInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserTenantInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`custom_domain` <- this_object$`custom_domain`
      self$`role` <- this_object$`role`
      self$`subdomain` <- this_object$`subdomain`
      self$`tenant_id` <- this_object$`tenant_id`
      self$`tenant_name` <- this_object$`tenant_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserTenantInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTenantInfo: the required field `role` is missing."))
      }
      # check the required field `tenant_id`
      if (!is.null(input_json$`tenant_id`)) {
        if (!(is.character(input_json$`tenant_id`) && length(input_json$`tenant_id`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_id`. Must be a string:", input_json$`tenant_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTenantInfo: the required field `tenant_id` is missing."))
      }
      # check the required field `tenant_name`
      if (!is.null(input_json$`tenant_name`)) {
        if (!(is.character(input_json$`tenant_name`) && length(input_json$`tenant_name`) == 1)) {
          stop(paste("Error! Invalid data for `tenant_name`. Must be a string:", input_json$`tenant_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserTenantInfo: the required field `tenant_name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserTenantInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `role` is null
      if (is.null(self$`role`)) {
        return(FALSE)
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        return(FALSE)
      }

      # check if the required `tenant_name` is null
      if (is.null(self$`tenant_name`)) {
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
      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
      }

      # check if the required `tenant_id` is null
      if (is.null(self$`tenant_id`)) {
        invalid_fields["tenant_id"] <- "Non-nullable required field `tenant_id` cannot be null."
      }

      # check if the required `tenant_name` is null
      if (is.null(self$`tenant_name`)) {
        invalid_fields["tenant_name"] <- "Non-nullable required field `tenant_name` cannot be null."
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
# UserTenantInfo$unlock()
#
## Below is an example to define the print function
# UserTenantInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserTenantInfo$lock()

