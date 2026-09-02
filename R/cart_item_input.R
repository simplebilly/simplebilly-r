#' Create a new CartItemInput
#'
#' @description
#' CartItemInput Class
#'
#' @docType class
#' @title CartItemInput
#' @description CartItemInput Class
#' @format An \code{R6Class} generator object
#' @field product_id  character
#' @field quantity  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CartItemInput <- R6::R6Class(
  "CartItemInput",
  public = list(
    `product_id` = NULL,
    `quantity` = NULL,

    #' @description
    #' Initialize a new CartItemInput class.
    #'
    #' @param product_id product_id
    #' @param quantity quantity
    #' @param ... Other optional arguments.
    initialize = function(`product_id`, `quantity`, ...) {
      if (!missing(`product_id`)) {
        if (!(is.character(`product_id`) && length(`product_id`) == 1)) {
          stop(paste("Error! Invalid data for `product_id`. Must be a string:", `product_id`))
        }
        self$`product_id` <- `product_id`
      }
      if (!missing(`quantity`)) {
        if (!(is.numeric(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", `quantity`))
        }
        self$`quantity` <- `quantity`
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
    #' @return CartItemInput as a base R list.
    #' @examples
    #' # convert array of CartItemInput (x) to a data frame
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
    #' Convert CartItemInput to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CartItemInputObject <- list()
      if (!is.null(self$`product_id`)) {
        CartItemInputObject[["product_id"]] <-
          self$`product_id`
      }
      if (!is.null(self$`quantity`)) {
        CartItemInputObject[["quantity"]] <-
          self$`quantity`
      }
      return(CartItemInputObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CartItemInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of CartItemInput
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`product_id`)) {
        self$`product_id` <- this_object$`product_id`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CartItemInput in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CartItemInput
    #'
    #' @param input_json the JSON input
    #' @return the instance of CartItemInput
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`product_id` <- this_object$`product_id`
      self$`quantity` <- this_object$`quantity`
      self
    },

    #' @description
    #' Validate JSON input with respect to CartItemInput and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `product_id`
      if (!is.null(input_json$`product_id`)) {
        if (!(is.character(input_json$`product_id`) && length(input_json$`product_id`) == 1)) {
          stop(paste("Error! Invalid data for `product_id`. Must be a string:", input_json$`product_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CartItemInput: the required field `product_id` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.numeric(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be an integer:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CartItemInput: the required field `quantity` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CartItemInput
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `product_id` is null
      if (is.null(self$`product_id`)) {
        return(FALSE)
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
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
      # check if the required `product_id` is null
      if (is.null(self$`product_id`)) {
        invalid_fields["product_id"] <- "Non-nullable required field `product_id` cannot be null."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
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
# CartItemInput$unlock()
#
## Below is an example to define the print function
# CartItemInput$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CartItemInput$lock()

