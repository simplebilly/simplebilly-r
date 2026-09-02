#' Create a new BWARevenue
#'
#' @description
#' BWARevenue Class
#'
#' @docType class
#' @title BWARevenue
#' @description BWARevenue Class
#' @format An \code{R6Class} generator object
#' @field revenue_breakdown  list(\link{RevenueItem})
#' @field total_revenue  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BWARevenue <- R6::R6Class(
  "BWARevenue",
  public = list(
    `revenue_breakdown` = NULL,
    `total_revenue` = NULL,

    #' @description
    #' Initialize a new BWARevenue class.
    #'
    #' @param revenue_breakdown revenue_breakdown
    #' @param total_revenue total_revenue
    #' @param ... Other optional arguments.
    initialize = function(`revenue_breakdown`, `total_revenue`, ...) {
      if (!missing(`revenue_breakdown`)) {
        stopifnot(is.vector(`revenue_breakdown`), length(`revenue_breakdown`) != 0)
        sapply(`revenue_breakdown`, function(x) stopifnot(R6::is.R6(x)))
        self$`revenue_breakdown` <- `revenue_breakdown`
      }
      if (!missing(`total_revenue`)) {
        if (!(is.character(`total_revenue`) && length(`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", `total_revenue`))
        }
        self$`total_revenue` <- `total_revenue`
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
    #' @return BWARevenue as a base R list.
    #' @examples
    #' # convert array of BWARevenue (x) to a data frame
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
    #' Convert BWARevenue to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BWARevenueObject <- list()
      if (!is.null(self$`revenue_breakdown`)) {
        BWARevenueObject[["revenue_breakdown"]] <-
          self$extractSimpleType(self$`revenue_breakdown`)
      }
      if (!is.null(self$`total_revenue`)) {
        BWARevenueObject[["total_revenue"]] <-
          self$`total_revenue`
      }
      return(BWARevenueObject)
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
    #' Deserialize JSON string into an instance of BWARevenue
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWARevenue
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`revenue_breakdown`)) {
        self$`revenue_breakdown` <- ApiClient$new()$deserializeObj(this_object$`revenue_breakdown`, "array[RevenueItem]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`total_revenue`)) {
        self$`total_revenue` <- this_object$`total_revenue`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BWARevenue in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BWARevenue
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWARevenue
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`revenue_breakdown` <- ApiClient$new()$deserializeObj(this_object$`revenue_breakdown`, "array[RevenueItem]", loadNamespace("openapi"))
      self$`total_revenue` <- this_object$`total_revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to BWARevenue and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `revenue_breakdown`
      if (!is.null(input_json$`revenue_breakdown`)) {
        stopifnot(is.vector(input_json$`revenue_breakdown`), length(input_json$`revenue_breakdown`) != 0)
        tmp <- sapply(input_json$`revenue_breakdown`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWARevenue: the required field `revenue_breakdown` is missing."))
      }
      # check the required field `total_revenue`
      if (!is.null(input_json$`total_revenue`)) {
        if (!(is.character(input_json$`total_revenue`) && length(input_json$`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", input_json$`total_revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWARevenue: the required field `total_revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BWARevenue
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `revenue_breakdown` is null
      if (is.null(self$`revenue_breakdown`)) {
        return(FALSE)
      }

      # check if the required `total_revenue` is null
      if (is.null(self$`total_revenue`)) {
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
      # check if the required `revenue_breakdown` is null
      if (is.null(self$`revenue_breakdown`)) {
        invalid_fields["revenue_breakdown"] <- "Non-nullable required field `revenue_breakdown` cannot be null."
      }

      # check if the required `total_revenue` is null
      if (is.null(self$`total_revenue`)) {
        invalid_fields["total_revenue"] <- "Non-nullable required field `total_revenue` cannot be null."
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
# BWARevenue$unlock()
#
## Below is an example to define the print function
# BWARevenue$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BWARevenue$lock()

