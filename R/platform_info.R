#' Create a new PlatformInfo
#'
#' @description
#' Public metadata for one registered plugin (admin UI). Maps 1:1 from [`plugin_core::PluginInfo`] (same field shape as before).
#'
#' @docType class
#' @title PlatformInfo
#' @description PlatformInfo Class
#' @format An \code{R6Class} generator object
#' @field author  character
#' @field changelog  list(\link{ChangelogEntry})
#' @field config_field_names  list(character)
#' @field config_fields  list(\link{ConfigFieldInfo})
#' @field display_name  character
#' @field platform  character
#' @field pricing  \link{PluginPricing}
#' @field supported_entities  list(character)
#' @field supports_export  character
#' @field supports_import  character
#' @field supports_oauth  character
#' @field version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PlatformInfo <- R6::R6Class(
  "PlatformInfo",
  public = list(
    `author` = NULL,
    `changelog` = NULL,
    `config_field_names` = NULL,
    `config_fields` = NULL,
    `display_name` = NULL,
    `platform` = NULL,
    `pricing` = NULL,
    `supported_entities` = NULL,
    `supports_export` = NULL,
    `supports_import` = NULL,
    `supports_oauth` = NULL,
    `version` = NULL,

    #' @description
    #' Initialize a new PlatformInfo class.
    #'
    #' @param author author
    #' @param changelog changelog
    #' @param config_field_names config_field_names
    #' @param config_fields config_fields
    #' @param display_name display_name
    #' @param platform platform
    #' @param pricing pricing
    #' @param supported_entities supported_entities
    #' @param supports_export supports_export
    #' @param supports_import supports_import
    #' @param supports_oauth supports_oauth
    #' @param version version
    #' @param ... Other optional arguments.
    initialize = function(`author`, `changelog`, `config_field_names`, `config_fields`, `display_name`, `platform`, `pricing`, `supported_entities`, `supports_export`, `supports_import`, `supports_oauth`, `version`, ...) {
      if (!missing(`author`)) {
        if (!(is.character(`author`) && length(`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", `author`))
        }
        self$`author` <- `author`
      }
      if (!missing(`changelog`)) {
        stopifnot(is.vector(`changelog`), length(`changelog`) != 0)
        sapply(`changelog`, function(x) stopifnot(R6::is.R6(x)))
        self$`changelog` <- `changelog`
      }
      if (!missing(`config_field_names`)) {
        stopifnot(is.vector(`config_field_names`), length(`config_field_names`) != 0)
        sapply(`config_field_names`, function(x) stopifnot(is.character(x)))
        self$`config_field_names` <- `config_field_names`
      }
      if (!missing(`config_fields`)) {
        stopifnot(is.vector(`config_fields`), length(`config_fields`) != 0)
        sapply(`config_fields`, function(x) stopifnot(R6::is.R6(x)))
        self$`config_fields` <- `config_fields`
      }
      if (!missing(`display_name`)) {
        if (!(is.character(`display_name`) && length(`display_name`) == 1)) {
          stop(paste("Error! Invalid data for `display_name`. Must be a string:", `display_name`))
        }
        self$`display_name` <- `display_name`
      }
      if (!missing(`platform`)) {
        if (!(is.character(`platform`) && length(`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", `platform`))
        }
        self$`platform` <- `platform`
      }
      if (!missing(`pricing`)) {
        stopifnot(R6::is.R6(`pricing`))
        self$`pricing` <- `pricing`
      }
      if (!missing(`supported_entities`)) {
        stopifnot(is.vector(`supported_entities`), length(`supported_entities`) != 0)
        sapply(`supported_entities`, function(x) stopifnot(is.character(x)))
        self$`supported_entities` <- `supported_entities`
      }
      if (!missing(`supports_export`)) {
        if (!(is.logical(`supports_export`) && length(`supports_export`) == 1)) {
          stop(paste("Error! Invalid data for `supports_export`. Must be a boolean:", `supports_export`))
        }
        self$`supports_export` <- `supports_export`
      }
      if (!missing(`supports_import`)) {
        if (!(is.logical(`supports_import`) && length(`supports_import`) == 1)) {
          stop(paste("Error! Invalid data for `supports_import`. Must be a boolean:", `supports_import`))
        }
        self$`supports_import` <- `supports_import`
      }
      if (!missing(`supports_oauth`)) {
        if (!(is.logical(`supports_oauth`) && length(`supports_oauth`) == 1)) {
          stop(paste("Error! Invalid data for `supports_oauth`. Must be a boolean:", `supports_oauth`))
        }
        self$`supports_oauth` <- `supports_oauth`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
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
    #' @return PlatformInfo as a base R list.
    #' @examples
    #' # convert array of PlatformInfo (x) to a data frame
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
    #' Convert PlatformInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PlatformInfoObject <- list()
      if (!is.null(self$`author`)) {
        PlatformInfoObject[["author"]] <-
          self$`author`
      }
      if (!is.null(self$`changelog`)) {
        PlatformInfoObject[["changelog"]] <-
          self$extractSimpleType(self$`changelog`)
      }
      if (!is.null(self$`config_field_names`)) {
        PlatformInfoObject[["config_field_names"]] <-
          self$`config_field_names`
      }
      if (!is.null(self$`config_fields`)) {
        PlatformInfoObject[["config_fields"]] <-
          self$extractSimpleType(self$`config_fields`)
      }
      if (!is.null(self$`display_name`)) {
        PlatformInfoObject[["display_name"]] <-
          self$`display_name`
      }
      if (!is.null(self$`platform`)) {
        PlatformInfoObject[["platform"]] <-
          self$`platform`
      }
      if (!is.null(self$`pricing`)) {
        PlatformInfoObject[["pricing"]] <-
          self$extractSimpleType(self$`pricing`)
      }
      if (!is.null(self$`supported_entities`)) {
        PlatformInfoObject[["supported_entities"]] <-
          self$`supported_entities`
      }
      if (!is.null(self$`supports_export`)) {
        PlatformInfoObject[["supports_export"]] <-
          self$`supports_export`
      }
      if (!is.null(self$`supports_import`)) {
        PlatformInfoObject[["supports_import"]] <-
          self$`supports_import`
      }
      if (!is.null(self$`supports_oauth`)) {
        PlatformInfoObject[["supports_oauth"]] <-
          self$`supports_oauth`
      }
      if (!is.null(self$`version`)) {
        PlatformInfoObject[["version"]] <-
          self$`version`
      }
      return(PlatformInfoObject)
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
    #' Deserialize JSON string into an instance of PlatformInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlatformInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`author`)) {
        self$`author` <- this_object$`author`
      }
      if (!is.null(this_object$`changelog`)) {
        self$`changelog` <- ApiClient$new()$deserializeObj(this_object$`changelog`, "array[ChangelogEntry]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`config_field_names`)) {
        self$`config_field_names` <- ApiClient$new()$deserializeObj(this_object$`config_field_names`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`config_fields`)) {
        self$`config_fields` <- ApiClient$new()$deserializeObj(this_object$`config_fields`, "array[ConfigFieldInfo]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`display_name`)) {
        self$`display_name` <- this_object$`display_name`
      }
      if (!is.null(this_object$`platform`)) {
        self$`platform` <- this_object$`platform`
      }
      if (!is.null(this_object$`pricing`)) {
        `pricing_object` <- PluginPricing$new()
        `pricing_object`$fromJSON(jsonlite::toJSON(this_object$`pricing`, auto_unbox = TRUE, digits = NA))
        self$`pricing` <- `pricing_object`
      }
      if (!is.null(this_object$`supported_entities`)) {
        self$`supported_entities` <- ApiClient$new()$deserializeObj(this_object$`supported_entities`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`supports_export`)) {
        self$`supports_export` <- this_object$`supports_export`
      }
      if (!is.null(this_object$`supports_import`)) {
        self$`supports_import` <- this_object$`supports_import`
      }
      if (!is.null(this_object$`supports_oauth`)) {
        self$`supports_oauth` <- this_object$`supports_oauth`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PlatformInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PlatformInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of PlatformInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`author` <- this_object$`author`
      self$`changelog` <- ApiClient$new()$deserializeObj(this_object$`changelog`, "array[ChangelogEntry]", loadNamespace("openapi"))
      self$`config_field_names` <- ApiClient$new()$deserializeObj(this_object$`config_field_names`, "array[character]", loadNamespace("openapi"))
      self$`config_fields` <- ApiClient$new()$deserializeObj(this_object$`config_fields`, "array[ConfigFieldInfo]", loadNamespace("openapi"))
      self$`display_name` <- this_object$`display_name`
      self$`platform` <- this_object$`platform`
      self$`pricing` <- PluginPricing$new()$fromJSON(jsonlite::toJSON(this_object$`pricing`, auto_unbox = TRUE, digits = NA))
      self$`supported_entities` <- ApiClient$new()$deserializeObj(this_object$`supported_entities`, "array[character]", loadNamespace("openapi"))
      self$`supports_export` <- this_object$`supports_export`
      self$`supports_import` <- this_object$`supports_import`
      self$`supports_oauth` <- this_object$`supports_oauth`
      self$`version` <- this_object$`version`
      self
    },

    #' @description
    #' Validate JSON input with respect to PlatformInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `author`
      if (!is.null(input_json$`author`)) {
        if (!(is.character(input_json$`author`) && length(input_json$`author`) == 1)) {
          stop(paste("Error! Invalid data for `author`. Must be a string:", input_json$`author`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `author` is missing."))
      }
      # check the required field `changelog`
      if (!is.null(input_json$`changelog`)) {
        stopifnot(is.vector(input_json$`changelog`), length(input_json$`changelog`) != 0)
        tmp <- sapply(input_json$`changelog`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `changelog` is missing."))
      }
      # check the required field `config_field_names`
      if (!is.null(input_json$`config_field_names`)) {
        stopifnot(is.vector(input_json$`config_field_names`), length(input_json$`config_field_names`) != 0)
        tmp <- sapply(input_json$`config_field_names`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `config_field_names` is missing."))
      }
      # check the required field `config_fields`
      if (!is.null(input_json$`config_fields`)) {
        stopifnot(is.vector(input_json$`config_fields`), length(input_json$`config_fields`) != 0)
        tmp <- sapply(input_json$`config_fields`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `config_fields` is missing."))
      }
      # check the required field `display_name`
      if (!is.null(input_json$`display_name`)) {
        if (!(is.character(input_json$`display_name`) && length(input_json$`display_name`) == 1)) {
          stop(paste("Error! Invalid data for `display_name`. Must be a string:", input_json$`display_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `display_name` is missing."))
      }
      # check the required field `platform`
      if (!is.null(input_json$`platform`)) {
        if (!(is.character(input_json$`platform`) && length(input_json$`platform`) == 1)) {
          stop(paste("Error! Invalid data for `platform`. Must be a string:", input_json$`platform`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `platform` is missing."))
      }
      # check the required field `pricing`
      if (!is.null(input_json$`pricing`)) {
        stopifnot(R6::is.R6(input_json$`pricing`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `pricing` is missing."))
      }
      # check the required field `supported_entities`
      if (!is.null(input_json$`supported_entities`)) {
        stopifnot(is.vector(input_json$`supported_entities`), length(input_json$`supported_entities`) != 0)
        tmp <- sapply(input_json$`supported_entities`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `supported_entities` is missing."))
      }
      # check the required field `supports_export`
      if (!is.null(input_json$`supports_export`)) {
        if (!(is.logical(input_json$`supports_export`) && length(input_json$`supports_export`) == 1)) {
          stop(paste("Error! Invalid data for `supports_export`. Must be a boolean:", input_json$`supports_export`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `supports_export` is missing."))
      }
      # check the required field `supports_import`
      if (!is.null(input_json$`supports_import`)) {
        if (!(is.logical(input_json$`supports_import`) && length(input_json$`supports_import`) == 1)) {
          stop(paste("Error! Invalid data for `supports_import`. Must be a boolean:", input_json$`supports_import`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `supports_import` is missing."))
      }
      # check the required field `supports_oauth`
      if (!is.null(input_json$`supports_oauth`)) {
        if (!(is.logical(input_json$`supports_oauth`) && length(input_json$`supports_oauth`) == 1)) {
          stop(paste("Error! Invalid data for `supports_oauth`. Must be a boolean:", input_json$`supports_oauth`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `supports_oauth` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PlatformInfo: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PlatformInfo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `author` is null
      if (is.null(self$`author`)) {
        return(FALSE)
      }

      # check if the required `changelog` is null
      if (is.null(self$`changelog`)) {
        return(FALSE)
      }

      # check if the required `config_field_names` is null
      if (is.null(self$`config_field_names`)) {
        return(FALSE)
      }

      # check if the required `config_fields` is null
      if (is.null(self$`config_fields`)) {
        return(FALSE)
      }

      # check if the required `display_name` is null
      if (is.null(self$`display_name`)) {
        return(FALSE)
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        return(FALSE)
      }

      # check if the required `pricing` is null
      if (is.null(self$`pricing`)) {
        return(FALSE)
      }

      # check if the required `supported_entities` is null
      if (is.null(self$`supported_entities`)) {
        return(FALSE)
      }

      # check if the required `supports_export` is null
      if (is.null(self$`supports_export`)) {
        return(FALSE)
      }

      # check if the required `supports_import` is null
      if (is.null(self$`supports_import`)) {
        return(FALSE)
      }

      # check if the required `supports_oauth` is null
      if (is.null(self$`supports_oauth`)) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
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
      # check if the required `author` is null
      if (is.null(self$`author`)) {
        invalid_fields["author"] <- "Non-nullable required field `author` cannot be null."
      }

      # check if the required `changelog` is null
      if (is.null(self$`changelog`)) {
        invalid_fields["changelog"] <- "Non-nullable required field `changelog` cannot be null."
      }

      # check if the required `config_field_names` is null
      if (is.null(self$`config_field_names`)) {
        invalid_fields["config_field_names"] <- "Non-nullable required field `config_field_names` cannot be null."
      }

      # check if the required `config_fields` is null
      if (is.null(self$`config_fields`)) {
        invalid_fields["config_fields"] <- "Non-nullable required field `config_fields` cannot be null."
      }

      # check if the required `display_name` is null
      if (is.null(self$`display_name`)) {
        invalid_fields["display_name"] <- "Non-nullable required field `display_name` cannot be null."
      }

      # check if the required `platform` is null
      if (is.null(self$`platform`)) {
        invalid_fields["platform"] <- "Non-nullable required field `platform` cannot be null."
      }

      # check if the required `pricing` is null
      if (is.null(self$`pricing`)) {
        invalid_fields["pricing"] <- "Non-nullable required field `pricing` cannot be null."
      }

      # check if the required `supported_entities` is null
      if (is.null(self$`supported_entities`)) {
        invalid_fields["supported_entities"] <- "Non-nullable required field `supported_entities` cannot be null."
      }

      # check if the required `supports_export` is null
      if (is.null(self$`supports_export`)) {
        invalid_fields["supports_export"] <- "Non-nullable required field `supports_export` cannot be null."
      }

      # check if the required `supports_import` is null
      if (is.null(self$`supports_import`)) {
        invalid_fields["supports_import"] <- "Non-nullable required field `supports_import` cannot be null."
      }

      # check if the required `supports_oauth` is null
      if (is.null(self$`supports_oauth`)) {
        invalid_fields["supports_oauth"] <- "Non-nullable required field `supports_oauth` cannot be null."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
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
# PlatformInfo$unlock()
#
## Below is an example to define the print function
# PlatformInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PlatformInfo$lock()

