#' Create a new ContactTimelineResponse
#'
#' @description
#' Aggregated per-contact timeline.
#'
#' @docType class
#' @title ContactTimelineResponse
#' @description ContactTimelineResponse Class
#' @format An \code{R6Class} generator object
#' @field contactId  character
#' @field events  list(\link{TimelineEvent})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ContactTimelineResponse <- R6::R6Class(
  "ContactTimelineResponse",
  public = list(
    `contactId` = NULL,
    `events` = NULL,

    #' @description
    #' Initialize a new ContactTimelineResponse class.
    #'
    #' @param contactId contactId
    #' @param events events
    #' @param ... Other optional arguments.
    initialize = function(`contactId`, `events`, ...) {
      if (!missing(`contactId`)) {
        if (!(is.character(`contactId`) && length(`contactId`) == 1)) {
          stop(paste("Error! Invalid data for `contactId`. Must be a string:", `contactId`))
        }
        self$`contactId` <- `contactId`
      }
      if (!missing(`events`)) {
        stopifnot(is.vector(`events`), length(`events`) != 0)
        sapply(`events`, function(x) stopifnot(R6::is.R6(x)))
        self$`events` <- `events`
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
    #' @return ContactTimelineResponse as a base R list.
    #' @examples
    #' # convert array of ContactTimelineResponse (x) to a data frame
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
    #' Convert ContactTimelineResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactTimelineResponseObject <- list()
      if (!is.null(self$`contactId`)) {
        ContactTimelineResponseObject[["contactId"]] <-
          self$`contactId`
      }
      if (!is.null(self$`events`)) {
        ContactTimelineResponseObject[["events"]] <-
          self$extractSimpleType(self$`events`)
      }
      return(ContactTimelineResponseObject)
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
    #' Deserialize JSON string into an instance of ContactTimelineResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactTimelineResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contactId`)) {
        self$`contactId` <- this_object$`contactId`
      }
      if (!is.null(this_object$`events`)) {
        self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TimelineEvent]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ContactTimelineResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ContactTimelineResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ContactTimelineResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contactId` <- this_object$`contactId`
      self$`events` <- ApiClient$new()$deserializeObj(this_object$`events`, "array[TimelineEvent]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ContactTimelineResponse and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ContactTimelineResponse: the required field `contactId` is missing."))
      }
      # check the required field `events`
      if (!is.null(input_json$`events`)) {
        stopifnot(is.vector(input_json$`events`), length(input_json$`events`) != 0)
        tmp <- sapply(input_json$`events`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ContactTimelineResponse: the required field `events` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ContactTimelineResponse
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

      # check if the required `events` is null
      if (is.null(self$`events`)) {
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

      # check if the required `events` is null
      if (is.null(self$`events`)) {
        invalid_fields["events"] <- "Non-nullable required field `events` cannot be null."
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
# ContactTimelineResponse$unlock()
#
## Below is an example to define the print function
# ContactTimelineResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ContactTimelineResponse$lock()

