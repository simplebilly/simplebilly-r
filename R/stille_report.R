#' Create a new StilleReport
#'
#' @description
#' StilleReport Class
#'
#' @docType class
#' @title StilleReport
#' @description StilleReport Class
#' @format An \code{R6Class} generator object
#' @field jahresueberschuss  character
#' @field partners  list(\link{StillePartnerZeile})
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StilleReport <- R6::R6Class(
  "StilleReport",
  public = list(
    `jahresueberschuss` = NULL,
    `partners` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new StilleReport class.
    #'
    #' @param jahresueberschuss jahresueberschuss
    #' @param partners partners
    #' @param year year
    #' @param ... Other optional arguments.
    initialize = function(`jahresueberschuss`, `partners`, `year`, ...) {
      if (!missing(`jahresueberschuss`)) {
        if (!(is.character(`jahresueberschuss`) && length(`jahresueberschuss`) == 1)) {
          stop(paste("Error! Invalid data for `jahresueberschuss`. Must be a string:", `jahresueberschuss`))
        }
        self$`jahresueberschuss` <- `jahresueberschuss`
      }
      if (!missing(`partners`)) {
        stopifnot(is.vector(`partners`), length(`partners`) != 0)
        sapply(`partners`, function(x) stopifnot(R6::is.R6(x)))
        self$`partners` <- `partners`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
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
    #' @return StilleReport as a base R list.
    #' @examples
    #' # convert array of StilleReport (x) to a data frame
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
    #' Convert StilleReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StilleReportObject <- list()
      if (!is.null(self$`jahresueberschuss`)) {
        StilleReportObject[["jahresueberschuss"]] <-
          self$`jahresueberschuss`
      }
      if (!is.null(self$`partners`)) {
        StilleReportObject[["partners"]] <-
          self$extractSimpleType(self$`partners`)
      }
      if (!is.null(self$`year`)) {
        StilleReportObject[["year"]] <-
          self$`year`
      }
      return(StilleReportObject)
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
    #' Deserialize JSON string into an instance of StilleReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of StilleReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`jahresueberschuss`)) {
        self$`jahresueberschuss` <- this_object$`jahresueberschuss`
      }
      if (!is.null(this_object$`partners`)) {
        self$`partners` <- ApiClient$new()$deserializeObj(this_object$`partners`, "array[StillePartnerZeile]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StilleReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StilleReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of StilleReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`jahresueberschuss` <- this_object$`jahresueberschuss`
      self$`partners` <- ApiClient$new()$deserializeObj(this_object$`partners`, "array[StillePartnerZeile]", loadNamespace("openapi"))
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to StilleReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `jahresueberschuss`
      if (!is.null(input_json$`jahresueberschuss`)) {
        if (!(is.character(input_json$`jahresueberschuss`) && length(input_json$`jahresueberschuss`) == 1)) {
          stop(paste("Error! Invalid data for `jahresueberschuss`. Must be a string:", input_json$`jahresueberschuss`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StilleReport: the required field `jahresueberschuss` is missing."))
      }
      # check the required field `partners`
      if (!is.null(input_json$`partners`)) {
        stopifnot(is.vector(input_json$`partners`), length(input_json$`partners`) != 0)
        tmp <- sapply(input_json$`partners`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StilleReport: the required field `partners` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StilleReport: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StilleReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `jahresueberschuss` is null
      if (is.null(self$`jahresueberschuss`)) {
        return(FALSE)
      }

      # check if the required `partners` is null
      if (is.null(self$`partners`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
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
      # check if the required `jahresueberschuss` is null
      if (is.null(self$`jahresueberschuss`)) {
        invalid_fields["jahresueberschuss"] <- "Non-nullable required field `jahresueberschuss` cannot be null."
      }

      # check if the required `partners` is null
      if (is.null(self$`partners`)) {
        invalid_fields["partners"] <- "Non-nullable required field `partners` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
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
# StilleReport$unlock()
#
## Below is an example to define the print function
# StilleReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StilleReport$lock()

