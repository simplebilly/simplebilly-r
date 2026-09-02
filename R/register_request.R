#' Create a new RegisterRequest
#'
#' @description
#' RegisterRequest Class
#'
#' @docType class
#' @title RegisterRequest
#' @description RegisterRequest Class
#' @format An \code{R6Class} generator object
#' @field company_name  character
#' @field email  character
#' @field first_name  character
#' @field last_name  character
#' @field password  character
#' @field privacy_accepted GDPR consent — registration is rejected unless true. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RegisterRequest <- R6::R6Class(
  "RegisterRequest",
  public = list(
    `company_name` = NULL,
    `email` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,
    `password` = NULL,
    `privacy_accepted` = NULL,

    #' @description
    #' Initialize a new RegisterRequest class.
    #'
    #' @param company_name company_name
    #' @param email email
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param password password
    #' @param privacy_accepted GDPR consent — registration is rejected unless true.
    #' @param ... Other optional arguments.
    initialize = function(`company_name`, `email`, `first_name`, `last_name`, `password`, `privacy_accepted`, ...) {
      if (!missing(`company_name`)) {
        if (!(is.character(`company_name`) && length(`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", `company_name`))
        }
        self$`company_name` <- `company_name`
      }
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!missing(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!missing(`privacy_accepted`)) {
        if (!(is.logical(`privacy_accepted`) && length(`privacy_accepted`) == 1)) {
          stop(paste("Error! Invalid data for `privacy_accepted`. Must be a boolean:", `privacy_accepted`))
        }
        self$`privacy_accepted` <- `privacy_accepted`
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
    #' @return RegisterRequest as a base R list.
    #' @examples
    #' # convert array of RegisterRequest (x) to a data frame
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
    #' Convert RegisterRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RegisterRequestObject <- list()
      if (!is.null(self$`company_name`)) {
        RegisterRequestObject[["company_name"]] <-
          self$`company_name`
      }
      if (!is.null(self$`email`)) {
        RegisterRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`first_name`)) {
        RegisterRequestObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        RegisterRequestObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`password`)) {
        RegisterRequestObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`privacy_accepted`)) {
        RegisterRequestObject[["privacy_accepted"]] <-
          self$`privacy_accepted`
      }
      return(RegisterRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RegisterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegisterRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`company_name`)) {
        self$`company_name` <- this_object$`company_name`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`privacy_accepted`)) {
        self$`privacy_accepted` <- this_object$`privacy_accepted`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RegisterRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RegisterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of RegisterRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`company_name` <- this_object$`company_name`
      self$`email` <- this_object$`email`
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self$`password` <- this_object$`password`
      self$`privacy_accepted` <- this_object$`privacy_accepted`
      self
    },

    #' @description
    #' Validate JSON input with respect to RegisterRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `company_name`
      if (!is.null(input_json$`company_name`)) {
        if (!(is.character(input_json$`company_name`) && length(input_json$`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", input_json$`company_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `company_name` is missing."))
      }
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `email` is missing."))
      }
      # check the required field `first_name`
      if (!is.null(input_json$`first_name`)) {
        if (!(is.character(input_json$`first_name`) && length(input_json$`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", input_json$`first_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `first_name` is missing."))
      }
      # check the required field `last_name`
      if (!is.null(input_json$`last_name`)) {
        if (!(is.character(input_json$`last_name`) && length(input_json$`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", input_json$`last_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `last_name` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `password` is missing."))
      }
      # check the required field `privacy_accepted`
      if (!is.null(input_json$`privacy_accepted`)) {
        if (!(is.logical(input_json$`privacy_accepted`) && length(input_json$`privacy_accepted`) == 1)) {
          stop(paste("Error! Invalid data for `privacy_accepted`. Must be a boolean:", input_json$`privacy_accepted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RegisterRequest: the required field `privacy_accepted` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RegisterRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `company_name` is null
      if (is.null(self$`company_name`)) {
        return(FALSE)
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        return(FALSE)
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        return(FALSE)
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      # check if the required `privacy_accepted` is null
      if (is.null(self$`privacy_accepted`)) {
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
      # check if the required `company_name` is null
      if (is.null(self$`company_name`)) {
        invalid_fields["company_name"] <- "Non-nullable required field `company_name` cannot be null."
      }

      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        invalid_fields["first_name"] <- "Non-nullable required field `first_name` cannot be null."
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        invalid_fields["last_name"] <- "Non-nullable required field `last_name` cannot be null."
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      # check if the required `privacy_accepted` is null
      if (is.null(self$`privacy_accepted`)) {
        invalid_fields["privacy_accepted"] <- "Non-nullable required field `privacy_accepted` cannot be null."
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
# RegisterRequest$unlock()
#
## Below is an example to define the print function
# RegisterRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RegisterRequest$lock()

