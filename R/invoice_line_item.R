#' Create a new InvoiceLineItem
#'
#' @description
#' InvoiceLineItem Class
#'
#' @docType class
#' @title InvoiceLineItem
#' @description InvoiceLineItem Class
#' @format An \code{R6Class} generator object
#' @field article_number  character [optional]
#' @field description  character
#' @field discount_amount  character [optional]
#' @field discount_percentage  character [optional]
#' @field input_vat_deductible  character [optional]
#' @field input_vat_rate  character [optional]
#' @field is_intra_community_acquisition  character [optional]
#' @field is_margin_25a  character [optional]
#' @field ledger_account  character [optional]
#' @field line_total  character
#' @field line_total_gross  character [optional]
#' @field margin_25a_purchase_price  character [optional]
#' @field meter_point_id  character [optional]
#' @field position  integer
#' @field price_components  \link{AnyType} [optional]
#' @field product_id  character [optional]
#' @field product_sku  character [optional]
#' @field quantity  character
#' @field supplier_article_number  character [optional]
#' @field tax_rate  character [optional]
#' @field unit  \link{AnyType}
#' @field unit_price  character
#' @field usage_data_id  character [optional]
#' @field vat_rate_nominal  character [optional]
#' @field vat_special_case  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InvoiceLineItem <- R6::R6Class(
  "InvoiceLineItem",
  public = list(
    `article_number` = NULL,
    `description` = NULL,
    `discount_amount` = NULL,
    `discount_percentage` = NULL,
    `input_vat_deductible` = NULL,
    `input_vat_rate` = NULL,
    `is_intra_community_acquisition` = NULL,
    `is_margin_25a` = NULL,
    `ledger_account` = NULL,
    `line_total` = NULL,
    `line_total_gross` = NULL,
    `margin_25a_purchase_price` = NULL,
    `meter_point_id` = NULL,
    `position` = NULL,
    `price_components` = NULL,
    `product_id` = NULL,
    `product_sku` = NULL,
    `quantity` = NULL,
    `supplier_article_number` = NULL,
    `tax_rate` = NULL,
    `unit` = NULL,
    `unit_price` = NULL,
    `usage_data_id` = NULL,
    `vat_rate_nominal` = NULL,
    `vat_special_case` = NULL,

    #' @description
    #' Initialize a new InvoiceLineItem class.
    #'
    #' @param description description
    #' @param line_total line_total
    #' @param position position
    #' @param quantity quantity
    #' @param unit unit
    #' @param unit_price unit_price
    #' @param article_number article_number
    #' @param discount_amount discount_amount
    #' @param discount_percentage discount_percentage
    #' @param input_vat_deductible input_vat_deductible
    #' @param input_vat_rate input_vat_rate
    #' @param is_intra_community_acquisition is_intra_community_acquisition
    #' @param is_margin_25a is_margin_25a
    #' @param ledger_account ledger_account
    #' @param line_total_gross line_total_gross
    #' @param margin_25a_purchase_price margin_25a_purchase_price
    #' @param meter_point_id meter_point_id
    #' @param price_components price_components
    #' @param product_id product_id
    #' @param product_sku product_sku
    #' @param supplier_article_number supplier_article_number
    #' @param tax_rate tax_rate
    #' @param usage_data_id usage_data_id
    #' @param vat_rate_nominal vat_rate_nominal
    #' @param vat_special_case vat_special_case
    #' @param ... Other optional arguments.
    initialize = function(`description`, `line_total`, `position`, `quantity`, `unit`, `unit_price`, `article_number` = NULL, `discount_amount` = NULL, `discount_percentage` = NULL, `input_vat_deductible` = NULL, `input_vat_rate` = NULL, `is_intra_community_acquisition` = NULL, `is_margin_25a` = NULL, `ledger_account` = NULL, `line_total_gross` = NULL, `margin_25a_purchase_price` = NULL, `meter_point_id` = NULL, `price_components` = NULL, `product_id` = NULL, `product_sku` = NULL, `supplier_article_number` = NULL, `tax_rate` = NULL, `usage_data_id` = NULL, `vat_rate_nominal` = NULL, `vat_special_case` = NULL, ...) {
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`line_total`)) {
        if (!(is.character(`line_total`) && length(`line_total`) == 1)) {
          stop(paste("Error! Invalid data for `line_total`. Must be a string:", `line_total`))
        }
        self$`line_total` <- `line_total`
      }
      if (!missing(`position`)) {
        if (!(is.numeric(`position`) && length(`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", `position`))
        }
        self$`position` <- `position`
      }
      if (!missing(`quantity`)) {
        if (!(is.character(`quantity`) && length(`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be a string:", `quantity`))
        }
        self$`quantity` <- `quantity`
      }
      if (!missing(`unit`)) {
        stopifnot(R6::is.R6(`unit`))
        self$`unit` <- `unit`
      }
      if (!missing(`unit_price`)) {
        if (!(is.character(`unit_price`) && length(`unit_price`) == 1)) {
          stop(paste("Error! Invalid data for `unit_price`. Must be a string:", `unit_price`))
        }
        self$`unit_price` <- `unit_price`
      }
      if (!is.null(`article_number`)) {
        if (!(is.character(`article_number`) && length(`article_number`) == 1)) {
          stop(paste("Error! Invalid data for `article_number`. Must be a string:", `article_number`))
        }
        self$`article_number` <- `article_number`
      }
      if (!is.null(`discount_amount`)) {
        if (!(is.character(`discount_amount`) && length(`discount_amount`) == 1)) {
          stop(paste("Error! Invalid data for `discount_amount`. Must be a string:", `discount_amount`))
        }
        self$`discount_amount` <- `discount_amount`
      }
      if (!is.null(`discount_percentage`)) {
        if (!(is.character(`discount_percentage`) && length(`discount_percentage`) == 1)) {
          stop(paste("Error! Invalid data for `discount_percentage`. Must be a string:", `discount_percentage`))
        }
        self$`discount_percentage` <- `discount_percentage`
      }
      if (!is.null(`input_vat_deductible`)) {
        if (!(is.logical(`input_vat_deductible`) && length(`input_vat_deductible`) == 1)) {
          stop(paste("Error! Invalid data for `input_vat_deductible`. Must be a boolean:", `input_vat_deductible`))
        }
        self$`input_vat_deductible` <- `input_vat_deductible`
      }
      if (!is.null(`input_vat_rate`)) {
        if (!(is.character(`input_vat_rate`) && length(`input_vat_rate`) == 1)) {
          stop(paste("Error! Invalid data for `input_vat_rate`. Must be a string:", `input_vat_rate`))
        }
        self$`input_vat_rate` <- `input_vat_rate`
      }
      if (!is.null(`is_intra_community_acquisition`)) {
        if (!(is.logical(`is_intra_community_acquisition`) && length(`is_intra_community_acquisition`) == 1)) {
          stop(paste("Error! Invalid data for `is_intra_community_acquisition`. Must be a boolean:", `is_intra_community_acquisition`))
        }
        self$`is_intra_community_acquisition` <- `is_intra_community_acquisition`
      }
      if (!is.null(`is_margin_25a`)) {
        if (!(is.logical(`is_margin_25a`) && length(`is_margin_25a`) == 1)) {
          stop(paste("Error! Invalid data for `is_margin_25a`. Must be a boolean:", `is_margin_25a`))
        }
        self$`is_margin_25a` <- `is_margin_25a`
      }
      if (!is.null(`ledger_account`)) {
        if (!(is.character(`ledger_account`) && length(`ledger_account`) == 1)) {
          stop(paste("Error! Invalid data for `ledger_account`. Must be a string:", `ledger_account`))
        }
        self$`ledger_account` <- `ledger_account`
      }
      if (!is.null(`line_total_gross`)) {
        if (!(is.character(`line_total_gross`) && length(`line_total_gross`) == 1)) {
          stop(paste("Error! Invalid data for `line_total_gross`. Must be a string:", `line_total_gross`))
        }
        self$`line_total_gross` <- `line_total_gross`
      }
      if (!is.null(`margin_25a_purchase_price`)) {
        if (!(is.character(`margin_25a_purchase_price`) && length(`margin_25a_purchase_price`) == 1)) {
          stop(paste("Error! Invalid data for `margin_25a_purchase_price`. Must be a string:", `margin_25a_purchase_price`))
        }
        self$`margin_25a_purchase_price` <- `margin_25a_purchase_price`
      }
      if (!is.null(`meter_point_id`)) {
        if (!(is.character(`meter_point_id`) && length(`meter_point_id`) == 1)) {
          stop(paste("Error! Invalid data for `meter_point_id`. Must be a string:", `meter_point_id`))
        }
        self$`meter_point_id` <- `meter_point_id`
      }
      if (!is.null(`price_components`)) {
        stopifnot(R6::is.R6(`price_components`))
        self$`price_components` <- `price_components`
      }
      if (!is.null(`product_id`)) {
        if (!(is.character(`product_id`) && length(`product_id`) == 1)) {
          stop(paste("Error! Invalid data for `product_id`. Must be a string:", `product_id`))
        }
        self$`product_id` <- `product_id`
      }
      if (!is.null(`product_sku`)) {
        if (!(is.character(`product_sku`) && length(`product_sku`) == 1)) {
          stop(paste("Error! Invalid data for `product_sku`. Must be a string:", `product_sku`))
        }
        self$`product_sku` <- `product_sku`
      }
      if (!is.null(`supplier_article_number`)) {
        if (!(is.character(`supplier_article_number`) && length(`supplier_article_number`) == 1)) {
          stop(paste("Error! Invalid data for `supplier_article_number`. Must be a string:", `supplier_article_number`))
        }
        self$`supplier_article_number` <- `supplier_article_number`
      }
      if (!is.null(`tax_rate`)) {
        if (!(is.character(`tax_rate`) && length(`tax_rate`) == 1)) {
          stop(paste("Error! Invalid data for `tax_rate`. Must be a string:", `tax_rate`))
        }
        self$`tax_rate` <- `tax_rate`
      }
      if (!is.null(`usage_data_id`)) {
        if (!(is.character(`usage_data_id`) && length(`usage_data_id`) == 1)) {
          stop(paste("Error! Invalid data for `usage_data_id`. Must be a string:", `usage_data_id`))
        }
        self$`usage_data_id` <- `usage_data_id`
      }
      if (!is.null(`vat_rate_nominal`)) {
        if (!(is.character(`vat_rate_nominal`) && length(`vat_rate_nominal`) == 1)) {
          stop(paste("Error! Invalid data for `vat_rate_nominal`. Must be a string:", `vat_rate_nominal`))
        }
        self$`vat_rate_nominal` <- `vat_rate_nominal`
      }
      if (!is.null(`vat_special_case`)) {
        if (!(is.character(`vat_special_case`) && length(`vat_special_case`) == 1)) {
          stop(paste("Error! Invalid data for `vat_special_case`. Must be a string:", `vat_special_case`))
        }
        self$`vat_special_case` <- `vat_special_case`
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
    #' @return InvoiceLineItem as a base R list.
    #' @examples
    #' # convert array of InvoiceLineItem (x) to a data frame
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
    #' Convert InvoiceLineItem to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      InvoiceLineItemObject <- list()
      if (!is.null(self$`article_number`)) {
        InvoiceLineItemObject[["article_number"]] <-
          self$`article_number`
      }
      if (!is.null(self$`description`)) {
        InvoiceLineItemObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`discount_amount`)) {
        InvoiceLineItemObject[["discount_amount"]] <-
          self$`discount_amount`
      }
      if (!is.null(self$`discount_percentage`)) {
        InvoiceLineItemObject[["discount_percentage"]] <-
          self$`discount_percentage`
      }
      if (!is.null(self$`input_vat_deductible`)) {
        InvoiceLineItemObject[["input_vat_deductible"]] <-
          self$`input_vat_deductible`
      }
      if (!is.null(self$`input_vat_rate`)) {
        InvoiceLineItemObject[["input_vat_rate"]] <-
          self$`input_vat_rate`
      }
      if (!is.null(self$`is_intra_community_acquisition`)) {
        InvoiceLineItemObject[["is_intra_community_acquisition"]] <-
          self$`is_intra_community_acquisition`
      }
      if (!is.null(self$`is_margin_25a`)) {
        InvoiceLineItemObject[["is_margin_25a"]] <-
          self$`is_margin_25a`
      }
      if (!is.null(self$`ledger_account`)) {
        InvoiceLineItemObject[["ledger_account"]] <-
          self$`ledger_account`
      }
      if (!is.null(self$`line_total`)) {
        InvoiceLineItemObject[["line_total"]] <-
          self$`line_total`
      }
      if (!is.null(self$`line_total_gross`)) {
        InvoiceLineItemObject[["line_total_gross"]] <-
          self$`line_total_gross`
      }
      if (!is.null(self$`margin_25a_purchase_price`)) {
        InvoiceLineItemObject[["margin_25a_purchase_price"]] <-
          self$`margin_25a_purchase_price`
      }
      if (!is.null(self$`meter_point_id`)) {
        InvoiceLineItemObject[["meter_point_id"]] <-
          self$`meter_point_id`
      }
      if (!is.null(self$`position`)) {
        InvoiceLineItemObject[["position"]] <-
          self$`position`
      }
      if (!is.null(self$`price_components`)) {
        InvoiceLineItemObject[["price_components"]] <-
          self$extractSimpleType(self$`price_components`)
      }
      if (!is.null(self$`product_id`)) {
        InvoiceLineItemObject[["product_id"]] <-
          self$`product_id`
      }
      if (!is.null(self$`product_sku`)) {
        InvoiceLineItemObject[["product_sku"]] <-
          self$`product_sku`
      }
      if (!is.null(self$`quantity`)) {
        InvoiceLineItemObject[["quantity"]] <-
          self$`quantity`
      }
      if (!is.null(self$`supplier_article_number`)) {
        InvoiceLineItemObject[["supplier_article_number"]] <-
          self$`supplier_article_number`
      }
      if (!is.null(self$`tax_rate`)) {
        InvoiceLineItemObject[["tax_rate"]] <-
          self$`tax_rate`
      }
      if (!is.null(self$`unit`)) {
        InvoiceLineItemObject[["unit"]] <-
          self$extractSimpleType(self$`unit`)
      }
      if (!is.null(self$`unit_price`)) {
        InvoiceLineItemObject[["unit_price"]] <-
          self$`unit_price`
      }
      if (!is.null(self$`usage_data_id`)) {
        InvoiceLineItemObject[["usage_data_id"]] <-
          self$`usage_data_id`
      }
      if (!is.null(self$`vat_rate_nominal`)) {
        InvoiceLineItemObject[["vat_rate_nominal"]] <-
          self$`vat_rate_nominal`
      }
      if (!is.null(self$`vat_special_case`)) {
        InvoiceLineItemObject[["vat_special_case"]] <-
          self$`vat_special_case`
      }
      return(InvoiceLineItemObject)
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
    #' Deserialize JSON string into an instance of InvoiceLineItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvoiceLineItem
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`article_number`)) {
        self$`article_number` <- this_object$`article_number`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`discount_amount`)) {
        self$`discount_amount` <- this_object$`discount_amount`
      }
      if (!is.null(this_object$`discount_percentage`)) {
        self$`discount_percentage` <- this_object$`discount_percentage`
      }
      if (!is.null(this_object$`input_vat_deductible`)) {
        self$`input_vat_deductible` <- this_object$`input_vat_deductible`
      }
      if (!is.null(this_object$`input_vat_rate`)) {
        self$`input_vat_rate` <- this_object$`input_vat_rate`
      }
      if (!is.null(this_object$`is_intra_community_acquisition`)) {
        self$`is_intra_community_acquisition` <- this_object$`is_intra_community_acquisition`
      }
      if (!is.null(this_object$`is_margin_25a`)) {
        self$`is_margin_25a` <- this_object$`is_margin_25a`
      }
      if (!is.null(this_object$`ledger_account`)) {
        self$`ledger_account` <- this_object$`ledger_account`
      }
      if (!is.null(this_object$`line_total`)) {
        self$`line_total` <- this_object$`line_total`
      }
      if (!is.null(this_object$`line_total_gross`)) {
        self$`line_total_gross` <- this_object$`line_total_gross`
      }
      if (!is.null(this_object$`margin_25a_purchase_price`)) {
        self$`margin_25a_purchase_price` <- this_object$`margin_25a_purchase_price`
      }
      if (!is.null(this_object$`meter_point_id`)) {
        self$`meter_point_id` <- this_object$`meter_point_id`
      }
      if (!is.null(this_object$`position`)) {
        self$`position` <- this_object$`position`
      }
      if (!is.null(this_object$`price_components`)) {
        `price_components_object` <- AnyType$new()
        `price_components_object`$fromJSON(jsonlite::toJSON(this_object$`price_components`, auto_unbox = TRUE, digits = NA))
        self$`price_components` <- `price_components_object`
      }
      if (!is.null(this_object$`product_id`)) {
        self$`product_id` <- this_object$`product_id`
      }
      if (!is.null(this_object$`product_sku`)) {
        self$`product_sku` <- this_object$`product_sku`
      }
      if (!is.null(this_object$`quantity`)) {
        self$`quantity` <- this_object$`quantity`
      }
      if (!is.null(this_object$`supplier_article_number`)) {
        self$`supplier_article_number` <- this_object$`supplier_article_number`
      }
      if (!is.null(this_object$`tax_rate`)) {
        self$`tax_rate` <- this_object$`tax_rate`
      }
      if (!is.null(this_object$`unit`)) {
        `unit_object` <- AnyType$new()
        `unit_object`$fromJSON(jsonlite::toJSON(this_object$`unit`, auto_unbox = TRUE, digits = NA))
        self$`unit` <- `unit_object`
      }
      if (!is.null(this_object$`unit_price`)) {
        self$`unit_price` <- this_object$`unit_price`
      }
      if (!is.null(this_object$`usage_data_id`)) {
        self$`usage_data_id` <- this_object$`usage_data_id`
      }
      if (!is.null(this_object$`vat_rate_nominal`)) {
        self$`vat_rate_nominal` <- this_object$`vat_rate_nominal`
      }
      if (!is.null(this_object$`vat_special_case`)) {
        self$`vat_special_case` <- this_object$`vat_special_case`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return InvoiceLineItem in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of InvoiceLineItem
    #'
    #' @param input_json the JSON input
    #' @return the instance of InvoiceLineItem
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`article_number` <- this_object$`article_number`
      self$`description` <- this_object$`description`
      self$`discount_amount` <- this_object$`discount_amount`
      self$`discount_percentage` <- this_object$`discount_percentage`
      self$`input_vat_deductible` <- this_object$`input_vat_deductible`
      self$`input_vat_rate` <- this_object$`input_vat_rate`
      self$`is_intra_community_acquisition` <- this_object$`is_intra_community_acquisition`
      self$`is_margin_25a` <- this_object$`is_margin_25a`
      self$`ledger_account` <- this_object$`ledger_account`
      self$`line_total` <- this_object$`line_total`
      self$`line_total_gross` <- this_object$`line_total_gross`
      self$`margin_25a_purchase_price` <- this_object$`margin_25a_purchase_price`
      self$`meter_point_id` <- this_object$`meter_point_id`
      self$`position` <- this_object$`position`
      self$`price_components` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`price_components`, auto_unbox = TRUE, digits = NA))
      self$`product_id` <- this_object$`product_id`
      self$`product_sku` <- this_object$`product_sku`
      self$`quantity` <- this_object$`quantity`
      self$`supplier_article_number` <- this_object$`supplier_article_number`
      self$`tax_rate` <- this_object$`tax_rate`
      self$`unit` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`unit`, auto_unbox = TRUE, digits = NA))
      self$`unit_price` <- this_object$`unit_price`
      self$`usage_data_id` <- this_object$`usage_data_id`
      self$`vat_rate_nominal` <- this_object$`vat_rate_nominal`
      self$`vat_special_case` <- this_object$`vat_special_case`
      self
    },

    #' @description
    #' Validate JSON input with respect to InvoiceLineItem and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `description` is missing."))
      }
      # check the required field `line_total`
      if (!is.null(input_json$`line_total`)) {
        if (!(is.character(input_json$`line_total`) && length(input_json$`line_total`) == 1)) {
          stop(paste("Error! Invalid data for `line_total`. Must be a string:", input_json$`line_total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `line_total` is missing."))
      }
      # check the required field `position`
      if (!is.null(input_json$`position`)) {
        if (!(is.numeric(input_json$`position`) && length(input_json$`position`) == 1)) {
          stop(paste("Error! Invalid data for `position`. Must be an integer:", input_json$`position`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `position` is missing."))
      }
      # check the required field `quantity`
      if (!is.null(input_json$`quantity`)) {
        if (!(is.character(input_json$`quantity`) && length(input_json$`quantity`) == 1)) {
          stop(paste("Error! Invalid data for `quantity`. Must be a string:", input_json$`quantity`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `quantity` is missing."))
      }
      # check the required field `unit`
      if (!is.null(input_json$`unit`)) {
        stopifnot(R6::is.R6(input_json$`unit`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `unit` is missing."))
      }
      # check the required field `unit_price`
      if (!is.null(input_json$`unit_price`)) {
        if (!(is.character(input_json$`unit_price`) && length(input_json$`unit_price`) == 1)) {
          stop(paste("Error! Invalid data for `unit_price`. Must be a string:", input_json$`unit_price`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for InvoiceLineItem: the required field `unit_price` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of InvoiceLineItem
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `line_total` is null
      if (is.null(self$`line_total`)) {
        return(FALSE)
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        return(FALSE)
      }

      if (self$`position` < 0) {
        return(FALSE)
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        return(FALSE)
      }

      # check if the required `unit_price` is null
      if (is.null(self$`unit_price`)) {
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
      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `line_total` is null
      if (is.null(self$`line_total`)) {
        invalid_fields["line_total"] <- "Non-nullable required field `line_total` cannot be null."
      }

      # check if the required `position` is null
      if (is.null(self$`position`)) {
        invalid_fields["position"] <- "Non-nullable required field `position` cannot be null."
      }

      if (self$`position` < 0) {
        invalid_fields["position"] <- "Invalid value for `position`, must be bigger than or equal to 0."
      }

      # check if the required `quantity` is null
      if (is.null(self$`quantity`)) {
        invalid_fields["quantity"] <- "Non-nullable required field `quantity` cannot be null."
      }

      # check if the required `unit_price` is null
      if (is.null(self$`unit_price`)) {
        invalid_fields["unit_price"] <- "Non-nullable required field `unit_price` cannot be null."
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
# InvoiceLineItem$unlock()
#
## Below is an example to define the print function
# InvoiceLineItem$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# InvoiceLineItem$lock()

