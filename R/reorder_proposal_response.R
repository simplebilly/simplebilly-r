#' Create a new ReorderProposalResponse
#'
#' @description
#' The response envelope for a reorder proposal run.
#'
#' @docType class
#' @title ReorderProposalResponse
#' @description ReorderProposalResponse Class
#' @format An \code{R6Class} generator object
#' @field generatedAt  character
#' @field lines  list(\link{ReorderProposalLine})
#' @field totalSuggestedQuantity  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReorderProposalResponse <- R6::R6Class(
  "ReorderProposalResponse",
  public = list(
    `generatedAt` = NULL,
    `lines` = NULL,
    `totalSuggestedQuantity` = NULL,

    #' @description
    #' Initialize a new ReorderProposalResponse class.
    #'
    #' @param generatedAt generatedAt
    #' @param lines lines
    #' @param totalSuggestedQuantity totalSuggestedQuantity
    #' @param ... Other optional arguments.
    initialize = function(`generatedAt`, `lines`, `totalSuggestedQuantity`, ...) {
      if (!missing(`generatedAt`)) {
        if (!(is.character(`generatedAt`) && length(`generatedAt`) == 1)) {
          stop(paste("Error! Invalid data for `generatedAt`. Must be a string:", `generatedAt`))
        }
        self$`generatedAt` <- `generatedAt`
      }
      if (!missing(`lines`)) {
        stopifnot(is.vector(`lines`), length(`lines`) != 0)
        sapply(`lines`, function(x) stopifnot(R6::is.R6(x)))
        self$`lines` <- `lines`
      }
      if (!missing(`totalSuggestedQuantity`)) {
        if (!(is.numeric(`totalSuggestedQuantity`) && length(`totalSuggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `totalSuggestedQuantity`. Must be an integer:", `totalSuggestedQuantity`))
        }
        self$`totalSuggestedQuantity` <- `totalSuggestedQuantity`
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
    #' @return ReorderProposalResponse as a base R list.
    #' @examples
    #' # convert array of ReorderProposalResponse (x) to a data frame
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
    #' Convert ReorderProposalResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReorderProposalResponseObject <- list()
      if (!is.null(self$`generatedAt`)) {
        ReorderProposalResponseObject[["generatedAt"]] <-
          self$`generatedAt`
      }
      if (!is.null(self$`lines`)) {
        ReorderProposalResponseObject[["lines"]] <-
          self$extractSimpleType(self$`lines`)
      }
      if (!is.null(self$`totalSuggestedQuantity`)) {
        ReorderProposalResponseObject[["totalSuggestedQuantity"]] <-
          self$`totalSuggestedQuantity`
      }
      return(ReorderProposalResponseObject)
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
    #' Deserialize JSON string into an instance of ReorderProposalResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReorderProposalResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`generatedAt`)) {
        self$`generatedAt` <- this_object$`generatedAt`
      }
      if (!is.null(this_object$`lines`)) {
        self$`lines` <- ApiClient$new()$deserializeObj(this_object$`lines`, "array[ReorderProposalLine]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`totalSuggestedQuantity`)) {
        self$`totalSuggestedQuantity` <- this_object$`totalSuggestedQuantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReorderProposalResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReorderProposalResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReorderProposalResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`generatedAt` <- this_object$`generatedAt`
      self$`lines` <- ApiClient$new()$deserializeObj(this_object$`lines`, "array[ReorderProposalLine]", loadNamespace("openapi"))
      self$`totalSuggestedQuantity` <- this_object$`totalSuggestedQuantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReorderProposalResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `generatedAt`
      if (!is.null(input_json$`generatedAt`)) {
        if (!(is.character(input_json$`generatedAt`) && length(input_json$`generatedAt`) == 1)) {
          stop(paste("Error! Invalid data for `generatedAt`. Must be a string:", input_json$`generatedAt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalResponse: the required field `generatedAt` is missing."))
      }
      # check the required field `lines`
      if (!is.null(input_json$`lines`)) {
        stopifnot(is.vector(input_json$`lines`), length(input_json$`lines`) != 0)
        tmp <- sapply(input_json$`lines`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalResponse: the required field `lines` is missing."))
      }
      # check the required field `totalSuggestedQuantity`
      if (!is.null(input_json$`totalSuggestedQuantity`)) {
        if (!(is.numeric(input_json$`totalSuggestedQuantity`) && length(input_json$`totalSuggestedQuantity`) == 1)) {
          stop(paste("Error! Invalid data for `totalSuggestedQuantity`. Must be an integer:", input_json$`totalSuggestedQuantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReorderProposalResponse: the required field `totalSuggestedQuantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReorderProposalResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `generatedAt` is null
      if (is.null(self$`generatedAt`)) {
        return(FALSE)
      }

      # check if the required `lines` is null
      if (is.null(self$`lines`)) {
        return(FALSE)
      }

      # check if the required `totalSuggestedQuantity` is null
      if (is.null(self$`totalSuggestedQuantity`)) {
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
      # check if the required `generatedAt` is null
      if (is.null(self$`generatedAt`)) {
        invalid_fields["generatedAt"] <- "Non-nullable required field `generatedAt` cannot be null."
      }

      # check if the required `lines` is null
      if (is.null(self$`lines`)) {
        invalid_fields["lines"] <- "Non-nullable required field `lines` cannot be null."
      }

      # check if the required `totalSuggestedQuantity` is null
      if (is.null(self$`totalSuggestedQuantity`)) {
        invalid_fields["totalSuggestedQuantity"] <- "Non-nullable required field `totalSuggestedQuantity` cannot be null."
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
# ReorderProposalResponse$unlock()
#
## Below is an example to define the print function
# ReorderProposalResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReorderProposalResponse$lock()

