#' Create a new TrackOrderResponse
#'
#' @description
#' TrackOrderResponse Class
#'
#' @docType class
#' @title TrackOrderResponse
#' @description TrackOrderResponse Class
#' @format An \code{R6Class} generator object
#' @field order_number  character
#' @field order_status  character
#' @field shipments  list(\link{TrackedShipment})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrackOrderResponse <- R6::R6Class(
  "TrackOrderResponse",
  public = list(
    `order_number` = NULL,
    `order_status` = NULL,
    `shipments` = NULL,

    #' @description
    #' Initialize a new TrackOrderResponse class.
    #'
    #' @param order_number order_number
    #' @param order_status order_status
    #' @param shipments shipments
    #' @param ... Other optional arguments.
    initialize = function(`order_number`, `order_status`, `shipments`, ...) {
      if (!missing(`order_number`)) {
        if (!(is.character(`order_number`) && length(`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", `order_number`))
        }
        self$`order_number` <- `order_number`
      }
      if (!missing(`order_status`)) {
        if (!(is.character(`order_status`) && length(`order_status`) == 1)) {
          stop(paste("Error! Invalid data for `order_status`. Must be a string:", `order_status`))
        }
        self$`order_status` <- `order_status`
      }
      if (!missing(`shipments`)) {
        stopifnot(is.vector(`shipments`), length(`shipments`) != 0)
        sapply(`shipments`, function(x) stopifnot(R6::is.R6(x)))
        self$`shipments` <- `shipments`
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
    #' @return TrackOrderResponse as a base R list.
    #' @examples
    #' # convert array of TrackOrderResponse (x) to a data frame
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
    #' Convert TrackOrderResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrackOrderResponseObject <- list()
      if (!is.null(self$`order_number`)) {
        TrackOrderResponseObject[["order_number"]] <-
          self$`order_number`
      }
      if (!is.null(self$`order_status`)) {
        TrackOrderResponseObject[["order_status"]] <-
          self$`order_status`
      }
      if (!is.null(self$`shipments`)) {
        TrackOrderResponseObject[["shipments"]] <-
          self$extractSimpleType(self$`shipments`)
      }
      return(TrackOrderResponseObject)
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
    #' Deserialize JSON string into an instance of TrackOrderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackOrderResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`order_number`)) {
        self$`order_number` <- this_object$`order_number`
      }
      if (!is.null(this_object$`order_status`)) {
        self$`order_status` <- this_object$`order_status`
      }
      if (!is.null(this_object$`shipments`)) {
        self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[TrackedShipment]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrackOrderResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrackOrderResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackOrderResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`order_number` <- this_object$`order_number`
      self$`order_status` <- this_object$`order_status`
      self$`shipments` <- ApiClient$new()$deserializeObj(this_object$`shipments`, "array[TrackedShipment]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TrackOrderResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `order_number`
      if (!is.null(input_json$`order_number`)) {
        if (!(is.character(input_json$`order_number`) && length(input_json$`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", input_json$`order_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackOrderResponse: the required field `order_number` is missing."))
      }
      # check the required field `order_status`
      if (!is.null(input_json$`order_status`)) {
        if (!(is.character(input_json$`order_status`) && length(input_json$`order_status`) == 1)) {
          stop(paste("Error! Invalid data for `order_status`. Must be a string:", input_json$`order_status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackOrderResponse: the required field `order_status` is missing."))
      }
      # check the required field `shipments`
      if (!is.null(input_json$`shipments`)) {
        stopifnot(is.vector(input_json$`shipments`), length(input_json$`shipments`) != 0)
        tmp <- sapply(input_json$`shipments`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackOrderResponse: the required field `shipments` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrackOrderResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        return(FALSE)
      }

      # check if the required `order_status` is null
      if (is.null(self$`order_status`)) {
        return(FALSE)
      }

      # check if the required `shipments` is null
      if (is.null(self$`shipments`)) {
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
      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        invalid_fields["order_number"] <- "Non-nullable required field `order_number` cannot be null."
      }

      # check if the required `order_status` is null
      if (is.null(self$`order_status`)) {
        invalid_fields["order_status"] <- "Non-nullable required field `order_status` cannot be null."
      }

      # check if the required `shipments` is null
      if (is.null(self$`shipments`)) {
        invalid_fields["shipments"] <- "Non-nullable required field `shipments` cannot be null."
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
# TrackOrderResponse$unlock()
#
## Below is an example to define the print function
# TrackOrderResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrackOrderResponse$lock()

