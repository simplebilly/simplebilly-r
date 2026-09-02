#' Create a new PublicReturnRequest
#'
#' @description
#' PublicReturnRequest Class
#'
#' @docType class
#' @title PublicReturnRequest
#' @description PublicReturnRequest Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field items  list(\link{PublicReturnItem})
#' @field notes  character [optional]
#' @field orderNumber  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PublicReturnRequest <- R6::R6Class(
  "PublicReturnRequest",
  public = list(
    `email` = NULL,
    `items` = NULL,
    `notes` = NULL,
    `orderNumber` = NULL,

    #' @description
    #' Initialize a new PublicReturnRequest class.
    #'
    #' @param email email
    #' @param items items
    #' @param orderNumber orderNumber
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`email`, `items`, `orderNumber`, `notes` = NULL, ...) {
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!missing(`orderNumber`)) {
        if (!(is.character(`orderNumber`) && length(`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", `orderNumber`))
        }
        self$`orderNumber` <- `orderNumber`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return PublicReturnRequest as a base R list.
    #' @examples
    #' # convert array of PublicReturnRequest (x) to a data frame
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
    #' Convert PublicReturnRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PublicReturnRequestObject <- list()
      if (!is.null(self$`email`)) {
        PublicReturnRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`items`)) {
        PublicReturnRequestObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`notes`)) {
        PublicReturnRequestObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`orderNumber`)) {
        PublicReturnRequestObject[["orderNumber"]] <-
          self$`orderNumber`
      }
      return(PublicReturnRequestObject)
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
    #' Deserialize JSON string into an instance of PublicReturnRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicReturnRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PublicReturnItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`orderNumber`)) {
        self$`orderNumber` <- this_object$`orderNumber`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PublicReturnRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PublicReturnRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PublicReturnRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[PublicReturnItem]", loadNamespace("openapi"))
      self$`notes` <- this_object$`notes`
      self$`orderNumber` <- this_object$`orderNumber`
      self
    },

    #' @description
    #' Validate JSON input with respect to PublicReturnRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `email`
      if (!is.null(input_json$`email`)) {
        if (!(is.character(input_json$`email`) && length(input_json$`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", input_json$`email`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnRequest: the required field `email` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnRequest: the required field `items` is missing."))
      }
      # check the required field `orderNumber`
      if (!is.null(input_json$`orderNumber`)) {
        if (!(is.character(input_json$`orderNumber`) && length(input_json$`orderNumber`) == 1)) {
          stop(paste("Error! Invalid data for `orderNumber`. Must be a string:", input_json$`orderNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PublicReturnRequest: the required field `orderNumber` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PublicReturnRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
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
      # check if the required `email` is null
      if (is.null(self$`email`)) {
        invalid_fields["email"] <- "Non-nullable required field `email` cannot be null."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `orderNumber` is null
      if (is.null(self$`orderNumber`)) {
        invalid_fields["orderNumber"] <- "Non-nullable required field `orderNumber` cannot be null."
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
# PublicReturnRequest$unlock()
#
## Below is an example to define the print function
# PublicReturnRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PublicReturnRequest$lock()

