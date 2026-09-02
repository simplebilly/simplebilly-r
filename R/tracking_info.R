#' Create a new TrackingInfo
#'
#' @description
#' TrackingInfo Class
#'
#' @docType class
#' @title TrackingInfo
#' @description TrackingInfo Class
#' @format An \code{R6Class} generator object
#' @field carrier  character
#' @field estimated_delivery  character [optional]
#' @field events  list(\link{TrackingEvent})
#' @field raw_response  \link{AnyType} [optional]
#' @field status  character
#' @field tracking_number  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TrackingInfo <- R6::R6Class(
  "TrackingInfo",
  public = list(
    `carrier` = NULL,
    `estimated_delivery` = NULL,
    `events` = NULL,
    `raw_response` = NULL,
    `status` = NULL,
    `tracking_number` = NULL,

    #' @description
    #' Initialize a new TrackingInfo class.
    #'
    #' @param carrier carrier
    #' @param events events
    #' @param status status
    #' @param tracking_number tracking_number
    #' @param estimated_delivery estimated_delivery
    #' @param raw_response raw_response
    #' @param ... Other optional arguments.
    initialize = function(`carrier`, `events`, `status`, `tracking_number`, `estimated_delivery` = NULL, `raw_response` = NULL, ...) {
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
      if (!missing(`tracking_number`)) {
        if (!(is.character(`tracking_number`) && length(`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", `tracking_number`))
        }
        self$`tracking_number` <- `tracking_number`
      }
      if (!is.null(`estimated_delivery`)) {
        if (!(is.character(`estimated_delivery`) && length(`estimated_delivery`) == 1)) {
          stop(paste("Error! Invalid data for `estimated_delivery`. Must be a string:", `estimated_delivery`))
        }
        self$`estimated_delivery` <- `estimated_delivery`
      }
      if (!is.null(`raw_response`)) {
        stopifnot(R6::is.R6(`raw_response`))
        self$`raw_response` <- `raw_response`
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
    #' @return TrackingInfo as a base R list.
    #' @examples
    #' # convert array of TrackingInfo (x) to a data frame
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
    #' Convert TrackingInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TrackingInfoObject <- list()
      if (!is.null(self$`carrier`)) {
        TrackingInfoObject[["carrier"]] <-
          self$`carrier`
      }
      if (!is.null(self$`estimated_delivery`)) {
        TrackingInfoObject[["estimated_delivery"]] <-
          self$`estimated_delivery`
      }
      if (!is.null(self$`events`)) {
        TrackingInfoObject[["events"]] <-
          self$extractSimpleType(self$`events`)
      }
      if (!is.null(self$`raw_response`)) {
        TrackingInfoObject[["raw_response"]] <-
          self$extractSimpleType(self$`raw_response`)
      }
      if (!is.null(self$`status`)) {
        TrackingInfoObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`tracking_number`)) {
        TrackingInfoObject[["tracking_number"]] <-
          self$`tracking_number`
      }
      return(TrackingInfoObject)
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
    #' Deserialize JSON string into an instance of TrackingInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackingInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`carrier`)) {
        self$`carrier` <- this_object$`carrier`
      }
      if (!is.null(this_object$`estimated_delivery`)) {
        self$`estimated_delivery` <- this_object$`estimated_delivery`
      }
      if (!is.null(this_object$`events`)) {
        self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TrackingEvent]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`raw_response`)) {
        `raw_response_object` <- AnyType$new()
        `raw_response_object`$fromJSON(jsonlite::toJSON(this_object$`raw_response`, auto_unbox = TRUE, digits = NA))
        self$`raw_response` <- `raw_response_object`
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
    #' @return TrackingInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TrackingInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of TrackingInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`carrier` <- this_object$`carrier`
      self$`estimated_delivery` <- this_object$`estimated_delivery`
      self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TrackingEvent]", loadNamespace("openapi"))
      self$`raw_response` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`raw_response`, auto_unbox = TRUE, digits = NA))
      self$`status` <- this_object$`status`
      self$`tracking_number` <- this_object$`tracking_number`
      self
    },

    #' @description
    #' Validate JSON input with respect to TrackingInfo and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for TrackingInfo: the required field `carrier` is missing."))
      }
      # check the required field `events`
      if (!is.null(input_json$`events`)) {
        stopifnot(is.vector(input_json$`events`), length(input_json$`events`) != 0)
        tmp <- sapply(input_json$`events`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackingInfo: the required field `events` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackingInfo: the required field `status` is missing."))
      }
      # check the required field `tracking_number`
      if (!is.null(input_json$`tracking_number`)) {
        if (!(is.character(input_json$`tracking_number`) && length(input_json$`tracking_number`) == 1)) {
          stop(paste("Error! Invalid data for `tracking_number`. Must be a string:", input_json$`tracking_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TrackingInfo: the required field `tracking_number` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TrackingInfo
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

      # check if the required `tracking_number` is null
      if (is.null(self$`tracking_number`)) {
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

      # check if the required `tracking_number` is null
      if (is.null(self$`tracking_number`)) {
        invalid_fields["tracking_number"] <- "Non-nullable required field `tracking_number` cannot be null."
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
# TrackingInfo$unlock()
#
## Below is an example to define the print function
# TrackingInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TrackingInfo$lock()

