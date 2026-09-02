#' Create a new UsageSnapshot
#'
#' @description
#' Current usage for a tenant. `overage_seats` is what billing charges 5€/seat/month on.
#'
#' @docType class
#' @title UsageSnapshot
#' @description UsageSnapshot Class
#' @format An \code{R6Class} generator object
#' @field connectors  integer
#' @field invoicesThisMonth  integer
#' @field overageSeats  integer
#' @field users  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsageSnapshot <- R6::R6Class(
  "UsageSnapshot",
  public = list(
    `connectors` = NULL,
    `invoicesThisMonth` = NULL,
    `overageSeats` = NULL,
    `users` = NULL,

    #' @description
    #' Initialize a new UsageSnapshot class.
    #'
    #' @param connectors connectors
    #' @param invoicesThisMonth invoicesThisMonth
    #' @param overageSeats overageSeats
    #' @param users users
    #' @param ... Other optional arguments.
    initialize = function(`connectors`, `invoicesThisMonth`, `overageSeats`, `users`, ...) {
      if (!missing(`connectors`)) {
        if (!(is.numeric(`connectors`) && length(`connectors`) == 1)) {
          stop(paste("Error! Invalid data for `connectors`. Must be an integer:", `connectors`))
        }
        self$`connectors` <- `connectors`
      }
      if (!missing(`invoicesThisMonth`)) {
        if (!(is.numeric(`invoicesThisMonth`) && length(`invoicesThisMonth`) == 1)) {
          stop(paste("Error! Invalid data for `invoicesThisMonth`. Must be an integer:", `invoicesThisMonth`))
        }
        self$`invoicesThisMonth` <- `invoicesThisMonth`
      }
      if (!missing(`overageSeats`)) {
        if (!(is.numeric(`overageSeats`) && length(`overageSeats`) == 1)) {
          stop(paste("Error! Invalid data for `overageSeats`. Must be an integer:", `overageSeats`))
        }
        self$`overageSeats` <- `overageSeats`
      }
      if (!missing(`users`)) {
        if (!(is.numeric(`users`) && length(`users`) == 1)) {
          stop(paste("Error! Invalid data for `users`. Must be an integer:", `users`))
        }
        self$`users` <- `users`
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
    #' @return UsageSnapshot as a base R list.
    #' @examples
    #' # convert array of UsageSnapshot (x) to a data frame
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
    #' Convert UsageSnapshot to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UsageSnapshotObject <- list()
      if (!is.null(self$`connectors`)) {
        UsageSnapshotObject[["connectors"]] <-
          self$`connectors`
      }
      if (!is.null(self$`invoicesThisMonth`)) {
        UsageSnapshotObject[["invoicesThisMonth"]] <-
          self$`invoicesThisMonth`
      }
      if (!is.null(self$`overageSeats`)) {
        UsageSnapshotObject[["overageSeats"]] <-
          self$`overageSeats`
      }
      if (!is.null(self$`users`)) {
        UsageSnapshotObject[["users"]] <-
          self$`users`
      }
      return(UsageSnapshotObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UsageSnapshot
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageSnapshot
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`connectors`)) {
        self$`connectors` <- this_object$`connectors`
      }
      if (!is.null(this_object$`invoicesThisMonth`)) {
        self$`invoicesThisMonth` <- this_object$`invoicesThisMonth`
      }
      if (!is.null(this_object$`overageSeats`)) {
        self$`overageSeats` <- this_object$`overageSeats`
      }
      if (!is.null(this_object$`users`)) {
        self$`users` <- this_object$`users`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UsageSnapshot in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UsageSnapshot
    #'
    #' @param input_json the JSON input
    #' @return the instance of UsageSnapshot
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`connectors` <- this_object$`connectors`
      self$`invoicesThisMonth` <- this_object$`invoicesThisMonth`
      self$`overageSeats` <- this_object$`overageSeats`
      self$`users` <- this_object$`users`
      self
    },

    #' @description
    #' Validate JSON input with respect to UsageSnapshot and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `connectors`
      if (!is.null(input_json$`connectors`)) {
        if (!(is.numeric(input_json$`connectors`) && length(input_json$`connectors`) == 1)) {
          stop(paste("Error! Invalid data for `connectors`. Must be an integer:", input_json$`connectors`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageSnapshot: the required field `connectors` is missing."))
      }
      # check the required field `invoicesThisMonth`
      if (!is.null(input_json$`invoicesThisMonth`)) {
        if (!(is.numeric(input_json$`invoicesThisMonth`) && length(input_json$`invoicesThisMonth`) == 1)) {
          stop(paste("Error! Invalid data for `invoicesThisMonth`. Must be an integer:", input_json$`invoicesThisMonth`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageSnapshot: the required field `invoicesThisMonth` is missing."))
      }
      # check the required field `overageSeats`
      if (!is.null(input_json$`overageSeats`)) {
        if (!(is.numeric(input_json$`overageSeats`) && length(input_json$`overageSeats`) == 1)) {
          stop(paste("Error! Invalid data for `overageSeats`. Must be an integer:", input_json$`overageSeats`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageSnapshot: the required field `overageSeats` is missing."))
      }
      # check the required field `users`
      if (!is.null(input_json$`users`)) {
        if (!(is.numeric(input_json$`users`) && length(input_json$`users`) == 1)) {
          stop(paste("Error! Invalid data for `users`. Must be an integer:", input_json$`users`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UsageSnapshot: the required field `users` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UsageSnapshot
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `connectors` is null
      if (is.null(self$`connectors`)) {
        return(FALSE)
      }

      # check if the required `invoicesThisMonth` is null
      if (is.null(self$`invoicesThisMonth`)) {
        return(FALSE)
      }

      # check if the required `overageSeats` is null
      if (is.null(self$`overageSeats`)) {
        return(FALSE)
      }

      # check if the required `users` is null
      if (is.null(self$`users`)) {
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
      # check if the required `connectors` is null
      if (is.null(self$`connectors`)) {
        invalid_fields["connectors"] <- "Non-nullable required field `connectors` cannot be null."
      }

      # check if the required `invoicesThisMonth` is null
      if (is.null(self$`invoicesThisMonth`)) {
        invalid_fields["invoicesThisMonth"] <- "Non-nullable required field `invoicesThisMonth` cannot be null."
      }

      # check if the required `overageSeats` is null
      if (is.null(self$`overageSeats`)) {
        invalid_fields["overageSeats"] <- "Non-nullable required field `overageSeats` cannot be null."
      }

      # check if the required `users` is null
      if (is.null(self$`users`)) {
        invalid_fields["users"] <- "Non-nullable required field `users` cannot be null."
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
# UsageSnapshot$unlock()
#
## Below is an example to define the print function
# UsageSnapshot$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UsageSnapshot$lock()

