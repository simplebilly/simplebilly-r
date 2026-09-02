#' @docType class
#' @title ConfigFieldKind
#'
#' @description ConfigFieldKind Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ConfigFieldKind <- R6::R6Class(
  "ConfigFieldKind",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ConfigFieldKindOneOf", "ConfigFieldKindOneOf1", "ConfigFieldKindOneOf2", "ConfigFieldKindOneOf3", "ConfigFieldKindOneOf4"),

    #' @description
    #' Initialize a new ConfigFieldKind.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ConfigFieldKindOneOf", "ConfigFieldKindOneOf1", "ConfigFieldKindOneOf2", "ConfigFieldKindOneOf3", "ConfigFieldKindOneOf4"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ConfigFieldKindOneOf") {
        self$actual_instance <- instance
        self$actual_type <- "ConfigFieldKindOneOf"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ConfigFieldKindOneOf1") {
        self$actual_instance <- instance
        self$actual_type <- "ConfigFieldKindOneOf1"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ConfigFieldKindOneOf2") {
        self$actual_instance <- instance
        self$actual_type <- "ConfigFieldKindOneOf2"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ConfigFieldKindOneOf3") {
        self$actual_instance <- instance
        self$actual_type <- "ConfigFieldKindOneOf3"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ConfigFieldKindOneOf4") {
        self$actual_instance <- instance
        self$actual_type <- "ConfigFieldKindOneOf4"
      } else {
        stop(paste("Failed to initialize ConfigFieldKind with oneOf schemas ConfigFieldKindOneOf, ConfigFieldKindOneOf1, ConfigFieldKindOneOf2, ConfigFieldKindOneOf3, ConfigFieldKindOneOf4. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigFieldKind.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ConfigFieldKind.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ConfigFieldKind.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ConfigFieldKind.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ConfigFieldKindOneOf_result` <- tryCatch({
          `ConfigFieldKindOneOf`$public_methods$validateJSON(input)
          `ConfigFieldKindOneOf_instance` <- `ConfigFieldKindOneOf`$new()
          instance <- `ConfigFieldKindOneOf_instance`$fromJSON(input)
          instance_type <- "ConfigFieldKindOneOf"
          matched_schemas <- append(matched_schemas, "ConfigFieldKindOneOf")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ConfigFieldKindOneOf_result`["error"])) {
        error_messages <- append(error_messages, `ConfigFieldKindOneOf_result`["message"])
      }

      `ConfigFieldKindOneOf1_result` <- tryCatch({
          `ConfigFieldKindOneOf1`$public_methods$validateJSON(input)
          `ConfigFieldKindOneOf1_instance` <- `ConfigFieldKindOneOf1`$new()
          instance <- `ConfigFieldKindOneOf1_instance`$fromJSON(input)
          instance_type <- "ConfigFieldKindOneOf1"
          matched_schemas <- append(matched_schemas, "ConfigFieldKindOneOf1")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ConfigFieldKindOneOf1_result`["error"])) {
        error_messages <- append(error_messages, `ConfigFieldKindOneOf1_result`["message"])
      }

      `ConfigFieldKindOneOf2_result` <- tryCatch({
          `ConfigFieldKindOneOf2`$public_methods$validateJSON(input)
          `ConfigFieldKindOneOf2_instance` <- `ConfigFieldKindOneOf2`$new()
          instance <- `ConfigFieldKindOneOf2_instance`$fromJSON(input)
          instance_type <- "ConfigFieldKindOneOf2"
          matched_schemas <- append(matched_schemas, "ConfigFieldKindOneOf2")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ConfigFieldKindOneOf2_result`["error"])) {
        error_messages <- append(error_messages, `ConfigFieldKindOneOf2_result`["message"])
      }

      `ConfigFieldKindOneOf3_result` <- tryCatch({
          `ConfigFieldKindOneOf3`$public_methods$validateJSON(input)
          `ConfigFieldKindOneOf3_instance` <- `ConfigFieldKindOneOf3`$new()
          instance <- `ConfigFieldKindOneOf3_instance`$fromJSON(input)
          instance_type <- "ConfigFieldKindOneOf3"
          matched_schemas <- append(matched_schemas, "ConfigFieldKindOneOf3")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ConfigFieldKindOneOf3_result`["error"])) {
        error_messages <- append(error_messages, `ConfigFieldKindOneOf3_result`["message"])
      }

      `ConfigFieldKindOneOf4_result` <- tryCatch({
          `ConfigFieldKindOneOf4`$public_methods$validateJSON(input)
          `ConfigFieldKindOneOf4_instance` <- `ConfigFieldKindOneOf4`$new()
          instance <- `ConfigFieldKindOneOf4_instance`$fromJSON(input)
          instance_type <- "ConfigFieldKindOneOf4"
          matched_schemas <- append(matched_schemas, "ConfigFieldKindOneOf4")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ConfigFieldKindOneOf4_result`["error"])) {
        error_messages <- append(error_messages, `ConfigFieldKindOneOf4_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ConfigFieldKind with oneOf schemas ConfigFieldKindOneOf, ConfigFieldKindOneOf1, ConfigFieldKindOneOf2, ConfigFieldKindOneOf3, ConfigFieldKindOneOf4. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ConfigFieldKind with oneOf schemas ConfigFieldKindOneOf, ConfigFieldKindOneOf1, ConfigFieldKindOneOf2, ConfigFieldKindOneOf3, ConfigFieldKindOneOf4. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ConfigFieldKind to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ConfigFieldKind.
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      if (!is.null(self$actual_instance)) {
        json <- jsonlite::toJSON(simple, auto_unbox = TRUE, ...)
        return(as.character(jsonlite::minify(json)))
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert ConfigFieldKind to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Validate the input JSON with respect to ConfigFieldKind and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#ConfigFieldKind$unlock()
#
## Below is an example to define the print function
#ConfigFieldKind$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ConfigFieldKind$lock()

