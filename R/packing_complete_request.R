#' Create a new PackingCompleteRequest
#'
#' @description
#' PackingCompleteRequest Class
#'
#' @docType class
#' @title PackingCompleteRequest
#' @description PackingCompleteRequest Class
#' @format An \code{R6Class} generator object
#' @field notes  character [optional]
#' @field order_number  character
#' @field shipment_id  character [optional]
#' @field video_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackingCompleteRequest <- R6::R6Class(
  "PackingCompleteRequest",
  public = list(
    `notes` = NULL,
    `order_number` = NULL,
    `shipment_id` = NULL,
    `video_url` = NULL,

    #' @description
    #' Initialize a new PackingCompleteRequest class.
    #'
    #' @param order_number order_number
    #' @param notes notes
    #' @param shipment_id shipment_id
    #' @param video_url video_url
    #' @param ... Other optional arguments.
    initialize = function(`order_number`, `notes` = NULL, `shipment_id` = NULL, `video_url` = NULL, ...) {
      if (!missing(`order_number`)) {
        if (!(is.character(`order_number`) && length(`order_number`) == 1)) {
          stop(paste("Error! Invalid data for `order_number`. Must be a string:", `order_number`))
        }
        self$`order_number` <- `order_number`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`shipment_id`)) {
        if (!(is.character(`shipment_id`) && length(`shipment_id`) == 1)) {
          stop(paste("Error! Invalid data for `shipment_id`. Must be a string:", `shipment_id`))
        }
        self$`shipment_id` <- `shipment_id`
      }
      if (!is.null(`video_url`)) {
        if (!(is.character(`video_url`) && length(`video_url`) == 1)) {
          stop(paste("Error! Invalid data for `video_url`. Must be a string:", `video_url`))
        }
        self$`video_url` <- `video_url`
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
    #' @return PackingCompleteRequest as a base R list.
    #' @examples
    #' # convert array of PackingCompleteRequest (x) to a data frame
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
    #' Convert PackingCompleteRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PackingCompleteRequestObject <- list()
      if (!is.null(self$`notes`)) {
        PackingCompleteRequestObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`order_number`)) {
        PackingCompleteRequestObject[["order_number"]] <-
          self$`order_number`
      }
      if (!is.null(self$`shipment_id`)) {
        PackingCompleteRequestObject[["shipment_id"]] <-
          self$`shipment_id`
      }
      if (!is.null(self$`video_url`)) {
        PackingCompleteRequestObject[["video_url"]] <-
          self$`video_url`
      }
      return(PackingCompleteRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingCompleteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingCompleteRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`order_number`)) {
        self$`order_number` <- this_object$`order_number`
      }
      if (!is.null(this_object$`shipment_id`)) {
        self$`shipment_id` <- this_object$`shipment_id`
      }
      if (!is.null(this_object$`video_url`)) {
        self$`video_url` <- this_object$`video_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PackingCompleteRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackingCompleteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackingCompleteRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`notes` <- this_object$`notes`
      self$`order_number` <- this_object$`order_number`
      self$`shipment_id` <- this_object$`shipment_id`
      self$`video_url` <- this_object$`video_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackingCompleteRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for PackingCompleteRequest: the required field `order_number` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackingCompleteRequest
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
# PackingCompleteRequest$unlock()
#
## Below is an example to define the print function
# PackingCompleteRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackingCompleteRequest$lock()

