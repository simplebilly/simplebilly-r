#' Create a new CreateTicketRequest
#'
#' @description
#' Request body for creating a support ticket. Wraps the generated `SupportTicketCreateDto` fields plus `message_body` which is not a Model field (used to create the initial `ticket_message`).
#'
#' @docType class
#' @title CreateTicketRequest
#' @description CreateTicketRequest Class
#' @format An \code{R6Class} generator object
#' @field channel_id  character [optional]
#' @field channel_type  character [optional]
#' @field customer_email  character [optional]
#' @field customer_id  character [optional]
#' @field customer_name  character [optional]
#' @field external_id  character [optional]
#' @field message_body  character
#' @field order_ref  character [optional]
#' @field subject  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTicketRequest <- R6::R6Class(
  "CreateTicketRequest",
  public = list(
    `channel_id` = NULL,
    `channel_type` = NULL,
    `customer_email` = NULL,
    `customer_id` = NULL,
    `customer_name` = NULL,
    `external_id` = NULL,
    `message_body` = NULL,
    `order_ref` = NULL,
    `subject` = NULL,

    #' @description
    #' Initialize a new CreateTicketRequest class.
    #'
    #' @param message_body message_body
    #' @param subject subject
    #' @param channel_id channel_id
    #' @param channel_type channel_type
    #' @param customer_email customer_email
    #' @param customer_id customer_id
    #' @param customer_name customer_name
    #' @param external_id external_id
    #' @param order_ref order_ref
    #' @param ... Other optional arguments.
    initialize = function(`message_body`, `subject`, `channel_id` = NULL, `channel_type` = NULL, `customer_email` = NULL, `customer_id` = NULL, `customer_name` = NULL, `external_id` = NULL, `order_ref` = NULL, ...) {
      if (!missing(`message_body`)) {
        if (!(is.character(`message_body`) && length(`message_body`) == 1)) {
          stop(paste("Error! Invalid data for `message_body`. Must be a string:", `message_body`))
        }
        self$`message_body` <- `message_body`
      }
      if (!missing(`subject`)) {
        if (!(is.character(`subject`) && length(`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", `subject`))
        }
        self$`subject` <- `subject`
      }
      if (!is.null(`channel_id`)) {
        if (!(is.character(`channel_id`) && length(`channel_id`) == 1)) {
          stop(paste("Error! Invalid data for `channel_id`. Must be a string:", `channel_id`))
        }
        self$`channel_id` <- `channel_id`
      }
      if (!is.null(`channel_type`)) {
        if (!(is.character(`channel_type`) && length(`channel_type`) == 1)) {
          stop(paste("Error! Invalid data for `channel_type`. Must be a string:", `channel_type`))
        }
        self$`channel_type` <- `channel_type`
      }
      if (!is.null(`customer_email`)) {
        if (!(is.character(`customer_email`) && length(`customer_email`) == 1)) {
          stop(paste("Error! Invalid data for `customer_email`. Must be a string:", `customer_email`))
        }
        self$`customer_email` <- `customer_email`
      }
      if (!is.null(`customer_id`)) {
        if (!(is.character(`customer_id`) && length(`customer_id`) == 1)) {
          stop(paste("Error! Invalid data for `customer_id`. Must be a string:", `customer_id`))
        }
        self$`customer_id` <- `customer_id`
      }
      if (!is.null(`customer_name`)) {
        if (!(is.character(`customer_name`) && length(`customer_name`) == 1)) {
          stop(paste("Error! Invalid data for `customer_name`. Must be a string:", `customer_name`))
        }
        self$`customer_name` <- `customer_name`
      }
      if (!is.null(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!is.null(`order_ref`)) {
        if (!(is.character(`order_ref`) && length(`order_ref`) == 1)) {
          stop(paste("Error! Invalid data for `order_ref`. Must be a string:", `order_ref`))
        }
        self$`order_ref` <- `order_ref`
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
    #' @return CreateTicketRequest as a base R list.
    #' @examples
    #' # convert array of CreateTicketRequest (x) to a data frame
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
    #' Convert CreateTicketRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateTicketRequestObject <- list()
      if (!is.null(self$`channel_id`)) {
        CreateTicketRequestObject[["channel_id"]] <-
          self$`channel_id`
      }
      if (!is.null(self$`channel_type`)) {
        CreateTicketRequestObject[["channel_type"]] <-
          self$`channel_type`
      }
      if (!is.null(self$`customer_email`)) {
        CreateTicketRequestObject[["customer_email"]] <-
          self$`customer_email`
      }
      if (!is.null(self$`customer_id`)) {
        CreateTicketRequestObject[["customer_id"]] <-
          self$`customer_id`
      }
      if (!is.null(self$`customer_name`)) {
        CreateTicketRequestObject[["customer_name"]] <-
          self$`customer_name`
      }
      if (!is.null(self$`external_id`)) {
        CreateTicketRequestObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`message_body`)) {
        CreateTicketRequestObject[["message_body"]] <-
          self$`message_body`
      }
      if (!is.null(self$`order_ref`)) {
        CreateTicketRequestObject[["order_ref"]] <-
          self$`order_ref`
      }
      if (!is.null(self$`subject`)) {
        CreateTicketRequestObject[["subject"]] <-
          self$`subject`
      }
      return(CreateTicketRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTicketRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTicketRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`channel_id`)) {
        self$`channel_id` <- this_object$`channel_id`
      }
      if (!is.null(this_object$`channel_type`)) {
        self$`channel_type` <- this_object$`channel_type`
      }
      if (!is.null(this_object$`customer_email`)) {
        self$`customer_email` <- this_object$`customer_email`
      }
      if (!is.null(this_object$`customer_id`)) {
        self$`customer_id` <- this_object$`customer_id`
      }
      if (!is.null(this_object$`customer_name`)) {
        self$`customer_name` <- this_object$`customer_name`
      }
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`message_body`)) {
        self$`message_body` <- this_object$`message_body`
      }
      if (!is.null(this_object$`order_ref`)) {
        self$`order_ref` <- this_object$`order_ref`
      }
      if (!is.null(this_object$`subject`)) {
        self$`subject` <- this_object$`subject`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateTicketRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTicketRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTicketRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`channel_id` <- this_object$`channel_id`
      self$`channel_type` <- this_object$`channel_type`
      self$`customer_email` <- this_object$`customer_email`
      self$`customer_id` <- this_object$`customer_id`
      self$`customer_name` <- this_object$`customer_name`
      self$`external_id` <- this_object$`external_id`
      self$`message_body` <- this_object$`message_body`
      self$`order_ref` <- this_object$`order_ref`
      self$`subject` <- this_object$`subject`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateTicketRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message_body`
      if (!is.null(input_json$`message_body`)) {
        if (!(is.character(input_json$`message_body`) && length(input_json$`message_body`) == 1)) {
          stop(paste("Error! Invalid data for `message_body`. Must be a string:", input_json$`message_body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTicketRequest: the required field `message_body` is missing."))
      }
      # check the required field `subject`
      if (!is.null(input_json$`subject`)) {
        if (!(is.character(input_json$`subject`) && length(input_json$`subject`) == 1)) {
          stop(paste("Error! Invalid data for `subject`. Must be a string:", input_json$`subject`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTicketRequest: the required field `subject` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateTicketRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `message_body` is null
      if (is.null(self$`message_body`)) {
        return(FALSE)
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
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
      # check if the required `message_body` is null
      if (is.null(self$`message_body`)) {
        invalid_fields["message_body"] <- "Non-nullable required field `message_body` cannot be null."
      }

      # check if the required `subject` is null
      if (is.null(self$`subject`)) {
        invalid_fields["subject"] <- "Non-nullable required field `subject` cannot be null."
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
# CreateTicketRequest$unlock()
#
## Below is an example to define the print function
# CreateTicketRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTicketRequest$lock()

