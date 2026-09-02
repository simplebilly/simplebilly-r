#' Create a new ConvertResponse
#'
#' @description
#' Response of the proforma → invoice conversion.
#'
#' @docType class
#' @title ConvertResponse
#' @description ConvertResponse Class
#' @format An \code{R6Class} generator object
#' @field invoiceId  character
#' @field invoiceNumber  character
#' @field proformaId  character
#' @field proformaNumber  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConvertResponse <- R6::R6Class(
  "ConvertResponse",
  public = list(
    `invoiceId` = NULL,
    `invoiceNumber` = NULL,
    `proformaId` = NULL,
    `proformaNumber` = NULL,

    #' @description
    #' Initialize a new ConvertResponse class.
    #'
    #' @param invoiceId invoiceId
    #' @param invoiceNumber invoiceNumber
    #' @param proformaId proformaId
    #' @param proformaNumber proformaNumber
    #' @param ... Other optional arguments.
    initialize = function(`invoiceId`, `invoiceNumber`, `proformaId`, `proformaNumber`, ...) {
      if (!missing(`invoiceId`)) {
        if (!(is.character(`invoiceId`) && length(`invoiceId`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceId`. Must be a string:", `invoiceId`))
        }
        self$`invoiceId` <- `invoiceId`
      }
      if (!missing(`invoiceNumber`)) {
        if (!(is.character(`invoiceNumber`) && length(`invoiceNumber`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceNumber`. Must be a string:", `invoiceNumber`))
        }
        self$`invoiceNumber` <- `invoiceNumber`
      }
      if (!missing(`proformaId`)) {
        if (!(is.character(`proformaId`) && length(`proformaId`) == 1)) {
          stop(paste("Error! Invalid data for `proformaId`. Must be a string:", `proformaId`))
        }
        self$`proformaId` <- `proformaId`
      }
      if (!missing(`proformaNumber`)) {
        if (!(is.character(`proformaNumber`) && length(`proformaNumber`) == 1)) {
          stop(paste("Error! Invalid data for `proformaNumber`. Must be a string:", `proformaNumber`))
        }
        self$`proformaNumber` <- `proformaNumber`
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
    #' @return ConvertResponse as a base R list.
    #' @examples
    #' # convert array of ConvertResponse (x) to a data frame
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
    #' Convert ConvertResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ConvertResponseObject <- list()
      if (!is.null(self$`invoiceId`)) {
        ConvertResponseObject[["invoiceId"]] <-
          self$`invoiceId`
      }
      if (!is.null(self$`invoiceNumber`)) {
        ConvertResponseObject[["invoiceNumber"]] <-
          self$`invoiceNumber`
      }
      if (!is.null(self$`proformaId`)) {
        ConvertResponseObject[["proformaId"]] <-
          self$`proformaId`
      }
      if (!is.null(self$`proformaNumber`)) {
        ConvertResponseObject[["proformaNumber"]] <-
          self$`proformaNumber`
      }
      return(ConvertResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConvertResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConvertResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`invoiceId`)) {
        self$`invoiceId` <- this_object$`invoiceId`
      }
      if (!is.null(this_object$`invoiceNumber`)) {
        self$`invoiceNumber` <- this_object$`invoiceNumber`
      }
      if (!is.null(this_object$`proformaId`)) {
        self$`proformaId` <- this_object$`proformaId`
      }
      if (!is.null(this_object$`proformaNumber`)) {
        self$`proformaNumber` <- this_object$`proformaNumber`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ConvertResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ConvertResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ConvertResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`invoiceId` <- this_object$`invoiceId`
      self$`invoiceNumber` <- this_object$`invoiceNumber`
      self$`proformaId` <- this_object$`proformaId`
      self$`proformaNumber` <- this_object$`proformaNumber`
      self
    },

    #' @description
    #' Validate JSON input with respect to ConvertResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `invoiceId`
      if (!is.null(input_json$`invoiceId`)) {
        if (!(is.character(input_json$`invoiceId`) && length(input_json$`invoiceId`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceId`. Must be a string:", input_json$`invoiceId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConvertResponse: the required field `invoiceId` is missing."))
      }
      # check the required field `invoiceNumber`
      if (!is.null(input_json$`invoiceNumber`)) {
        if (!(is.character(input_json$`invoiceNumber`) && length(input_json$`invoiceNumber`) == 1)) {
          stop(paste("Error! Invalid data for `invoiceNumber`. Must be a string:", input_json$`invoiceNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConvertResponse: the required field `invoiceNumber` is missing."))
      }
      # check the required field `proformaId`
      if (!is.null(input_json$`proformaId`)) {
        if (!(is.character(input_json$`proformaId`) && length(input_json$`proformaId`) == 1)) {
          stop(paste("Error! Invalid data for `proformaId`. Must be a string:", input_json$`proformaId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConvertResponse: the required field `proformaId` is missing."))
      }
      # check the required field `proformaNumber`
      if (!is.null(input_json$`proformaNumber`)) {
        if (!(is.character(input_json$`proformaNumber`) && length(input_json$`proformaNumber`) == 1)) {
          stop(paste("Error! Invalid data for `proformaNumber`. Must be a string:", input_json$`proformaNumber`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ConvertResponse: the required field `proformaNumber` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ConvertResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `invoiceId` is null
      if (is.null(self$`invoiceId`)) {
        return(FALSE)
      }

      # check if the required `invoiceNumber` is null
      if (is.null(self$`invoiceNumber`)) {
        return(FALSE)
      }

      # check if the required `proformaId` is null
      if (is.null(self$`proformaId`)) {
        return(FALSE)
      }

      # check if the required `proformaNumber` is null
      if (is.null(self$`proformaNumber`)) {
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
      # check if the required `invoiceId` is null
      if (is.null(self$`invoiceId`)) {
        invalid_fields["invoiceId"] <- "Non-nullable required field `invoiceId` cannot be null."
      }

      # check if the required `invoiceNumber` is null
      if (is.null(self$`invoiceNumber`)) {
        invalid_fields["invoiceNumber"] <- "Non-nullable required field `invoiceNumber` cannot be null."
      }

      # check if the required `proformaId` is null
      if (is.null(self$`proformaId`)) {
        invalid_fields["proformaId"] <- "Non-nullable required field `proformaId` cannot be null."
      }

      # check if the required `proformaNumber` is null
      if (is.null(self$`proformaNumber`)) {
        invalid_fields["proformaNumber"] <- "Non-nullable required field `proformaNumber` cannot be null."
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
# ConvertResponse$unlock()
#
## Below is an example to define the print function
# ConvertResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ConvertResponse$lock()

