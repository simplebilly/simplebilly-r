#' Create a new TrackedShipment
#'
#' @description
#' TrackedShipment Class
#'
#' @docType class
#' @title TrackedShipment
#' @description TrackedShipment Class
#' @format An \code{R6Class} generator object
#' @field carrier  character
#' @field events  list(\link{TrackingEvent})
#' @field label_url  character [optional]
#' @field status  character
#' @field tracking_number  character [optional]
#' @field tracking_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrackedShipment <- R6::R6Class(
  "TrackedShipment",
  public = list(
    `carrier` = NULL,
    `events` = NULL,
    `label_url` = NULL,
    `status` = NULL,
    `tracking_number` = NULL,
    `tracking_url` = NULL,

    #' @description
    #' Initialize a new TrackedShipment class.
    #'
    #' @param carrier carrier
    #' @param events events
    #' @param status status
    #' @param label_url label_url
    #' @param tracking_number tracking_number
    #' @param tracking_url tracking_url
    #' @param ... Other optional arguments.
    initialize = function(`carrier`, `events`, `status`, `label_url` = NULL, `tracking_number` = NULL, `tracking_url` = NULL, ...) {
      if (!missing(`carrier`)) {
        if (!(is.character(`carrier`) && length(`carrier`) == 1)) {
          stop(paste("Error! Invalid data for `carrier`. Must be a string:", `carrier`))
        }
        self$`carrier` <- `carrier`
      }
      if (!missing(`events`)) {
        stopifnot(is.vector(`events`), length(`events`) != 0)
        sapply(`events`, function(x) stopifnot(R6::is.R6(x)))
        self$`events` <- `events`
      }
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`label_url`)) {
        if (!(is.character(`label_url`) && length(`label_url`) == 1)) {
          stop(paste("Error! Invalid data for `label_url`. Must be a string:", `label_url`))
        }
        self$`label_url` <- `label_url`
      }
      if (!is.null(`tracking_number`)) {
        if (!(is.character(`tracking_number`) && length(`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", `tracking_number`))
        }
        self$`tracking_number` <- `tracking_number`
      }
      if (!is.null(`tracking_url`)) {
        if (!(is.character(`tracking_url`) && length(`tracking_url`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_url`. Must be a string:", `tracking_url`))
        }
        self$`tracking_url` <- `tracking_url`
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
    #' @return TrackedShipment as a base R list.
    #' @examples
    #' # convert array of TrackedShipment (x) to a data frame
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
    #' Convert TrackedShipment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrackedShipmentObject <- list()
      if (!is.null(self$`carrier`)) {
        TrackedShipmentObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`events`)) {
        TrackedShipmentObject[["events"]] <-
          self$extractSimpleType(self$`events`)
      }
      if (!is.null(self$`label_url`)) {
        TrackedShipmentObject[["label_url"]] <-
          self$`label_url`
      }
      if (!is.null(self$`status`)) {
        TrackedShipmentObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`tracking_number`)) {
        TrackedShipmentObject[["tracking_number"]] <-
          self$`tracking_number`
      }
      if (!is.null(self$`tracking_url`)) {
        TrackedShipmentObject[["tracking_url"]] <-
          self$`tracking_url`
      }
      return(TrackedShipmentObject)
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
    #' Deserialize JSON string into an instance of TrackedShipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackedShipment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`events`)) {
        self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TrackingEvent]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`label_url`)) {
        self$`label_url` <- this_object$`label_url`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`tracking_number`)) {
        self$`tracking_number` <- this_object$`tracking_number`
      }
      if (!is.null(this_object$`tracking_url`)) {
        self$`tracking_url` <- this_object$`tracking_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TrackedShipment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrackedShipment
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackedShipment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`carrier` <- this_object$`carrier`
      self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TrackingEvent]", loadNamespace("openapi"))
      self$`label_url` <- this_object$`label_url`
      self$`status` <- this_object$`status`
      self$`tracking_number` <- this_object$`tracking_number`
      self$`tracking_url` <- this_object$`tracking_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrackedShipment and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TrackedShipment: the required field `carrier` is missing."))
      }
      # check the required field `events`
      if (!is.null(input_json$`events`)) {
        stopifnot(is.vector(input_json$`events`), length(input_json$`events`) != 0)
        tmp <- sapply(input_json$`events`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackedShipment: the required field `events` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackedShipment: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrackedShipment
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

      # check if the required `events` is null
      if (is.null(self$`events`)) {
        return(FALSE)
      }

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
      # check if the required `carrier` is null
      if (is.null(self$`carrier`)) {
        invalid_fields["carrier"] <- "Non-nullable required field `carrier` cannot be null."
      }

      # check if the required `events` is null
      if (is.null(self$`events`)) {
        invalid_fields["events"] <- "Non-nullable required field `events` cannot be null."
      }

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
# TrackedShipment$unlock()
#
## Below is an example to define the print function
# TrackedShipment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrackedShipment$lock()

