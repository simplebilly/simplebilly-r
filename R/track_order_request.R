#' Create a new TrackOrderRequest
#'
#' @description
#' Refresh tracking for a shipment from the live carrier API and store the latest status + events on the shipment row.
#'
#' @docType class
#' @title TrackOrderRequest
#' @description TrackOrderRequest Class
#' @format An \code{R6Class} generator object
#' @field email  character
#' @field order_number  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrackOrderRequest <- R6::R6Class(
  "TrackOrderRequest",
  public = list(
    `email` = NULL,
    `order_number` = NULL,

    #' @description
    #' Initialize a new TrackOrderRequest class.
    #'
    #' @param email email
    #' @param order_number order_number
    #' @param ... Other optional arguments.
    initialize = function(`email`, `order_number`, ...) {
      if (!missing(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!missing(`order_number`)) {
        if (!(is.character(`order_number`) && length(`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", `order_number`))
        }
        self$`order_number` <- `order_number`
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
    #' @return TrackOrderRequest as a base R list.
    #' @examples
    #' # convert array of TrackOrderRequest (x) to a data frame
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
    #' Convert TrackOrderRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrackOrderRequestObject <- list()
      if (!is.null(self$`email`)) {
        TrackOrderRequestObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`order_number`)) {
        TrackOrderRequestObject[["order_number"]] <-
          self$`order_number`
      }
      return(TrackOrderRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TrackOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackOrderRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`order_number`)) {
        self$`order_number` <- this_object$`order_number`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrackOrderRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrackOrderRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackOrderRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`email` <- this_object$`email`
      self$`order_number` <- this_object$`order_number`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrackOrderRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TrackOrderRequest: the required field `email` is missing."))
      }
      # check the required field `order_number`
      if (!is.null(input_json$`order_number`)) {
        if (!(is.character(input_json$`order_number`) && length(input_json$`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", input_json$`order_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackOrderRequest: the required field `order_number` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrackOrderRequest
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

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
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

      # check if the required `order_number` is null
      if (is.null(self$`order_number`)) {
        invalid_fields["order_number"] <- "Non-nullable required field `order_number` cannot be null."
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
# TrackOrderRequest$unlock()
#
## Below is an example to define the print function
# TrackOrderRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrackOrderRequest$lock()

