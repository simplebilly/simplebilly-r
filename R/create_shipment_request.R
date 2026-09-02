#' Create a new CreateShipmentRequest
#'
#' @description
#' CreateShipmentRequest Class
#'
#' @docType class
#' @title CreateShipmentRequest
#' @description CreateShipmentRequest Class
#' @format An \code{R6Class} generator object
#' @field carrier Carrier name as configured in shipping settings: `ups` or `dhl`. character
#' @field service  character [optional]
#' @field weight_kg  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateShipmentRequest <- R6::R6Class(
  "CreateShipmentRequest",
  public = list(
    `carrier` = NULL,
    `service` = NULL,
    `weight_kg` = NULL,

    #' @description
    #' Initialize a new CreateShipmentRequest class.
    #'
    #' @param carrier Carrier name as configured in shipping settings: `ups` or `dhl`.
    #' @param service service
    #' @param weight_kg weight_kg
    #' @param ... Other optional arguments.
    initialize = function(`carrier`, `service` = NULL, `weight_kg` = NULL, ...) {
      if (!missing(`carrier`)) {
        if (!(is.character(`carrier`) && length(`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", `carrier`))
        }
        self$`carrier` <- `carrier`
      }
      if (!is.null(`service`)) {
        if (!(is.character(`service`) && length(`service`) == 1)) {
          stop(paste("Error! Invalid data for `service`. Must be a string:", `service`))
        }
        self$`service` <- `service`
      }
      if (!is.null(`weight_kg`)) {
        if (!(is.numeric(`weight_kg`) && length(`weight_kg`) == 1)) {
          stop(paste("Error! Invalid data for `weight_kg`. Must be a number:", `weight_kg`))
        }
        self$`weight_kg` <- `weight_kg`
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
    #' @return CreateShipmentRequest as a base R list.
    #' @examples
    #' # convert array of CreateShipmentRequest (x) to a data frame
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
    #' Convert CreateShipmentRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateShipmentRequestObject <- list()
      if (!is.null(self$`carrier`)) {
        CreateShipmentRequestObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`service`)) {
        CreateShipmentRequestObject[["service"]] <-
          self$`service`
      }
      if (!is.null(self$`weight_kg`)) {
        CreateShipmentRequestObject[["weight_kg"]] <-
          self$`weight_kg`
      }
      return(CreateShipmentRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateShipmentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateShipmentRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`service`)) {
        self$`service` <- this_object$`service`
      }
      if (!is.null(this_object$`weight_kg`)) {
        self$`weight_kg` <- this_object$`weight_kg`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateShipmentRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateShipmentRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateShipmentRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`carrier` <- this_object$`carrier`
      self$`service` <- this_object$`service`
      self$`weight_kg` <- this_object$`weight_kg`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateShipmentRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateShipmentRequest: the required field `carrier` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateShipmentRequest
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
# CreateShipmentRequest$unlock()
#
## Below is an example to define the print function
# CreateShipmentRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateShipmentRequest$lock()

