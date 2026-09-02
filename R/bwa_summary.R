#' Create a new BWASummary
#'
#' @description
#' BWASummary Class
#'
#' @docType class
#' @title BWASummary
#' @description BWASummary Class
#' @format An \code{R6Class} generator object
#' @field gross_profit  character
#' @field net_profit  character
#' @field open_invoices_count  integer
#' @field open_invoices_total  character
#' @field overdue_invoices_count  integer
#' @field overdue_invoices_total  character
#' @field profit_margin  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BWASummary <- R6::R6Class(
  "BWASummary",
  public = list(
    `gross_profit` = NULL,
    `net_profit` = NULL,
    `open_invoices_count` = NULL,
    `open_invoices_total` = NULL,
    `overdue_invoices_count` = NULL,
    `overdue_invoices_total` = NULL,
    `profit_margin` = NULL,

    #' @description
    #' Initialize a new BWASummary class.
    #'
    #' @param gross_profit gross_profit
    #' @param net_profit net_profit
    #' @param open_invoices_count open_invoices_count
    #' @param open_invoices_total open_invoices_total
    #' @param overdue_invoices_count overdue_invoices_count
    #' @param overdue_invoices_total overdue_invoices_total
    #' @param profit_margin profit_margin
    #' @param ... Other optional arguments.
    initialize = function(`gross_profit`, `net_profit`, `open_invoices_count`, `open_invoices_total`, `overdue_invoices_count`, `overdue_invoices_total`, `profit_margin`, ...) {
      if (!missing(`gross_profit`)) {
        if (!(is.character(`gross_profit`) && length(`gross_profit`) == 1)) {
          stop(paste("Error! Invalid data for `gross_profit`. Must be a string:", `gross_profit`))
        }
        self$`gross_profit` <- `gross_profit`
      }
      if (!missing(`net_profit`)) {
        if (!(is.character(`net_profit`) && length(`net_profit`) == 1)) {
          stop(paste("Error! Invalid data for `net_profit`. Must be a string:", `net_profit`))
        }
        self$`net_profit` <- `net_profit`
      }
      if (!missing(`open_invoices_count`)) {
        if (!(is.numeric(`open_invoices_count`) && length(`open_invoices_count`) == 1)) {
          stop(paste("Error! Invalid data for `open_invoices_count`. Must be an integer:", `open_invoices_count`))
        }
        self$`open_invoices_count` <- `open_invoices_count`
      }
      if (!missing(`open_invoices_total`)) {
        if (!(is.character(`open_invoices_total`) && length(`open_invoices_total`) == 1)) {
          stop(paste("Error! Invalid data for `open_invoices_total`. Must be a string:", `open_invoices_total`))
        }
        self$`open_invoices_total` <- `open_invoices_total`
      }
      if (!missing(`overdue_invoices_count`)) {
        if (!(is.numeric(`overdue_invoices_count`) && length(`overdue_invoices_count`) == 1)) {
          stop(paste("Error! Invalid data for `overdue_invoices_count`. Must be an integer:", `overdue_invoices_count`))
        }
        self$`overdue_invoices_count` <- `overdue_invoices_count`
      }
      if (!missing(`overdue_invoices_total`)) {
        if (!(is.character(`overdue_invoices_total`) && length(`overdue_invoices_total`) == 1)) {
          stop(paste("Error! Invalid data for `overdue_invoices_total`. Must be a string:", `overdue_invoices_total`))
        }
        self$`overdue_invoices_total` <- `overdue_invoices_total`
      }
      if (!missing(`profit_margin`)) {
        if (!(is.numeric(`profit_margin`) && length(`profit_margin`) == 1)) {
          stop(paste("Error! Invalid data for `profit_margin`. Must be a number:", `profit_margin`))
        }
        self$`profit_margin` <- `profit_margin`
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
    #' @return BWASummary as a base R list.
    #' @examples
    #' # convert array of BWASummary (x) to a data frame
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
    #' Convert BWASummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BWASummaryObject <- list()
      if (!is.null(self$`gross_profit`)) {
        BWASummaryObject[["gross_profit"]] <-
          self$`gross_profit`
      }
      if (!is.null(self$`net_profit`)) {
        BWASummaryObject[["net_profit"]] <-
          self$`net_profit`
      }
      if (!is.null(self$`open_invoices_count`)) {
        BWASummaryObject[["open_invoices_count"]] <-
          self$`open_invoices_count`
      }
      if (!is.null(self$`open_invoices_total`)) {
        BWASummaryObject[["open_invoices_total"]] <-
          self$`open_invoices_total`
      }
      if (!is.null(self$`overdue_invoices_count`)) {
        BWASummaryObject[["overdue_invoices_count"]] <-
          self$`overdue_invoices_count`
      }
      if (!is.null(self$`overdue_invoices_total`)) {
        BWASummaryObject[["overdue_invoices_total"]] <-
          self$`overdue_invoices_total`
      }
      if (!is.null(self$`profit_margin`)) {
        BWASummaryObject[["profit_margin"]] <-
          self$`profit_margin`
      }
      return(BWASummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BWASummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWASummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gross_profit`)) {
        self$`gross_profit` <- this_object$`gross_profit`
      }
      if (!is.null(this_object$`net_profit`)) {
        self$`net_profit` <- this_object$`net_profit`
      }
      if (!is.null(this_object$`open_invoices_count`)) {
        self$`open_invoices_count` <- this_object$`open_invoices_count`
      }
      if (!is.null(this_object$`open_invoices_total`)) {
        self$`open_invoices_total` <- this_object$`open_invoices_total`
      }
      if (!is.null(this_object$`overdue_invoices_count`)) {
        self$`overdue_invoices_count` <- this_object$`overdue_invoices_count`
      }
      if (!is.null(this_object$`overdue_invoices_total`)) {
        self$`overdue_invoices_total` <- this_object$`overdue_invoices_total`
      }
      if (!is.null(this_object$`profit_margin`)) {
        self$`profit_margin` <- this_object$`profit_margin`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BWASummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BWASummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of BWASummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gross_profit` <- this_object$`gross_profit`
      self$`net_profit` <- this_object$`net_profit`
      self$`open_invoices_count` <- this_object$`open_invoices_count`
      self$`open_invoices_total` <- this_object$`open_invoices_total`
      self$`overdue_invoices_count` <- this_object$`overdue_invoices_count`
      self$`overdue_invoices_total` <- this_object$`overdue_invoices_total`
      self$`profit_margin` <- this_object$`profit_margin`
      self
    },

    #' @description
    #' Validate JSON input with respect to BWASummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gross_profit`
      if (!is.null(input_json$`gross_profit`)) {
        if (!(is.character(input_json$`gross_profit`) && length(input_json$`gross_profit`) == 1)) {
          stop(paste("Error! Invalid data for `gross_profit`. Must be a string:", input_json$`gross_profit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `gross_profit` is missing."))
      }
      # check the required field `net_profit`
      if (!is.null(input_json$`net_profit`)) {
        if (!(is.character(input_json$`net_profit`) && length(input_json$`net_profit`) == 1)) {
          stop(paste("Error! Invalid data for `net_profit`. Must be a string:", input_json$`net_profit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `net_profit` is missing."))
      }
      # check the required field `open_invoices_count`
      if (!is.null(input_json$`open_invoices_count`)) {
        if (!(is.numeric(input_json$`open_invoices_count`) && length(input_json$`open_invoices_count`) == 1)) {
          stop(paste("Error! Invalid data for `open_invoices_count`. Must be an integer:", input_json$`open_invoices_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `open_invoices_count` is missing."))
      }
      # check the required field `open_invoices_total`
      if (!is.null(input_json$`open_invoices_total`)) {
        if (!(is.character(input_json$`open_invoices_total`) && length(input_json$`open_invoices_total`) == 1)) {
          stop(paste("Error! Invalid data for `open_invoices_total`. Must be a string:", input_json$`open_invoices_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `open_invoices_total` is missing."))
      }
      # check the required field `overdue_invoices_count`
      if (!is.null(input_json$`overdue_invoices_count`)) {
        if (!(is.numeric(input_json$`overdue_invoices_count`) && length(input_json$`overdue_invoices_count`) == 1)) {
          stop(paste("Error! Invalid data for `overdue_invoices_count`. Must be an integer:", input_json$`overdue_invoices_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `overdue_invoices_count` is missing."))
      }
      # check the required field `overdue_invoices_total`
      if (!is.null(input_json$`overdue_invoices_total`)) {
        if (!(is.character(input_json$`overdue_invoices_total`) && length(input_json$`overdue_invoices_total`) == 1)) {
          stop(paste("Error! Invalid data for `overdue_invoices_total`. Must be a string:", input_json$`overdue_invoices_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `overdue_invoices_total` is missing."))
      }
      # check the required field `profit_margin`
      if (!is.null(input_json$`profit_margin`)) {
        if (!(is.numeric(input_json$`profit_margin`) && length(input_json$`profit_margin`) == 1)) {
          stop(paste("Error! Invalid data for `profit_margin`. Must be a number:", input_json$`profit_margin`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BWASummary: the required field `profit_margin` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BWASummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gross_profit` is null
      if (is.null(self$`gross_profit`)) {
        return(FALSE)
      }

      # check if the required `net_profit` is null
      if (is.null(self$`net_profit`)) {
        return(FALSE)
      }

      # check if the required `open_invoices_count` is null
      if (is.null(self$`open_invoices_count`)) {
        return(FALSE)
      }

      # check if the required `open_invoices_total` is null
      if (is.null(self$`open_invoices_total`)) {
        return(FALSE)
      }

      # check if the required `overdue_invoices_count` is null
      if (is.null(self$`overdue_invoices_count`)) {
        return(FALSE)
      }

      # check if the required `overdue_invoices_total` is null
      if (is.null(self$`overdue_invoices_total`)) {
        return(FALSE)
      }

      # check if the required `profit_margin` is null
      if (is.null(self$`profit_margin`)) {
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
      # check if the required `gross_profit` is null
      if (is.null(self$`gross_profit`)) {
        invalid_fields["gross_profit"] <- "Non-nullable required field `gross_profit` cannot be null."
      }

      # check if the required `net_profit` is null
      if (is.null(self$`net_profit`)) {
        invalid_fields["net_profit"] <- "Non-nullable required field `net_profit` cannot be null."
      }

      # check if the required `open_invoices_count` is null
      if (is.null(self$`open_invoices_count`)) {
        invalid_fields["open_invoices_count"] <- "Non-nullable required field `open_invoices_count` cannot be null."
      }

      # check if the required `open_invoices_total` is null
      if (is.null(self$`open_invoices_total`)) {
        invalid_fields["open_invoices_total"] <- "Non-nullable required field `open_invoices_total` cannot be null."
      }

      # check if the required `overdue_invoices_count` is null
      if (is.null(self$`overdue_invoices_count`)) {
        invalid_fields["overdue_invoices_count"] <- "Non-nullable required field `overdue_invoices_count` cannot be null."
      }

      # check if the required `overdue_invoices_total` is null
      if (is.null(self$`overdue_invoices_total`)) {
        invalid_fields["overdue_invoices_total"] <- "Non-nullable required field `overdue_invoices_total` cannot be null."
      }

      # check if the required `profit_margin` is null
      if (is.null(self$`profit_margin`)) {
        invalid_fields["profit_margin"] <- "Non-nullable required field `profit_margin` cannot be null."
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
# BWASummary$unlock()
#
## Below is an example to define the print function
# BWASummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BWASummary$lock()

