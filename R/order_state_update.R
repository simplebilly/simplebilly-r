#' Create a new OrderStateUpdate
#'
#' @description
#' OrderStateUpdate Class
#'
#' @docType class
#' @title OrderStateUpdate
#' @description OrderStateUpdate Class
#' @format An \code{R6Class} generator object
#' @field send_state_to_shop  character [optional]
#' @field state  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderStateUpdate <- R6::R6Class(
  "OrderStateUpdate",
  public = list(
    `send_state_to_shop` = NULL,
    `state` = NULL,

    #' @description
    #' Initialize a new OrderStateUpdate class.
    #'
    #' @param state state
    #' @param send_state_to_shop send_state_to_shop
    #' @param ... Other optional arguments.
    initialize = function(`state`, `send_state_to_shop` = NULL, ...) {
      if (!missing(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`send_state_to_shop`)) {
        if (!(is.logical(`send_state_to_shop`) && length(`send_state_to_shop`) == 1)) {
          stop(paste("Error! Invalid data for `send_state_to_shop`. Must be a boolean:", `send_state_to_shop`))
        }
        self$`send_state_to_shop` <- `send_state_to_shop`
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
    #' @return OrderStateUpdate as a base R list.
    #' @examples
    #' # convert array of OrderStateUpdate (x) to a data frame
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
    #' Convert OrderStateUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OrderStateUpdateObject <- list()
      if (!is.null(self$`send_state_to_shop`)) {
        OrderStateUpdateObject[["send_state_to_shop"]] <-
          self$`send_state_to_shop`
      }
      if (!is.null(self$`state`)) {
        OrderStateUpdateObject[["state"]] <-
          self$`state`
      }
      return(OrderStateUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderStateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderStateUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`send_state_to_shop`)) {
        self$`send_state_to_shop` <- this_object$`send_state_to_shop`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return OrderStateUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OrderStateUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderStateUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`send_state_to_shop` <- this_object$`send_state_to_shop`
      self$`state` <- this_object$`state`
      self
    },

    #' @description
    #' Validate JSON input with respect to OrderStateUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `state`
      if (!is.null(input_json$`state`)) {
        if (!(is.character(input_json$`state`) && length(input_json$`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", input_json$`state`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderStateUpdate: the required field `state` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderStateUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `state` is null
      if (is.null(self$`state`)) {
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
      # check if the required `state` is null
      if (is.null(self$`state`)) {
        invalid_fields["state"] <- "Non-nullable required field `state` cannot be null."
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
# OrderStateUpdate$unlock()
#
## Below is an example to define the print function
# OrderStateUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderStateUpdate$lock()

