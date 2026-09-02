#' Create a new WarehouseCreate
#'
#' @description
#' WarehouseCreate Class
#'
#' @docType class
#' @title WarehouseCreate
#' @description WarehouseCreate Class
#' @format An \code{R6Class} generator object
#' @field addressCity  character [optional]
#' @field addressCountry  \link{CountryCode} [optional]
#' @field addressStreet  character [optional]
#' @field addressZip  character [optional]
#' @field binLocations JSON array of bin locations, e.g. `[\"A-01-01\", \"A-01-02\"]`. \link{AnyType} [optional]
#' @field code  character
#' @field isActive  character [optional]
#' @field isDefault  character [optional]
#' @field name  character
#' @field notes  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WarehouseCreate <- R6::R6Class(
  "WarehouseCreate",
  public = list(
    `addressCity` = NULL,
    `addressCountry` = NULL,
    `addressStreet` = NULL,
    `addressZip` = NULL,
    `binLocations` = NULL,
    `code` = NULL,
    `isActive` = NULL,
    `isDefault` = NULL,
    `name` = NULL,
    `notes` = NULL,

    #' @description
    #' Initialize a new WarehouseCreate class.
    #'
    #' @param code code
    #' @param name name
    #' @param addressCity addressCity
    #' @param addressCountry addressCountry
    #' @param addressStreet addressStreet
    #' @param addressZip addressZip
    #' @param binLocations JSON array of bin locations, e.g. `[\"A-01-01\", \"A-01-02\"]`.
    #' @param isActive isActive
    #' @param isDefault isDefault
    #' @param notes notes
    #' @param ... Other optional arguments.
    initialize = function(`code`, `name`, `addressCity` = NULL, `addressCountry` = NULL, `addressStreet` = NULL, `addressZip` = NULL, `binLocations` = NULL, `isActive` = NULL, `isDefault` = NULL, `notes` = NULL, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`addressCity`)) {
        if (!(is.character(`addressCity`) && length(`addressCity`) == 1)) {
          stop(paste("Error! Invalid data for `addressCity`. Must be a string:", `addressCity`))
        }
        self$`addressCity` <- `addressCity`
      }
      if (!is.null(`addressCountry`)) {
        if (!(`addressCountry` %in% c())) {
          stop(paste("Error! \"", `addressCountry`, "\" cannot be assigned to `addressCountry`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`addressCountry`))
        self$`addressCountry` <- `addressCountry`
      }
      if (!is.null(`addressStreet`)) {
        if (!(is.character(`addressStreet`) && length(`addressStreet`) == 1)) {
          stop(paste("Error! Invalid data for `addressStreet`. Must be a string:", `addressStreet`))
        }
        self$`addressStreet` <- `addressStreet`
      }
      if (!is.null(`addressZip`)) {
        if (!(is.character(`addressZip`) && length(`addressZip`) == 1)) {
          stop(paste("Error! Invalid data for `addressZip`. Must be a string:", `addressZip`))
        }
        self$`addressZip` <- `addressZip`
      }
      if (!is.null(`binLocations`)) {
        stopifnot(R6::is.R6(`binLocations`))
        self$`binLocations` <- `binLocations`
      }
      if (!is.null(`isActive`)) {
        if (!(is.logical(`isActive`) && length(`isActive`) == 1)) {
          stop(paste("Error! Invalid data for `isActive`. Must be a boolean:", `isActive`))
        }
        self$`isActive` <- `isActive`
      }
      if (!is.null(`isDefault`)) {
        if (!(is.logical(`isDefault`) && length(`isDefault`) == 1)) {
          stop(paste("Error! Invalid data for `isDefault`. Must be a boolean:", `isDefault`))
        }
        self$`isDefault` <- `isDefault`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
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
    #' @return WarehouseCreate as a base R list.
    #' @examples
    #' # convert array of WarehouseCreate (x) to a data frame
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
    #' Convert WarehouseCreate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WarehouseCreateObject <- list()
      if (!is.null(self$`addressCity`)) {
        WarehouseCreateObject[["addressCity"]] <-
          self$`addressCity`
      }
      if (!is.null(self$`addressCountry`)) {
        WarehouseCreateObject[["addressCountry"]] <-
          self$extractSimpleType(self$`addressCountry`)
      }
      if (!is.null(self$`addressStreet`)) {
        WarehouseCreateObject[["addressStreet"]] <-
          self$`addressStreet`
      }
      if (!is.null(self$`addressZip`)) {
        WarehouseCreateObject[["addressZip"]] <-
          self$`addressZip`
      }
      if (!is.null(self$`binLocations`)) {
        WarehouseCreateObject[["binLocations"]] <-
          self$extractSimpleType(self$`binLocations`)
      }
      if (!is.null(self$`code`)) {
        WarehouseCreateObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`isActive`)) {
        WarehouseCreateObject[["isActive"]] <-
          self$`isActive`
      }
      if (!is.null(self$`isDefault`)) {
        WarehouseCreateObject[["isDefault"]] <-
          self$`isDefault`
      }
      if (!is.null(self$`name`)) {
        WarehouseCreateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`notes`)) {
        WarehouseCreateObject[["notes"]] <-
          self$`notes`
      }
      return(WarehouseCreateObject)
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
    #' Deserialize JSON string into an instance of WarehouseCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of WarehouseCreate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`addressCity`)) {
        self$`addressCity` <- this_object$`addressCity`
      }
      if (!is.null(this_object$`addressCountry`)) {
        `addresscountry_object` <- CountryCode$new()
        `addresscountry_object`$fromJSON(jsonlite::toJSON(this_object$`addressCountry`, auto_unbox = TRUE, digits = NA))
        self$`addressCountry` <- `addresscountry_object`
      }
      if (!is.null(this_object$`addressStreet`)) {
        self$`addressStreet` <- this_object$`addressStreet`
      }
      if (!is.null(this_object$`addressZip`)) {
        self$`addressZip` <- this_object$`addressZip`
      }
      if (!is.null(this_object$`binLocations`)) {
        `binlocations_object` <- AnyType$new()
        `binlocations_object`$fromJSON(jsonlite::toJSON(this_object$`binLocations`, auto_unbox = TRUE, digits = NA))
        self$`binLocations` <- `binlocations_object`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`isActive`)) {
        self$`isActive` <- this_object$`isActive`
      }
      if (!is.null(this_object$`isDefault`)) {
        self$`isDefault` <- this_object$`isDefault`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return WarehouseCreate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WarehouseCreate
    #'
    #' @param input_json the JSON input
    #' @return the instance of WarehouseCreate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`addressCity` <- this_object$`addressCity`
      self$`addressCountry` <- CountryCode$new()$fromJSON(jsonlite::toJSON(this_object$`addressCountry`, auto_unbox = TRUE, digits = NA))
      self$`addressStreet` <- this_object$`addressStreet`
      self$`addressZip` <- this_object$`addressZip`
      self$`binLocations` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`binLocations`, auto_unbox = TRUE, digits = NA))
      self$`code` <- this_object$`code`
      self$`isActive` <- this_object$`isActive`
      self$`isDefault` <- this_object$`isDefault`
      self$`name` <- this_object$`name`
      self$`notes` <- this_object$`notes`
      self
    },

    #' @description
    #' Validate JSON input with respect to WarehouseCreate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WarehouseCreate: the required field `code` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WarehouseCreate: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WarehouseCreate
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# WarehouseCreate$unlock()
#
## Below is an example to define the print function
# WarehouseCreate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WarehouseCreate$lock()

