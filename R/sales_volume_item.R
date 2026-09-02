#' Create a new SalesVolumeItem
#'
#' @description
#' SalesVolumeItem Class
#'
#' @docType class
#' @title SalesVolumeItem
#' @description SalesVolumeItem Class
#' @format An \code{R6Class} generator object
#' @field contact_id  character
#' @field contact_type  character
#' @field last_purchase_date  character [optional]
#' @field name  character
#' @field total_invoices  integer
#' @field total_revenue  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SalesVolumeItem <- R6::R6Class(
  "SalesVolumeItem",
  public = list(
    `contact_id` = NULL,
    `contact_type` = NULL,
    `last_purchase_date` = NULL,
    `name` = NULL,
    `total_invoices` = NULL,
    `total_revenue` = NULL,

    #' @description
    #' Initialize a new SalesVolumeItem class.
    #'
    #' @param contact_id contact_id
    #' @param contact_type contact_type
    #' @param name name
    #' @param total_invoices total_invoices
    #' @param total_revenue total_revenue
    #' @param last_purchase_date last_purchase_date
    #' @param ... Other optional arguments.
    initialize = function(`contact_id`, `contact_type`, `name`, `total_invoices`, `total_revenue`, `last_purchase_date` = NULL, ...) {
      if (!missing(`contact_id`)) {
        if (!(is.character(`contact_id`) && length(`contact_id`) == 1)) {
          stop(paste("Error! Invalid data for `contact_id`. Must be a string:", `contact_id`))
        }
        self$`contact_id` <- `contact_id`
      }
      if (!missing(`contact_type`)) {
        if (!(is.character(`contact_type`) && length(`contact_type`) == 1)) {
          stop(paste("Error! Invalid data for `contact_type`. Must be a string:", `contact_type`))
        }
        self$`contact_type` <- `contact_type`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`total_invoices`)) {
        if (!(is.numeric(`total_invoices`) && length(`total_invoices`) == 1)) {
          stop(paste("Error! Invalid data for `total_invoices`. Must be an integer:", `total_invoices`))
        }
        self$`total_invoices` <- `total_invoices`
      }
      if (!missing(`total_revenue`)) {
        if (!(is.character(`total_revenue`) && length(`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", `total_revenue`))
        }
        self$`total_revenue` <- `total_revenue`
      }
      if (!is.null(`last_purchase_date`)) {
        if (!(is.character(`last_purchase_date`) && length(`last_purchase_date`) == 1)) {
          stop(paste("Error! Invalid data for `last_purchase_date`. Must be a string:", `last_purchase_date`))
        }
        self$`last_purchase_date` <- `last_purchase_date`
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
    #' @return SalesVolumeItem as a base R list.
    #' @examples
    #' # convert array of SalesVolumeItem (x) to a data frame
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
    #' Convert SalesVolumeItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SalesVolumeItemObject <- list()
      if (!is.null(self$`contact_id`)) {
        SalesVolumeItemObject[["contact_id"]] <-
          self$`contact_id`
      }
      if (!is.null(self$`contact_type`)) {
        SalesVolumeItemObject[["contact_type"]] <-
          self$`contact_type`
      }
      if (!is.null(self$`last_purchase_date`)) {
        SalesVolumeItemObject[["last_purchase_date"]] <-
          self$`last_purchase_date`
      }
      if (!is.null(self$`name`)) {
        SalesVolumeItemObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`total_invoices`)) {
        SalesVolumeItemObject[["total_invoices"]] <-
          self$`total_invoices`
      }
      if (!is.null(self$`total_revenue`)) {
        SalesVolumeItemObject[["total_revenue"]] <-
          self$`total_revenue`
      }
      return(SalesVolumeItemObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SalesVolumeItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of SalesVolumeItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`contact_id`)) {
        self$`contact_id` <- this_object$`contact_id`
      }
      if (!is.null(this_object$`contact_type`)) {
        self$`contact_type` <- this_object$`contact_type`
      }
      if (!is.null(this_object$`last_purchase_date`)) {
        self$`last_purchase_date` <- this_object$`last_purchase_date`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`total_invoices`)) {
        self$`total_invoices` <- this_object$`total_invoices`
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
    #' @return SalesVolumeItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SalesVolumeItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of SalesVolumeItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`contact_id` <- this_object$`contact_id`
      self$`contact_type` <- this_object$`contact_type`
      self$`last_purchase_date` <- this_object$`last_purchase_date`
      self$`name` <- this_object$`name`
      self$`total_invoices` <- this_object$`total_invoices`
      self$`total_revenue` <- this_object$`total_revenue`
      self
    },

    #' @description
    #' Validate JSON input with respect to SalesVolumeItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `contact_id`
      if (!is.null(input_json$`contact_id`)) {
        if (!(is.character(input_json$`contact_id`) && length(input_json$`contact_id`) == 1)) {
          stop(paste("Error! Invalid data for `contact_id`. Must be a string:", input_json$`contact_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeItem: the required field `contact_id` is missing."))
      }
      # check the required field `contact_type`
      if (!is.null(input_json$`contact_type`)) {
        if (!(is.character(input_json$`contact_type`) && length(input_json$`contact_type`) == 1)) {
          stop(paste("Error! Invalid data for `contact_type`. Must be a string:", input_json$`contact_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeItem: the required field `contact_type` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeItem: the required field `name` is missing."))
      }
      # check the required field `total_invoices`
      if (!is.null(input_json$`total_invoices`)) {
        if (!(is.numeric(input_json$`total_invoices`) && length(input_json$`total_invoices`) == 1)) {
          stop(paste("Error! Invalid data for `total_invoices`. Must be an integer:", input_json$`total_invoices`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeItem: the required field `total_invoices` is missing."))
      }
      # check the required field `total_revenue`
      if (!is.null(input_json$`total_revenue`)) {
        if (!(is.character(input_json$`total_revenue`) && length(input_json$`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", input_json$`total_revenue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SalesVolumeItem: the required field `total_revenue` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SalesVolumeItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `contact_id` is null
      if (is.null(self$`contact_id`)) {
        return(FALSE)
      }

      # check if the required `contact_type` is null
      if (is.null(self$`contact_type`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `total_invoices` is null
      if (is.null(self$`total_invoices`)) {
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
      # check if the required `contact_id` is null
      if (is.null(self$`contact_id`)) {
        invalid_fields["contact_id"] <- "Non-nullable required field `contact_id` cannot be null."
      }

      # check if the required `contact_type` is null
      if (is.null(self$`contact_type`)) {
        invalid_fields["contact_type"] <- "Non-nullable required field `contact_type` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `total_invoices` is null
      if (is.null(self$`total_invoices`)) {
        invalid_fields["total_invoices"] <- "Non-nullable required field `total_invoices` cannot be null."
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
# SalesVolumeItem$unlock()
#
## Below is an example to define the print function
# SalesVolumeItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SalesVolumeItem$lock()

