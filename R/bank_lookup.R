#' Create a new BankLookup
#'
#' @description
#' BankLookup Class
#'
#' @docType class
#' @title BankLookup
#' @description BankLookup Class
#' @format An \code{R6Class} generator object
#' @field bank_name  character [optional]
#' @field bic  character [optional]
#' @field iban  character
#' @field nextgenpsd2_url  character [optional]
#' @field psd2_supported  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BankLookup <- R6::R6Class(
  "BankLookup",
  public = list(
    `bank_name` = NULL,
    `bic` = NULL,
    `iban` = NULL,
    `nextgenpsd2_url` = NULL,
    `psd2_supported` = NULL,

    #' @description
    #' Initialize a new BankLookup class.
    #'
    #' @param iban iban
    #' @param psd2_supported psd2_supported
    #' @param bank_name bank_name
    #' @param bic bic
    #' @param nextgenpsd2_url nextgenpsd2_url
    #' @param ... Other optional arguments.
    initialize = function(`iban`, `psd2_supported`, `bank_name` = NULL, `bic` = NULL, `nextgenpsd2_url` = NULL, ...) {
      if (!missing(`iban`)) {
        if (!(is.character(`iban`) && length(`iban`) == 1)) {
          stop(paste("Error! Invalid data for `iban`. Must be a string:", `iban`))
        }
        self$`iban` <- `iban`
      }
      if (!missing(`psd2_supported`)) {
        if (!(is.logical(`psd2_supported`) && length(`psd2_supported`) == 1)) {
          stop(paste("Error! Invalid data for `psd2_supported`. Must be a boolean:", `psd2_supported`))
        }
        self$`psd2_supported` <- `psd2_supported`
      }
      if (!is.null(`bank_name`)) {
        if (!(is.character(`bank_name`) && length(`bank_name`) == 1)) {
          stop(paste("Error! Invalid data for `bank_name`. Must be a string:", `bank_name`))
        }
        self$`bank_name` <- `bank_name`
      }
      if (!is.null(`bic`)) {
        if (!(is.character(`bic`) && length(`bic`) == 1)) {
          stop(paste("Error! Invalid data for `bic`. Must be a string:", `bic`))
        }
        self$`bic` <- `bic`
      }
      if (!is.null(`nextgenpsd2_url`)) {
        if (!(is.character(`nextgenpsd2_url`) && length(`nextgenpsd2_url`) == 1)) {
          stop(paste("Error! Invalid data for `nextgenpsd2_url`. Must be a string:", `nextgenpsd2_url`))
        }
        self$`nextgenpsd2_url` <- `nextgenpsd2_url`
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
    #' @return BankLookup as a base R list.
    #' @examples
    #' # convert array of BankLookup (x) to a data frame
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
    #' Convert BankLookup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BankLookupObject <- list()
      if (!is.null(self$`bank_name`)) {
        BankLookupObject[["bank_name"]] <-
          self$`bank_name`
      }
      if (!is.null(self$`bic`)) {
        BankLookupObject[["bic"]] <-
          self$`bic`
      }
      if (!is.null(self$`iban`)) {
        BankLookupObject[["iban"]] <-
          self$`iban`
      }
      if (!is.null(self$`nextgenpsd2_url`)) {
        BankLookupObject[["nextgenpsd2_url"]] <-
          self$`nextgenpsd2_url`
      }
      if (!is.null(self$`psd2_supported`)) {
        BankLookupObject[["psd2_supported"]] <-
          self$`psd2_supported`
      }
      return(BankLookupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BankLookup
    #'
    #' @param input_json the JSON input
    #' @return the instance of BankLookup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bank_name`)) {
        self$`bank_name` <- this_object$`bank_name`
      }
      if (!is.null(this_object$`bic`)) {
        self$`bic` <- this_object$`bic`
      }
      if (!is.null(this_object$`iban`)) {
        self$`iban` <- this_object$`iban`
      }
      if (!is.null(this_object$`nextgenpsd2_url`)) {
        self$`nextgenpsd2_url` <- this_object$`nextgenpsd2_url`
      }
      if (!is.null(this_object$`psd2_supported`)) {
        self$`psd2_supported` <- this_object$`psd2_supported`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BankLookup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BankLookup
    #'
    #' @param input_json the JSON input
    #' @return the instance of BankLookup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bank_name` <- this_object$`bank_name`
      self$`bic` <- this_object$`bic`
      self$`iban` <- this_object$`iban`
      self$`nextgenpsd2_url` <- this_object$`nextgenpsd2_url`
      self$`psd2_supported` <- this_object$`psd2_supported`
      self
    },

    #' @description
    #' Validate JSON input with respect to BankLookup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `iban`
      if (!is.null(input_json$`iban`)) {
        if (!(is.character(input_json$`iban`) && length(input_json$`iban`) == 1)) {
          stop(paste("Error! Invalid data for `iban`. Must be a string:", input_json$`iban`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BankLookup: the required field `iban` is missing."))
      }
      # check the required field `psd2_supported`
      if (!is.null(input_json$`psd2_supported`)) {
        if (!(is.logical(input_json$`psd2_supported`) && length(input_json$`psd2_supported`) == 1)) {
          stop(paste("Error! Invalid data for `psd2_supported`. Must be a boolean:", input_json$`psd2_supported`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BankLookup: the required field `psd2_supported` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BankLookup
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `iban` is null
      if (is.null(self$`iban`)) {
        return(FALSE)
      }

      # check if the required `psd2_supported` is null
      if (is.null(self$`psd2_supported`)) {
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
      # check if the required `iban` is null
      if (is.null(self$`iban`)) {
        invalid_fields["iban"] <- "Non-nullable required field `iban` cannot be null."
      }

      # check if the required `psd2_supported` is null
      if (is.null(self$`psd2_supported`)) {
        invalid_fields["psd2_supported"] <- "Non-nullable required field `psd2_supported` cannot be null."
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
# BankLookup$unlock()
#
## Below is an example to define the print function
# BankLookup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BankLookup$lock()

