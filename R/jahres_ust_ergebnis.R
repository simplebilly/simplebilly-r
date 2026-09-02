#' Create a new JahresUstErgebnis
#'
#' @description
#' JahresUstErgebnis Class
#'
#' @docType class
#' @title JahresUstErgebnis
#' @description JahresUstErgebnis Class
#' @format An \code{R6Class} generator object
#' @field bis  character
#' @field gespeicherte_perioden  integer
#' @field hat_ig_transaktionen  character
#' @field ist_kleinunternehmer  character
#' @field jahr  integer
#' @field kz_41  character
#' @field kz_43  character
#' @field kz_46  character
#' @field kz_47  character
#' @field kz_48  character
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
#' @field restschuld  character
#' @field summe_vorauszahlungen  character
#' @field von  character
#' @field zahllast  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
JahresUstErgebnis <- R6::R6Class(
  "JahresUstErgebnis",
  public = list(
    `bis` = NULL,
    `gespeicherte_perioden` = NULL,
    `hat_ig_transaktionen` = NULL,
    `ist_kleinunternehmer` = NULL,
    `jahr` = NULL,
    `kz_41` = NULL,
    `kz_43` = NULL,
    `kz_46` = NULL,
    `kz_47` = NULL,
    `kz_48` = NULL,
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
    `restschuld` = NULL,
    `summe_vorauszahlungen` = NULL,
    `von` = NULL,
    `zahllast` = NULL,

    #' @description
    #' Initialize a new JahresUstErgebnis class.
    #'
    #' @param bis bis
    #' @param gespeicherte_perioden gespeicherte_perioden
    #' @param hat_ig_transaktionen hat_ig_transaktionen
    #' @param ist_kleinunternehmer ist_kleinunternehmer
    #' @param jahr jahr
    #' @param kz_41 kz_41
    #' @param kz_43 kz_43
    #' @param kz_46 kz_46
    #' @param kz_47 kz_47
    #' @param kz_48 kz_48
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
    #' @param restschuld restschuld
    #' @param summe_vorauszahlungen summe_vorauszahlungen
    #' @param von von
    #' @param zahllast zahllast
    #' @param ... Other optional arguments.
    initialize = function(`bis`, `gespeicherte_perioden`, `hat_ig_transaktionen`, `ist_kleinunternehmer`, `jahr`, `kz_41`, `kz_43`, `kz_46`, `kz_47`, `kz_48`, `kz_61`, `kz_66`, `kz_67`, `kz_81`, `kz_83`, `kz_84`, `kz_85`, `kz_86`, `kz_88`, `kz_89`, `kz_93`, `restschuld`, `summe_vorauszahlungen`, `von`, `zahllast`, ...) {
      if (!missing(`bis`)) {
        if (!(is.character(`bis`) && length(`bis`) == 1)) {
          stop(paste("Error! Invalid data for `bis`. Must be a string:", `bis`))
        }
        self$`bis` <- `bis`
      }
      if (!missing(`gespeicherte_perioden`)) {
        if (!(is.numeric(`gespeicherte_perioden`) && length(`gespeicherte_perioden`) == 1)) {
          stop(paste("Error! Invalid data for `gespeicherte_perioden`. Must be an integer:", `gespeicherte_perioden`))
        }
        self$`gespeicherte_perioden` <- `gespeicherte_perioden`
      }
      if (!missing(`hat_ig_transaktionen`)) {
        if (!(is.logical(`hat_ig_transaktionen`) && length(`hat_ig_transaktionen`) == 1)) {
          stop(paste("Error! Invalid data for `hat_ig_transaktionen`. Must be a boolean:", `hat_ig_transaktionen`))
        }
        self$`hat_ig_transaktionen` <- `hat_ig_transaktionen`
      }
      if (!missing(`ist_kleinunternehmer`)) {
        if (!(is.logical(`ist_kleinunternehmer`) && length(`ist_kleinunternehmer`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kleinunternehmer`. Must be a boolean:", `ist_kleinunternehmer`))
        }
        self$`ist_kleinunternehmer` <- `ist_kleinunternehmer`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
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
      if (!missing(`kz_48`)) {
        if (!(is.character(`kz_48`) && length(`kz_48`) == 1)) {
          stop(paste("Error! Invalid data for `kz_48`. Must be a string:", `kz_48`))
        }
        self$`kz_48` <- `kz_48`
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
      if (!missing(`restschuld`)) {
        if (!(is.character(`restschuld`) && length(`restschuld`) == 1)) {
          stop(paste("Error! Invalid data for `restschuld`. Must be a string:", `restschuld`))
        }
        self$`restschuld` <- `restschuld`
      }
      if (!missing(`summe_vorauszahlungen`)) {
        if (!(is.character(`summe_vorauszahlungen`) && length(`summe_vorauszahlungen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_vorauszahlungen`. Must be a string:", `summe_vorauszahlungen`))
        }
        self$`summe_vorauszahlungen` <- `summe_vorauszahlungen`
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
    #' @return JahresUstErgebnis as a base R list.
    #' @examples
    #' # convert array of JahresUstErgebnis (x) to a data frame
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
    #' Convert JahresUstErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      JahresUstErgebnisObject <- list()
      if (!is.null(self$`bis`)) {
        JahresUstErgebnisObject[["bis"]] <-
          self$`bis`
      }
      if (!is.null(self$`gespeicherte_perioden`)) {
        JahresUstErgebnisObject[["gespeicherte_perioden"]] <-
          self$`gespeicherte_perioden`
      }
      if (!is.null(self$`hat_ig_transaktionen`)) {
        JahresUstErgebnisObject[["hat_ig_transaktionen"]] <-
          self$`hat_ig_transaktionen`
      }
      if (!is.null(self$`ist_kleinunternehmer`)) {
        JahresUstErgebnisObject[["ist_kleinunternehmer"]] <-
          self$`ist_kleinunternehmer`
      }
      if (!is.null(self$`jahr`)) {
        JahresUstErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`kz_41`)) {
        JahresUstErgebnisObject[["kz_41"]] <-
          self$`kz_41`
      }
      if (!is.null(self$`kz_43`)) {
        JahresUstErgebnisObject[["kz_43"]] <-
          self$`kz_43`
      }
      if (!is.null(self$`kz_46`)) {
        JahresUstErgebnisObject[["kz_46"]] <-
          self$`kz_46`
      }
      if (!is.null(self$`kz_47`)) {
        JahresUstErgebnisObject[["kz_47"]] <-
          self$`kz_47`
      }
      if (!is.null(self$`kz_48`)) {
        JahresUstErgebnisObject[["kz_48"]] <-
          self$`kz_48`
      }
      if (!is.null(self$`kz_61`)) {
        JahresUstErgebnisObject[["kz_61"]] <-
          self$`kz_61`
      }
      if (!is.null(self$`kz_66`)) {
        JahresUstErgebnisObject[["kz_66"]] <-
          self$`kz_66`
      }
      if (!is.null(self$`kz_67`)) {
        JahresUstErgebnisObject[["kz_67"]] <-
          self$`kz_67`
      }
      if (!is.null(self$`kz_81`)) {
        JahresUstErgebnisObject[["kz_81"]] <-
          self$`kz_81`
      }
      if (!is.null(self$`kz_83`)) {
        JahresUstErgebnisObject[["kz_83"]] <-
          self$`kz_83`
      }
      if (!is.null(self$`kz_84`)) {
        JahresUstErgebnisObject[["kz_84"]] <-
          self$`kz_84`
      }
      if (!is.null(self$`kz_85`)) {
        JahresUstErgebnisObject[["kz_85"]] <-
          self$`kz_85`
      }
      if (!is.null(self$`kz_86`)) {
        JahresUstErgebnisObject[["kz_86"]] <-
          self$`kz_86`
      }
      if (!is.null(self$`kz_88`)) {
        JahresUstErgebnisObject[["kz_88"]] <-
          self$`kz_88`
      }
      if (!is.null(self$`kz_89`)) {
        JahresUstErgebnisObject[["kz_89"]] <-
          self$`kz_89`
      }
      if (!is.null(self$`kz_93`)) {
        JahresUstErgebnisObject[["kz_93"]] <-
          self$`kz_93`
      }
      if (!is.null(self$`restschuld`)) {
        JahresUstErgebnisObject[["restschuld"]] <-
          self$`restschuld`
      }
      if (!is.null(self$`summe_vorauszahlungen`)) {
        JahresUstErgebnisObject[["summe_vorauszahlungen"]] <-
          self$`summe_vorauszahlungen`
      }
      if (!is.null(self$`von`)) {
        JahresUstErgebnisObject[["von"]] <-
          self$`von`
      }
      if (!is.null(self$`zahllast`)) {
        JahresUstErgebnisObject[["zahllast"]] <-
          self$`zahllast`
      }
      return(JahresUstErgebnisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of JahresUstErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of JahresUstErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bis`)) {
        self$`bis` <- this_object$`bis`
      }
      if (!is.null(this_object$`gespeicherte_perioden`)) {
        self$`gespeicherte_perioden` <- this_object$`gespeicherte_perioden`
      }
      if (!is.null(this_object$`hat_ig_transaktionen`)) {
        self$`hat_ig_transaktionen` <- this_object$`hat_ig_transaktionen`
      }
      if (!is.null(this_object$`ist_kleinunternehmer`)) {
        self$`ist_kleinunternehmer` <- this_object$`ist_kleinunternehmer`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
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
      if (!is.null(this_object$`kz_48`)) {
        self$`kz_48` <- this_object$`kz_48`
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
      if (!is.null(this_object$`restschuld`)) {
        self$`restschuld` <- this_object$`restschuld`
      }
      if (!is.null(this_object$`summe_vorauszahlungen`)) {
        self$`summe_vorauszahlungen` <- this_object$`summe_vorauszahlungen`
      }
      if (!is.null(this_object$`von`)) {
        self$`von` <- this_object$`von`
      }
      if (!is.null(this_object$`zahllast`)) {
        self$`zahllast` <- this_object$`zahllast`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JahresUstErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of JahresUstErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of JahresUstErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bis` <- this_object$`bis`
      self$`gespeicherte_perioden` <- this_object$`gespeicherte_perioden`
      self$`hat_ig_transaktionen` <- this_object$`hat_ig_transaktionen`
      self$`ist_kleinunternehmer` <- this_object$`ist_kleinunternehmer`
      self$`jahr` <- this_object$`jahr`
      self$`kz_41` <- this_object$`kz_41`
      self$`kz_43` <- this_object$`kz_43`
      self$`kz_46` <- this_object$`kz_46`
      self$`kz_47` <- this_object$`kz_47`
      self$`kz_48` <- this_object$`kz_48`
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
      self$`restschuld` <- this_object$`restschuld`
      self$`summe_vorauszahlungen` <- this_object$`summe_vorauszahlungen`
      self$`von` <- this_object$`von`
      self$`zahllast` <- this_object$`zahllast`
      self
    },

    #' @description
    #' Validate JSON input with respect to JahresUstErgebnis and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `bis` is missing."))
      }
      # check the required field `gespeicherte_perioden`
      if (!is.null(input_json$`gespeicherte_perioden`)) {
        if (!(is.numeric(input_json$`gespeicherte_perioden`) && length(input_json$`gespeicherte_perioden`) == 1)) {
          stop(paste("Error! Invalid data for `gespeicherte_perioden`. Must be an integer:", input_json$`gespeicherte_perioden`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `gespeicherte_perioden` is missing."))
      }
      # check the required field `hat_ig_transaktionen`
      if (!is.null(input_json$`hat_ig_transaktionen`)) {
        if (!(is.logical(input_json$`hat_ig_transaktionen`) && length(input_json$`hat_ig_transaktionen`) == 1)) {
          stop(paste("Error! Invalid data for `hat_ig_transaktionen`. Must be a boolean:", input_json$`hat_ig_transaktionen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `hat_ig_transaktionen` is missing."))
      }
      # check the required field `ist_kleinunternehmer`
      if (!is.null(input_json$`ist_kleinunternehmer`)) {
        if (!(is.logical(input_json$`ist_kleinunternehmer`) && length(input_json$`ist_kleinunternehmer`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kleinunternehmer`. Must be a boolean:", input_json$`ist_kleinunternehmer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `ist_kleinunternehmer` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `kz_41`
      if (!is.null(input_json$`kz_41`)) {
        if (!(is.character(input_json$`kz_41`) && length(input_json$`kz_41`) == 1)) {
          stop(paste("Error! Invalid data for `kz_41`. Must be a string:", input_json$`kz_41`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_41` is missing."))
      }
      # check the required field `kz_43`
      if (!is.null(input_json$`kz_43`)) {
        if (!(is.character(input_json$`kz_43`) && length(input_json$`kz_43`) == 1)) {
          stop(paste("Error! Invalid data for `kz_43`. Must be a string:", input_json$`kz_43`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_43` is missing."))
      }
      # check the required field `kz_46`
      if (!is.null(input_json$`kz_46`)) {
        if (!(is.character(input_json$`kz_46`) && length(input_json$`kz_46`) == 1)) {
          stop(paste("Error! Invalid data for `kz_46`. Must be a string:", input_json$`kz_46`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_46` is missing."))
      }
      # check the required field `kz_47`
      if (!is.null(input_json$`kz_47`)) {
        if (!(is.character(input_json$`kz_47`) && length(input_json$`kz_47`) == 1)) {
          stop(paste("Error! Invalid data for `kz_47`. Must be a string:", input_json$`kz_47`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_47` is missing."))
      }
      # check the required field `kz_48`
      if (!is.null(input_json$`kz_48`)) {
        if (!(is.character(input_json$`kz_48`) && length(input_json$`kz_48`) == 1)) {
          stop(paste("Error! Invalid data for `kz_48`. Must be a string:", input_json$`kz_48`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_48` is missing."))
      }
      # check the required field `kz_61`
      if (!is.null(input_json$`kz_61`)) {
        if (!(is.character(input_json$`kz_61`) && length(input_json$`kz_61`) == 1)) {
          stop(paste("Error! Invalid data for `kz_61`. Must be a string:", input_json$`kz_61`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_61` is missing."))
      }
      # check the required field `kz_66`
      if (!is.null(input_json$`kz_66`)) {
        if (!(is.character(input_json$`kz_66`) && length(input_json$`kz_66`) == 1)) {
          stop(paste("Error! Invalid data for `kz_66`. Must be a string:", input_json$`kz_66`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_66` is missing."))
      }
      # check the required field `kz_67`
      if (!is.null(input_json$`kz_67`)) {
        if (!(is.character(input_json$`kz_67`) && length(input_json$`kz_67`) == 1)) {
          stop(paste("Error! Invalid data for `kz_67`. Must be a string:", input_json$`kz_67`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_67` is missing."))
      }
      # check the required field `kz_81`
      if (!is.null(input_json$`kz_81`)) {
        if (!(is.character(input_json$`kz_81`) && length(input_json$`kz_81`) == 1)) {
          stop(paste("Error! Invalid data for `kz_81`. Must be a string:", input_json$`kz_81`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_81` is missing."))
      }
      # check the required field `kz_83`
      if (!is.null(input_json$`kz_83`)) {
        if (!(is.character(input_json$`kz_83`) && length(input_json$`kz_83`) == 1)) {
          stop(paste("Error! Invalid data for `kz_83`. Must be a string:", input_json$`kz_83`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_83` is missing."))
      }
      # check the required field `kz_84`
      if (!is.null(input_json$`kz_84`)) {
        if (!(is.character(input_json$`kz_84`) && length(input_json$`kz_84`) == 1)) {
          stop(paste("Error! Invalid data for `kz_84`. Must be a string:", input_json$`kz_84`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_84` is missing."))
      }
      # check the required field `kz_85`
      if (!is.null(input_json$`kz_85`)) {
        if (!(is.character(input_json$`kz_85`) && length(input_json$`kz_85`) == 1)) {
          stop(paste("Error! Invalid data for `kz_85`. Must be a string:", input_json$`kz_85`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_85` is missing."))
      }
      # check the required field `kz_86`
      if (!is.null(input_json$`kz_86`)) {
        if (!(is.character(input_json$`kz_86`) && length(input_json$`kz_86`) == 1)) {
          stop(paste("Error! Invalid data for `kz_86`. Must be a string:", input_json$`kz_86`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_86` is missing."))
      }
      # check the required field `kz_88`
      if (!is.null(input_json$`kz_88`)) {
        if (!(is.character(input_json$`kz_88`) && length(input_json$`kz_88`) == 1)) {
          stop(paste("Error! Invalid data for `kz_88`. Must be a string:", input_json$`kz_88`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_88` is missing."))
      }
      # check the required field `kz_89`
      if (!is.null(input_json$`kz_89`)) {
        if (!(is.character(input_json$`kz_89`) && length(input_json$`kz_89`) == 1)) {
          stop(paste("Error! Invalid data for `kz_89`. Must be a string:", input_json$`kz_89`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_89` is missing."))
      }
      # check the required field `kz_93`
      if (!is.null(input_json$`kz_93`)) {
        if (!(is.character(input_json$`kz_93`) && length(input_json$`kz_93`) == 1)) {
          stop(paste("Error! Invalid data for `kz_93`. Must be a string:", input_json$`kz_93`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `kz_93` is missing."))
      }
      # check the required field `restschuld`
      if (!is.null(input_json$`restschuld`)) {
        if (!(is.character(input_json$`restschuld`) && length(input_json$`restschuld`) == 1)) {
          stop(paste("Error! Invalid data for `restschuld`. Must be a string:", input_json$`restschuld`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `restschuld` is missing."))
      }
      # check the required field `summe_vorauszahlungen`
      if (!is.null(input_json$`summe_vorauszahlungen`)) {
        if (!(is.character(input_json$`summe_vorauszahlungen`) && length(input_json$`summe_vorauszahlungen`) == 1)) {
          stop(paste("Error! Invalid data for `summe_vorauszahlungen`. Must be a string:", input_json$`summe_vorauszahlungen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `summe_vorauszahlungen` is missing."))
      }
      # check the required field `von`
      if (!is.null(input_json$`von`)) {
        if (!(is.character(input_json$`von`) && length(input_json$`von`) == 1)) {
          stop(paste("Error! Invalid data for `von`. Must be a string:", input_json$`von`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `von` is missing."))
      }
      # check the required field `zahllast`
      if (!is.null(input_json$`zahllast`)) {
        if (!(is.character(input_json$`zahllast`) && length(input_json$`zahllast`) == 1)) {
          stop(paste("Error! Invalid data for `zahllast`. Must be a string:", input_json$`zahllast`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for JahresUstErgebnis: the required field `zahllast` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of JahresUstErgebnis
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

      # check if the required `gespeicherte_perioden` is null
      if (is.null(self$`gespeicherte_perioden`)) {
        return(FALSE)
      }

      # check if the required `hat_ig_transaktionen` is null
      if (is.null(self$`hat_ig_transaktionen`)) {
        return(FALSE)
      }

      # check if the required `ist_kleinunternehmer` is null
      if (is.null(self$`ist_kleinunternehmer`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
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

      # check if the required `kz_48` is null
      if (is.null(self$`kz_48`)) {
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

      # check if the required `restschuld` is null
      if (is.null(self$`restschuld`)) {
        return(FALSE)
      }

      # check if the required `summe_vorauszahlungen` is null
      if (is.null(self$`summe_vorauszahlungen`)) {
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

      # check if the required `gespeicherte_perioden` is null
      if (is.null(self$`gespeicherte_perioden`)) {
        invalid_fields["gespeicherte_perioden"] <- "Non-nullable required field `gespeicherte_perioden` cannot be null."
      }

      # check if the required `hat_ig_transaktionen` is null
      if (is.null(self$`hat_ig_transaktionen`)) {
        invalid_fields["hat_ig_transaktionen"] <- "Non-nullable required field `hat_ig_transaktionen` cannot be null."
      }

      # check if the required `ist_kleinunternehmer` is null
      if (is.null(self$`ist_kleinunternehmer`)) {
        invalid_fields["ist_kleinunternehmer"] <- "Non-nullable required field `ist_kleinunternehmer` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
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

      # check if the required `kz_48` is null
      if (is.null(self$`kz_48`)) {
        invalid_fields["kz_48"] <- "Non-nullable required field `kz_48` cannot be null."
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

      # check if the required `restschuld` is null
      if (is.null(self$`restschuld`)) {
        invalid_fields["restschuld"] <- "Non-nullable required field `restschuld` cannot be null."
      }

      # check if the required `summe_vorauszahlungen` is null
      if (is.null(self$`summe_vorauszahlungen`)) {
        invalid_fields["summe_vorauszahlungen"] <- "Non-nullable required field `summe_vorauszahlungen` cannot be null."
      }

      # check if the required `von` is null
      if (is.null(self$`von`)) {
        invalid_fields["von"] <- "Non-nullable required field `von` cannot be null."
      }

      # check if the required `zahllast` is null
      if (is.null(self$`zahllast`)) {
        invalid_fields["zahllast"] <- "Non-nullable required field `zahllast` cannot be null."
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
# JahresUstErgebnis$unlock()
#
## Below is an example to define the print function
# JahresUstErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# JahresUstErgebnis$lock()

