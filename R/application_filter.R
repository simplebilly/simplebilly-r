#' Create a new ApplicationFilter
#'
#' @description
#' ApplicationFilter Class
#'
#' @docType class
#' @title ApplicationFilter
#' @description ApplicationFilter Class
#' @format An \code{R6Class} generator object
#' @field page  integer [optional]
#' @field pageSize  integer [optional]
#' @field postingId  character [optional]
#' @field status  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApplicationFilter <- R6::R6Class(
  "ApplicationFilter",
  public = list(
    `page` = NULL,
    `pageSize` = NULL,
    `postingId` = NULL,
    `status` = NULL,

    #' @description
    #' Initialize a new ApplicationFilter class.
    #'
    #' @param page page
    #' @param pageSize pageSize
    #' @param postingId postingId
    #' @param status status
    #' @param ... Other optional arguments.
    initialize = function(`page` = NULL, `pageSize` = NULL, `postingId` = NULL, `status` = NULL, ...) {
      if (!is.null(`page`)) {
        if (!(is.numeric(`page`) && length(`page`) == 1)) {
          stop(paste("Error! Invalid data for `page`. Must be an integer:", `page`))
        }
        self$`page` <- `page`
      }
      if (!is.null(`pageSize`)) {
        if (!(is.numeric(`pageSize`) && length(`pageSize`) == 1)) {
          stop(paste("Error! Invalid data for `pageSize`. Must be an integer:", `pageSize`))
        }
        self$`pageSize` <- `pageSize`
      }
      if (!is.null(`postingId`)) {
        if (!(is.character(`postingId`) && length(`postingId`) == 1)) {
          stop(paste("Error! Invalid data for `postingId`. Must be a string:", `postingId`))
        }
        self$`postingId` <- `postingId`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
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
    #' @return ApplicationFilter as a base R list.
    #' @examples
    #' # convert array of ApplicationFilter (x) to a data frame
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
    #' Convert ApplicationFilter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ApplicationFilterObject <- list()
      if (!is.null(self$`page`)) {
        ApplicationFilterObject[["page"]] <-
          self$`page`
      }
      if (!is.null(self$`pageSize`)) {
        ApplicationFilterObject[["pageSize"]] <-
          self$`pageSize`
      }
      if (!is.null(self$`postingId`)) {
        ApplicationFilterObject[["postingId"]] <-
          self$`postingId`
      }
      if (!is.null(self$`status`)) {
        ApplicationFilterObject[["status"]] <-
          self$`status`
      }
      return(ApplicationFilterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationFilter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`page`)) {
        self$`page` <- this_object$`page`
      }
      if (!is.null(this_object$`pageSize`)) {
        self$`pageSize` <- this_object$`pageSize`
      }
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
    #' @return ApplicationFilter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ApplicationFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of ApplicationFilter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`page` <- this_object$`page`
      self$`pageSize` <- this_object$`pageSize`
      self$`postingId` <- this_object$`postingId`
      self$`status` <- this_object$`status`
      self
    },

    #' @description
    #' Validate JSON input with respect to ApplicationFilter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ApplicationFilter
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (self$`page` < 0) {
        return(FALSE)
      }

      if (self$`pageSize` < 0) {
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
      if (self$`page` < 0) {
        invalid_fields["page"] <- "Invalid value for `page`, must be bigger than or equal to 0."
      }

      if (self$`pageSize` < 0) {
        invalid_fields["pageSize"] <- "Invalid value for `pageSize`, must be bigger than or equal to 0."
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
# ApplicationFilter$unlock()
#
## Below is an example to define the print function
# ApplicationFilter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ApplicationFilter$lock()

