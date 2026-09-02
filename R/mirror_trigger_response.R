#' Create a new MirrorTriggerResponse
#'
#' @description
#' MirrorTriggerResponse Class
#'
#' @docType class
#' @title MirrorTriggerResponse
#' @description MirrorTriggerResponse Class
#' @format An \code{R6Class} generator object
#' @field job_id  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MirrorTriggerResponse <- R6::R6Class(
  "MirrorTriggerResponse",
  public = list(
    `job_id` = NULL,

    #' @description
    #' Initialize a new MirrorTriggerResponse class.
    #'
    #' @param job_id job_id
    #' @param ... Other optional arguments.
    initialize = function(`job_id`, ...) {
      if (!missing(`job_id`)) {
        if (!(is.character(`job_id`) && length(`job_id`) == 1)) {
          stop(paste("Error! Invalid data for `job_id`. Must be a string:", `job_id`))
        }
        self$`job_id` <- `job_id`
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
    #' @return MirrorTriggerResponse as a base R list.
    #' @examples
    #' # convert array of MirrorTriggerResponse (x) to a data frame
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
    #' Convert MirrorTriggerResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MirrorTriggerResponseObject <- list()
      if (!is.null(self$`job_id`)) {
        MirrorTriggerResponseObject[["job_id"]] <-
          self$`job_id`
      }
      return(MirrorTriggerResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MirrorTriggerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MirrorTriggerResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`job_id`)) {
        self$`job_id` <- this_object$`job_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MirrorTriggerResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MirrorTriggerResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of MirrorTriggerResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`job_id` <- this_object$`job_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to MirrorTriggerResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `job_id`
      if (!is.null(input_json$`job_id`)) {
        if (!(is.character(input_json$`job_id`) && length(input_json$`job_id`) == 1)) {
          stop(paste("Error! Invalid data for `job_id`. Must be a string:", input_json$`job_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MirrorTriggerResponse: the required field `job_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MirrorTriggerResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `job_id` is null
      if (is.null(self$`job_id`)) {
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
      # check if the required `job_id` is null
      if (is.null(self$`job_id`)) {
        invalid_fields["job_id"] <- "Non-nullable required field `job_id` cannot be null."
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
# MirrorTriggerResponse$unlock()
#
## Below is an example to define the print function
# MirrorTriggerResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MirrorTriggerResponse$lock()

