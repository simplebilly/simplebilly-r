#' Create a new InstituteStatus
#'
#' @description
#' InstituteStatus Class
#'
#' @docType class
#' @title InstituteStatus
#' @description InstituteStatus Class
#' @format An \code{R6Class} generator object
#' @field checklist  list(\link{InstituteCheckItem})
#' @field deadlines  \link{InstituteDeadlines}
#' @field instituteType  character
#' @field kapitalmarktorientiert  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InstituteStatus <- R6::R6Class(
  "InstituteStatus",
  public = list(
    `checklist` = NULL,
    `deadlines` = NULL,
    `instituteType` = NULL,
    `kapitalmarktorientiert` = NULL,

    #' @description
    #' Initialize a new InstituteStatus class.
    #'
    #' @param checklist checklist
    #' @param deadlines deadlines
    #' @param instituteType instituteType
    #' @param kapitalmarktorientiert kapitalmarktorientiert
    #' @param ... Other optional arguments.
    initialize = function(`checklist`, `deadlines`, `instituteType`, `kapitalmarktorientiert`, ...) {
      if (!missing(`checklist`)) {
        stopifnot(is.vector(`checklist`), length(`checklist`) != 0)
        sapply(`checklist`, function(x) stopifnot(R6::is.R6(x)))
        self$`checklist` <- `checklist`
      }
      if (!missing(`deadlines`)) {
        stopifnot(R6::is.R6(`deadlines`))
        self$`deadlines` <- `deadlines`
      }
      if (!missing(`instituteType`)) {
        if (!(is.character(`instituteType`) && length(`instituteType`) == 1)) {
          stop(paste("Error! Invalid data for `instituteType`. Must be a string:", `instituteType`))
        }
        self$`instituteType` <- `instituteType`
      }
      if (!missing(`kapitalmarktorientiert`)) {
        if (!(is.logical(`kapitalmarktorientiert`) && length(`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", `kapitalmarktorientiert`))
        }
        self$`kapitalmarktorientiert` <- `kapitalmarktorientiert`
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
    #' @return InstituteStatus as a base R list.
    #' @examples
    #' # convert array of InstituteStatus (x) to a data frame
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
    #' Convert InstituteStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InstituteStatusObject <- list()
      if (!is.null(self$`checklist`)) {
        InstituteStatusObject[["checklist"]] <-
          self$extractSimpleType(self$`checklist`)
      }
      if (!is.null(self$`deadlines`)) {
        InstituteStatusObject[["deadlines"]] <-
          self$extractSimpleType(self$`deadlines`)
      }
      if (!is.null(self$`instituteType`)) {
        InstituteStatusObject[["instituteType"]] <-
          self$`instituteType`
      }
      if (!is.null(self$`kapitalmarktorientiert`)) {
        InstituteStatusObject[["kapitalmarktorientiert"]] <-
          self$`kapitalmarktorientiert`
      }
      return(InstituteStatusObject)
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
    #' Deserialize JSON string into an instance of InstituteStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`checklist`)) {
        self$`checklist` <- ApiClient$new()$deserializeObj(this_object$`checklist`, "array[InstituteCheckItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`deadlines`)) {
        `deadlines_object` <- InstituteDeadlines$new()
        `deadlines_object`$fromJSON(jsonlite::toJSON(this_object$`deadlines`, auto_unbox = TRUE, digits = NA))
        self$`deadlines` <- `deadlines_object`
      }
      if (!is.null(this_object$`instituteType`)) {
        self$`instituteType` <- this_object$`instituteType`
      }
      if (!is.null(this_object$`kapitalmarktorientiert`)) {
        self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InstituteStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InstituteStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of InstituteStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`checklist` <- ApiClient$new()$deserializeObj(this_object$`checklist`, "array[InstituteCheckItem]", loadNamespace("openapi"))
      self$`deadlines` <- InstituteDeadlines$new()$fromJSON(jsonlite::toJSON(this_object$`deadlines`, auto_unbox = TRUE, digits = NA))
      self$`instituteType` <- this_object$`instituteType`
      self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      self
    },

    #' @description
    #' Validate JSON input with respect to InstituteStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `checklist`
      if (!is.null(input_json$`checklist`)) {
        stopifnot(is.vector(input_json$`checklist`), length(input_json$`checklist`) != 0)
        tmp <- sapply(input_json$`checklist`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InstituteStatus: the required field `checklist` is missing."))
      }
      # check the required field `deadlines`
      if (!is.null(input_json$`deadlines`)) {
        stopifnot(R6::is.R6(input_json$`deadlines`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InstituteStatus: the required field `deadlines` is missing."))
      }
      # check the required field `instituteType`
      if (!is.null(input_json$`instituteType`)) {
        if (!(is.character(input_json$`instituteType`) && length(input_json$`instituteType`) == 1)) {
          stop(paste("Error! Invalid data for `instituteType`. Must be a string:", input_json$`instituteType`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InstituteStatus: the required field `instituteType` is missing."))
      }
      # check the required field `kapitalmarktorientiert`
      if (!is.null(input_json$`kapitalmarktorientiert`)) {
        if (!(is.logical(input_json$`kapitalmarktorientiert`) && length(input_json$`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", input_json$`kapitalmarktorientiert`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InstituteStatus: the required field `kapitalmarktorientiert` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InstituteStatus
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `checklist` is null
      if (is.null(self$`checklist`)) {
        return(FALSE)
      }

      # check if the required `deadlines` is null
      if (is.null(self$`deadlines`)) {
        return(FALSE)
      }

      # check if the required `instituteType` is null
      if (is.null(self$`instituteType`)) {
        return(FALSE)
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
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
      # check if the required `checklist` is null
      if (is.null(self$`checklist`)) {
        invalid_fields["checklist"] <- "Non-nullable required field `checklist` cannot be null."
      }

      # check if the required `deadlines` is null
      if (is.null(self$`deadlines`)) {
        invalid_fields["deadlines"] <- "Non-nullable required field `deadlines` cannot be null."
      }

      # check if the required `instituteType` is null
      if (is.null(self$`instituteType`)) {
        invalid_fields["instituteType"] <- "Non-nullable required field `instituteType` cannot be null."
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
        invalid_fields["kapitalmarktorientiert"] <- "Non-nullable required field `kapitalmarktorientiert` cannot be null."
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
# InstituteStatus$unlock()
#
## Below is an example to define the print function
# InstituteStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InstituteStatus$lock()

