#' Create a new ImportTestRequest
#'
#' @description
#' ImportTestRequest Class
#'
#' @docType class
#' @title ImportTestRequest
#' @description ImportTestRequest Class
#' @format An \code{R6Class} generator object
#' @field apiKey  character
#' @field provider  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ImportTestRequest <- R6::R6Class(
  "ImportTestRequest",
  public = list(
    `apiKey` = NULL,
    `provider` = NULL,

    #' @description
    #' Initialize a new ImportTestRequest class.
    #'
    #' @param apiKey apiKey
    #' @param provider provider
    #' @param ... Other optional arguments.
    initialize = function(`apiKey`, `provider`, ...) {
      if (!missing(`apiKey`)) {
        if (!(is.character(`apiKey`) && length(`apiKey`) == 1)) {
          stop(paste("Error! Invalid data for `apiKey`. Must be a string:", `apiKey`))
        }
        self$`apiKey` <- `apiKey`
      }
      if (!missing(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
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
    #' @return ImportTestRequest as a base R list.
    #' @examples
    #' # convert array of ImportTestRequest (x) to a data frame
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
    #' Convert ImportTestRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ImportTestRequestObject <- list()
      if (!is.null(self$`apiKey`)) {
        ImportTestRequestObject[["apiKey"]] <-
          self$`apiKey`
      }
      if (!is.null(self$`provider`)) {
        ImportTestRequestObject[["provider"]] <-
          self$`provider`
      }
      return(ImportTestRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportTestRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportTestRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`apiKey`)) {
        self$`apiKey` <- this_object$`apiKey`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ImportTestRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ImportTestRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ImportTestRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`apiKey` <- this_object$`apiKey`
      self$`provider` <- this_object$`provider`
      self
    },

    #' @description
    #' Validate JSON input with respect to ImportTestRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `apiKey`
      if (!is.null(input_json$`apiKey`)) {
        if (!(is.character(input_json$`apiKey`) && length(input_json$`apiKey`) == 1)) {
          stop(paste("Error! Invalid data for `apiKey`. Must be a string:", input_json$`apiKey`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportTestRequest: the required field `apiKey` is missing."))
      }
      # check the required field `provider`
      if (!is.null(input_json$`provider`)) {
        if (!(is.character(input_json$`provider`) && length(input_json$`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", input_json$`provider`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ImportTestRequest: the required field `provider` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ImportTestRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `apiKey` is null
      if (is.null(self$`apiKey`)) {
        return(FALSE)
      }

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
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
      # check if the required `apiKey` is null
      if (is.null(self$`apiKey`)) {
        invalid_fields["apiKey"] <- "Non-nullable required field `apiKey` cannot be null."
      }

      # check if the required `provider` is null
      if (is.null(self$`provider`)) {
        invalid_fields["provider"] <- "Non-nullable required field `provider` cannot be null."
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
# ImportTestRequest$unlock()
#
## Below is an example to define the print function
# ImportTestRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ImportTestRequest$lock()

