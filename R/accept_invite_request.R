#' Create a new AcceptInviteRequest
#'
#' @description
#' AcceptInviteRequest Class
#'
#' @docType class
#' @title AcceptInviteRequest
#' @description AcceptInviteRequest Class
#' @format An \code{R6Class} generator object
#' @field first_name  character
#' @field last_name  character
#' @field password  character
#' @field privacy_accepted GDPR consent — rejected unless true. character
#' @field token  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AcceptInviteRequest <- R6::R6Class(
  "AcceptInviteRequest",
  public = list(
    `first_name` = NULL,
    `last_name` = NULL,
    `password` = NULL,
    `privacy_accepted` = NULL,
    `token` = NULL,

    #' @description
    #' Initialize a new AcceptInviteRequest class.
    #'
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param password password
    #' @param privacy_accepted GDPR consent — rejected unless true.
    #' @param token token
    #' @param ... Other optional arguments.
    initialize = function(`first_name`, `last_name`, `password`, `privacy_accepted`, `token`, ...) {
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
      if (!missing(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
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
    #' @return AcceptInviteRequest as a base R list.
    #' @examples
    #' # convert array of AcceptInviteRequest (x) to a data frame
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
    #' Convert AcceptInviteRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AcceptInviteRequestObject <- list()
      if (!is.null(self$`first_name`)) {
        AcceptInviteRequestObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        AcceptInviteRequestObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`password`)) {
        AcceptInviteRequestObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`privacy_accepted`)) {
        AcceptInviteRequestObject[["privacy_accepted"]] <-
          self$`privacy_accepted`
      }
      if (!is.null(self$`token`)) {
        AcceptInviteRequestObject[["token"]] <-
          self$`token`
      }
      return(AcceptInviteRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AcceptInviteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AcceptInviteRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AcceptInviteRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AcceptInviteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AcceptInviteRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self$`password` <- this_object$`password`
      self$`privacy_accepted` <- this_object$`privacy_accepted`
      self$`token` <- this_object$`token`
      self
    },

    #' @description
    #' Validate JSON input with respect to AcceptInviteRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `first_name`
      if (!is.null(input_json$`first_name`)) {
        if (!(is.character(input_json$`first_name`) && length(input_json$`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", input_json$`first_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AcceptInviteRequest: the required field `first_name` is missing."))
      }
      # check the required field `last_name`
      if (!is.null(input_json$`last_name`)) {
        if (!(is.character(input_json$`last_name`) && length(input_json$`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", input_json$`last_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AcceptInviteRequest: the required field `last_name` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AcceptInviteRequest: the required field `password` is missing."))
      }
      # check the required field `privacy_accepted`
      if (!is.null(input_json$`privacy_accepted`)) {
        if (!(is.logical(input_json$`privacy_accepted`) && length(input_json$`privacy_accepted`) == 1)) {
          stop(paste("Error! Invalid data for `privacy_accepted`. Must be a boolean:", input_json$`privacy_accepted`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AcceptInviteRequest: the required field `privacy_accepted` is missing."))
      }
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AcceptInviteRequest: the required field `token` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AcceptInviteRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
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

      # check if the required `token` is null
      if (is.null(self$`token`)) {
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

      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
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
# AcceptInviteRequest$unlock()
#
## Below is an example to define the print function
# AcceptInviteRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AcceptInviteRequest$lock()

