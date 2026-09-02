#' Create a new EmailTemplateCreate
#'
#' @description
#' EmailTemplateCreate Class
#'
#' @docType class
#' @title EmailTemplateCreate
#' @description EmailTemplateCreate Class
#' @format An \code{R6Class} generator object
#' @field body E-mail body with optional placeholders. character
#' @field name Human-readable template name, e.g. \"Follow-up after quote\". character
#' @field status One of: active | inactive \link{EmailTemplateStatus}
#' @field subject E-mail subject line with optional placeholders. character
#' @field variables Placeholders used by this template, e.g. `[\"contact.first_name\"]`. \link{AnyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmailTemplateCreate <- R6::R6Class(
  "EmailTemplateCreate",
  public = list(
    `body` = NULL,
    `name` = NULL,
    `status` = NULL,
    `subject` = NULL,
    `variables` = NULL,

    #' @description
    #' Initialize a new EmailTemplateCreate class.
    #'
    #' @param body E-mail body with optional placeholders.
    #' @param name Human-readable template name, e.g. \"Follow-up after quote\".
    #' @param status One of: active | inactive
    #' @param subject E-mail subject line with optional placeholders.
    #' @param variables Placeholders used by this template, e.g. `[\"contact.first_name\"]`.
    #' @param ... Other optional arguments.
    initialize = function(`body`, `name`, `status`, `subject`, `variables` = NULL, ...) {
      if (!missing(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!missing(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`variables`)) {
        stopifnot(R6::is.R6(`variables`))
        self$`variables` <- `variables`
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
    #' @return EmailTemplateCreate as a base R list.
    #' @examples
    #' # convert array of EmailTemplateCreate (x) to a data frame
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
    #' Convert EmailTemplateCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmailTemplateCreateObject <- list()
      if (!is.null(self$`body`)) {
        EmailTemplateCreateObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`name`)) {
        EmailTemplateCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`status`)) {
        EmailTemplateCreateObject[["status"]] <-
          self$extractSimpleType(self$`status`)
      }
      if (!is.null(self$`subject`)) {
        EmailTemplateCreateObject[["subject"]] <-
          self$`subject`
      }
      if (!is.null(self$`variables`)) {
        EmailTemplateCreateObject[["variables"]] <-
          self$extractSimpleType(self$`variables`)
      }
      return(EmailTemplateCreateObject)
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
    #' Deserialize JSON string into an instance of EmailTemplateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailTemplateCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- EmailTemplateStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      if (!is.null(this_object$`variables`)) {
        `variables_object` <- AnyType$new()
        `variables_object`$fromJSON(jsonlite::toJSON(this_object$`variables`, auto_unbox = TRUE, digits = NA))
        self$`variables` <- `variables_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return EmailTemplateCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmailTemplateCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmailTemplateCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`body` <- this_object$`body`
      self$`name` <- this_object$`name`
      self$`status` <- EmailTemplateStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`subject` <- this_object$`subject`
      self$`variables` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`variables`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to EmailTemplateCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailTemplateCreate: the required field `body` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailTemplateCreate: the required field `name` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        stopifnot(R6::is.R6(input_json$`status`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailTemplateCreate: the required field `status` is missing."))
      }
      # check the required field `subject`
      if (!is.null(input_json$`subject`)) {
        if (!(is.character(input_json$`subject`) && length(input_json$`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", input_json$`subject`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmailTemplateCreate: the required field `subject` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmailTemplateCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `body` is null
      if (is.null(self$`body`)) {
        return(FALSE)
      }

      if (nchar(self$`body`) < 1) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        return(FALSE)
      }

      if (nchar(self$`subject`) < 1) {
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
      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
      }

      if (nchar(self$`body`) < 1) {
        invalid_fields["body"] <- "Invalid length for `body`, must be bigger than or equal to 1."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        invalid_fields["subject"] <- "Non-nullable required field `subject` cannot be null."
      }

      if (nchar(self$`subject`) < 1) {
        invalid_fields["subject"] <- "Invalid length for `subject`, must be bigger than or equal to 1."
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
# EmailTemplateCreate$unlock()
#
## Below is an example to define the print function
# EmailTemplateCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmailTemplateCreate$lock()

