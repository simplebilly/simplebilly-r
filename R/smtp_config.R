#' Create a new SmtpConfig
#'
#' @description
#' SmtpConfig Class
#'
#' @docType class
#' @title SmtpConfig
#' @description SmtpConfig Class
#' @format An \code{R6Class} generator object
#' @field encryption  \link{SmtpEncryption}
#' @field from_address  character
#' @field from_name  character [optional]
#' @field host  character
#' @field password  character
#' @field port  integer
#' @field timeout_seconds  integer [optional]
#' @field username  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SmtpConfig <- R6::R6Class(
  "SmtpConfig",
  public = list(
    `encryption` = NULL,
    `from_address` = NULL,
    `from_name` = NULL,
    `host` = NULL,
    `password` = NULL,
    `port` = NULL,
    `timeout_seconds` = NULL,
    `username` = NULL,

    #' @description
    #' Initialize a new SmtpConfig class.
    #'
    #' @param encryption encryption
    #' @param from_address from_address
    #' @param host host
    #' @param password password
    #' @param port port
    #' @param username username
    #' @param from_name from_name
    #' @param timeout_seconds timeout_seconds
    #' @param ... Other optional arguments.
    initialize = function(`encryption`, `from_address`, `host`, `password`, `port`, `username`, `from_name` = NULL, `timeout_seconds` = NULL, ...) {
      if (!missing(`encryption`)) {
        if (!(`encryption` %in% c())) {
          stop(paste("Error! \"", `encryption`, "\" cannot be assigned to `encryption`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`encryption`))
        self$`encryption` <- `encryption`
      }
      if (!missing(`from_address`)) {
        if (!(is.character(`from_address`) && length(`from_address`) == 1)) {
          stop(paste("Error! Invalid data for `from_address`. Must be a string:", `from_address`))
        }
        self$`from_address` <- `from_address`
      }
      if (!missing(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!missing(`port`)) {
        if (!(is.numeric(`port`) && length(`port`) == 1)) {
          stop(paste("Error! Invalid data for `port`. Must be an integer:", `port`))
        }
        self$`port` <- `port`
      }
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!is.null(`from_name`)) {
        if (!(is.character(`from_name`) && length(`from_name`) == 1)) {
          stop(paste("Error! Invalid data for `from_name`. Must be a string:", `from_name`))
        }
        self$`from_name` <- `from_name`
      }
      if (!is.null(`timeout_seconds`)) {
        if (!(is.numeric(`timeout_seconds`) && length(`timeout_seconds`) == 1)) {
          stop(paste("Error! Invalid data for `timeout_seconds`. Must be an integer:", `timeout_seconds`))
        }
        self$`timeout_seconds` <- `timeout_seconds`
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
    #' @return SmtpConfig as a base R list.
    #' @examples
    #' # convert array of SmtpConfig (x) to a data frame
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
    #' Convert SmtpConfig to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SmtpConfigObject <- list()
      if (!is.null(self$`encryption`)) {
        SmtpConfigObject[["encryption"]] <-
          self$extractSimpleType(self$`encryption`)
      }
      if (!is.null(self$`from_address`)) {
        SmtpConfigObject[["from_address"]] <-
          self$`from_address`
      }
      if (!is.null(self$`from_name`)) {
        SmtpConfigObject[["from_name"]] <-
          self$`from_name`
      }
      if (!is.null(self$`host`)) {
        SmtpConfigObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`password`)) {
        SmtpConfigObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`port`)) {
        SmtpConfigObject[["port"]] <-
          self$`port`
      }
      if (!is.null(self$`timeout_seconds`)) {
        SmtpConfigObject[["timeout_seconds"]] <-
          self$`timeout_seconds`
      }
      if (!is.null(self$`username`)) {
        SmtpConfigObject[["username"]] <-
          self$`username`
      }
      return(SmtpConfigObject)
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
    #' Deserialize JSON string into an instance of SmtpConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of SmtpConfig
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`encryption`)) {
        `encryption_object` <- SmtpEncryption$new()
        `encryption_object`$fromJSON(jsonlite::toJSON(this_object$`encryption`, auto_unbox = TRUE, digits = NA))
        self$`encryption` <- `encryption_object`
      }
      if (!is.null(this_object$`from_address`)) {
        self$`from_address` <- this_object$`from_address`
      }
      if (!is.null(this_object$`from_name`)) {
        self$`from_name` <- this_object$`from_name`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`port`)) {
        self$`port` <- this_object$`port`
      }
      if (!is.null(this_object$`timeout_seconds`)) {
        self$`timeout_seconds` <- this_object$`timeout_seconds`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SmtpConfig in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SmtpConfig
    #'
    #' @param input_json the JSON input
    #' @return the instance of SmtpConfig
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`encryption` <- SmtpEncryption$new()$fromJSON(jsonlite::toJSON(this_object$`encryption`, auto_unbox = TRUE, digits = NA))
      self$`from_address` <- this_object$`from_address`
      self$`from_name` <- this_object$`from_name`
      self$`host` <- this_object$`host`
      self$`password` <- this_object$`password`
      self$`port` <- this_object$`port`
      self$`timeout_seconds` <- this_object$`timeout_seconds`
      self$`username` <- this_object$`username`
      self
    },

    #' @description
    #' Validate JSON input with respect to SmtpConfig and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `encryption`
      if (!is.null(input_json$`encryption`)) {
        stopifnot(R6::is.R6(input_json$`encryption`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `encryption` is missing."))
      }
      # check the required field `from_address`
      if (!is.null(input_json$`from_address`)) {
        if (!(is.character(input_json$`from_address`) && length(input_json$`from_address`) == 1)) {
          stop(paste("Error! Invalid data for `from_address`. Must be a string:", input_json$`from_address`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `from_address` is missing."))
      }
      # check the required field `host`
      if (!is.null(input_json$`host`)) {
        if (!(is.character(input_json$`host`) && length(input_json$`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", input_json$`host`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `host` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `password` is missing."))
      }
      # check the required field `port`
      if (!is.null(input_json$`port`)) {
        if (!(is.numeric(input_json$`port`) && length(input_json$`port`) == 1)) {
          stop(paste("Error! Invalid data for `port`. Must be an integer:", input_json$`port`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `port` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SmtpConfig: the required field `username` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SmtpConfig
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `encryption` is null
      if (is.null(self$`encryption`)) {
        return(FALSE)
      }

      # check if the required `from_address` is null
      if (is.null(self$`from_address`)) {
        return(FALSE)
      }

      # check if the required `host` is null
      if (is.null(self$`host`)) {
        return(FALSE)
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      # check if the required `port` is null
      if (is.null(self$`port`)) {
        return(FALSE)
      }

      if (self$`port` < 0) {
        return(FALSE)
      }

      if (self$`timeout_seconds` < 0) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
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
      # check if the required `encryption` is null
      if (is.null(self$`encryption`)) {
        invalid_fields["encryption"] <- "Non-nullable required field `encryption` cannot be null."
      }

      # check if the required `from_address` is null
      if (is.null(self$`from_address`)) {
        invalid_fields["from_address"] <- "Non-nullable required field `from_address` cannot be null."
      }

      # check if the required `host` is null
      if (is.null(self$`host`)) {
        invalid_fields["host"] <- "Non-nullable required field `host` cannot be null."
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      # check if the required `port` is null
      if (is.null(self$`port`)) {
        invalid_fields["port"] <- "Non-nullable required field `port` cannot be null."
      }

      if (self$`port` < 0) {
        invalid_fields["port"] <- "Invalid value for `port`, must be bigger than or equal to 0."
      }

      if (self$`timeout_seconds` < 0) {
        invalid_fields["timeout_seconds"] <- "Invalid value for `timeout_seconds`, must be bigger than or equal to 0."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
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
# SmtpConfig$unlock()
#
## Below is an example to define the print function
# SmtpConfig$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SmtpConfig$lock()

