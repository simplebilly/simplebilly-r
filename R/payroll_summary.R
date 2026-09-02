#' Create a new PayrollSummary
#'
#' @description
#' PayrollSummary Class
#'
#' @docType class
#' @title PayrollSummary
#' @description PayrollSummary Class
#' @format An \code{R6Class} generator object
#' @field firstName  character
#' @field hourlyGross  character [optional]
#' @field id  character
#' @field jobTitle  character
#' @field lastName  character
#' @field monthlySalary  character [optional]
#' @field months  list(\link{PayrollMonth})
#' @field weeklyHours  character [optional]
#' @field year  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PayrollSummary <- R6::R6Class(
  "PayrollSummary",
  public = list(
    `firstName` = NULL,
    `hourlyGross` = NULL,
    `id` = NULL,
    `jobTitle` = NULL,
    `lastName` = NULL,
    `monthlySalary` = NULL,
    `months` = NULL,
    `weeklyHours` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new PayrollSummary class.
    #'
    #' @param firstName firstName
    #' @param id id
    #' @param jobTitle jobTitle
    #' @param lastName lastName
    #' @param months months
    #' @param year year
    #' @param hourlyGross hourlyGross
    #' @param monthlySalary monthlySalary
    #' @param weeklyHours weeklyHours
    #' @param ... Other optional arguments.
    initialize = function(`firstName`, `id`, `jobTitle`, `lastName`, `months`, `year`, `hourlyGross` = NULL, `monthlySalary` = NULL, `weeklyHours` = NULL, ...) {
      if (!missing(`firstName`)) {
        if (!(is.character(`firstName`) && length(`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", `firstName`))
        }
        self$`firstName` <- `firstName`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`jobTitle`)) {
        if (!(is.character(`jobTitle`) && length(`jobTitle`) == 1)) {
          stop(paste("Error! Invalid data for `jobTitle`. Must be a string:", `jobTitle`))
        }
        self$`jobTitle` <- `jobTitle`
      }
      if (!missing(`lastName`)) {
        if (!(is.character(`lastName`) && length(`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", `lastName`))
        }
        self$`lastName` <- `lastName`
      }
      if (!missing(`months`)) {
        stopifnot(is.vector(`months`), length(`months`) != 0)
        sapply(`months`, function(x) stopifnot(R6::is.R6(x)))
        self$`months` <- `months`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`hourlyGross`)) {
        if (!(is.character(`hourlyGross`) && length(`hourlyGross`) == 1)) {
          stop(paste("Error! Invalid data for `hourlyGross`. Must be a string:", `hourlyGross`))
        }
        self$`hourlyGross` <- `hourlyGross`
      }
      if (!is.null(`monthlySalary`)) {
        if (!(is.character(`monthlySalary`) && length(`monthlySalary`) == 1)) {
          stop(paste("Error! Invalid data for `monthlySalary`. Must be a string:", `monthlySalary`))
        }
        self$`monthlySalary` <- `monthlySalary`
      }
      if (!is.null(`weeklyHours`)) {
        if (!(is.character(`weeklyHours`) && length(`weeklyHours`) == 1)) {
          stop(paste("Error! Invalid data for `weeklyHours`. Must be a string:", `weeklyHours`))
        }
        self$`weeklyHours` <- `weeklyHours`
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
    #' @return PayrollSummary as a base R list.
    #' @examples
    #' # convert array of PayrollSummary (x) to a data frame
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
    #' Convert PayrollSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PayrollSummaryObject <- list()
      if (!is.null(self$`firstName`)) {
        PayrollSummaryObject[["firstName"]] <-
          self$`firstName`
      }
      if (!is.null(self$`hourlyGross`)) {
        PayrollSummaryObject[["hourlyGross"]] <-
          self$`hourlyGross`
      }
      if (!is.null(self$`id`)) {
        PayrollSummaryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`jobTitle`)) {
        PayrollSummaryObject[["jobTitle"]] <-
          self$`jobTitle`
      }
      if (!is.null(self$`lastName`)) {
        PayrollSummaryObject[["lastName"]] <-
          self$`lastName`
      }
      if (!is.null(self$`monthlySalary`)) {
        PayrollSummaryObject[["monthlySalary"]] <-
          self$`monthlySalary`
      }
      if (!is.null(self$`months`)) {
        PayrollSummaryObject[["months"]] <-
          self$extractSimpleType(self$`months`)
      }
      if (!is.null(self$`weeklyHours`)) {
        PayrollSummaryObject[["weeklyHours"]] <-
          self$`weeklyHours`
      }
      if (!is.null(self$`year`)) {
        PayrollSummaryObject[["year"]] <-
          self$`year`
      }
      return(PayrollSummaryObject)
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
    #' Deserialize JSON string into an instance of PayrollSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`firstName`)) {
        self$`firstName` <- this_object$`firstName`
      }
      if (!is.null(this_object$`hourlyGross`)) {
        self$`hourlyGross` <- this_object$`hourlyGross`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`jobTitle`)) {
        self$`jobTitle` <- this_object$`jobTitle`
      }
      if (!is.null(this_object$`lastName`)) {
        self$`lastName` <- this_object$`lastName`
      }
      if (!is.null(this_object$`monthlySalary`)) {
        self$`monthlySalary` <- this_object$`monthlySalary`
      }
      if (!is.null(this_object$`months`)) {
        self$`months` <- ApiClient$new()$deserializeObj(this_object$`months`, "array[PayrollMonth]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`weeklyHours`)) {
        self$`weeklyHours` <- this_object$`weeklyHours`
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
    #' @return PayrollSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PayrollSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of PayrollSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`firstName` <- this_object$`firstName`
      self$`hourlyGross` <- this_object$`hourlyGross`
      self$`id` <- this_object$`id`
      self$`jobTitle` <- this_object$`jobTitle`
      self$`lastName` <- this_object$`lastName`
      self$`monthlySalary` <- this_object$`monthlySalary`
      self$`months` <- ApiClient$new()$deserializeObj(this_object$`months`, "array[PayrollMonth]", loadNamespace("openapi"))
      self$`weeklyHours` <- this_object$`weeklyHours`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to PayrollSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `firstName`
      if (!is.null(input_json$`firstName`)) {
        if (!(is.character(input_json$`firstName`) && length(input_json$`firstName`) == 1)) {
          stop(paste("Error! Invalid data for `firstName`. Must be a string:", input_json$`firstName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `firstName` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `id` is missing."))
      }
      # check the required field `jobTitle`
      if (!is.null(input_json$`jobTitle`)) {
        if (!(is.character(input_json$`jobTitle`) && length(input_json$`jobTitle`) == 1)) {
          stop(paste("Error! Invalid data for `jobTitle`. Must be a string:", input_json$`jobTitle`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `jobTitle` is missing."))
      }
      # check the required field `lastName`
      if (!is.null(input_json$`lastName`)) {
        if (!(is.character(input_json$`lastName`) && length(input_json$`lastName`) == 1)) {
          stop(paste("Error! Invalid data for `lastName`. Must be a string:", input_json$`lastName`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `lastName` is missing."))
      }
      # check the required field `months`
      if (!is.null(input_json$`months`)) {
        stopifnot(is.vector(input_json$`months`), length(input_json$`months`) != 0)
        tmp <- sapply(input_json$`months`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `months` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PayrollSummary: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PayrollSummary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `firstName` is null
      if (is.null(self$`firstName`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `jobTitle` is null
      if (is.null(self$`jobTitle`)) {
        return(FALSE)
      }

      # check if the required `lastName` is null
      if (is.null(self$`lastName`)) {
        return(FALSE)
      }

      # check if the required `months` is null
      if (is.null(self$`months`)) {
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
      # check if the required `firstName` is null
      if (is.null(self$`firstName`)) {
        invalid_fields["firstName"] <- "Non-nullable required field `firstName` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `jobTitle` is null
      if (is.null(self$`jobTitle`)) {
        invalid_fields["jobTitle"] <- "Non-nullable required field `jobTitle` cannot be null."
      }

      # check if the required `lastName` is null
      if (is.null(self$`lastName`)) {
        invalid_fields["lastName"] <- "Non-nullable required field `lastName` cannot be null."
      }

      # check if the required `months` is null
      if (is.null(self$`months`)) {
        invalid_fields["months"] <- "Non-nullable required field `months` cannot be null."
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
# PayrollSummary$unlock()
#
## Below is an example to define the print function
# PayrollSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PayrollSummary$lock()

