#' Create a new EmissionEntry
#'
#' @description
#' EmissionEntry Class
#'
#' @docType class
#' @title EmissionEntry
#' @description EmissionEntry Class
#' @format An \code{R6Class} generator object
#' @field activityValue Activity amount in `unit` (kWh, l, km, t, tkm, EUR). character
#' @field categoryId GHG-Protocol category key, e.g. \"purchased_goods\", \"business_travel\". character
#' @field description  character
#' @field efSource Emission-factor source, e.g. \"UBA-2024\", \"DEFRA-2024\". character
#' @field efVersion  character
#' @field method \"activity\" | \"spend\" | \"supplier\". \link{EmissionMethod}
#' @field scope GHG scope: \"1\" | \"2\" | \"3\". \link{GhgScope}
#' @field tco2e Computed server-side: activity * factor / 1000, rounded to 4 dp. character
#' @field unit Unit of the activity value. character
#' @field updatedAt  character [optional]
#' @field year Reporting year. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EmissionEntry <- R6::R6Class(
  "EmissionEntry",
  public = list(
    `activityValue` = NULL,
    `categoryId` = NULL,
    `description` = NULL,
    `efSource` = NULL,
    `efVersion` = NULL,
    `method` = NULL,
    `scope` = NULL,
    `tco2e` = NULL,
    `unit` = NULL,
    `updatedAt` = NULL,
    `year` = NULL,

    #' @description
    #' Initialize a new EmissionEntry class.
    #'
    #' @param activityValue Activity amount in `unit` (kWh, l, km, t, tkm, EUR).
    #' @param categoryId GHG-Protocol category key, e.g. \"purchased_goods\", \"business_travel\".
    #' @param description description
    #' @param efSource Emission-factor source, e.g. \"UBA-2024\", \"DEFRA-2024\".
    #' @param efVersion efVersion
    #' @param method \"activity\" | \"spend\" | \"supplier\".
    #' @param scope GHG scope: \"1\" | \"2\" | \"3\".
    #' @param tco2e Computed server-side: activity * factor / 1000, rounded to 4 dp.
    #' @param unit Unit of the activity value.
    #' @param year Reporting year.
    #' @param updatedAt updatedAt
    #' @param ... Other optional arguments.
    initialize = function(`activityValue`, `categoryId`, `description`, `efSource`, `efVersion`, `method`, `scope`, `tco2e`, `unit`, `year`, `updatedAt` = NULL, ...) {
      if (!missing(`activityValue`)) {
        if (!(is.character(`activityValue`) && length(`activityValue`) == 1)) {
          stop(paste("Error! Invalid data for `activityValue`. Must be a string:", `activityValue`))
        }
        self$`activityValue` <- `activityValue`
      }
      if (!missing(`categoryId`)) {
        if (!(is.character(`categoryId`) && length(`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be a string:", `categoryId`))
        }
        self$`categoryId` <- `categoryId`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`efSource`)) {
        if (!(is.character(`efSource`) && length(`efSource`) == 1)) {
          stop(paste("Error! Invalid data for `efSource`. Must be a string:", `efSource`))
        }
        self$`efSource` <- `efSource`
      }
      if (!missing(`efVersion`)) {
        if (!(is.character(`efVersion`) && length(`efVersion`) == 1)) {
          stop(paste("Error! Invalid data for `efVersion`. Must be a string:", `efVersion`))
        }
        self$`efVersion` <- `efVersion`
      }
      if (!missing(`method`)) {
        if (!(`method` %in% c())) {
          stop(paste("Error! \"", `method`, "\" cannot be assigned to `method`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`method`))
        self$`method` <- `method`
      }
      if (!missing(`scope`)) {
        if (!(`scope` %in% c())) {
          stop(paste("Error! \"", `scope`, "\" cannot be assigned to `scope`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`scope`))
        self$`scope` <- `scope`
      }
      if (!missing(`tco2e`)) {
        if (!(is.character(`tco2e`) && length(`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", `tco2e`))
        }
        self$`tco2e` <- `tco2e`
      }
      if (!missing(`unit`)) {
        if (!(is.character(`unit`) && length(`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", `unit`))
        }
        self$`unit` <- `unit`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!is.null(`updatedAt`)) {
        if (!is.character(`updatedAt`)) {
          stop(paste("Error! Invalid data for `updatedAt`. Must be a string:", `updatedAt`))
        }
        self$`updatedAt` <- `updatedAt`
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
    #' @return EmissionEntry as a base R list.
    #' @examples
    #' # convert array of EmissionEntry (x) to a data frame
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
    #' Convert EmissionEntry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      EmissionEntryObject <- list()
      if (!is.null(self$`activityValue`)) {
        EmissionEntryObject[["activityValue"]] <-
          self$`activityValue`
      }
      if (!is.null(self$`categoryId`)) {
        EmissionEntryObject[["categoryId"]] <-
          self$`categoryId`
      }
      if (!is.null(self$`description`)) {
        EmissionEntryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`efSource`)) {
        EmissionEntryObject[["efSource"]] <-
          self$`efSource`
      }
      if (!is.null(self$`efVersion`)) {
        EmissionEntryObject[["efVersion"]] <-
          self$`efVersion`
      }
      if (!is.null(self$`method`)) {
        EmissionEntryObject[["method"]] <-
          self$extractSimpleType(self$`method`)
      }
      if (!is.null(self$`scope`)) {
        EmissionEntryObject[["scope"]] <-
          self$extractSimpleType(self$`scope`)
      }
      if (!is.null(self$`tco2e`)) {
        EmissionEntryObject[["tco2e"]] <-
          self$`tco2e`
      }
      if (!is.null(self$`unit`)) {
        EmissionEntryObject[["unit"]] <-
          self$`unit`
      }
      if (!is.null(self$`updatedAt`)) {
        EmissionEntryObject[["updatedAt"]] <-
          self$`updatedAt`
      }
      if (!is.null(self$`year`)) {
        EmissionEntryObject[["year"]] <-
          self$`year`
      }
      return(EmissionEntryObject)
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
    #' Deserialize JSON string into an instance of EmissionEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionEntry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`activityValue`)) {
        self$`activityValue` <- this_object$`activityValue`
      }
      if (!is.null(this_object$`categoryId`)) {
        self$`categoryId` <- this_object$`categoryId`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`efSource`)) {
        self$`efSource` <- this_object$`efSource`
      }
      if (!is.null(this_object$`efVersion`)) {
        self$`efVersion` <- this_object$`efVersion`
      }
      if (!is.null(this_object$`method`)) {
        `method_object` <- EmissionMethod$new()
        `method_object`$fromJSON(jsonlite::toJSON(this_object$`method`, auto_unbox = TRUE, digits = NA))
        self$`method` <- `method_object`
      }
      if (!is.null(this_object$`scope`)) {
        `scope_object` <- GhgScope$new()
        `scope_object`$fromJSON(jsonlite::toJSON(this_object$`scope`, auto_unbox = TRUE, digits = NA))
        self$`scope` <- `scope_object`
      }
      if (!is.null(this_object$`tco2e`)) {
        self$`tco2e` <- this_object$`tco2e`
      }
      if (!is.null(this_object$`unit`)) {
        self$`unit` <- this_object$`unit`
      }
      if (!is.null(this_object$`updatedAt`)) {
        self$`updatedAt` <- this_object$`updatedAt`
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
    #' @return EmissionEntry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of EmissionEntry
    #'
    #' @param input_json the JSON input
    #' @return the instance of EmissionEntry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`activityValue` <- this_object$`activityValue`
      self$`categoryId` <- this_object$`categoryId`
      self$`description` <- this_object$`description`
      self$`efSource` <- this_object$`efSource`
      self$`efVersion` <- this_object$`efVersion`
      self$`method` <- EmissionMethod$new()$fromJSON(jsonlite::toJSON(this_object$`method`, auto_unbox = TRUE, digits = NA))
      self$`scope` <- GhgScope$new()$fromJSON(jsonlite::toJSON(this_object$`scope`, auto_unbox = TRUE, digits = NA))
      self$`tco2e` <- this_object$`tco2e`
      self$`unit` <- this_object$`unit`
      self$`updatedAt` <- this_object$`updatedAt`
      self$`year` <- this_object$`year`
      self
    },

    #' @description
    #' Validate JSON input with respect to EmissionEntry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `activityValue`
      if (!is.null(input_json$`activityValue`)) {
        if (!(is.character(input_json$`activityValue`) && length(input_json$`activityValue`) == 1)) {
          stop(paste("Error! Invalid data for `activityValue`. Must be a string:", input_json$`activityValue`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `activityValue` is missing."))
      }
      # check the required field `categoryId`
      if (!is.null(input_json$`categoryId`)) {
        if (!(is.character(input_json$`categoryId`) && length(input_json$`categoryId`) == 1)) {
          stop(paste("Error! Invalid data for `categoryId`. Must be a string:", input_json$`categoryId`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `categoryId` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `description` is missing."))
      }
      # check the required field `efSource`
      if (!is.null(input_json$`efSource`)) {
        if (!(is.character(input_json$`efSource`) && length(input_json$`efSource`) == 1)) {
          stop(paste("Error! Invalid data for `efSource`. Must be a string:", input_json$`efSource`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `efSource` is missing."))
      }
      # check the required field `efVersion`
      if (!is.null(input_json$`efVersion`)) {
        if (!(is.character(input_json$`efVersion`) && length(input_json$`efVersion`) == 1)) {
          stop(paste("Error! Invalid data for `efVersion`. Must be a string:", input_json$`efVersion`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `efVersion` is missing."))
      }
      # check the required field `method`
      if (!is.null(input_json$`method`)) {
        stopifnot(R6::is.R6(input_json$`method`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `method` is missing."))
      }
      # check the required field `scope`
      if (!is.null(input_json$`scope`)) {
        stopifnot(R6::is.R6(input_json$`scope`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `scope` is missing."))
      }
      # check the required field `tco2e`
      if (!is.null(input_json$`tco2e`)) {
        if (!(is.character(input_json$`tco2e`) && length(input_json$`tco2e`) == 1)) {
          stop(paste("Error! Invalid data for `tco2e`. Must be a string:", input_json$`tco2e`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `tco2e` is missing."))
      }
      # check the required field `unit`
      if (!is.null(input_json$`unit`)) {
        if (!(is.character(input_json$`unit`) && length(input_json$`unit`) == 1)) {
          stop(paste("Error! Invalid data for `unit`. Must be a string:", input_json$`unit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `unit` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for EmissionEntry: the required field `year` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of EmissionEntry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `activityValue` is null
      if (is.null(self$`activityValue`)) {
        return(FALSE)
      }

      # check if the required `categoryId` is null
      if (is.null(self$`categoryId`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `efSource` is null
      if (is.null(self$`efSource`)) {
        return(FALSE)
      }

      # check if the required `efVersion` is null
      if (is.null(self$`efVersion`)) {
        return(FALSE)
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        return(FALSE)
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        return(FALSE)
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        return(FALSE)
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
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
      # check if the required `activityValue` is null
      if (is.null(self$`activityValue`)) {
        invalid_fields["activityValue"] <- "Non-nullable required field `activityValue` cannot be null."
      }

      # check if the required `categoryId` is null
      if (is.null(self$`categoryId`)) {
        invalid_fields["categoryId"] <- "Non-nullable required field `categoryId` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `efSource` is null
      if (is.null(self$`efSource`)) {
        invalid_fields["efSource"] <- "Non-nullable required field `efSource` cannot be null."
      }

      # check if the required `efVersion` is null
      if (is.null(self$`efVersion`)) {
        invalid_fields["efVersion"] <- "Non-nullable required field `efVersion` cannot be null."
      }

      # check if the required `method` is null
      if (is.null(self$`method`)) {
        invalid_fields["method"] <- "Non-nullable required field `method` cannot be null."
      }

      # check if the required `scope` is null
      if (is.null(self$`scope`)) {
        invalid_fields["scope"] <- "Non-nullable required field `scope` cannot be null."
      }

      # check if the required `tco2e` is null
      if (is.null(self$`tco2e`)) {
        invalid_fields["tco2e"] <- "Non-nullable required field `tco2e` cannot be null."
      }

      # check if the required `unit` is null
      if (is.null(self$`unit`)) {
        invalid_fields["unit"] <- "Non-nullable required field `unit` cannot be null."
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
# EmissionEntry$unlock()
#
## Below is an example to define the print function
# EmissionEntry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# EmissionEntry$lock()

