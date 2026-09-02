#' Create a new ApplicationStatusDto
#'
#' @description
#' ApplicationStatusDto Class
#'
#' @docType class
#' @title ApplicationStatusDto
#' @description ApplicationStatusDto Class
#' @format An \code{R6Class} generator object
#' @field postingId  character [optional]
#' @field status  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationStatusDto <- R6::R6Class(
  "ApplicationStatusDto",
  public = list(
    `postingId` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new ApplicationStatusDto class.
    #'
    #' @param status status
    #' @param postingId postingId
    #' @param ... Other optional arguments.
    initialize = function(`status`, `postingId` = NULL, ...) {
      if (!missing(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`postingId`)) {
        if (!(is.character(`postingId`) && length(`postingId`) == 1)) {
          stop(paste("Error! Invalid data for `postingId`. Must be a string:", `postingId`))
        }
        self$`postingId` <- `postingId`
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
    #' @return ApplicationStatusDto as a base R list.
    #' @examples
    #' # convert array of ApplicationStatusDto (x) to a data frame
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
    #' Convert ApplicationStatusDto to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationStatusDtoObject <- list()
      if (!is.null(self$`postingId`)) {
        ApplicationStatusDtoObject[["postingId"]] <-
          self$`postingId`
      }
      if (!is.null(self$`status`)) {
        ApplicationStatusDtoObject[["status"]] <-
          self$`status`
      }
      return(ApplicationStatusDtoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationStatusDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationStatusDto
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`postingId`)) {
        self$`postingId` <- this_object$`postingId`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ApplicationStatusDto in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationStatusDto
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationStatusDto
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`postingId` <- this_object$`postingId`
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationStatusDto and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ApplicationStatusDto: the required field `status` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationStatusDto
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
# ApplicationStatusDto$unlock()
#
## Below is an example to define the print function
# ApplicationStatusDto$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationStatusDto$lock()

