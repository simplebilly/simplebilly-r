#' Create a new Address
#'
#' @description
#' Address Class
#'
#' @docType class
#' @title Address
#' @description Address Class
#' @format An \code{R6Class} generator object
#' @field city  character
#' @field company  character [optional]
#' @field country ISO 3166-1 alpha-2 country code (e.g. \"DE\", \"PL\", \"FR\"). character
#' @field email  character [optional]
#' @field name  character
#' @field phone  character [optional]
#' @field street  character
#' @field street_number  character
#' @field zip  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Address <- R6::R6Class(
  "Address",
  public = list(
    `city` = NULL,
    `company` = NULL,
    `country` = NULL,
    `email` = NULL,
    `name` = NULL,
    `phone` = NULL,
    `street` = NULL,
    `street_number` = NULL,
    `zip` = NULL,

    #' @description
    #' Initialize a new Address class.
    #'
    #' @param city city
    #' @param country ISO 3166-1 alpha-2 country code (e.g. \"DE\", \"PL\", \"FR\").
    #' @param name name
    #' @param street street
    #' @param street_number street_number
    #' @param zip zip
    #' @param company company
    #' @param email email
    #' @param phone phone
    #' @param ... Other optional arguments.
    initialize = function(`city`, `country`, `name`, `street`, `street_number`, `zip`, `company` = NULL, `email` = NULL, `phone` = NULL, ...) {
      if (!missing(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!missing(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`street`)) {
        if (!(is.character(`street`) && length(`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", `street`))
        }
        self$`street` <- `street`
      }
      if (!missing(`street_number`)) {
        if (!(is.character(`street_number`) && length(`street_number`) == 1)) {
          stop(paste("Error! Invalid data for `street_number`. Must be a string:", `street_number`))
        }
        self$`street_number` <- `street_number`
      }
      if (!missing(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
      }
      if (!is.null(`company`)) {
        if (!(is.character(`company`) && length(`company`) == 1)) {
          stop(paste("Error! Invalid data for `company`. Must be a string:", `company`))
        }
        self$`company` <- `company`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
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
    #' @return Address as a base R list.
    #' @examples
    #' # convert array of Address (x) to a data frame
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
    #' Convert Address to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AddressObject <- list()
      if (!is.null(self$`city`)) {
        AddressObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`company`)) {
        AddressObject[["company"]] <-
          self$`company`
      }
      if (!is.null(self$`country`)) {
        AddressObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`email`)) {
        AddressObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`name`)) {
        AddressObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`phone`)) {
        AddressObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`street`)) {
        AddressObject[["street"]] <-
          self$`street`
      }
      if (!is.null(self$`street_number`)) {
        AddressObject[["street_number"]] <-
          self$`street_number`
      }
      if (!is.null(self$`zip`)) {
        AddressObject[["zip"]] <-
          self$`zip`
      }
      return(AddressObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Address
    #'
    #' @param input_json the JSON input
    #' @return the instance of Address
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`company`)) {
        self$`company` <- this_object$`company`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`street`)) {
        self$`street` <- this_object$`street`
      }
      if (!is.null(this_object$`street_number`)) {
        self$`street_number` <- this_object$`street_number`
      }
      if (!is.null(this_object$`zip`)) {
        self$`zip` <- this_object$`zip`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Address in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Address
    #'
    #' @param input_json the JSON input
    #' @return the instance of Address
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`city` <- this_object$`city`
      self$`company` <- this_object$`company`
      self$`country` <- this_object$`country`
      self$`email` <- this_object$`email`
      self$`name` <- this_object$`name`
      self$`phone` <- this_object$`phone`
      self$`street` <- this_object$`street`
      self$`street_number` <- this_object$`street_number`
      self$`zip` <- this_object$`zip`
      self
    },

    #' @description
    #' Validate JSON input with respect to Address and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `city`
      if (!is.null(input_json$`city`)) {
        if (!(is.character(input_json$`city`) && length(input_json$`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", input_json$`city`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `city` is missing."))
      }
      # check the required field `country`
      if (!is.null(input_json$`country`)) {
        if (!(is.character(input_json$`country`) && length(input_json$`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", input_json$`country`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `country` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `name` is missing."))
      }
      # check the required field `street`
      if (!is.null(input_json$`street`)) {
        if (!(is.character(input_json$`street`) && length(input_json$`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", input_json$`street`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `street` is missing."))
      }
      # check the required field `street_number`
      if (!is.null(input_json$`street_number`)) {
        if (!(is.character(input_json$`street_number`) && length(input_json$`street_number`) == 1)) {
          stop(paste("Error! Invalid data for `street_number`. Must be a string:", input_json$`street_number`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `street_number` is missing."))
      }
      # check the required field `zip`
      if (!is.null(input_json$`zip`)) {
        if (!(is.character(input_json$`zip`) && length(input_json$`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", input_json$`zip`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Address: the required field `zip` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Address
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `city` is null
      if (is.null(self$`city`)) {
        return(FALSE)
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `street` is null
      if (is.null(self$`street`)) {
        return(FALSE)
      }

      # check if the required `street_number` is null
      if (is.null(self$`street_number`)) {
        return(FALSE)
      }

      # check if the required `zip` is null
      if (is.null(self$`zip`)) {
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
      # check if the required `city` is null
      if (is.null(self$`city`)) {
        invalid_fields["city"] <- "Non-nullable required field `city` cannot be null."
      }

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        invalid_fields["country"] <- "Non-nullable required field `country` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `street` is null
      if (is.null(self$`street`)) {
        invalid_fields["street"] <- "Non-nullable required field `street` cannot be null."
      }

      # check if the required `street_number` is null
      if (is.null(self$`street_number`)) {
        invalid_fields["street_number"] <- "Non-nullable required field `street_number` cannot be null."
      }

      # check if the required `zip` is null
      if (is.null(self$`zip`)) {
        invalid_fields["zip"] <- "Non-nullable required field `zip` cannot be null."
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
# Address$unlock()
#
## Below is an example to define the print function
# Address$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Address$lock()

