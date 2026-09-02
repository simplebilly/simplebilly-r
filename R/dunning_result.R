#' Create a new DunningResult
#'
#' @description
#' DunningResult Class
#'
#' @docType class
#' @title DunningResult
#' @description DunningResult Class
#' @format An \code{R6Class} generator object
#' @field invoices_processed  integer
#' @field message  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DunningResult <- R6::R6Class(
  "DunningResult",
  public = list(
    `invoices_processed` = NULL,
    `message` = NULL,

    #' @description
    #' Initialize a new DunningResult class.
    #'
    #' @param invoices_processed invoices_processed
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`invoices_processed`, `message`, ...) {
      if (!missing(`invoices_processed`)) {
        if (!(is.numeric(`invoices_processed`) && length(`invoices_processed`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_processed`. Must be an integer:", `invoices_processed`))
        }
        self$`invoices_processed` <- `invoices_processed`
      }
      if (!missing(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return DunningResult as a base R list.
    #' @examples
    #' # convert array of DunningResult (x) to a data frame
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
    #' Convert DunningResult to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DunningResultObject <- list()
      if (!is.null(self$`invoices_processed`)) {
        DunningResultObject[["invoices_processed"]] <-
          self$`invoices_processed`
      }
      if (!is.null(self$`message`)) {
        DunningResultObject[["message"]] <-
          self$`message`
      }
      return(DunningResultObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DunningResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of DunningResult
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`invoices_processed`)) {
        self$`invoices_processed` <- this_object$`invoices_processed`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DunningResult in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DunningResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of DunningResult
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`invoices_processed` <- this_object$`invoices_processed`
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to DunningResult and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `invoices_processed`
      if (!is.null(input_json$`invoices_processed`)) {
        if (!(is.numeric(input_json$`invoices_processed`) && length(input_json$`invoices_processed`) == 1)) {
          stop(paste("Error! Invalid data for `invoices_processed`. Must be an integer:", input_json$`invoices_processed`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DunningResult: the required field `invoices_processed` is missing."))
      }
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        if (!(is.character(input_json$`message`) && length(input_json$`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", input_json$`message`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DunningResult: the required field `message` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DunningResult
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `invoices_processed` is null
      if (is.null(self$`invoices_processed`)) {
        return(FALSE)
      }

      if (self$`invoices_processed` < 0) {
        return(FALSE)
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
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
      # check if the required `invoices_processed` is null
      if (is.null(self$`invoices_processed`)) {
        invalid_fields["invoices_processed"] <- "Non-nullable required field `invoices_processed` cannot be null."
      }

      if (self$`invoices_processed` < 0) {
        invalid_fields["invoices_processed"] <- "Invalid value for `invoices_processed`, must be bigger than or equal to 0."
      }

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
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
# DunningResult$unlock()
#
## Below is an example to define the print function
# DunningResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DunningResult$lock()

