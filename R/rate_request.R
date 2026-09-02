#' Create a new RateRequest
#'
#' @description
#' RateRequest Class
#'
#' @docType class
#' @title RateRequest
#' @description RateRequest Class
#' @format An \code{R6Class} generator object
#' @field customer  \link{CustomerInfo} [optional]
#' @field packages  list(\link{Package})
#' @field recipient  \link{Address}
#' @field sender  \link{Address}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RateRequest <- R6::R6Class(
  "RateRequest",
  public = list(
    `customer` = NULL,
    `packages` = NULL,
    `recipient` = NULL,
    `sender` = NULL,

    #' @description
    #' Initialize a new RateRequest class.
    #'
    #' @param packages packages
    #' @param recipient recipient
    #' @param sender sender
    #' @param customer customer
    #' @param ... Other optional arguments.
    initialize = function(`packages`, `recipient`, `sender`, `customer` = NULL, ...) {
      if (!missing(`packages`)) {
        stopifnot(is.vector(`packages`), length(`packages`) != 0)
        sapply(`packages`, function(x) stopifnot(R6::is.R6(x)))
        self$`packages` <- `packages`
      }
      if (!missing(`recipient`)) {
        stopifnot(R6::is.R6(`recipient`))
        self$`recipient` <- `recipient`
      }
      if (!missing(`sender`)) {
        stopifnot(R6::is.R6(`sender`))
        self$`sender` <- `sender`
      }
      if (!is.null(`customer`)) {
        stopifnot(R6::is.R6(`customer`))
        self$`customer` <- `customer`
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
    #' @return RateRequest as a base R list.
    #' @examples
    #' # convert array of RateRequest (x) to a data frame
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
    #' Convert RateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RateRequestObject <- list()
      if (!is.null(self$`customer`)) {
        RateRequestObject[["customer"]] <-
          self$extractSimpleType(self$`customer`)
      }
      if (!is.null(self$`packages`)) {
        RateRequestObject[["packages"]] <-
          self$extractSimpleType(self$`packages`)
      }
      if (!is.null(self$`recipient`)) {
        RateRequestObject[["recipient"]] <-
          self$extractSimpleType(self$`recipient`)
      }
      if (!is.null(self$`sender`)) {
        RateRequestObject[["sender"]] <-
          self$extractSimpleType(self$`sender`)
      }
      return(RateRequestObject)
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
    #' Deserialize JSON string into an instance of RateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of RateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`customer`)) {
        `customer_object` <- CustomerInfo$new()
        `customer_object`$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
        self$`customer` <- `customer_object`
      }
      if (!is.null(this_object$`packages`)) {
        self$`packages` <- ApiClient$new()$deserializeObj(this_object$`packages`, "array[Package]", loadNamespace("openapi"))
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
    #' @return RateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of RateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`customer` <- CustomerInfo$new()$fromJSON(jsonlite::toJSON(this_object$`customer`, auto_unbox = TRUE, digits = NA))
      self$`packages` <- ApiClient$new()$deserializeObj(this_object$`packages`, "array[Package]", loadNamespace("openapi"))
      self$`recipient` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`recipient`, auto_unbox = TRUE, digits = NA))
      self$`sender` <- Address$new()$fromJSON(jsonlite::toJSON(this_object$`sender`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to RateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `packages`
      if (!is.null(input_json$`packages`)) {
        stopifnot(is.vector(input_json$`packages`), length(input_json$`packages`) != 0)
        tmp <- sapply(input_json$`packages`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RateRequest: the required field `packages` is missing."))
      }
      # check the required field `recipient`
      if (!is.null(input_json$`recipient`)) {
        stopifnot(R6::is.R6(input_json$`recipient`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RateRequest: the required field `recipient` is missing."))
      }
      # check the required field `sender`
      if (!is.null(input_json$`sender`)) {
        stopifnot(R6::is.R6(input_json$`sender`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for RateRequest: the required field `sender` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `packages` is null
      if (is.null(self$`packages`)) {
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
      # check if the required `packages` is null
      if (is.null(self$`packages`)) {
        invalid_fields["packages"] <- "Non-nullable required field `packages` cannot be null."
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
# RateRequest$unlock()
#
## Below is an example to define the print function
# RateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RateRequest$lock()

