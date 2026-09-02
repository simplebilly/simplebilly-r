#' Create a new ContactHistoryResponse
#'
#' @description
#' Aggregated history for a single contact: all communications plus a lightweight per-channel breakdown.
#'
#' @docType class
#' @title ContactHistoryResponse
#' @description ContactHistoryResponse Class
#' @format An \code{R6Class} generator object
#' @field contactId  character
#' @field inboundCount  integer
#' @field items  list(\link{CustomerCommunication})
#' @field outboundCount  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactHistoryResponse <- R6::R6Class(
  "ContactHistoryResponse",
  public = list(
    `contactId` = NULL,
    `inboundCount` = NULL,
    `items` = NULL,
    `outboundCount` = NULL,

    #' @description
    #' Initialize a new ContactHistoryResponse class.
    #'
    #' @param contactId contactId
    #' @param inboundCount inboundCount
    #' @param items items
    #' @param outboundCount outboundCount
    #' @param ... Other optional arguments.
    initialize = function(`contactId`, `inboundCount`, `items`, `outboundCount`, ...) {
      if (!missing(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!missing(`inboundCount`)) {
        if (!(is.numeric(`inboundCount`) && length(`inboundCount`) == 1)) {
          stop(paste("Error! Invalid data for `inboundCount`. Must be an integer:", `inboundCount`))
        }
        self$`inboundCount` <- `inboundCount`
      }
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!missing(`outboundCount`)) {
        if (!(is.numeric(`outboundCount`) && length(`outboundCount`) == 1)) {
          stop(paste("Error! Invalid data for `outboundCount`. Must be an integer:", `outboundCount`))
        }
        self$`outboundCount` <- `outboundCount`
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
    #' @return ContactHistoryResponse as a base R list.
    #' @examples
    #' # convert array of ContactHistoryResponse (x) to a data frame
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
    #' Convert ContactHistoryResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactHistoryResponseObject <- list()
      if (!is.null(self$`contactId`)) {
        ContactHistoryResponseObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`inboundCount`)) {
        ContactHistoryResponseObject[["inboundCount"]] <-
          self$`inboundCount`
      }
      if (!is.null(self$`items`)) {
        ContactHistoryResponseObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`outboundCount`)) {
        ContactHistoryResponseObject[["outboundCount"]] <-
          self$`outboundCount`
      }
      return(ContactHistoryResponseObject)
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
    #' Deserialize JSON string into an instance of ContactHistoryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactHistoryResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`inboundCount`)) {
        self$`inboundCount` <- this_object$`inboundCount`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[CustomerCommunication]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`outboundCount`)) {
        self$`outboundCount` <- this_object$`outboundCount`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ContactHistoryResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactHistoryResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactHistoryResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contactId` <- this_object$`contactId`
      self$`inboundCount` <- this_object$`inboundCount`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[CustomerCommunication]", loadNamespace("openapi"))
      self$`outboundCount` <- this_object$`outboundCount`
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactHistoryResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `contactId`
      if (!is.null(input_json$`contactId`)) {
        if (!(is.character(input_json$`contactId`) && length(input_json$`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", input_json$`contactId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactHistoryResponse: the required field `contactId` is missing."))
      }
      # check the required field `inboundCount`
      if (!is.null(input_json$`inboundCount`)) {
        if (!(is.numeric(input_json$`inboundCount`) && length(input_json$`inboundCount`) == 1)) {
          stop(paste("Error! Invalid data for `inboundCount`. Must be an integer:", input_json$`inboundCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactHistoryResponse: the required field `inboundCount` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactHistoryResponse: the required field `items` is missing."))
      }
      # check the required field `outboundCount`
      if (!is.null(input_json$`outboundCount`)) {
        if (!(is.numeric(input_json$`outboundCount`) && length(input_json$`outboundCount`) == 1)) {
          stop(paste("Error! Invalid data for `outboundCount`. Must be an integer:", input_json$`outboundCount`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactHistoryResponse: the required field `outboundCount` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactHistoryResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `contactId` is null
      if (is.null(self$`contactId`)) {
        return(FALSE)
      }

      # check if the required `inboundCount` is null
      if (is.null(self$`inboundCount`)) {
        return(FALSE)
      }

      if (self$`inboundCount` < 0) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `outboundCount` is null
      if (is.null(self$`outboundCount`)) {
        return(FALSE)
      }

      if (self$`outboundCount` < 0) {
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
      # check if the required `contactId` is null
      if (is.null(self$`contactId`)) {
        invalid_fields["contactId"] <- "Non-nullable required field `contactId` cannot be null."
      }

      # check if the required `inboundCount` is null
      if (is.null(self$`inboundCount`)) {
        invalid_fields["inboundCount"] <- "Non-nullable required field `inboundCount` cannot be null."
      }

      if (self$`inboundCount` < 0) {
        invalid_fields["inboundCount"] <- "Invalid value for `inboundCount`, must be bigger than or equal to 0."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `outboundCount` is null
      if (is.null(self$`outboundCount`)) {
        invalid_fields["outboundCount"] <- "Non-nullable required field `outboundCount` cannot be null."
      }

      if (self$`outboundCount` < 0) {
        invalid_fields["outboundCount"] <- "Invalid value for `outboundCount`, must be bigger than or equal to 0."
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
# ContactHistoryResponse$unlock()
#
## Below is an example to define the print function
# ContactHistoryResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactHistoryResponse$lock()

