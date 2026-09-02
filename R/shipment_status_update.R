#' Create a new ShipmentStatusUpdate
#'
#' @description
#' ShipmentStatusUpdate Class
#'
#' @docType class
#' @title ShipmentStatusUpdate
#' @description ShipmentStatusUpdate Class
#' @format An \code{R6Class} generator object
#' @field delivered_at  character [optional]
#' @field signed_by  character [optional]
#' @field status  character
#' @field tracking_number  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ShipmentStatusUpdate <- R6::R6Class(
  "ShipmentStatusUpdate",
  public = list(
    `delivered_at` = NULL,
    `signed_by` = NULL,
    `status` = NULL,
    `tracking_number` = NULL,

    #' @description
    #' Initialize a new ShipmentStatusUpdate class.
    #'
    #' @param status status
    #' @param delivered_at delivered_at
    #' @param signed_by signed_by
    #' @param tracking_number tracking_number
    #' @param ... Other optional arguments.
    initialize = function(`status`, `delivered_at` = NULL, `signed_by` = NULL, `tracking_number` = NULL, ...) {
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`delivered_at`)) {
        if (!(is.character(`delivered_at`) && length(`delivered_at`) == 1)) {
          stop(paste("Error! Invalid data for `delivered_at`. Must be a string:", `delivered_at`))
        }
        self$`delivered_at` <- `delivered_at`
      }
      if (!is.null(`signed_by`)) {
        if (!(is.character(`signed_by`) && length(`signed_by`) == 1)) {
          stop(paste("Error! Invalid data for `signed_by`. Must be a string:", `signed_by`))
        }
        self$`signed_by` <- `signed_by`
      }
      if (!is.null(`tracking_number`)) {
        if (!(is.character(`tracking_number`) && length(`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", `tracking_number`))
        }
        self$`tracking_number` <- `tracking_number`
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
    #' @return ShipmentStatusUpdate as a base R list.
    #' @examples
    #' # convert array of ShipmentStatusUpdate (x) to a data frame
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
    #' Convert ShipmentStatusUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ShipmentStatusUpdateObject <- list()
      if (!is.null(self$`delivered_at`)) {
        ShipmentStatusUpdateObject[["delivered_at"]] <-
          self$`delivered_at`
      }
      if (!is.null(self$`signed_by`)) {
        ShipmentStatusUpdateObject[["signed_by"]] <-
          self$`signed_by`
      }
      if (!is.null(self$`status`)) {
        ShipmentStatusUpdateObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`tracking_number`)) {
        ShipmentStatusUpdateObject[["tracking_number"]] <-
          self$`tracking_number`
      }
      return(ShipmentStatusUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ShipmentStatusUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentStatusUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`delivered_at`)) {
        self$`delivered_at` <- this_object$`delivered_at`
      }
      if (!is.null(this_object$`signed_by`)) {
        self$`signed_by` <- this_object$`signed_by`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`tracking_number`)) {
        self$`tracking_number` <- this_object$`tracking_number`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ShipmentStatusUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ShipmentStatusUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of ShipmentStatusUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`delivered_at` <- this_object$`delivered_at`
      self$`signed_by` <- this_object$`signed_by`
      self$`status` <- this_object$`status`
      self$`tracking_number` <- this_object$`tracking_number`
      self
    },

    #' @description
    #' Validate JSON input with respect to ShipmentStatusUpdate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ShipmentStatusUpdate: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ShipmentStatusUpdate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `status` is null
      if (is.null(self$`status`)) {
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
      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
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
# ShipmentStatusUpdate$unlock()
#
## Below is an example to define the print function
# ShipmentStatusUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ShipmentStatusUpdate$lock()

