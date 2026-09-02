#' Create a new MethodSuitability
#'
#' @description
#' MethodSuitability Class
#'
#' @docType class
#' @title MethodSuitability
#' @description MethodSuitability Class
#' @format An \code{R6Class} generator object
#' @field carrier  character
#' @field rate  \link{ShippingRate} [optional]
#' @field reasons  list(character)
#' @field service  character
#' @field suitable  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MethodSuitability <- R6::R6Class(
  "MethodSuitability",
  public = list(
    `carrier` = NULL,
    `rate` = NULL,
    `reasons` = NULL,
    `service` = NULL,
    `suitable` = NULL,

    #' @description
    #' Initialize a new MethodSuitability class.
    #'
    #' @param carrier carrier
    #' @param reasons reasons
    #' @param service service
    #' @param suitable suitable
    #' @param rate rate
    #' @param ... Other optional arguments.
    initialize = function(`carrier`, `reasons`, `service`, `suitable`, `rate` = NULL, ...) {
      if (!missing(`carrier`)) {
        if (!(is.character(`carrier`) && length(`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", `carrier`))
        }
        self$`carrier` <- `carrier`
      }
      if (!missing(`reasons`)) {
        stopifnot(is.vector(`reasons`), length(`reasons`) != 0)
        sapply(`reasons`, function(x) stopifnot(is.character(x)))
        self$`reasons` <- `reasons`
      }
      if (!missing(`service`)) {
        if (!(is.character(`service`) && length(`service`) == 1)) {
          stop(paste("Error! Invalid data for `service`. Must be a string:", `service`))
        }
        self$`service` <- `service`
      }
      if (!missing(`suitable`)) {
        if (!(is.logical(`suitable`) && length(`suitable`) == 1)) {
          stop(paste("Error! Invalid data for `suitable`. Must be a boolean:", `suitable`))
        }
        self$`suitable` <- `suitable`
      }
      if (!is.null(`rate`)) {
        stopifnot(R6::is.R6(`rate`))
        self$`rate` <- `rate`
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
    #' @return MethodSuitability as a base R list.
    #' @examples
    #' # convert array of MethodSuitability (x) to a data frame
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
    #' Convert MethodSuitability to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MethodSuitabilityObject <- list()
      if (!is.null(self$`carrier`)) {
        MethodSuitabilityObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`rate`)) {
        MethodSuitabilityObject[["rate"]] <-
          self$extractSimpleType(self$`rate`)
      }
      if (!is.null(self$`reasons`)) {
        MethodSuitabilityObject[["reasons"]] <-
          self$`reasons`
      }
      if (!is.null(self$`service`)) {
        MethodSuitabilityObject[["service"]] <-
          self$`service`
      }
      if (!is.null(self$`suitable`)) {
        MethodSuitabilityObject[["suitable"]] <-
          self$`suitable`
      }
      return(MethodSuitabilityObject)
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
    #' Deserialize JSON string into an instance of MethodSuitability
    #'
    #' @param input_json the JSON input
    #' @return the instance of MethodSuitability
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`rate`)) {
        `rate_object` <- ShippingRate$new()
        `rate_object`$fromJSON(jsonlite::toJSON(this_object$`rate`, auto_unbox = TRUE, digits = NA))
        self$`rate` <- `rate_object`
      }
      if (!is.null(this_object$`reasons`)) {
        self$`reasons` <- ApiClient$new()$deserializeObj(this_object$`reasons`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`service`)) {
        self$`service` <- this_object$`service`
      }
      if (!is.null(this_object$`suitable`)) {
        self$`suitable` <- this_object$`suitable`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MethodSuitability in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MethodSuitability
    #'
    #' @param input_json the JSON input
    #' @return the instance of MethodSuitability
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`carrier` <- this_object$`carrier`
      self$`rate` <- ShippingRate$new()$fromJSON(jsonlite::toJSON(this_object$`rate`, auto_unbox = TRUE, digits = NA))
      self$`reasons` <- ApiClient$new()$deserializeObj(this_object$`reasons`, "array[character]", loadNamespace("openapi"))
      self$`service` <- this_object$`service`
      self$`suitable` <- this_object$`suitable`
      self
    },

    #' @description
    #' Validate JSON input with respect to MethodSuitability and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `carrier`
      if (!is.null(input_json$`carrier`)) {
        if (!(is.character(input_json$`carrier`) && length(input_json$`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", input_json$`carrier`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodSuitability: the required field `carrier` is missing."))
      }
      # check the required field `reasons`
      if (!is.null(input_json$`reasons`)) {
        stopifnot(is.vector(input_json$`reasons`), length(input_json$`reasons`) != 0)
        tmp <- sapply(input_json$`reasons`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodSuitability: the required field `reasons` is missing."))
      }
      # check the required field `service`
      if (!is.null(input_json$`service`)) {
        if (!(is.character(input_json$`service`) && length(input_json$`service`) == 1)) {
          stop(paste("Error! Invalid data for `service`. Must be a string:", input_json$`service`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodSuitability: the required field `service` is missing."))
      }
      # check the required field `suitable`
      if (!is.null(input_json$`suitable`)) {
        if (!(is.logical(input_json$`suitable`) && length(input_json$`suitable`) == 1)) {
          stop(paste("Error! Invalid data for `suitable`. Must be a boolean:", input_json$`suitable`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MethodSuitability: the required field `suitable` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MethodSuitability
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `carrier` is null
      if (is.null(self$`carrier`)) {
        return(FALSE)
      }

      # check if the required `reasons` is null
      if (is.null(self$`reasons`)) {
        return(FALSE)
      }

      # check if the required `service` is null
      if (is.null(self$`service`)) {
        return(FALSE)
      }

      # check if the required `suitable` is null
      if (is.null(self$`suitable`)) {
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
      # check if the required `carrier` is null
      if (is.null(self$`carrier`)) {
        invalid_fields["carrier"] <- "Non-nullable required field `carrier` cannot be null."
      }

      # check if the required `reasons` is null
      if (is.null(self$`reasons`)) {
        invalid_fields["reasons"] <- "Non-nullable required field `reasons` cannot be null."
      }

      # check if the required `service` is null
      if (is.null(self$`service`)) {
        invalid_fields["service"] <- "Non-nullable required field `service` cannot be null."
      }

      # check if the required `suitable` is null
      if (is.null(self$`suitable`)) {
        invalid_fields["suitable"] <- "Non-nullable required field `suitable` cannot be null."
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
# MethodSuitability$unlock()
#
## Below is an example to define the print function
# MethodSuitability$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MethodSuitability$lock()

