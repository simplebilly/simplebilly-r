#' Create a new ElsterStatus
#'
#' @description
#' ElsterStatus Class
#'
#' @docType class
#' @title ElsterStatus
#' @description ElsterStatus Class
#' @format An \code{R6Class} generator object
#' @field cert_configured  character
#' @field eric_available  character
#' @field eric_version  character [optional]
#' @field feature_enabled  character
#' @field hint  character
#' @field mode  character
#' @field vendor_id_configured  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ElsterStatus <- R6::R6Class(
  "ElsterStatus",
  public = list(
    `cert_configured` = NULL,
    `eric_available` = NULL,
    `eric_version` = NULL,
    `feature_enabled` = NULL,
    `hint` = NULL,
    `mode` = NULL,
    `vendor_id_configured` = NULL,

    #' @description
    #' Initialize a new ElsterStatus class.
    #'
    #' @param cert_configured cert_configured
    #' @param eric_available eric_available
    #' @param feature_enabled feature_enabled
    #' @param hint hint
    #' @param mode mode
    #' @param vendor_id_configured vendor_id_configured
    #' @param eric_version eric_version
    #' @param ... Other optional arguments.
    initialize = function(`cert_configured`, `eric_available`, `feature_enabled`, `hint`, `mode`, `vendor_id_configured`, `eric_version` = NULL, ...) {
      if (!missing(`cert_configured`)) {
        if (!(is.logical(`cert_configured`) && length(`cert_configured`) == 1)) {
          stop(paste("Error! Invalid data for `cert_configured`. Must be a boolean:", `cert_configured`))
        }
        self$`cert_configured` <- `cert_configured`
      }
      if (!missing(`eric_available`)) {
        if (!(is.logical(`eric_available`) && length(`eric_available`) == 1)) {
          stop(paste("Error! Invalid data for `eric_available`. Must be a boolean:", `eric_available`))
        }
        self$`eric_available` <- `eric_available`
      }
      if (!missing(`feature_enabled`)) {
        if (!(is.logical(`feature_enabled`) && length(`feature_enabled`) == 1)) {
          stop(paste("Error! Invalid data for `feature_enabled`. Must be a boolean:", `feature_enabled`))
        }
        self$`feature_enabled` <- `feature_enabled`
      }
      if (!missing(`hint`)) {
        if (!(is.character(`hint`) && length(`hint`) == 1)) {
          stop(paste("Error! Invalid data for `hint`. Must be a string:", `hint`))
        }
        self$`hint` <- `hint`
      }
      if (!missing(`mode`)) {
        if (!(is.character(`mode`) && length(`mode`) == 1)) {
          stop(paste("Error! Invalid data for `mode`. Must be a string:", `mode`))
        }
        self$`mode` <- `mode`
      }
      if (!missing(`vendor_id_configured`)) {
        if (!(is.logical(`vendor_id_configured`) && length(`vendor_id_configured`) == 1)) {
          stop(paste("Error! Invalid data for `vendor_id_configured`. Must be a boolean:", `vendor_id_configured`))
        }
        self$`vendor_id_configured` <- `vendor_id_configured`
      }
      if (!is.null(`eric_version`)) {
        if (!(is.character(`eric_version`) && length(`eric_version`) == 1)) {
          stop(paste("Error! Invalid data for `eric_version`. Must be a string:", `eric_version`))
        }
        self$`eric_version` <- `eric_version`
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
    #' @return ElsterStatus as a base R list.
    #' @examples
    #' # convert array of ElsterStatus (x) to a data frame
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
    #' Convert ElsterStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ElsterStatusObject <- list()
      if (!is.null(self$`cert_configured`)) {
        ElsterStatusObject[["cert_configured"]] <-
          self$`cert_configured`
      }
      if (!is.null(self$`eric_available`)) {
        ElsterStatusObject[["eric_available"]] <-
          self$`eric_available`
      }
      if (!is.null(self$`eric_version`)) {
        ElsterStatusObject[["eric_version"]] <-
          self$`eric_version`
      }
      if (!is.null(self$`feature_enabled`)) {
        ElsterStatusObject[["feature_enabled"]] <-
          self$`feature_enabled`
      }
      if (!is.null(self$`hint`)) {
        ElsterStatusObject[["hint"]] <-
          self$`hint`
      }
      if (!is.null(self$`mode`)) {
        ElsterStatusObject[["mode"]] <-
          self$`mode`
      }
      if (!is.null(self$`vendor_id_configured`)) {
        ElsterStatusObject[["vendor_id_configured"]] <-
          self$`vendor_id_configured`
      }
      return(ElsterStatusObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ElsterStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ElsterStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`cert_configured`)) {
        self$`cert_configured` <- this_object$`cert_configured`
      }
      if (!is.null(this_object$`eric_available`)) {
        self$`eric_available` <- this_object$`eric_available`
      }
      if (!is.null(this_object$`eric_version`)) {
        self$`eric_version` <- this_object$`eric_version`
      }
      if (!is.null(this_object$`feature_enabled`)) {
        self$`feature_enabled` <- this_object$`feature_enabled`
      }
      if (!is.null(this_object$`hint`)) {
        self$`hint` <- this_object$`hint`
      }
      if (!is.null(this_object$`mode`)) {
        self$`mode` <- this_object$`mode`
      }
      if (!is.null(this_object$`vendor_id_configured`)) {
        self$`vendor_id_configured` <- this_object$`vendor_id_configured`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ElsterStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ElsterStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of ElsterStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`cert_configured` <- this_object$`cert_configured`
      self$`eric_available` <- this_object$`eric_available`
      self$`eric_version` <- this_object$`eric_version`
      self$`feature_enabled` <- this_object$`feature_enabled`
      self$`hint` <- this_object$`hint`
      self$`mode` <- this_object$`mode`
      self$`vendor_id_configured` <- this_object$`vendor_id_configured`
      self
    },

    #' @description
    #' Validate JSON input with respect to ElsterStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `cert_configured`
      if (!is.null(input_json$`cert_configured`)) {
        if (!(is.logical(input_json$`cert_configured`) && length(input_json$`cert_configured`) == 1)) {
          stop(paste("Error! Invalid data for `cert_configured`. Must be a boolean:", input_json$`cert_configured`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `cert_configured` is missing."))
      }
      # check the required field `eric_available`
      if (!is.null(input_json$`eric_available`)) {
        if (!(is.logical(input_json$`eric_available`) && length(input_json$`eric_available`) == 1)) {
          stop(paste("Error! Invalid data for `eric_available`. Must be a boolean:", input_json$`eric_available`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `eric_available` is missing."))
      }
      # check the required field `feature_enabled`
      if (!is.null(input_json$`feature_enabled`)) {
        if (!(is.logical(input_json$`feature_enabled`) && length(input_json$`feature_enabled`) == 1)) {
          stop(paste("Error! Invalid data for `feature_enabled`. Must be a boolean:", input_json$`feature_enabled`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `feature_enabled` is missing."))
      }
      # check the required field `hint`
      if (!is.null(input_json$`hint`)) {
        if (!(is.character(input_json$`hint`) && length(input_json$`hint`) == 1)) {
          stop(paste("Error! Invalid data for `hint`. Must be a string:", input_json$`hint`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `hint` is missing."))
      }
      # check the required field `mode`
      if (!is.null(input_json$`mode`)) {
        if (!(is.character(input_json$`mode`) && length(input_json$`mode`) == 1)) {
          stop(paste("Error! Invalid data for `mode`. Must be a string:", input_json$`mode`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `mode` is missing."))
      }
      # check the required field `vendor_id_configured`
      if (!is.null(input_json$`vendor_id_configured`)) {
        if (!(is.logical(input_json$`vendor_id_configured`) && length(input_json$`vendor_id_configured`) == 1)) {
          stop(paste("Error! Invalid data for `vendor_id_configured`. Must be a boolean:", input_json$`vendor_id_configured`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ElsterStatus: the required field `vendor_id_configured` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ElsterStatus
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `cert_configured` is null
      if (is.null(self$`cert_configured`)) {
        return(FALSE)
      }

      # check if the required `eric_available` is null
      if (is.null(self$`eric_available`)) {
        return(FALSE)
      }

      # check if the required `feature_enabled` is null
      if (is.null(self$`feature_enabled`)) {
        return(FALSE)
      }

      # check if the required `hint` is null
      if (is.null(self$`hint`)) {
        return(FALSE)
      }

      # check if the required `mode` is null
      if (is.null(self$`mode`)) {
        return(FALSE)
      }

      # check if the required `vendor_id_configured` is null
      if (is.null(self$`vendor_id_configured`)) {
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
      # check if the required `cert_configured` is null
      if (is.null(self$`cert_configured`)) {
        invalid_fields["cert_configured"] <- "Non-nullable required field `cert_configured` cannot be null."
      }

      # check if the required `eric_available` is null
      if (is.null(self$`eric_available`)) {
        invalid_fields["eric_available"] <- "Non-nullable required field `eric_available` cannot be null."
      }

      # check if the required `feature_enabled` is null
      if (is.null(self$`feature_enabled`)) {
        invalid_fields["feature_enabled"] <- "Non-nullable required field `feature_enabled` cannot be null."
      }

      # check if the required `hint` is null
      if (is.null(self$`hint`)) {
        invalid_fields["hint"] <- "Non-nullable required field `hint` cannot be null."
      }

      # check if the required `mode` is null
      if (is.null(self$`mode`)) {
        invalid_fields["mode"] <- "Non-nullable required field `mode` cannot be null."
      }

      # check if the required `vendor_id_configured` is null
      if (is.null(self$`vendor_id_configured`)) {
        invalid_fields["vendor_id_configured"] <- "Non-nullable required field `vendor_id_configured` cannot be null."
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
# ElsterStatus$unlock()
#
## Below is an example to define the print function
# ElsterStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ElsterStatus$lock()

