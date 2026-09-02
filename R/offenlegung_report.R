#' Create a new OffenlegungReport
#'
#' @description
#' OffenlegungReport Class
#'
#' @docType class
#' @title OffenlegungReport
#' @description OffenlegungReport Class
#' @format An \code{R6Class} generator object
#' @field deadline Fristende (Abschlussstichtag + Frist). character
#' @field deadline_months Offenlegungsfrist in Monaten (§ 325 Abs. 4 HGB). integer
#' @field items  list(\link{OffenlegungItem})
#' @field kapitalmarktorientiert Annahme über die Kapitalmarktorientierung. character
#' @field note  character
#' @field year Berichtsjahr (laufendes Kalenderjahr). integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OffenlegungReport <- R6::R6Class(
  "OffenlegungReport",
  public = list(
    `deadline` = NULL,
    `deadline_months` = NULL,
    `items` = NULL,
    `kapitalmarktorientiert` = NULL,
    `note` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new OffenlegungReport class.
    #'
    #' @param deadline Fristende (Abschlussstichtag + Frist).
    #' @param deadline_months Offenlegungsfrist in Monaten (§ 325 Abs. 4 HGB).
    #' @param items items
    #' @param kapitalmarktorientiert Annahme über die Kapitalmarktorientierung.
    #' @param note note
    #' @param year Berichtsjahr (laufendes Kalenderjahr).
    #' @param ... Other optional arguments.
    initialize = function(`deadline`, `deadline_months`, `items`, `kapitalmarktorientiert`, `note`, `year`, ...) {
      if (!missing(`deadline`)) {
        if (!(is.character(`deadline`) && length(`deadline`) == 1)) {
          stop(paste("Error! Invalid data for `deadline`. Must be a string:", `deadline`))
        }
        self$`deadline` <- `deadline`
      }
      if (!missing(`deadline_months`)) {
        if (!(is.numeric(`deadline_months`) && length(`deadline_months`) == 1)) {
          stop(paste("Error! Invalid data for `deadline_months`. Must be an integer:", `deadline_months`))
        }
        self$`deadline_months` <- `deadline_months`
      }
      if (!missing(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
      }
      if (!missing(`kapitalmarktorientiert`)) {
        if (!(is.logical(`kapitalmarktorientiert`) && length(`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", `kapitalmarktorientiert`))
        }
        self$`kapitalmarktorientiert` <- `kapitalmarktorientiert`
      }
      if (!missing(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
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
    #' @return OffenlegungReport as a base R list.
    #' @examples
    #' # convert array of OffenlegungReport (x) to a data frame
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
    #' Convert OffenlegungReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      OffenlegungReportObject <- list()
      if (!is.null(self$`deadline`)) {
        OffenlegungReportObject[["deadline"]] <-
          self$`deadline`
      }
      if (!is.null(self$`deadline_months`)) {
        OffenlegungReportObject[["deadline_months"]] <-
          self$`deadline_months`
      }
      if (!is.null(self$`items`)) {
        OffenlegungReportObject[["items"]] <-
          self$extractSimpleType(self$`items`)
      }
      if (!is.null(self$`kapitalmarktorientiert`)) {
        OffenlegungReportObject[["kapitalmarktorientiert"]] <-
          self$`kapitalmarktorientiert`
      }
      if (!is.null(self$`note`)) {
        OffenlegungReportObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`year`)) {
        OffenlegungReportObject[["year"]] <-
          self$`year`
      }
      return(OffenlegungReportObject)
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
    #' Deserialize JSON string into an instance of OffenlegungReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of OffenlegungReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`deadline`)) {
        self$`deadline` <- this_object$`deadline`
      }
      if (!is.null(this_object$`deadline_months`)) {
        self$`deadline_months` <- this_object$`deadline_months`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[OffenlegungItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`kapitalmarktorientiert`)) {
        self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
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
    #' @return OffenlegungReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of OffenlegungReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of OffenlegungReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`deadline` <- this_object$`deadline`
      self$`deadline_months` <- this_object$`deadline_months`
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[OffenlegungItem]", loadNamespace("openapi"))
      self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      self$`note` <- this_object$`note`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to OffenlegungReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `deadline`
      if (!is.null(input_json$`deadline`)) {
        if (!(is.character(input_json$`deadline`) && length(input_json$`deadline`) == 1)) {
          stop(paste("Error! Invalid data for `deadline`. Must be a string:", input_json$`deadline`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `deadline` is missing."))
      }
      # check the required field `deadline_months`
      if (!is.null(input_json$`deadline_months`)) {
        if (!(is.numeric(input_json$`deadline_months`) && length(input_json$`deadline_months`) == 1)) {
          stop(paste("Error! Invalid data for `deadline_months`. Must be an integer:", input_json$`deadline_months`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `deadline_months` is missing."))
      }
      # check the required field `items`
      if (!is.null(input_json$`items`)) {
        stopifnot(is.vector(input_json$`items`), length(input_json$`items`) != 0)
        tmp <- sapply(input_json$`items`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `items` is missing."))
      }
      # check the required field `kapitalmarktorientiert`
      if (!is.null(input_json$`kapitalmarktorientiert`)) {
        if (!(is.logical(input_json$`kapitalmarktorientiert`) && length(input_json$`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", input_json$`kapitalmarktorientiert`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `kapitalmarktorientiert` is missing."))
      }
      # check the required field `note`
      if (!is.null(input_json$`note`)) {
        if (!(is.character(input_json$`note`) && length(input_json$`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", input_json$`note`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `note` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OffenlegungReport: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OffenlegungReport
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `deadline` is null
      if (is.null(self$`deadline`)) {
        return(FALSE)
      }

      # check if the required `deadline_months` is null
      if (is.null(self$`deadline_months`)) {
        return(FALSE)
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        return(FALSE)
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
        return(FALSE)
      }

      # check if the required `note` is null
      if (is.null(self$`note`)) {
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
      # check if the required `deadline` is null
      if (is.null(self$`deadline`)) {
        invalid_fields["deadline"] <- "Non-nullable required field `deadline` cannot be null."
      }

      # check if the required `deadline_months` is null
      if (is.null(self$`deadline_months`)) {
        invalid_fields["deadline_months"] <- "Non-nullable required field `deadline_months` cannot be null."
      }

      # check if the required `items` is null
      if (is.null(self$`items`)) {
        invalid_fields["items"] <- "Non-nullable required field `items` cannot be null."
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
        invalid_fields["kapitalmarktorientiert"] <- "Non-nullable required field `kapitalmarktorientiert` cannot be null."
      }

      # check if the required `note` is null
      if (is.null(self$`note`)) {
        invalid_fields["note"] <- "Non-nullable required field `note` cannot be null."
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
# OffenlegungReport$unlock()
#
## Below is an example to define the print function
# OffenlegungReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OffenlegungReport$lock()

