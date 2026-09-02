#' Create a new KonzernStatus
#'
#' @description
#' KonzernStatus Class
#'
#' @docType class
#' @title KonzernStatus
#' @description KonzernStatus Class
#' @format An \code{R6Class} generator object
#' @field groessenbefreit  character
#' @field kapitalmarktorientiert  character
#' @field konzernabschlusspflicht  character
#' @field missing_group_figures Keine group_figures-Zeile für das Jahr vorhanden → keine Größenbefreiung. character
#' @field mutterunternehmen Mutterunternehmen: mindestens eine beherrschte Beteiligung (§ 290 Abs. 1 HGB). character
#' @field parent_name Mutterunternehmen für die Zwischenholding-Befreiung (§ 291 HGB). character [optional]
#' @field parent_situs  character [optional]
#' @field participations  list(\link{KonzernBeteiligung})
#' @field thresholds  \link{KonzernThresholds}
#' @field year  integer
#' @field zwischenholding_befreit  character
#' @field zwischenholding_hinweis Hinweis zu den § 291-Voraussetzungen (EU/EWR-Sitz, geprüfter Konzernabschluss). character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KonzernStatus <- R6::R6Class(
  "KonzernStatus",
  public = list(
    `groessenbefreit` = NULL,
    `kapitalmarktorientiert` = NULL,
    `konzernabschlusspflicht` = NULL,
    `missing_group_figures` = NULL,
    `mutterunternehmen` = NULL,
    `parent_name` = NULL,
    `parent_situs` = NULL,
    `participations` = NULL,
    `thresholds` = NULL,
    `year` = NULL,
    `zwischenholding_befreit` = NULL,
    `zwischenholding_hinweis` = NULL,

    #' @description
    #' Initialize a new KonzernStatus class.
    #'
    #' @param groessenbefreit groessenbefreit
    #' @param kapitalmarktorientiert kapitalmarktorientiert
    #' @param konzernabschlusspflicht konzernabschlusspflicht
    #' @param missing_group_figures Keine group_figures-Zeile für das Jahr vorhanden → keine Größenbefreiung.
    #' @param mutterunternehmen Mutterunternehmen: mindestens eine beherrschte Beteiligung (§ 290 Abs. 1 HGB).
    #' @param participations participations
    #' @param thresholds thresholds
    #' @param year year
    #' @param zwischenholding_befreit zwischenholding_befreit
    #' @param parent_name Mutterunternehmen für die Zwischenholding-Befreiung (§ 291 HGB).
    #' @param parent_situs parent_situs
    #' @param zwischenholding_hinweis Hinweis zu den § 291-Voraussetzungen (EU/EWR-Sitz, geprüfter Konzernabschluss).
    #' @param ... Other optional arguments.
    initialize = function(`groessenbefreit`, `kapitalmarktorientiert`, `konzernabschlusspflicht`, `missing_group_figures`, `mutterunternehmen`, `participations`, `thresholds`, `year`, `zwischenholding_befreit`, `parent_name` = NULL, `parent_situs` = NULL, `zwischenholding_hinweis` = NULL, ...) {
      if (!missing(`groessenbefreit`)) {
        if (!(is.logical(`groessenbefreit`) && length(`groessenbefreit`) == 1)) {
          stop(paste("Error! Invalid data for `groessenbefreit`. Must be a boolean:", `groessenbefreit`))
        }
        self$`groessenbefreit` <- `groessenbefreit`
      }
      if (!missing(`kapitalmarktorientiert`)) {
        if (!(is.logical(`kapitalmarktorientiert`) && length(`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", `kapitalmarktorientiert`))
        }
        self$`kapitalmarktorientiert` <- `kapitalmarktorientiert`
      }
      if (!missing(`konzernabschlusspflicht`)) {
        if (!(is.logical(`konzernabschlusspflicht`) && length(`konzernabschlusspflicht`) == 1)) {
          stop(paste("Error! Invalid data for `konzernabschlusspflicht`. Must be a boolean:", `konzernabschlusspflicht`))
        }
        self$`konzernabschlusspflicht` <- `konzernabschlusspflicht`
      }
      if (!missing(`missing_group_figures`)) {
        if (!(is.logical(`missing_group_figures`) && length(`missing_group_figures`) == 1)) {
          stop(paste("Error! Invalid data for `missing_group_figures`. Must be a boolean:", `missing_group_figures`))
        }
        self$`missing_group_figures` <- `missing_group_figures`
      }
      if (!missing(`mutterunternehmen`)) {
        if (!(is.logical(`mutterunternehmen`) && length(`mutterunternehmen`) == 1)) {
          stop(paste("Error! Invalid data for `mutterunternehmen`. Must be a boolean:", `mutterunternehmen`))
        }
        self$`mutterunternehmen` <- `mutterunternehmen`
      }
      if (!missing(`participations`)) {
        stopifnot(is.vector(`participations`), length(`participations`) != 0)
        sapply(`participations`, function(x) stopifnot(R6::is.R6(x)))
        self$`participations` <- `participations`
      }
      if (!missing(`thresholds`)) {
        stopifnot(R6::is.R6(`thresholds`))
        self$`thresholds` <- `thresholds`
      }
      if (!missing(`year`)) {
        if (!(is.numeric(`year`) && length(`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", `year`))
        }
        self$`year` <- `year`
      }
      if (!missing(`zwischenholding_befreit`)) {
        if (!(is.logical(`zwischenholding_befreit`) && length(`zwischenholding_befreit`) == 1)) {
          stop(paste("Error! Invalid data for `zwischenholding_befreit`. Must be a boolean:", `zwischenholding_befreit`))
        }
        self$`zwischenholding_befreit` <- `zwischenholding_befreit`
      }
      if (!is.null(`parent_name`)) {
        if (!(is.character(`parent_name`) && length(`parent_name`) == 1)) {
          stop(paste("Error! Invalid data for `parent_name`. Must be a string:", `parent_name`))
        }
        self$`parent_name` <- `parent_name`
      }
      if (!is.null(`parent_situs`)) {
        if (!(is.character(`parent_situs`) && length(`parent_situs`) == 1)) {
          stop(paste("Error! Invalid data for `parent_situs`. Must be a string:", `parent_situs`))
        }
        self$`parent_situs` <- `parent_situs`
      }
      if (!is.null(`zwischenholding_hinweis`)) {
        if (!(is.character(`zwischenholding_hinweis`) && length(`zwischenholding_hinweis`) == 1)) {
          stop(paste("Error! Invalid data for `zwischenholding_hinweis`. Must be a string:", `zwischenholding_hinweis`))
        }
        self$`zwischenholding_hinweis` <- `zwischenholding_hinweis`
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
    #' @return KonzernStatus as a base R list.
    #' @examples
    #' # convert array of KonzernStatus (x) to a data frame
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
    #' Convert KonzernStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KonzernStatusObject <- list()
      if (!is.null(self$`groessenbefreit`)) {
        KonzernStatusObject[["groessenbefreit"]] <-
          self$`groessenbefreit`
      }
      if (!is.null(self$`kapitalmarktorientiert`)) {
        KonzernStatusObject[["kapitalmarktorientiert"]] <-
          self$`kapitalmarktorientiert`
      }
      if (!is.null(self$`konzernabschlusspflicht`)) {
        KonzernStatusObject[["konzernabschlusspflicht"]] <-
          self$`konzernabschlusspflicht`
      }
      if (!is.null(self$`missing_group_figures`)) {
        KonzernStatusObject[["missing_group_figures"]] <-
          self$`missing_group_figures`
      }
      if (!is.null(self$`mutterunternehmen`)) {
        KonzernStatusObject[["mutterunternehmen"]] <-
          self$`mutterunternehmen`
      }
      if (!is.null(self$`parent_name`)) {
        KonzernStatusObject[["parent_name"]] <-
          self$`parent_name`
      }
      if (!is.null(self$`parent_situs`)) {
        KonzernStatusObject[["parent_situs"]] <-
          self$`parent_situs`
      }
      if (!is.null(self$`participations`)) {
        KonzernStatusObject[["participations"]] <-
          self$extractSimpleType(self$`participations`)
      }
      if (!is.null(self$`thresholds`)) {
        KonzernStatusObject[["thresholds"]] <-
          self$extractSimpleType(self$`thresholds`)
      }
      if (!is.null(self$`year`)) {
        KonzernStatusObject[["year"]] <-
          self$`year`
      }
      if (!is.null(self$`zwischenholding_befreit`)) {
        KonzernStatusObject[["zwischenholding_befreit"]] <-
          self$`zwischenholding_befreit`
      }
      if (!is.null(self$`zwischenholding_hinweis`)) {
        KonzernStatusObject[["zwischenholding_hinweis"]] <-
          self$`zwischenholding_hinweis`
      }
      return(KonzernStatusObject)
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
    #' Deserialize JSON string into an instance of KonzernStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`groessenbefreit`)) {
        self$`groessenbefreit` <- this_object$`groessenbefreit`
      }
      if (!is.null(this_object$`kapitalmarktorientiert`)) {
        self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      }
      if (!is.null(this_object$`konzernabschlusspflicht`)) {
        self$`konzernabschlusspflicht` <- this_object$`konzernabschlusspflicht`
      }
      if (!is.null(this_object$`missing_group_figures`)) {
        self$`missing_group_figures` <- this_object$`missing_group_figures`
      }
      if (!is.null(this_object$`mutterunternehmen`)) {
        self$`mutterunternehmen` <- this_object$`mutterunternehmen`
      }
      if (!is.null(this_object$`parent_name`)) {
        self$`parent_name` <- this_object$`parent_name`
      }
      if (!is.null(this_object$`parent_situs`)) {
        self$`parent_situs` <- this_object$`parent_situs`
      }
      if (!is.null(this_object$`participations`)) {
        self$`participations` <- ApiClient$new()$deserializeObj(this_object$`participations`, "array[KonzernBeteiligung]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`thresholds`)) {
        `thresholds_object` <- KonzernThresholds$new()
        `thresholds_object`$fromJSON(jsonlite::toJSON(this_object$`thresholds`, auto_unbox = TRUE, digits = NA))
        self$`thresholds` <- `thresholds_object`
      }
      if (!is.null(this_object$`year`)) {
        self$`year` <- this_object$`year`
      }
      if (!is.null(this_object$`zwischenholding_befreit`)) {
        self$`zwischenholding_befreit` <- this_object$`zwischenholding_befreit`
      }
      if (!is.null(this_object$`zwischenholding_hinweis`)) {
        self$`zwischenholding_hinweis` <- this_object$`zwischenholding_hinweis`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KonzernStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KonzernStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of KonzernStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`groessenbefreit` <- this_object$`groessenbefreit`
      self$`kapitalmarktorientiert` <- this_object$`kapitalmarktorientiert`
      self$`konzernabschlusspflicht` <- this_object$`konzernabschlusspflicht`
      self$`missing_group_figures` <- this_object$`missing_group_figures`
      self$`mutterunternehmen` <- this_object$`mutterunternehmen`
      self$`parent_name` <- this_object$`parent_name`
      self$`parent_situs` <- this_object$`parent_situs`
      self$`participations` <- ApiClient$new()$deserializeObj(this_object$`participations`, "array[KonzernBeteiligung]", loadNamespace("openapi"))
      self$`thresholds` <- KonzernThresholds$new()$fromJSON(jsonlite::toJSON(this_object$`thresholds`, auto_unbox = TRUE, digits = NA))
      self$`year` <- this_object$`year`
      self$`zwischenholding_befreit` <- this_object$`zwischenholding_befreit`
      self$`zwischenholding_hinweis` <- this_object$`zwischenholding_hinweis`
      self
    },

    #' @description
    #' Validate JSON input with respect to KonzernStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `groessenbefreit`
      if (!is.null(input_json$`groessenbefreit`)) {
        if (!(is.logical(input_json$`groessenbefreit`) && length(input_json$`groessenbefreit`) == 1)) {
          stop(paste("Error! Invalid data for `groessenbefreit`. Must be a boolean:", input_json$`groessenbefreit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `groessenbefreit` is missing."))
      }
      # check the required field `kapitalmarktorientiert`
      if (!is.null(input_json$`kapitalmarktorientiert`)) {
        if (!(is.logical(input_json$`kapitalmarktorientiert`) && length(input_json$`kapitalmarktorientiert`) == 1)) {
          stop(paste("Error! Invalid data for `kapitalmarktorientiert`. Must be a boolean:", input_json$`kapitalmarktorientiert`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `kapitalmarktorientiert` is missing."))
      }
      # check the required field `konzernabschlusspflicht`
      if (!is.null(input_json$`konzernabschlusspflicht`)) {
        if (!(is.logical(input_json$`konzernabschlusspflicht`) && length(input_json$`konzernabschlusspflicht`) == 1)) {
          stop(paste("Error! Invalid data for `konzernabschlusspflicht`. Must be a boolean:", input_json$`konzernabschlusspflicht`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `konzernabschlusspflicht` is missing."))
      }
      # check the required field `missing_group_figures`
      if (!is.null(input_json$`missing_group_figures`)) {
        if (!(is.logical(input_json$`missing_group_figures`) && length(input_json$`missing_group_figures`) == 1)) {
          stop(paste("Error! Invalid data for `missing_group_figures`. Must be a boolean:", input_json$`missing_group_figures`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `missing_group_figures` is missing."))
      }
      # check the required field `mutterunternehmen`
      if (!is.null(input_json$`mutterunternehmen`)) {
        if (!(is.logical(input_json$`mutterunternehmen`) && length(input_json$`mutterunternehmen`) == 1)) {
          stop(paste("Error! Invalid data for `mutterunternehmen`. Must be a boolean:", input_json$`mutterunternehmen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `mutterunternehmen` is missing."))
      }
      # check the required field `participations`
      if (!is.null(input_json$`participations`)) {
        stopifnot(is.vector(input_json$`participations`), length(input_json$`participations`) != 0)
        tmp <- sapply(input_json$`participations`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `participations` is missing."))
      }
      # check the required field `thresholds`
      if (!is.null(input_json$`thresholds`)) {
        stopifnot(R6::is.R6(input_json$`thresholds`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `thresholds` is missing."))
      }
      # check the required field `year`
      if (!is.null(input_json$`year`)) {
        if (!(is.numeric(input_json$`year`) && length(input_json$`year`) == 1)) {
          stop(paste("Error! Invalid data for `year`. Must be an integer:", input_json$`year`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `year` is missing."))
      }
      # check the required field `zwischenholding_befreit`
      if (!is.null(input_json$`zwischenholding_befreit`)) {
        if (!(is.logical(input_json$`zwischenholding_befreit`) && length(input_json$`zwischenholding_befreit`) == 1)) {
          stop(paste("Error! Invalid data for `zwischenholding_befreit`. Must be a boolean:", input_json$`zwischenholding_befreit`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KonzernStatus: the required field `zwischenholding_befreit` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KonzernStatus
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `groessenbefreit` is null
      if (is.null(self$`groessenbefreit`)) {
        return(FALSE)
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
        return(FALSE)
      }

      # check if the required `konzernabschlusspflicht` is null
      if (is.null(self$`konzernabschlusspflicht`)) {
        return(FALSE)
      }

      # check if the required `missing_group_figures` is null
      if (is.null(self$`missing_group_figures`)) {
        return(FALSE)
      }

      # check if the required `mutterunternehmen` is null
      if (is.null(self$`mutterunternehmen`)) {
        return(FALSE)
      }

      # check if the required `participations` is null
      if (is.null(self$`participations`)) {
        return(FALSE)
      }

      # check if the required `thresholds` is null
      if (is.null(self$`thresholds`)) {
        return(FALSE)
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        return(FALSE)
      }

      # check if the required `zwischenholding_befreit` is null
      if (is.null(self$`zwischenholding_befreit`)) {
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
      # check if the required `groessenbefreit` is null
      if (is.null(self$`groessenbefreit`)) {
        invalid_fields["groessenbefreit"] <- "Non-nullable required field `groessenbefreit` cannot be null."
      }

      # check if the required `kapitalmarktorientiert` is null
      if (is.null(self$`kapitalmarktorientiert`)) {
        invalid_fields["kapitalmarktorientiert"] <- "Non-nullable required field `kapitalmarktorientiert` cannot be null."
      }

      # check if the required `konzernabschlusspflicht` is null
      if (is.null(self$`konzernabschlusspflicht`)) {
        invalid_fields["konzernabschlusspflicht"] <- "Non-nullable required field `konzernabschlusspflicht` cannot be null."
      }

      # check if the required `missing_group_figures` is null
      if (is.null(self$`missing_group_figures`)) {
        invalid_fields["missing_group_figures"] <- "Non-nullable required field `missing_group_figures` cannot be null."
      }

      # check if the required `mutterunternehmen` is null
      if (is.null(self$`mutterunternehmen`)) {
        invalid_fields["mutterunternehmen"] <- "Non-nullable required field `mutterunternehmen` cannot be null."
      }

      # check if the required `participations` is null
      if (is.null(self$`participations`)) {
        invalid_fields["participations"] <- "Non-nullable required field `participations` cannot be null."
      }

      # check if the required `thresholds` is null
      if (is.null(self$`thresholds`)) {
        invalid_fields["thresholds"] <- "Non-nullable required field `thresholds` cannot be null."
      }

      # check if the required `year` is null
      if (is.null(self$`year`)) {
        invalid_fields["year"] <- "Non-nullable required field `year` cannot be null."
      }

      # check if the required `zwischenholding_befreit` is null
      if (is.null(self$`zwischenholding_befreit`)) {
        invalid_fields["zwischenholding_befreit"] <- "Non-nullable required field `zwischenholding_befreit` cannot be null."
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
# KonzernStatus$unlock()
#
## Below is an example to define the print function
# KonzernStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KonzernStatus$lock()

