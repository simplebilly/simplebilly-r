#' Create a new UstvaErgebnis
#'
#' @description
#' UstvaErgebnis Class
#'
#' @docType class
#' @title UstvaErgebnis
#' @description UstvaErgebnis Class
#' @format An \code{R6Class} generator object
#' @field bis  character
#' @field hinweis  character [optional]
#' @field ist_kleinunternehmer  character
#' @field kz_41  character
#' @field kz_43  character
#' @field kz_46  character
#' @field kz_47  character
#' @field kz_61  character
#' @field kz_66  character
#' @field kz_67  character
#' @field kz_81  character
#' @field kz_83  character
#' @field kz_84  character
#' @field kz_85  character
#' @field kz_86  character
#' @field kz_88  character
#' @field kz_89  character
#' @field kz_93  character
#' @field von  character
#' @field zahllast  character
#' @field zeitraum  character
#' @field zeitraum_typ  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UstvaErgebnis <- R6::R6Class(
  "UstvaErgebnis",
  public = list(
    `bis` = NULL,
    `hinweis` = NULL,
    `ist_kleinunternehmer` = NULL,
    `kz_41` = NULL,
    `kz_43` = NULL,
    `kz_46` = NULL,
    `kz_47` = NULL,
    `kz_61` = NULL,
    `kz_66` = NULL,
    `kz_67` = NULL,
    `kz_81` = NULL,
    `kz_83` = NULL,
    `kz_84` = NULL,
    `kz_85` = NULL,
    `kz_86` = NULL,
    `kz_88` = NULL,
    `kz_89` = NULL,
    `kz_93` = NULL,
    `von` = NULL,
    `zahllast` = NULL,
    `zeitraum` = NULL,
    `zeitraum_typ` = NULL,

    #' @description
    #' Initialize a new UstvaErgebnis class.
    #'
    #' @param bis bis
    #' @param ist_kleinunternehmer ist_kleinunternehmer
    #' @param kz_41 kz_41
    #' @param kz_43 kz_43
    #' @param kz_46 kz_46
    #' @param kz_47 kz_47
    #' @param kz_61 kz_61
    #' @param kz_66 kz_66
    #' @param kz_67 kz_67
    #' @param kz_81 kz_81
    #' @param kz_83 kz_83
    #' @param kz_84 kz_84
    #' @param kz_85 kz_85
    #' @param kz_86 kz_86
    #' @param kz_88 kz_88
    #' @param kz_89 kz_89
    #' @param kz_93 kz_93
    #' @param von von
    #' @param zahllast zahllast
    #' @param zeitraum zeitraum
    #' @param zeitraum_typ zeitraum_typ
    #' @param hinweis hinweis
    #' @param ... Other optional arguments.
    initialize = function(`bis`, `ist_kleinunternehmer`, `kz_41`, `kz_43`, `kz_46`, `kz_47`, `kz_61`, `kz_66`, `kz_67`, `kz_81`, `kz_83`, `kz_84`, `kz_85`, `kz_86`, `kz_88`, `kz_89`, `kz_93`, `von`, `zahllast`, `zeitraum`, `zeitraum_typ`, `hinweis` = NULL, ...) {
      if (!missing(`bis`)) {
        if (!(is.character(`bis`) && length(`bis`) == 1)) {
          stop(paste("Error! Invalid data for `bis`. Must be a string:", `bis`))
        }
        self$`bis` <- `bis`
      }
      if (!missing(`ist_kleinunternehmer`)) {
        if (!(is.logical(`ist_kleinunternehmer`) && length(`ist_kleinunternehmer`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kleinunternehmer`. Must be a boolean:", `ist_kleinunternehmer`))
        }
        self$`ist_kleinunternehmer` <- `ist_kleinunternehmer`
      }
      if (!missing(`kz_41`)) {
        if (!(is.character(`kz_41`) && length(`kz_41`) == 1)) {
          stop(paste("Error! Invalid data for `kz_41`. Must be a string:", `kz_41`))
        }
        self$`kz_41` <- `kz_41`
      }
      if (!missing(`kz_43`)) {
        if (!(is.character(`kz_43`) && length(`kz_43`) == 1)) {
          stop(paste("Error! Invalid data for `kz_43`. Must be a string:", `kz_43`))
        }
        self$`kz_43` <- `kz_43`
      }
      if (!missing(`kz_46`)) {
        if (!(is.character(`kz_46`) && length(`kz_46`) == 1)) {
          stop(paste("Error! Invalid data for `kz_46`. Must be a string:", `kz_46`))
        }
        self$`kz_46` <- `kz_46`
      }
      if (!missing(`kz_47`)) {
        if (!(is.character(`kz_47`) && length(`kz_47`) == 1)) {
          stop(paste("Error! Invalid data for `kz_47`. Must be a string:", `kz_47`))
        }
        self$`kz_47` <- `kz_47`
      }
      if (!missing(`kz_61`)) {
        if (!(is.character(`kz_61`) && length(`kz_61`) == 1)) {
          stop(paste("Error! Invalid data for `kz_61`. Must be a string:", `kz_61`))
        }
        self$`kz_61` <- `kz_61`
      }
      if (!missing(`kz_66`)) {
        if (!(is.character(`kz_66`) && length(`kz_66`) == 1)) {
          stop(paste("Error! Invalid data for `kz_66`. Must be a string:", `kz_66`))
        }
        self$`kz_66` <- `kz_66`
      }
      if (!missing(`kz_67`)) {
        if (!(is.character(`kz_67`) && length(`kz_67`) == 1)) {
          stop(paste("Error! Invalid data for `kz_67`. Must be a string:", `kz_67`))
        }
        self$`kz_67` <- `kz_67`
      }
      if (!missing(`kz_81`)) {
        if (!(is.character(`kz_81`) && length(`kz_81`) == 1)) {
          stop(paste("Error! Invalid data for `kz_81`. Must be a string:", `kz_81`))
        }
        self$`kz_81` <- `kz_81`
      }
      if (!missing(`kz_83`)) {
        if (!(is.character(`kz_83`) && length(`kz_83`) == 1)) {
          stop(paste("Error! Invalid data for `kz_83`. Must be a string:", `kz_83`))
        }
        self$`kz_83` <- `kz_83`
      }
      if (!missing(`kz_84`)) {
        if (!(is.character(`kz_84`) && length(`kz_84`) == 1)) {
          stop(paste("Error! Invalid data for `kz_84`. Must be a string:", `kz_84`))
        }
        self$`kz_84` <- `kz_84`
      }
      if (!missing(`kz_85`)) {
        if (!(is.character(`kz_85`) && length(`kz_85`) == 1)) {
          stop(paste("Error! Invalid data for `kz_85`. Must be a string:", `kz_85`))
        }
        self$`kz_85` <- `kz_85`
      }
      if (!missing(`kz_86`)) {
        if (!(is.character(`kz_86`) && length(`kz_86`) == 1)) {
          stop(paste("Error! Invalid data for `kz_86`. Must be a string:", `kz_86`))
        }
        self$`kz_86` <- `kz_86`
      }
      if (!missing(`kz_88`)) {
        if (!(is.character(`kz_88`) && length(`kz_88`) == 1)) {
          stop(paste("Error! Invalid data for `kz_88`. Must be a string:", `kz_88`))
        }
        self$`kz_88` <- `kz_88`
      }
      if (!missing(`kz_89`)) {
        if (!(is.character(`kz_89`) && length(`kz_89`) == 1)) {
          stop(paste("Error! Invalid data for `kz_89`. Must be a string:", `kz_89`))
        }
        self$`kz_89` <- `kz_89`
      }
      if (!missing(`kz_93`)) {
        if (!(is.character(`kz_93`) && length(`kz_93`) == 1)) {
          stop(paste("Error! Invalid data for `kz_93`. Must be a string:", `kz_93`))
        }
        self$`kz_93` <- `kz_93`
      }
      if (!missing(`von`)) {
        if (!(is.character(`von`) && length(`von`) == 1)) {
          stop(paste("Error! Invalid data for `von`. Must be a string:", `von`))
        }
        self$`von` <- `von`
      }
      if (!missing(`zahllast`)) {
        if (!(is.character(`zahllast`) && length(`zahllast`) == 1)) {
          stop(paste("Error! Invalid data for `zahllast`. Must be a string:", `zahllast`))
        }
        self$`zahllast` <- `zahllast`
      }
      if (!missing(`zeitraum`)) {
        if (!(is.character(`zeitraum`) && length(`zeitraum`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum`. Must be a string:", `zeitraum`))
        }
        self$`zeitraum` <- `zeitraum`
      }
      if (!missing(`zeitraum_typ`)) {
        if (!(is.character(`zeitraum_typ`) && length(`zeitraum_typ`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_typ`. Must be a string:", `zeitraum_typ`))
        }
        self$`zeitraum_typ` <- `zeitraum_typ`
      }
      if (!is.null(`hinweis`)) {
        if (!(is.character(`hinweis`) && length(`hinweis`) == 1)) {
          stop(paste("Error! Invalid data for `hinweis`. Must be a string:", `hinweis`))
        }
        self$`hinweis` <- `hinweis`
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
    #' @return UstvaErgebnis as a base R list.
    #' @examples
    #' # convert array of UstvaErgebnis (x) to a data frame
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
    #' Convert UstvaErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UstvaErgebnisObject <- list()
      if (!is.null(self$`bis`)) {
        UstvaErgebnisObject[["bis"]] <-
          self$`bis`
      }
      if (!is.null(self$`hinweis`)) {
        UstvaErgebnisObject[["hinweis"]] <-
          self$`hinweis`
      }
      if (!is.null(self$`ist_kleinunternehmer`)) {
        UstvaErgebnisObject[["ist_kleinunternehmer"]] <-
          self$`ist_kleinunternehmer`
      }
      if (!is.null(self$`kz_41`)) {
        UstvaErgebnisObject[["kz_41"]] <-
          self$`kz_41`
      }
      if (!is.null(self$`kz_43`)) {
        UstvaErgebnisObject[["kz_43"]] <-
          self$`kz_43`
      }
      if (!is.null(self$`kz_46`)) {
        UstvaErgebnisObject[["kz_46"]] <-
          self$`kz_46`
      }
      if (!is.null(self$`kz_47`)) {
        UstvaErgebnisObject[["kz_47"]] <-
          self$`kz_47`
      }
      if (!is.null(self$`kz_61`)) {
        UstvaErgebnisObject[["kz_61"]] <-
          self$`kz_61`
      }
      if (!is.null(self$`kz_66`)) {
        UstvaErgebnisObject[["kz_66"]] <-
          self$`kz_66`
      }
      if (!is.null(self$`kz_67`)) {
        UstvaErgebnisObject[["kz_67"]] <-
          self$`kz_67`
      }
      if (!is.null(self$`kz_81`)) {
        UstvaErgebnisObject[["kz_81"]] <-
          self$`kz_81`
      }
      if (!is.null(self$`kz_83`)) {
        UstvaErgebnisObject[["kz_83"]] <-
          self$`kz_83`
      }
      if (!is.null(self$`kz_84`)) {
        UstvaErgebnisObject[["kz_84"]] <-
          self$`kz_84`
      }
      if (!is.null(self$`kz_85`)) {
        UstvaErgebnisObject[["kz_85"]] <-
          self$`kz_85`
      }
      if (!is.null(self$`kz_86`)) {
        UstvaErgebnisObject[["kz_86"]] <-
          self$`kz_86`
      }
      if (!is.null(self$`kz_88`)) {
        UstvaErgebnisObject[["kz_88"]] <-
          self$`kz_88`
      }
      if (!is.null(self$`kz_89`)) {
        UstvaErgebnisObject[["kz_89"]] <-
          self$`kz_89`
      }
      if (!is.null(self$`kz_93`)) {
        UstvaErgebnisObject[["kz_93"]] <-
          self$`kz_93`
      }
      if (!is.null(self$`von`)) {
        UstvaErgebnisObject[["von"]] <-
          self$`von`
      }
      if (!is.null(self$`zahllast`)) {
        UstvaErgebnisObject[["zahllast"]] <-
          self$`zahllast`
      }
      if (!is.null(self$`zeitraum`)) {
        UstvaErgebnisObject[["zeitraum"]] <-
          self$`zeitraum`
      }
      if (!is.null(self$`zeitraum_typ`)) {
        UstvaErgebnisObject[["zeitraum_typ"]] <-
          self$`zeitraum_typ`
      }
      return(UstvaErgebnisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UstvaErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of UstvaErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bis`)) {
        self$`bis` <- this_object$`bis`
      }
      if (!is.null(this_object$`hinweis`)) {
        self$`hinweis` <- this_object$`hinweis`
      }
      if (!is.null(this_object$`ist_kleinunternehmer`)) {
        self$`ist_kleinunternehmer` <- this_object$`ist_kleinunternehmer`
      }
      if (!is.null(this_object$`kz_41`)) {
        self$`kz_41` <- this_object$`kz_41`
      }
      if (!is.null(this_object$`kz_43`)) {
        self$`kz_43` <- this_object$`kz_43`
      }
      if (!is.null(this_object$`kz_46`)) {
        self$`kz_46` <- this_object$`kz_46`
      }
      if (!is.null(this_object$`kz_47`)) {
        self$`kz_47` <- this_object$`kz_47`
      }
      if (!is.null(this_object$`kz_61`)) {
        self$`kz_61` <- this_object$`kz_61`
      }
      if (!is.null(this_object$`kz_66`)) {
        self$`kz_66` <- this_object$`kz_66`
      }
      if (!is.null(this_object$`kz_67`)) {
        self$`kz_67` <- this_object$`kz_67`
      }
      if (!is.null(this_object$`kz_81`)) {
        self$`kz_81` <- this_object$`kz_81`
      }
      if (!is.null(this_object$`kz_83`)) {
        self$`kz_83` <- this_object$`kz_83`
      }
      if (!is.null(this_object$`kz_84`)) {
        self$`kz_84` <- this_object$`kz_84`
      }
      if (!is.null(this_object$`kz_85`)) {
        self$`kz_85` <- this_object$`kz_85`
      }
      if (!is.null(this_object$`kz_86`)) {
        self$`kz_86` <- this_object$`kz_86`
      }
      if (!is.null(this_object$`kz_88`)) {
        self$`kz_88` <- this_object$`kz_88`
      }
      if (!is.null(this_object$`kz_89`)) {
        self$`kz_89` <- this_object$`kz_89`
      }
      if (!is.null(this_object$`kz_93`)) {
        self$`kz_93` <- this_object$`kz_93`
      }
      if (!is.null(this_object$`von`)) {
        self$`von` <- this_object$`von`
      }
      if (!is.null(this_object$`zahllast`)) {
        self$`zahllast` <- this_object$`zahllast`
      }
      if (!is.null(this_object$`zeitraum`)) {
        self$`zeitraum` <- this_object$`zeitraum`
      }
      if (!is.null(this_object$`zeitraum_typ`)) {
        self$`zeitraum_typ` <- this_object$`zeitraum_typ`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UstvaErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UstvaErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of UstvaErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bis` <- this_object$`bis`
      self$`hinweis` <- this_object$`hinweis`
      self$`ist_kleinunternehmer` <- this_object$`ist_kleinunternehmer`
      self$`kz_41` <- this_object$`kz_41`
      self$`kz_43` <- this_object$`kz_43`
      self$`kz_46` <- this_object$`kz_46`
      self$`kz_47` <- this_object$`kz_47`
      self$`kz_61` <- this_object$`kz_61`
      self$`kz_66` <- this_object$`kz_66`
      self$`kz_67` <- this_object$`kz_67`
      self$`kz_81` <- this_object$`kz_81`
      self$`kz_83` <- this_object$`kz_83`
      self$`kz_84` <- this_object$`kz_84`
      self$`kz_85` <- this_object$`kz_85`
      self$`kz_86` <- this_object$`kz_86`
      self$`kz_88` <- this_object$`kz_88`
      self$`kz_89` <- this_object$`kz_89`
      self$`kz_93` <- this_object$`kz_93`
      self$`von` <- this_object$`von`
      self$`zahllast` <- this_object$`zahllast`
      self$`zeitraum` <- this_object$`zeitraum`
      self$`zeitraum_typ` <- this_object$`zeitraum_typ`
      self
    },

    #' @description
    #' Validate JSON input with respect to UstvaErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bis`
      if (!is.null(input_json$`bis`)) {
        if (!(is.character(input_json$`bis`) && length(input_json$`bis`) == 1)) {
          stop(paste("Error! Invalid data for `bis`. Must be a string:", input_json$`bis`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `bis` is missing."))
      }
      # check the required field `ist_kleinunternehmer`
      if (!is.null(input_json$`ist_kleinunternehmer`)) {
        if (!(is.logical(input_json$`ist_kleinunternehmer`) && length(input_json$`ist_kleinunternehmer`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kleinunternehmer`. Must be a boolean:", input_json$`ist_kleinunternehmer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `ist_kleinunternehmer` is missing."))
      }
      # check the required field `kz_41`
      if (!is.null(input_json$`kz_41`)) {
        if (!(is.character(input_json$`kz_41`) && length(input_json$`kz_41`) == 1)) {
          stop(paste("Error! Invalid data for `kz_41`. Must be a string:", input_json$`kz_41`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_41` is missing."))
      }
      # check the required field `kz_43`
      if (!is.null(input_json$`kz_43`)) {
        if (!(is.character(input_json$`kz_43`) && length(input_json$`kz_43`) == 1)) {
          stop(paste("Error! Invalid data for `kz_43`. Must be a string:", input_json$`kz_43`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_43` is missing."))
      }
      # check the required field `kz_46`
      if (!is.null(input_json$`kz_46`)) {
        if (!(is.character(input_json$`kz_46`) && length(input_json$`kz_46`) == 1)) {
          stop(paste("Error! Invalid data for `kz_46`. Must be a string:", input_json$`kz_46`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_46` is missing."))
      }
      # check the required field `kz_47`
      if (!is.null(input_json$`kz_47`)) {
        if (!(is.character(input_json$`kz_47`) && length(input_json$`kz_47`) == 1)) {
          stop(paste("Error! Invalid data for `kz_47`. Must be a string:", input_json$`kz_47`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_47` is missing."))
      }
      # check the required field `kz_61`
      if (!is.null(input_json$`kz_61`)) {
        if (!(is.character(input_json$`kz_61`) && length(input_json$`kz_61`) == 1)) {
          stop(paste("Error! Invalid data for `kz_61`. Must be a string:", input_json$`kz_61`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_61` is missing."))
      }
      # check the required field `kz_66`
      if (!is.null(input_json$`kz_66`)) {
        if (!(is.character(input_json$`kz_66`) && length(input_json$`kz_66`) == 1)) {
          stop(paste("Error! Invalid data for `kz_66`. Must be a string:", input_json$`kz_66`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_66` is missing."))
      }
      # check the required field `kz_67`
      if (!is.null(input_json$`kz_67`)) {
        if (!(is.character(input_json$`kz_67`) && length(input_json$`kz_67`) == 1)) {
          stop(paste("Error! Invalid data for `kz_67`. Must be a string:", input_json$`kz_67`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_67` is missing."))
      }
      # check the required field `kz_81`
      if (!is.null(input_json$`kz_81`)) {
        if (!(is.character(input_json$`kz_81`) && length(input_json$`kz_81`) == 1)) {
          stop(paste("Error! Invalid data for `kz_81`. Must be a string:", input_json$`kz_81`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_81` is missing."))
      }
      # check the required field `kz_83`
      if (!is.null(input_json$`kz_83`)) {
        if (!(is.character(input_json$`kz_83`) && length(input_json$`kz_83`) == 1)) {
          stop(paste("Error! Invalid data for `kz_83`. Must be a string:", input_json$`kz_83`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_83` is missing."))
      }
      # check the required field `kz_84`
      if (!is.null(input_json$`kz_84`)) {
        if (!(is.character(input_json$`kz_84`) && length(input_json$`kz_84`) == 1)) {
          stop(paste("Error! Invalid data for `kz_84`. Must be a string:", input_json$`kz_84`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_84` is missing."))
      }
      # check the required field `kz_85`
      if (!is.null(input_json$`kz_85`)) {
        if (!(is.character(input_json$`kz_85`) && length(input_json$`kz_85`) == 1)) {
          stop(paste("Error! Invalid data for `kz_85`. Must be a string:", input_json$`kz_85`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_85` is missing."))
      }
      # check the required field `kz_86`
      if (!is.null(input_json$`kz_86`)) {
        if (!(is.character(input_json$`kz_86`) && length(input_json$`kz_86`) == 1)) {
          stop(paste("Error! Invalid data for `kz_86`. Must be a string:", input_json$`kz_86`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_86` is missing."))
      }
      # check the required field `kz_88`
      if (!is.null(input_json$`kz_88`)) {
        if (!(is.character(input_json$`kz_88`) && length(input_json$`kz_88`) == 1)) {
          stop(paste("Error! Invalid data for `kz_88`. Must be a string:", input_json$`kz_88`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_88` is missing."))
      }
      # check the required field `kz_89`
      if (!is.null(input_json$`kz_89`)) {
        if (!(is.character(input_json$`kz_89`) && length(input_json$`kz_89`) == 1)) {
          stop(paste("Error! Invalid data for `kz_89`. Must be a string:", input_json$`kz_89`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_89` is missing."))
      }
      # check the required field `kz_93`
      if (!is.null(input_json$`kz_93`)) {
        if (!(is.character(input_json$`kz_93`) && length(input_json$`kz_93`) == 1)) {
          stop(paste("Error! Invalid data for `kz_93`. Must be a string:", input_json$`kz_93`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `kz_93` is missing."))
      }
      # check the required field `von`
      if (!is.null(input_json$`von`)) {
        if (!(is.character(input_json$`von`) && length(input_json$`von`) == 1)) {
          stop(paste("Error! Invalid data for `von`. Must be a string:", input_json$`von`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `von` is missing."))
      }
      # check the required field `zahllast`
      if (!is.null(input_json$`zahllast`)) {
        if (!(is.character(input_json$`zahllast`) && length(input_json$`zahllast`) == 1)) {
          stop(paste("Error! Invalid data for `zahllast`. Must be a string:", input_json$`zahllast`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `zahllast` is missing."))
      }
      # check the required field `zeitraum`
      if (!is.null(input_json$`zeitraum`)) {
        if (!(is.character(input_json$`zeitraum`) && length(input_json$`zeitraum`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum`. Must be a string:", input_json$`zeitraum`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `zeitraum` is missing."))
      }
      # check the required field `zeitraum_typ`
      if (!is.null(input_json$`zeitraum_typ`)) {
        if (!(is.character(input_json$`zeitraum_typ`) && length(input_json$`zeitraum_typ`) == 1)) {
          stop(paste("Error! Invalid data for `zeitraum_typ`. Must be a string:", input_json$`zeitraum_typ`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UstvaErgebnis: the required field `zeitraum_typ` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UstvaErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bis` is null
      if (is.null(self$`bis`)) {
        return(FALSE)
      }

      # check if the required `ist_kleinunternehmer` is null
      if (is.null(self$`ist_kleinunternehmer`)) {
        return(FALSE)
      }

      # check if the required `kz_41` is null
      if (is.null(self$`kz_41`)) {
        return(FALSE)
      }

      # check if the required `kz_43` is null
      if (is.null(self$`kz_43`)) {
        return(FALSE)
      }

      # check if the required `kz_46` is null
      if (is.null(self$`kz_46`)) {
        return(FALSE)
      }

      # check if the required `kz_47` is null
      if (is.null(self$`kz_47`)) {
        return(FALSE)
      }

      # check if the required `kz_61` is null
      if (is.null(self$`kz_61`)) {
        return(FALSE)
      }

      # check if the required `kz_66` is null
      if (is.null(self$`kz_66`)) {
        return(FALSE)
      }

      # check if the required `kz_67` is null
      if (is.null(self$`kz_67`)) {
        return(FALSE)
      }

      # check if the required `kz_81` is null
      if (is.null(self$`kz_81`)) {
        return(FALSE)
      }

      # check if the required `kz_83` is null
      if (is.null(self$`kz_83`)) {
        return(FALSE)
      }

      # check if the required `kz_84` is null
      if (is.null(self$`kz_84`)) {
        return(FALSE)
      }

      # check if the required `kz_85` is null
      if (is.null(self$`kz_85`)) {
        return(FALSE)
      }

      # check if the required `kz_86` is null
      if (is.null(self$`kz_86`)) {
        return(FALSE)
      }

      # check if the required `kz_88` is null
      if (is.null(self$`kz_88`)) {
        return(FALSE)
      }

      # check if the required `kz_89` is null
      if (is.null(self$`kz_89`)) {
        return(FALSE)
      }

      # check if the required `kz_93` is null
      if (is.null(self$`kz_93`)) {
        return(FALSE)
      }

      # check if the required `von` is null
      if (is.null(self$`von`)) {
        return(FALSE)
      }

      # check if the required `zahllast` is null
      if (is.null(self$`zahllast`)) {
        return(FALSE)
      }

      # check if the required `zeitraum` is null
      if (is.null(self$`zeitraum`)) {
        return(FALSE)
      }

      # check if the required `zeitraum_typ` is null
      if (is.null(self$`zeitraum_typ`)) {
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
      # check if the required `bis` is null
      if (is.null(self$`bis`)) {
        invalid_fields["bis"] <- "Non-nullable required field `bis` cannot be null."
      }

      # check if the required `ist_kleinunternehmer` is null
      if (is.null(self$`ist_kleinunternehmer`)) {
        invalid_fields["ist_kleinunternehmer"] <- "Non-nullable required field `ist_kleinunternehmer` cannot be null."
      }

      # check if the required `kz_41` is null
      if (is.null(self$`kz_41`)) {
        invalid_fields["kz_41"] <- "Non-nullable required field `kz_41` cannot be null."
      }

      # check if the required `kz_43` is null
      if (is.null(self$`kz_43`)) {
        invalid_fields["kz_43"] <- "Non-nullable required field `kz_43` cannot be null."
      }

      # check if the required `kz_46` is null
      if (is.null(self$`kz_46`)) {
        invalid_fields["kz_46"] <- "Non-nullable required field `kz_46` cannot be null."
      }

      # check if the required `kz_47` is null
      if (is.null(self$`kz_47`)) {
        invalid_fields["kz_47"] <- "Non-nullable required field `kz_47` cannot be null."
      }

      # check if the required `kz_61` is null
      if (is.null(self$`kz_61`)) {
        invalid_fields["kz_61"] <- "Non-nullable required field `kz_61` cannot be null."
      }

      # check if the required `kz_66` is null
      if (is.null(self$`kz_66`)) {
        invalid_fields["kz_66"] <- "Non-nullable required field `kz_66` cannot be null."
      }

      # check if the required `kz_67` is null
      if (is.null(self$`kz_67`)) {
        invalid_fields["kz_67"] <- "Non-nullable required field `kz_67` cannot be null."
      }

      # check if the required `kz_81` is null
      if (is.null(self$`kz_81`)) {
        invalid_fields["kz_81"] <- "Non-nullable required field `kz_81` cannot be null."
      }

      # check if the required `kz_83` is null
      if (is.null(self$`kz_83`)) {
        invalid_fields["kz_83"] <- "Non-nullable required field `kz_83` cannot be null."
      }

      # check if the required `kz_84` is null
      if (is.null(self$`kz_84`)) {
        invalid_fields["kz_84"] <- "Non-nullable required field `kz_84` cannot be null."
      }

      # check if the required `kz_85` is null
      if (is.null(self$`kz_85`)) {
        invalid_fields["kz_85"] <- "Non-nullable required field `kz_85` cannot be null."
      }

      # check if the required `kz_86` is null
      if (is.null(self$`kz_86`)) {
        invalid_fields["kz_86"] <- "Non-nullable required field `kz_86` cannot be null."
      }

      # check if the required `kz_88` is null
      if (is.null(self$`kz_88`)) {
        invalid_fields["kz_88"] <- "Non-nullable required field `kz_88` cannot be null."
      }

      # check if the required `kz_89` is null
      if (is.null(self$`kz_89`)) {
        invalid_fields["kz_89"] <- "Non-nullable required field `kz_89` cannot be null."
      }

      # check if the required `kz_93` is null
      if (is.null(self$`kz_93`)) {
        invalid_fields["kz_93"] <- "Non-nullable required field `kz_93` cannot be null."
      }

      # check if the required `von` is null
      if (is.null(self$`von`)) {
        invalid_fields["von"] <- "Non-nullable required field `von` cannot be null."
      }

      # check if the required `zahllast` is null
      if (is.null(self$`zahllast`)) {
        invalid_fields["zahllast"] <- "Non-nullable required field `zahllast` cannot be null."
      }

      # check if the required `zeitraum` is null
      if (is.null(self$`zeitraum`)) {
        invalid_fields["zeitraum"] <- "Non-nullable required field `zeitraum` cannot be null."
      }

      # check if the required `zeitraum_typ` is null
      if (is.null(self$`zeitraum_typ`)) {
        invalid_fields["zeitraum_typ"] <- "Non-nullable required field `zeitraum_typ` cannot be null."
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
# UstvaErgebnis$unlock()
#
## Below is an example to define the print function
# UstvaErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UstvaErgebnis$lock()

