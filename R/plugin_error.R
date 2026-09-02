#' @docType class
#' @title PluginError
#'
#' @description PluginError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PluginError <- R6::R6Class(
  "PluginError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("PluginErrorOneOf", "PluginErrorOneOf1", "PluginErrorOneOf2", "PluginErrorOneOf3", "PluginErrorOneOf4", "PluginErrorOneOf5", "PluginErrorOneOf6"),

    #' @description
    #' Initialize a new PluginError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "PluginErrorOneOf", "PluginErrorOneOf1", "PluginErrorOneOf2", "PluginErrorOneOf3", "PluginErrorOneOf4", "PluginErrorOneOf5", "PluginErrorOneOf6"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf1") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf1"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf2") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf2"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf3") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf3"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf4") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf4"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf5") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf5"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PluginErrorOneOf6") {
        self$actual_instance <- instance
        self$actual_type <- "PluginErrorOneOf6"
      } else {
        stop(paste("Failed to initialize PluginError with oneOf schemas PluginErrorOneOf, PluginErrorOneOf1, PluginErrorOneOf2, PluginErrorOneOf3, PluginErrorOneOf4, PluginErrorOneOf5, PluginErrorOneOf6. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PluginError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PluginError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PluginError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `PluginErrorOneOf_result` <- tryCatch({
          `PluginErrorOneOf`$public_methods$validateJSON(input)
          `PluginErrorOneOf_instance` <- `PluginErrorOneOf`$new()
          instance <- `PluginErrorOneOf_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf_result`["message"])
      }

      `PluginErrorOneOf1_result` <- tryCatch({
          `PluginErrorOneOf1`$public_methods$validateJSON(input)
          `PluginErrorOneOf1_instance` <- `PluginErrorOneOf1`$new()
          instance <- `PluginErrorOneOf1_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf1"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf1")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf1_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf1_result`["message"])
      }

      `PluginErrorOneOf2_result` <- tryCatch({
          `PluginErrorOneOf2`$public_methods$validateJSON(input)
          `PluginErrorOneOf2_instance` <- `PluginErrorOneOf2`$new()
          instance <- `PluginErrorOneOf2_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf2"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf2")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf2_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf2_result`["message"])
      }

      `PluginErrorOneOf3_result` <- tryCatch({
          `PluginErrorOneOf3`$public_methods$validateJSON(input)
          `PluginErrorOneOf3_instance` <- `PluginErrorOneOf3`$new()
          instance <- `PluginErrorOneOf3_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf3"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf3")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf3_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf3_result`["message"])
      }

      `PluginErrorOneOf4_result` <- tryCatch({
          `PluginErrorOneOf4`$public_methods$validateJSON(input)
          `PluginErrorOneOf4_instance` <- `PluginErrorOneOf4`$new()
          instance <- `PluginErrorOneOf4_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf4"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf4")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf4_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf4_result`["message"])
      }

      `PluginErrorOneOf5_result` <- tryCatch({
          `PluginErrorOneOf5`$public_methods$validateJSON(input)
          `PluginErrorOneOf5_instance` <- `PluginErrorOneOf5`$new()
          instance <- `PluginErrorOneOf5_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf5"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf5")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf5_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf5_result`["message"])
      }

      `PluginErrorOneOf6_result` <- tryCatch({
          `PluginErrorOneOf6`$public_methods$validateJSON(input)
          `PluginErrorOneOf6_instance` <- `PluginErrorOneOf6`$new()
          instance <- `PluginErrorOneOf6_instance`$fromJSON(input)
          instance_type <- "PluginErrorOneOf6"
          matched_schemas <- append(matched_schemas, "PluginErrorOneOf6")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PluginErrorOneOf6_result`["error"])) {
        error_messages <- append(error_messages, `PluginErrorOneOf6_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into PluginError with oneOf schemas PluginErrorOneOf, PluginErrorOneOf1, PluginErrorOneOf2, PluginErrorOneOf3, PluginErrorOneOf4, PluginErrorOneOf5, PluginErrorOneOf6. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into PluginError with oneOf schemas PluginErrorOneOf, PluginErrorOneOf1, PluginErrorOneOf2, PluginErrorOneOf3, PluginErrorOneOf4, PluginErrorOneOf5, PluginErrorOneOf6. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize PluginError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PluginError.
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
    #' Convert PluginError to a base R type
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
    #' Validate the input JSON with respect to PluginError and
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
#PluginError$unlock()
#
## Below is an example to define the print function
#PluginError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PluginError$lock()

