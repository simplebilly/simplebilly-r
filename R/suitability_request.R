#' Create a new SuitabilityRequest
#'
#' @description
#' SuitabilityRequest Class
#'
#' @docType class
#' @title SuitabilityRequest
#' @description SuitabilityRequest Class
#' @format An \code{R6Class} generator object
#' @field customer_annual_volume  integer [optional]
#' @field items  list(\link{CartItemInput})
#' @field recipient  \link{Address}
#' @field sender  \link{Address}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SuitabilityRequest <- R6::R6Class(
  "SuitabilityRequest",
  public = list(
    `customer_annual_volume` = NULL,
    `items` = NULL,
    `recipient` = NULL,
    `sender` = NULL,

    #' @description
    #' Initialize a new SuitabilityRequest class.
    #'
    #' @param items items
    #' @param recipient recipient
    #' @param sender sender
    #' @param customer_annual_volume customer_annual_volume
    #' @param ... Other optional arguments.
    initialize = function(`items`, `recipient`, `sender`, `customer_annual_volume` = NULL, ...) {
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!missing(`recipient`)) {
        stopifnot(R6::is.R6(`recipient`))
        self$`recipient` <- `recipient`
      }
      if (!missing(`sender`)) {
        stopifnot(R6::is.R6(`sender`))
        self$`sender` <- `sender`
      }
      if (!is.null(`customer_annual_volume`)) {
        if (!(is.numeric(`customer_annual_volume`) && length(`customer_annual_volume`) == 1)) {
          stop(paste("Error! Invalid data for `customer_annual_volume`. Must be an integer:", `customer_annual_volume`))
        }
        self$`customer_annual_volume` <- `customer_annual_volume`
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
    #' @return SuitabilityRequest as a base R list.
    #' @examples
    #' # convert array of SuitabilityRequest (x) to a data frame
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
    #' Convert SuitabilityRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SuitabilityRequestObject <- list()
      if (!is.null(self$`customer_annual_volume`)) {
        SuitabilityRequestObject[["customer_annual_volume"]] <-
          self$`customer_annual_volume`
      }
      if (!is.null(self$`items`)) {
        SuitabilityRequestObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`recipient`)) {
        SuitabilityRequestObject[["recipient"]] <-
          self$extractSimpleType(self$`recipient`)
      }
      if (!is.null(self$`sender`)) {
        SuitabilityRequestObject[["sender"]] <-
          self$extractSimpleType(self$`sender`)
      }
      return(SuitabilityRequestObject)
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
    #' Deserialize JSON string into an instance of SuitabilityRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuitabilityRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customer_annual_volume`)) {
        self$`customer_annual_volume` <- this_object$`customer_annual_volume`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[CartItemInput]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`recipient`)) {
        `recipient_object` <- Address$new()
        `recipient_object`$fromJSON(jsonlite::toJSON(this_object$`recipient`, auto_unbox = TRUE, digits = NA))
        self$`recipient` <- `recipient_object`
      }
      if (!is.null(this_object$`sender`)) {
        `sender_object` <- Address$new()
        `sender_object`$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
        self$`sender` <- `sender_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SuitabilityRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SuitabilityRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SuitabilityRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customer_annual_volume` <- this_object$`customer_annual_volume`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[CartItemInput]", loadNamespace("openapi"))
      self$`recipient` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`recipient`, auto_unbox = TRUE, digits = NA))
      self$`sender` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SuitabilityRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityRequest: the required field `items` is missing."))
      }
      # check the required field `recipient`
      if (!is.null(input_json$`recipient`)) {
        stopifnot(R6::is.R6(input_json$`recipient`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityRequest: the required field `recipient` is missing."))
      }
      # check the required field `sender`
      if (!is.null(input_json$`sender`)) {
        stopifnot(R6::is.R6(input_json$`sender`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SuitabilityRequest: the required field `sender` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SuitabilityRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (self$`customer_annual_volume` < 0) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `recipient` is null
      if (is.null(self$`recipient`)) {
        return(FALSE)
      }

      # check if the required `sender` is null
      if (is.null(self$`sender`)) {
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
      if (self$`customer_annual_volume` < 0) {
        invalid_fields["customer_annual_volume"] <- "Invalid value for `customer_annual_volume`, must be bigger than or equal to 0."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `recipient` is null
      if (is.null(self$`recipient`)) {
        invalid_fields["recipient"] <- "Non-nullable required field `recipient` cannot be null."
      }

      # check if the required `sender` is null
      if (is.null(self$`sender`)) {
        invalid_fields["sender"] <- "Non-nullable required field `sender` cannot be null."
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
# SuitabilityRequest$unlock()
#
## Below is an example to define the print function
# SuitabilityRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SuitabilityRequest$lock()

