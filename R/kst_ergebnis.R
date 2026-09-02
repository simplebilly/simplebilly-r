#' Create a new KstErgebnis
#'
#' @description
#' KstErgebnis Class
#'
#' @docType class
#' @title KstErgebnis
#' @description KstErgebnis Class
#' @format An \code{R6Class} generator object
#' @field gesamt  character
#' @field gesamtbelastung  character
#' @field gewerbesteuer  character
#' @field gewinn  character
#' @field ist_kapitalgesellschaft  character
#' @field jahr  integer
#' @field koerperschaftsteuer  character
#' @field solidaritaetszuschlag  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KstErgebnis <- R6::R6Class(
  "KstErgebnis",
  public = list(
    `gesamt` = NULL,
    `gesamtbelastung` = NULL,
    `gewerbesteuer` = NULL,
    `gewinn` = NULL,
    `ist_kapitalgesellschaft` = NULL,
    `jahr` = NULL,
    `koerperschaftsteuer` = NULL,
    `solidaritaetszuschlag` = NULL,

    #' @description
    #' Initialize a new KstErgebnis class.
    #'
    #' @param gesamt gesamt
    #' @param gesamtbelastung gesamtbelastung
    #' @param gewerbesteuer gewerbesteuer
    #' @param gewinn gewinn
    #' @param ist_kapitalgesellschaft ist_kapitalgesellschaft
    #' @param jahr jahr
    #' @param koerperschaftsteuer koerperschaftsteuer
    #' @param solidaritaetszuschlag solidaritaetszuschlag
    #' @param ... Other optional arguments.
    initialize = function(`gesamt`, `gesamtbelastung`, `gewerbesteuer`, `gewinn`, `ist_kapitalgesellschaft`, `jahr`, `koerperschaftsteuer`, `solidaritaetszuschlag`, ...) {
      if (!missing(`gesamt`)) {
        if (!(is.character(`gesamt`) && length(`gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `gesamt`. Must be a string:", `gesamt`))
        }
        self$`gesamt` <- `gesamt`
      }
      if (!missing(`gesamtbelastung`)) {
        if (!(is.character(`gesamtbelastung`) && length(`gesamtbelastung`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtbelastung`. Must be a string:", `gesamtbelastung`))
        }
        self$`gesamtbelastung` <- `gesamtbelastung`
      }
      if (!missing(`gewerbesteuer`)) {
        if (!(is.character(`gewerbesteuer`) && length(`gewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `gewerbesteuer`. Must be a string:", `gewerbesteuer`))
        }
        self$`gewerbesteuer` <- `gewerbesteuer`
      }
      if (!missing(`gewinn`)) {
        if (!(is.character(`gewinn`) && length(`gewinn`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn`. Must be a string:", `gewinn`))
        }
        self$`gewinn` <- `gewinn`
      }
      if (!missing(`ist_kapitalgesellschaft`)) {
        if (!(is.logical(`ist_kapitalgesellschaft`) && length(`ist_kapitalgesellschaft`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kapitalgesellschaft`. Must be a boolean:", `ist_kapitalgesellschaft`))
        }
        self$`ist_kapitalgesellschaft` <- `ist_kapitalgesellschaft`
      }
      if (!missing(`jahr`)) {
        if (!(is.numeric(`jahr`) && length(`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", `jahr`))
        }
        self$`jahr` <- `jahr`
      }
      if (!missing(`koerperschaftsteuer`)) {
        if (!(is.character(`koerperschaftsteuer`) && length(`koerperschaftsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `koerperschaftsteuer`. Must be a string:", `koerperschaftsteuer`))
        }
        self$`koerperschaftsteuer` <- `koerperschaftsteuer`
      }
      if (!missing(`solidaritaetszuschlag`)) {
        if (!(is.character(`solidaritaetszuschlag`) && length(`solidaritaetszuschlag`) == 1)) {
          stop(paste("Error! Invalid data for `solidaritaetszuschlag`. Must be a string:", `solidaritaetszuschlag`))
        }
        self$`solidaritaetszuschlag` <- `solidaritaetszuschlag`
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
    #' @return KstErgebnis as a base R list.
    #' @examples
    #' # convert array of KstErgebnis (x) to a data frame
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
    #' Convert KstErgebnis to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      KstErgebnisObject <- list()
      if (!is.null(self$`gesamt`)) {
        KstErgebnisObject[["gesamt"]] <-
          self$`gesamt`
      }
      if (!is.null(self$`gesamtbelastung`)) {
        KstErgebnisObject[["gesamtbelastung"]] <-
          self$`gesamtbelastung`
      }
      if (!is.null(self$`gewerbesteuer`)) {
        KstErgebnisObject[["gewerbesteuer"]] <-
          self$`gewerbesteuer`
      }
      if (!is.null(self$`gewinn`)) {
        KstErgebnisObject[["gewinn"]] <-
          self$`gewinn`
      }
      if (!is.null(self$`ist_kapitalgesellschaft`)) {
        KstErgebnisObject[["ist_kapitalgesellschaft"]] <-
          self$`ist_kapitalgesellschaft`
      }
      if (!is.null(self$`jahr`)) {
        KstErgebnisObject[["jahr"]] <-
          self$`jahr`
      }
      if (!is.null(self$`koerperschaftsteuer`)) {
        KstErgebnisObject[["koerperschaftsteuer"]] <-
          self$`koerperschaftsteuer`
      }
      if (!is.null(self$`solidaritaetszuschlag`)) {
        KstErgebnisObject[["solidaritaetszuschlag"]] <-
          self$`solidaritaetszuschlag`
      }
      return(KstErgebnisObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of KstErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of KstErgebnis
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gesamt`)) {
        self$`gesamt` <- this_object$`gesamt`
      }
      if (!is.null(this_object$`gesamtbelastung`)) {
        self$`gesamtbelastung` <- this_object$`gesamtbelastung`
      }
      if (!is.null(this_object$`gewerbesteuer`)) {
        self$`gewerbesteuer` <- this_object$`gewerbesteuer`
      }
      if (!is.null(this_object$`gewinn`)) {
        self$`gewinn` <- this_object$`gewinn`
      }
      if (!is.null(this_object$`ist_kapitalgesellschaft`)) {
        self$`ist_kapitalgesellschaft` <- this_object$`ist_kapitalgesellschaft`
      }
      if (!is.null(this_object$`jahr`)) {
        self$`jahr` <- this_object$`jahr`
      }
      if (!is.null(this_object$`koerperschaftsteuer`)) {
        self$`koerperschaftsteuer` <- this_object$`koerperschaftsteuer`
      }
      if (!is.null(this_object$`solidaritaetszuschlag`)) {
        self$`solidaritaetszuschlag` <- this_object$`solidaritaetszuschlag`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return KstErgebnis in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of KstErgebnis
    #'
    #' @param input_json the JSON input
    #' @return the instance of KstErgebnis
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gesamt` <- this_object$`gesamt`
      self$`gesamtbelastung` <- this_object$`gesamtbelastung`
      self$`gewerbesteuer` <- this_object$`gewerbesteuer`
      self$`gewinn` <- this_object$`gewinn`
      self$`ist_kapitalgesellschaft` <- this_object$`ist_kapitalgesellschaft`
      self$`jahr` <- this_object$`jahr`
      self$`koerperschaftsteuer` <- this_object$`koerperschaftsteuer`
      self$`solidaritaetszuschlag` <- this_object$`solidaritaetszuschlag`
      self
    },

    #' @description
    #' Validate JSON input with respect to KstErgebnis and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `gesamt`
      if (!is.null(input_json$`gesamt`)) {
        if (!(is.character(input_json$`gesamt`) && length(input_json$`gesamt`) == 1)) {
          stop(paste("Error! Invalid data for `gesamt`. Must be a string:", input_json$`gesamt`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `gesamt` is missing."))
      }
      # check the required field `gesamtbelastung`
      if (!is.null(input_json$`gesamtbelastung`)) {
        if (!(is.character(input_json$`gesamtbelastung`) && length(input_json$`gesamtbelastung`) == 1)) {
          stop(paste("Error! Invalid data for `gesamtbelastung`. Must be a string:", input_json$`gesamtbelastung`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `gesamtbelastung` is missing."))
      }
      # check the required field `gewerbesteuer`
      if (!is.null(input_json$`gewerbesteuer`)) {
        if (!(is.character(input_json$`gewerbesteuer`) && length(input_json$`gewerbesteuer`) == 1)) {
          stop(paste("Error! Invalid data for `gewerbesteuer`. Must be a string:", input_json$`gewerbesteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `gewerbesteuer` is missing."))
      }
      # check the required field `gewinn`
      if (!is.null(input_json$`gewinn`)) {
        if (!(is.character(input_json$`gewinn`) && length(input_json$`gewinn`) == 1)) {
          stop(paste("Error! Invalid data for `gewinn`. Must be a string:", input_json$`gewinn`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `gewinn` is missing."))
      }
      # check the required field `ist_kapitalgesellschaft`
      if (!is.null(input_json$`ist_kapitalgesellschaft`)) {
        if (!(is.logical(input_json$`ist_kapitalgesellschaft`) && length(input_json$`ist_kapitalgesellschaft`) == 1)) {
          stop(paste("Error! Invalid data for `ist_kapitalgesellschaft`. Must be a boolean:", input_json$`ist_kapitalgesellschaft`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `ist_kapitalgesellschaft` is missing."))
      }
      # check the required field `jahr`
      if (!is.null(input_json$`jahr`)) {
        if (!(is.numeric(input_json$`jahr`) && length(input_json$`jahr`) == 1)) {
          stop(paste("Error! Invalid data for `jahr`. Must be an integer:", input_json$`jahr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `jahr` is missing."))
      }
      # check the required field `koerperschaftsteuer`
      if (!is.null(input_json$`koerperschaftsteuer`)) {
        if (!(is.character(input_json$`koerperschaftsteuer`) && length(input_json$`koerperschaftsteuer`) == 1)) {
          stop(paste("Error! Invalid data for `koerperschaftsteuer`. Must be a string:", input_json$`koerperschaftsteuer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `koerperschaftsteuer` is missing."))
      }
      # check the required field `solidaritaetszuschlag`
      if (!is.null(input_json$`solidaritaetszuschlag`)) {
        if (!(is.character(input_json$`solidaritaetszuschlag`) && length(input_json$`solidaritaetszuschlag`) == 1)) {
          stop(paste("Error! Invalid data for `solidaritaetszuschlag`. Must be a string:", input_json$`solidaritaetszuschlag`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for KstErgebnis: the required field `solidaritaetszuschlag` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of KstErgebnis
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `gesamt` is null
      if (is.null(self$`gesamt`)) {
        return(FALSE)
      }

      # check if the required `gesamtbelastung` is null
      if (is.null(self$`gesamtbelastung`)) {
        return(FALSE)
      }

      # check if the required `gewerbesteuer` is null
      if (is.null(self$`gewerbesteuer`)) {
        return(FALSE)
      }

      # check if the required `gewinn` is null
      if (is.null(self$`gewinn`)) {
        return(FALSE)
      }

      # check if the required `ist_kapitalgesellschaft` is null
      if (is.null(self$`ist_kapitalgesellschaft`)) {
        return(FALSE)
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        return(FALSE)
      }

      # check if the required `koerperschaftsteuer` is null
      if (is.null(self$`koerperschaftsteuer`)) {
        return(FALSE)
      }

      # check if the required `solidaritaetszuschlag` is null
      if (is.null(self$`solidaritaetszuschlag`)) {
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
      # check if the required `gesamt` is null
      if (is.null(self$`gesamt`)) {
        invalid_fields["gesamt"] <- "Non-nullable required field `gesamt` cannot be null."
      }

      # check if the required `gesamtbelastung` is null
      if (is.null(self$`gesamtbelastung`)) {
        invalid_fields["gesamtbelastung"] <- "Non-nullable required field `gesamtbelastung` cannot be null."
      }

      # check if the required `gewerbesteuer` is null
      if (is.null(self$`gewerbesteuer`)) {
        invalid_fields["gewerbesteuer"] <- "Non-nullable required field `gewerbesteuer` cannot be null."
      }

      # check if the required `gewinn` is null
      if (is.null(self$`gewinn`)) {
        invalid_fields["gewinn"] <- "Non-nullable required field `gewinn` cannot be null."
      }

      # check if the required `ist_kapitalgesellschaft` is null
      if (is.null(self$`ist_kapitalgesellschaft`)) {
        invalid_fields["ist_kapitalgesellschaft"] <- "Non-nullable required field `ist_kapitalgesellschaft` cannot be null."
      }

      # check if the required `jahr` is null
      if (is.null(self$`jahr`)) {
        invalid_fields["jahr"] <- "Non-nullable required field `jahr` cannot be null."
      }

      # check if the required `koerperschaftsteuer` is null
      if (is.null(self$`koerperschaftsteuer`)) {
        invalid_fields["koerperschaftsteuer"] <- "Non-nullable required field `koerperschaftsteuer` cannot be null."
      }

      # check if the required `solidaritaetszuschlag` is null
      if (is.null(self$`solidaritaetszuschlag`)) {
        invalid_fields["solidaritaetszuschlag"] <- "Non-nullable required field `solidaritaetszuschlag` cannot be null."
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
# KstErgebnis$unlock()
#
## Below is an example to define the print function
# KstErgebnis$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# KstErgebnis$lock()

