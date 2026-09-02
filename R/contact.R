#' Create a new Contact
#'
#' @description
#' Contact Class
#'
#' @docType class
#' @title Contact
#' @description Contact Class
#' @format An \code{R6Class} generator object
#' @field account_holder  character [optional]
#' @field acquisition_cost  character [optional]
#' @field address_supplement  character [optional]
#' @field attention  character [optional]
#' @field bank_name  character [optional]
#' @field bic  character [optional]
#' @field buyer_reference  character [optional]
#' @field category  character [optional]
#' @field certificate_authority  character [optional]
#' @field certificate_number  character [optional]
#' @field certificate_paragraph  character [optional]
#' @field certificate_valid_until  character [optional]
#' @field city  character [optional]
#' @field company_name  character [optional]
#' @field contact_id  character
#' @field contact_persons  \link{AnyType}
#' @field contact_type  character
#' @field country  character [optional]
#' @field created_at  character
#' @field credit_limit  character [optional]
#' @field creditor_account_skr03  character [optional]
#' @field creditor_account_skr04  character [optional]
#' @field currency  character [optional]
#' @field customer_number  character [optional]
#' @field debitor_account_skr03  character [optional]
#' @field debitor_account_skr04  character [optional]
#' @field default_debitor_number  character [optional]
#' @field delivery_block  character [optional]
#' @field department  character [optional]
#' @field discount_days  integer [optional]
#' @field discount_percentage  character [optional]
#' @field donation_receipt_eligible  character [optional]
#' @field email  character [optional]
#' @field external_id  character [optional]
#' @field fax  character [optional]
#' @field iban  character [optional]
#' @field industry  character [optional]
#' @field is_active  character [optional]
#' @field is_member  character [optional]
#' @field is_nonprofit  character [optional]
#' @field last_contact_date  character [optional]
#' @field last_purchase_date  character [optional]
#' @field leitweg_id  character [optional]
#' @field lifetime_value  character [optional]
#' @field mandate_date  character [optional]
#' @field mandate_reference  character [optional]
#' @field marketing_consent  character [optional]
#' @field marketing_consent_at  character [optional]
#' @field marketing_consent_source  character [optional]
#' @field mobile  character [optional]
#' @field name  character
#' @field next_contact_date  character [optional]
#' @field notes  character [optional]
#' @field opening_balance  character [optional]
#' @field opening_balance_date  character [optional]
#' @field order_reference  character [optional]
#' @field payment_block  character [optional]
#' @field payment_grace_period_days  integer [optional]
#' @field payment_methods  list(character) [optional]
#' @field payment_terms  character [optional]
#' @field phone  character [optional]
#' @field rating  integer [optional]
#' @field sales_representative  character [optional]
#' @field social_media  \link{AnyType}
#' @field source  character [optional]
#' @field state  character [optional]
#' @field street  character [optional]
#' @field street_number  character [optional]
#' @field supplier_number  character [optional]
#' @field tags  list(character) [optional]
#' @field tax_country  character [optional]
#' @field tax_number  character [optional]
#' @field tax_office  character [optional]
#' @field total_invoices  integer [optional]
#' @field total_revenue  character [optional]
#' @field updated_at  character [optional]
#' @field vat_id  character [optional]
#' @field vat_id_validated  character [optional]
#' @field vat_id_validation_date  character [optional]
#' @field website  character [optional]
#' @field zip  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Contact <- R6::R6Class(
  "Contact",
  public = list(
    `account_holder` = NULL,
    `acquisition_cost` = NULL,
    `address_supplement` = NULL,
    `attention` = NULL,
    `bank_name` = NULL,
    `bic` = NULL,
    `buyer_reference` = NULL,
    `category` = NULL,
    `certificate_authority` = NULL,
    `certificate_number` = NULL,
    `certificate_paragraph` = NULL,
    `certificate_valid_until` = NULL,
    `city` = NULL,
    `company_name` = NULL,
    `contact_id` = NULL,
    `contact_persons` = NULL,
    `contact_type` = NULL,
    `country` = NULL,
    `created_at` = NULL,
    `credit_limit` = NULL,
    `creditor_account_skr03` = NULL,
    `creditor_account_skr04` = NULL,
    `currency` = NULL,
    `customer_number` = NULL,
    `debitor_account_skr03` = NULL,
    `debitor_account_skr04` = NULL,
    `default_debitor_number` = NULL,
    `delivery_block` = NULL,
    `department` = NULL,
    `discount_days` = NULL,
    `discount_percentage` = NULL,
    `donation_receipt_eligible` = NULL,
    `email` = NULL,
    `external_id` = NULL,
    `fax` = NULL,
    `iban` = NULL,
    `industry` = NULL,
    `is_active` = NULL,
    `is_member` = NULL,
    `is_nonprofit` = NULL,
    `last_contact_date` = NULL,
    `last_purchase_date` = NULL,
    `leitweg_id` = NULL,
    `lifetime_value` = NULL,
    `mandate_date` = NULL,
    `mandate_reference` = NULL,
    `marketing_consent` = NULL,
    `marketing_consent_at` = NULL,
    `marketing_consent_source` = NULL,
    `mobile` = NULL,
    `name` = NULL,
    `next_contact_date` = NULL,
    `notes` = NULL,
    `opening_balance` = NULL,
    `opening_balance_date` = NULL,
    `order_reference` = NULL,
    `payment_block` = NULL,
    `payment_grace_period_days` = NULL,
    `payment_methods` = NULL,
    `payment_terms` = NULL,
    `phone` = NULL,
    `rating` = NULL,
    `sales_representative` = NULL,
    `social_media` = NULL,
    `source` = NULL,
    `state` = NULL,
    `street` = NULL,
    `street_number` = NULL,
    `supplier_number` = NULL,
    `tags` = NULL,
    `tax_country` = NULL,
    `tax_number` = NULL,
    `tax_office` = NULL,
    `total_invoices` = NULL,
    `total_revenue` = NULL,
    `updated_at` = NULL,
    `vat_id` = NULL,
    `vat_id_validated` = NULL,
    `vat_id_validation_date` = NULL,
    `website` = NULL,
    `zip` = NULL,

    #' @description
    #' Initialize a new Contact class.
    #'
    #' @param contact_id contact_id
    #' @param contact_persons contact_persons
    #' @param contact_type contact_type
    #' @param created_at created_at
    #' @param name name
    #' @param social_media social_media
    #' @param account_holder account_holder
    #' @param acquisition_cost acquisition_cost
    #' @param address_supplement address_supplement
    #' @param attention attention
    #' @param bank_name bank_name
    #' @param bic bic
    #' @param buyer_reference buyer_reference
    #' @param category category
    #' @param certificate_authority certificate_authority
    #' @param certificate_number certificate_number
    #' @param certificate_paragraph certificate_paragraph
    #' @param certificate_valid_until certificate_valid_until
    #' @param city city
    #' @param company_name company_name
    #' @param country country
    #' @param credit_limit credit_limit
    #' @param creditor_account_skr03 creditor_account_skr03
    #' @param creditor_account_skr04 creditor_account_skr04
    #' @param currency currency
    #' @param customer_number customer_number
    #' @param debitor_account_skr03 debitor_account_skr03
    #' @param debitor_account_skr04 debitor_account_skr04
    #' @param default_debitor_number default_debitor_number
    #' @param delivery_block delivery_block
    #' @param department department
    #' @param discount_days discount_days
    #' @param discount_percentage discount_percentage
    #' @param donation_receipt_eligible donation_receipt_eligible
    #' @param email email
    #' @param external_id external_id
    #' @param fax fax
    #' @param iban iban
    #' @param industry industry
    #' @param is_active is_active
    #' @param is_member is_member
    #' @param is_nonprofit is_nonprofit
    #' @param last_contact_date last_contact_date
    #' @param last_purchase_date last_purchase_date
    #' @param leitweg_id leitweg_id
    #' @param lifetime_value lifetime_value
    #' @param mandate_date mandate_date
    #' @param mandate_reference mandate_reference
    #' @param marketing_consent marketing_consent
    #' @param marketing_consent_at marketing_consent_at
    #' @param marketing_consent_source marketing_consent_source
    #' @param mobile mobile
    #' @param next_contact_date next_contact_date
    #' @param notes notes
    #' @param opening_balance opening_balance
    #' @param opening_balance_date opening_balance_date
    #' @param order_reference order_reference
    #' @param payment_block payment_block
    #' @param payment_grace_period_days payment_grace_period_days
    #' @param payment_methods payment_methods
    #' @param payment_terms payment_terms
    #' @param phone phone
    #' @param rating rating
    #' @param sales_representative sales_representative
    #' @param source source
    #' @param state state
    #' @param street street
    #' @param street_number street_number
    #' @param supplier_number supplier_number
    #' @param tags tags
    #' @param tax_country tax_country
    #' @param tax_number tax_number
    #' @param tax_office tax_office
    #' @param total_invoices total_invoices
    #' @param total_revenue total_revenue
    #' @param updated_at updated_at
    #' @param vat_id vat_id
    #' @param vat_id_validated vat_id_validated
    #' @param vat_id_validation_date vat_id_validation_date
    #' @param website website
    #' @param zip zip
    #' @param ... Other optional arguments.
    initialize = function(`contact_id`, `contact_persons`, `contact_type`, `created_at`, `name`, `social_media`, `account_holder` = NULL, `acquisition_cost` = NULL, `address_supplement` = NULL, `attention` = NULL, `bank_name` = NULL, `bic` = NULL, `buyer_reference` = NULL, `category` = NULL, `certificate_authority` = NULL, `certificate_number` = NULL, `certificate_paragraph` = NULL, `certificate_valid_until` = NULL, `city` = NULL, `company_name` = NULL, `country` = NULL, `credit_limit` = NULL, `creditor_account_skr03` = NULL, `creditor_account_skr04` = NULL, `currency` = NULL, `customer_number` = NULL, `debitor_account_skr03` = NULL, `debitor_account_skr04` = NULL, `default_debitor_number` = NULL, `delivery_block` = NULL, `department` = NULL, `discount_days` = NULL, `discount_percentage` = NULL, `donation_receipt_eligible` = NULL, `email` = NULL, `external_id` = NULL, `fax` = NULL, `iban` = NULL, `industry` = NULL, `is_active` = NULL, `is_member` = NULL, `is_nonprofit` = NULL, `last_contact_date` = NULL, `last_purchase_date` = NULL, `leitweg_id` = NULL, `lifetime_value` = NULL, `mandate_date` = NULL, `mandate_reference` = NULL, `marketing_consent` = NULL, `marketing_consent_at` = NULL, `marketing_consent_source` = NULL, `mobile` = NULL, `next_contact_date` = NULL, `notes` = NULL, `opening_balance` = NULL, `opening_balance_date` = NULL, `order_reference` = NULL, `payment_block` = NULL, `payment_grace_period_days` = NULL, `payment_methods` = NULL, `payment_terms` = NULL, `phone` = NULL, `rating` = NULL, `sales_representative` = NULL, `source` = NULL, `state` = NULL, `street` = NULL, `street_number` = NULL, `supplier_number` = NULL, `tags` = NULL, `tax_country` = NULL, `tax_number` = NULL, `tax_office` = NULL, `total_invoices` = NULL, `total_revenue` = NULL, `updated_at` = NULL, `vat_id` = NULL, `vat_id_validated` = NULL, `vat_id_validation_date` = NULL, `website` = NULL, `zip` = NULL, ...) {
      if (!missing(`contact_id`)) {
        if (!(is.character(`contact_id`) && length(`contact_id`) == 1)) {
          stop(paste("Error! Invalid data for `contact_id`. Must be a string:", `contact_id`))
        }
        self$`contact_id` <- `contact_id`
      }
      if (!missing(`contact_persons`)) {
        stopifnot(R6::is.R6(`contact_persons`))
        self$`contact_persons` <- `contact_persons`
      }
      if (!missing(`contact_type`)) {
        if (!(is.character(`contact_type`) && length(`contact_type`) == 1)) {
          stop(paste("Error! Invalid data for `contact_type`. Must be a string:", `contact_type`))
        }
        self$`contact_type` <- `contact_type`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`social_media`)) {
        stopifnot(R6::is.R6(`social_media`))
        self$`social_media` <- `social_media`
      }
      if (!is.null(`account_holder`)) {
        if (!(is.character(`account_holder`) && length(`account_holder`) == 1)) {
          stop(paste("Error! Invalid data for `account_holder`. Must be a string:", `account_holder`))
        }
        self$`account_holder` <- `account_holder`
      }
      if (!is.null(`acquisition_cost`)) {
        if (!(is.character(`acquisition_cost`) && length(`acquisition_cost`) == 1)) {
          stop(paste("Error! Invalid data for `acquisition_cost`. Must be a string:", `acquisition_cost`))
        }
        self$`acquisition_cost` <- `acquisition_cost`
      }
      if (!is.null(`address_supplement`)) {
        if (!(is.character(`address_supplement`) && length(`address_supplement`) == 1)) {
          stop(paste("Error! Invalid data for `address_supplement`. Must be a string:", `address_supplement`))
        }
        self$`address_supplement` <- `address_supplement`
      }
      if (!is.null(`attention`)) {
        if (!(is.character(`attention`) && length(`attention`) == 1)) {
          stop(paste("Error! Invalid data for `attention`. Must be a string:", `attention`))
        }
        self$`attention` <- `attention`
      }
      if (!is.null(`bank_name`)) {
        if (!(is.character(`bank_name`) && length(`bank_name`) == 1)) {
          stop(paste("Error! Invalid data for `bank_name`. Must be a string:", `bank_name`))
        }
        self$`bank_name` <- `bank_name`
      }
      if (!is.null(`bic`)) {
        if (!(is.character(`bic`) && length(`bic`) == 1)) {
          stop(paste("Error! Invalid data for `bic`. Must be a string:", `bic`))
        }
        self$`bic` <- `bic`
      }
      if (!is.null(`buyer_reference`)) {
        if (!(is.character(`buyer_reference`) && length(`buyer_reference`) == 1)) {
          stop(paste("Error! Invalid data for `buyer_reference`. Must be a string:", `buyer_reference`))
        }
        self$`buyer_reference` <- `buyer_reference`
      }
      if (!is.null(`category`)) {
        if (!(is.character(`category`) && length(`category`) == 1)) {
          stop(paste("Error! Invalid data for `category`. Must be a string:", `category`))
        }
        self$`category` <- `category`
      }
      if (!is.null(`certificate_authority`)) {
        if (!(is.character(`certificate_authority`) && length(`certificate_authority`) == 1)) {
          stop(paste("Error! Invalid data for `certificate_authority`. Must be a string:", `certificate_authority`))
        }
        self$`certificate_authority` <- `certificate_authority`
      }
      if (!is.null(`certificate_number`)) {
        if (!(is.character(`certificate_number`) && length(`certificate_number`) == 1)) {
          stop(paste("Error! Invalid data for `certificate_number`. Must be a string:", `certificate_number`))
        }
        self$`certificate_number` <- `certificate_number`
      }
      if (!is.null(`certificate_paragraph`)) {
        if (!(is.character(`certificate_paragraph`) && length(`certificate_paragraph`) == 1)) {
          stop(paste("Error! Invalid data for `certificate_paragraph`. Must be a string:", `certificate_paragraph`))
        }
        self$`certificate_paragraph` <- `certificate_paragraph`
      }
      if (!is.null(`certificate_valid_until`)) {
        if (!(is.character(`certificate_valid_until`) && length(`certificate_valid_until`) == 1)) {
          stop(paste("Error! Invalid data for `certificate_valid_until`. Must be a string:", `certificate_valid_until`))
        }
        self$`certificate_valid_until` <- `certificate_valid_until`
      }
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`company_name`)) {
        if (!(is.character(`company_name`) && length(`company_name`) == 1)) {
          stop(paste("Error! Invalid data for `company_name`. Must be a string:", `company_name`))
        }
        self$`company_name` <- `company_name`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!is.null(`credit_limit`)) {
        if (!(is.character(`credit_limit`) && length(`credit_limit`) == 1)) {
          stop(paste("Error! Invalid data for `credit_limit`. Must be a string:", `credit_limit`))
        }
        self$`credit_limit` <- `credit_limit`
      }
      if (!is.null(`creditor_account_skr03`)) {
        if (!(is.character(`creditor_account_skr03`) && length(`creditor_account_skr03`) == 1)) {
          stop(paste("Error! Invalid data for `creditor_account_skr03`. Must be a string:", `creditor_account_skr03`))
        }
        self$`creditor_account_skr03` <- `creditor_account_skr03`
      }
      if (!is.null(`creditor_account_skr04`)) {
        if (!(is.character(`creditor_account_skr04`) && length(`creditor_account_skr04`) == 1)) {
          stop(paste("Error! Invalid data for `creditor_account_skr04`. Must be a string:", `creditor_account_skr04`))
        }
        self$`creditor_account_skr04` <- `creditor_account_skr04`
      }
      if (!is.null(`currency`)) {
        if (!(is.character(`currency`) && length(`currency`) == 1)) {
          stop(paste("Error! Invalid data for `currency`. Must be a string:", `currency`))
        }
        self$`currency` <- `currency`
      }
      if (!is.null(`customer_number`)) {
        if (!(is.character(`customer_number`) && length(`customer_number`) == 1)) {
          stop(paste("Error! Invalid data for `customer_number`. Must be a string:", `customer_number`))
        }
        self$`customer_number` <- `customer_number`
      }
      if (!is.null(`debitor_account_skr03`)) {
        if (!(is.character(`debitor_account_skr03`) && length(`debitor_account_skr03`) == 1)) {
          stop(paste("Error! Invalid data for `debitor_account_skr03`. Must be a string:", `debitor_account_skr03`))
        }
        self$`debitor_account_skr03` <- `debitor_account_skr03`
      }
      if (!is.null(`debitor_account_skr04`)) {
        if (!(is.character(`debitor_account_skr04`) && length(`debitor_account_skr04`) == 1)) {
          stop(paste("Error! Invalid data for `debitor_account_skr04`. Must be a string:", `debitor_account_skr04`))
        }
        self$`debitor_account_skr04` <- `debitor_account_skr04`
      }
      if (!is.null(`default_debitor_number`)) {
        if (!(is.character(`default_debitor_number`) && length(`default_debitor_number`) == 1)) {
          stop(paste("Error! Invalid data for `default_debitor_number`. Must be a string:", `default_debitor_number`))
        }
        self$`default_debitor_number` <- `default_debitor_number`
      }
      if (!is.null(`delivery_block`)) {
        if (!(is.logical(`delivery_block`) && length(`delivery_block`) == 1)) {
          stop(paste("Error! Invalid data for `delivery_block`. Must be a boolean:", `delivery_block`))
        }
        self$`delivery_block` <- `delivery_block`
      }
      if (!is.null(`department`)) {
        if (!(is.character(`department`) && length(`department`) == 1)) {
          stop(paste("Error! Invalid data for `department`. Must be a string:", `department`))
        }
        self$`department` <- `department`
      }
      if (!is.null(`discount_days`)) {
        if (!(is.numeric(`discount_days`) && length(`discount_days`) == 1)) {
          stop(paste("Error! Invalid data for `discount_days`. Must be an integer:", `discount_days`))
        }
        self$`discount_days` <- `discount_days`
      }
      if (!is.null(`discount_percentage`)) {
        if (!(is.character(`discount_percentage`) && length(`discount_percentage`) == 1)) {
          stop(paste("Error! Invalid data for `discount_percentage`. Must be a string:", `discount_percentage`))
        }
        self$`discount_percentage` <- `discount_percentage`
      }
      if (!is.null(`donation_receipt_eligible`)) {
        if (!(is.logical(`donation_receipt_eligible`) && length(`donation_receipt_eligible`) == 1)) {
          stop(paste("Error! Invalid data for `donation_receipt_eligible`. Must be a boolean:", `donation_receipt_eligible`))
        }
        self$`donation_receipt_eligible` <- `donation_receipt_eligible`
      }
      if (!is.null(`email`)) {
        if (!(is.character(`email`) && length(`email`) == 1)) {
          stop(paste("Error! Invalid data for `email`. Must be a string:", `email`))
        }
        self$`email` <- `email`
      }
      if (!is.null(`external_id`)) {
        if (!(is.character(`external_id`) && length(`external_id`) == 1)) {
          stop(paste("Error! Invalid data for `external_id`. Must be a string:", `external_id`))
        }
        self$`external_id` <- `external_id`
      }
      if (!is.null(`fax`)) {
        if (!(is.character(`fax`) && length(`fax`) == 1)) {
          stop(paste("Error! Invalid data for `fax`. Must be a string:", `fax`))
        }
        self$`fax` <- `fax`
      }
      if (!is.null(`iban`)) {
        if (!(is.character(`iban`) && length(`iban`) == 1)) {
          stop(paste("Error! Invalid data for `iban`. Must be a string:", `iban`))
        }
        self$`iban` <- `iban`
      }
      if (!is.null(`industry`)) {
        if (!(is.character(`industry`) && length(`industry`) == 1)) {
          stop(paste("Error! Invalid data for `industry`. Must be a string:", `industry`))
        }
        self$`industry` <- `industry`
      }
      if (!is.null(`is_active`)) {
        if (!(is.logical(`is_active`) && length(`is_active`) == 1)) {
          stop(paste("Error! Invalid data for `is_active`. Must be a boolean:", `is_active`))
        }
        self$`is_active` <- `is_active`
      }
      if (!is.null(`is_member`)) {
        if (!(is.logical(`is_member`) && length(`is_member`) == 1)) {
          stop(paste("Error! Invalid data for `is_member`. Must be a boolean:", `is_member`))
        }
        self$`is_member` <- `is_member`
      }
      if (!is.null(`is_nonprofit`)) {
        if (!(is.logical(`is_nonprofit`) && length(`is_nonprofit`) == 1)) {
          stop(paste("Error! Invalid data for `is_nonprofit`. Must be a boolean:", `is_nonprofit`))
        }
        self$`is_nonprofit` <- `is_nonprofit`
      }
      if (!is.null(`last_contact_date`)) {
        if (!(is.character(`last_contact_date`) && length(`last_contact_date`) == 1)) {
          stop(paste("Error! Invalid data for `last_contact_date`. Must be a string:", `last_contact_date`))
        }
        self$`last_contact_date` <- `last_contact_date`
      }
      if (!is.null(`last_purchase_date`)) {
        if (!(is.character(`last_purchase_date`) && length(`last_purchase_date`) == 1)) {
          stop(paste("Error! Invalid data for `last_purchase_date`. Must be a string:", `last_purchase_date`))
        }
        self$`last_purchase_date` <- `last_purchase_date`
      }
      if (!is.null(`leitweg_id`)) {
        if (!(is.character(`leitweg_id`) && length(`leitweg_id`) == 1)) {
          stop(paste("Error! Invalid data for `leitweg_id`. Must be a string:", `leitweg_id`))
        }
        self$`leitweg_id` <- `leitweg_id`
      }
      if (!is.null(`lifetime_value`)) {
        if (!(is.character(`lifetime_value`) && length(`lifetime_value`) == 1)) {
          stop(paste("Error! Invalid data for `lifetime_value`. Must be a string:", `lifetime_value`))
        }
        self$`lifetime_value` <- `lifetime_value`
      }
      if (!is.null(`mandate_date`)) {
        if (!(is.character(`mandate_date`) && length(`mandate_date`) == 1)) {
          stop(paste("Error! Invalid data for `mandate_date`. Must be a string:", `mandate_date`))
        }
        self$`mandate_date` <- `mandate_date`
      }
      if (!is.null(`mandate_reference`)) {
        if (!(is.character(`mandate_reference`) && length(`mandate_reference`) == 1)) {
          stop(paste("Error! Invalid data for `mandate_reference`. Must be a string:", `mandate_reference`))
        }
        self$`mandate_reference` <- `mandate_reference`
      }
      if (!is.null(`marketing_consent`)) {
        if (!(is.logical(`marketing_consent`) && length(`marketing_consent`) == 1)) {
          stop(paste("Error! Invalid data for `marketing_consent`. Must be a boolean:", `marketing_consent`))
        }
        self$`marketing_consent` <- `marketing_consent`
      }
      if (!is.null(`marketing_consent_at`)) {
        if (!(is.character(`marketing_consent_at`) && length(`marketing_consent_at`) == 1)) {
          stop(paste("Error! Invalid data for `marketing_consent_at`. Must be a string:", `marketing_consent_at`))
        }
        self$`marketing_consent_at` <- `marketing_consent_at`
      }
      if (!is.null(`marketing_consent_source`)) {
        if (!(is.character(`marketing_consent_source`) && length(`marketing_consent_source`) == 1)) {
          stop(paste("Error! Invalid data for `marketing_consent_source`. Must be a string:", `marketing_consent_source`))
        }
        self$`marketing_consent_source` <- `marketing_consent_source`
      }
      if (!is.null(`mobile`)) {
        if (!(is.character(`mobile`) && length(`mobile`) == 1)) {
          stop(paste("Error! Invalid data for `mobile`. Must be a string:", `mobile`))
        }
        self$`mobile` <- `mobile`
      }
      if (!is.null(`next_contact_date`)) {
        if (!(is.character(`next_contact_date`) && length(`next_contact_date`) == 1)) {
          stop(paste("Error! Invalid data for `next_contact_date`. Must be a string:", `next_contact_date`))
        }
        self$`next_contact_date` <- `next_contact_date`
      }
      if (!is.null(`notes`)) {
        if (!(is.character(`notes`) && length(`notes`) == 1)) {
          stop(paste("Error! Invalid data for `notes`. Must be a string:", `notes`))
        }
        self$`notes` <- `notes`
      }
      if (!is.null(`opening_balance`)) {
        if (!(is.character(`opening_balance`) && length(`opening_balance`) == 1)) {
          stop(paste("Error! Invalid data for `opening_balance`. Must be a string:", `opening_balance`))
        }
        self$`opening_balance` <- `opening_balance`
      }
      if (!is.null(`opening_balance_date`)) {
        if (!(is.character(`opening_balance_date`) && length(`opening_balance_date`) == 1)) {
          stop(paste("Error! Invalid data for `opening_balance_date`. Must be a string:", `opening_balance_date`))
        }
        self$`opening_balance_date` <- `opening_balance_date`
      }
      if (!is.null(`order_reference`)) {
        if (!(is.character(`order_reference`) && length(`order_reference`) == 1)) {
          stop(paste("Error! Invalid data for `order_reference`. Must be a string:", `order_reference`))
        }
        self$`order_reference` <- `order_reference`
      }
      if (!is.null(`payment_block`)) {
        if (!(is.logical(`payment_block`) && length(`payment_block`) == 1)) {
          stop(paste("Error! Invalid data for `payment_block`. Must be a boolean:", `payment_block`))
        }
        self$`payment_block` <- `payment_block`
      }
      if (!is.null(`payment_grace_period_days`)) {
        if (!(is.numeric(`payment_grace_period_days`) && length(`payment_grace_period_days`) == 1)) {
          stop(paste("Error! Invalid data for `payment_grace_period_days`. Must be an integer:", `payment_grace_period_days`))
        }
        self$`payment_grace_period_days` <- `payment_grace_period_days`
      }
      if (!is.null(`payment_methods`)) {
        stopifnot(is.vector(`payment_methods`), length(`payment_methods`) != 0)
        sapply(`payment_methods`, function(x) stopifnot(is.character(x)))
        self$`payment_methods` <- `payment_methods`
      }
      if (!is.null(`payment_terms`)) {
        if (!(is.character(`payment_terms`) && length(`payment_terms`) == 1)) {
          stop(paste("Error! Invalid data for `payment_terms`. Must be a string:", `payment_terms`))
        }
        self$`payment_terms` <- `payment_terms`
      }
      if (!is.null(`phone`)) {
        if (!(is.character(`phone`) && length(`phone`) == 1)) {
          stop(paste("Error! Invalid data for `phone`. Must be a string:", `phone`))
        }
        self$`phone` <- `phone`
      }
      if (!is.null(`rating`)) {
        if (!(is.numeric(`rating`) && length(`rating`) == 1)) {
          stop(paste("Error! Invalid data for `rating`. Must be an integer:", `rating`))
        }
        self$`rating` <- `rating`
      }
      if (!is.null(`sales_representative`)) {
        if (!(is.character(`sales_representative`) && length(`sales_representative`) == 1)) {
          stop(paste("Error! Invalid data for `sales_representative`. Must be a string:", `sales_representative`))
        }
        self$`sales_representative` <- `sales_representative`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`state`)) {
        if (!(is.character(`state`) && length(`state`) == 1)) {
          stop(paste("Error! Invalid data for `state`. Must be a string:", `state`))
        }
        self$`state` <- `state`
      }
      if (!is.null(`street`)) {
        if (!(is.character(`street`) && length(`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", `street`))
        }
        self$`street` <- `street`
      }
      if (!is.null(`street_number`)) {
        if (!(is.character(`street_number`) && length(`street_number`) == 1)) {
          stop(paste("Error! Invalid data for `street_number`. Must be a string:", `street_number`))
        }
        self$`street_number` <- `street_number`
      }
      if (!is.null(`supplier_number`)) {
        if (!(is.character(`supplier_number`) && length(`supplier_number`) == 1)) {
          stop(paste("Error! Invalid data for `supplier_number`. Must be a string:", `supplier_number`))
        }
        self$`supplier_number` <- `supplier_number`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`tax_country`)) {
        if (!(is.character(`tax_country`) && length(`tax_country`) == 1)) {
          stop(paste("Error! Invalid data for `tax_country`. Must be a string:", `tax_country`))
        }
        self$`tax_country` <- `tax_country`
      }
      if (!is.null(`tax_number`)) {
        if (!(is.character(`tax_number`) && length(`tax_number`) == 1)) {
          stop(paste("Error! Invalid data for `tax_number`. Must be a string:", `tax_number`))
        }
        self$`tax_number` <- `tax_number`
      }
      if (!is.null(`tax_office`)) {
        if (!(is.character(`tax_office`) && length(`tax_office`) == 1)) {
          stop(paste("Error! Invalid data for `tax_office`. Must be a string:", `tax_office`))
        }
        self$`tax_office` <- `tax_office`
      }
      if (!is.null(`total_invoices`)) {
        if (!(is.numeric(`total_invoices`) && length(`total_invoices`) == 1)) {
          stop(paste("Error! Invalid data for `total_invoices`. Must be an integer:", `total_invoices`))
        }
        self$`total_invoices` <- `total_invoices`
      }
      if (!is.null(`total_revenue`)) {
        if (!(is.character(`total_revenue`) && length(`total_revenue`) == 1)) {
          stop(paste("Error! Invalid data for `total_revenue`. Must be a string:", `total_revenue`))
        }
        self$`total_revenue` <- `total_revenue`
      }
      if (!is.null(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`vat_id`)) {
        if (!(is.character(`vat_id`) && length(`vat_id`) == 1)) {
          stop(paste("Error! Invalid data for `vat_id`. Must be a string:", `vat_id`))
        }
        self$`vat_id` <- `vat_id`
      }
      if (!is.null(`vat_id_validated`)) {
        if (!(is.logical(`vat_id_validated`) && length(`vat_id_validated`) == 1)) {
          stop(paste("Error! Invalid data for `vat_id_validated`. Must be a boolean:", `vat_id_validated`))
        }
        self$`vat_id_validated` <- `vat_id_validated`
      }
      if (!is.null(`vat_id_validation_date`)) {
        if (!(is.character(`vat_id_validation_date`) && length(`vat_id_validation_date`) == 1)) {
          stop(paste("Error! Invalid data for `vat_id_validation_date`. Must be a string:", `vat_id_validation_date`))
        }
        self$`vat_id_validation_date` <- `vat_id_validation_date`
      }
      if (!is.null(`website`)) {
        if (!(is.character(`website`) && length(`website`) == 1)) {
          stop(paste("Error! Invalid data for `website`. Must be a string:", `website`))
        }
        self$`website` <- `website`
      }
      if (!is.null(`zip`)) {
        if (!(is.character(`zip`) && length(`zip`) == 1)) {
          stop(paste("Error! Invalid data for `zip`. Must be a string:", `zip`))
        }
        self$`zip` <- `zip`
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
    #' @return Contact as a base R list.
    #' @examples
    #' # convert array of Contact (x) to a data frame
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
    #' Convert Contact to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ContactObject <- list()
      if (!is.null(self$`account_holder`)) {
        ContactObject[["account_holder"]] <-
          self$`account_holder`
      }
      if (!is.null(self$`acquisition_cost`)) {
        ContactObject[["acquisition_cost"]] <-
          self$`acquisition_cost`
      }
      if (!is.null(self$`address_supplement`)) {
        ContactObject[["address_supplement"]] <-
          self$`address_supplement`
      }
      if (!is.null(self$`attention`)) {
        ContactObject[["attention"]] <-
          self$`attention`
      }
      if (!is.null(self$`bank_name`)) {
        ContactObject[["bank_name"]] <-
          self$`bank_name`
      }
      if (!is.null(self$`bic`)) {
        ContactObject[["bic"]] <-
          self$`bic`
      }
      if (!is.null(self$`buyer_reference`)) {
        ContactObject[["buyer_reference"]] <-
          self$`buyer_reference`
      }
      if (!is.null(self$`category`)) {
        ContactObject[["category"]] <-
          self$`category`
      }
      if (!is.null(self$`certificate_authority`)) {
        ContactObject[["certificate_authority"]] <-
          self$`certificate_authority`
      }
      if (!is.null(self$`certificate_number`)) {
        ContactObject[["certificate_number"]] <-
          self$`certificate_number`
      }
      if (!is.null(self$`certificate_paragraph`)) {
        ContactObject[["certificate_paragraph"]] <-
          self$`certificate_paragraph`
      }
      if (!is.null(self$`certificate_valid_until`)) {
        ContactObject[["certificate_valid_until"]] <-
          self$`certificate_valid_until`
      }
      if (!is.null(self$`city`)) {
        ContactObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`company_name`)) {
        ContactObject[["company_name"]] <-
          self$`company_name`
      }
      if (!is.null(self$`contact_id`)) {
        ContactObject[["contact_id"]] <-
          self$`contact_id`
      }
      if (!is.null(self$`contact_persons`)) {
        ContactObject[["contact_persons"]] <-
          self$extractSimpleType(self$`contact_persons`)
      }
      if (!is.null(self$`contact_type`)) {
        ContactObject[["contact_type"]] <-
          self$`contact_type`
      }
      if (!is.null(self$`country`)) {
        ContactObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`created_at`)) {
        ContactObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`credit_limit`)) {
        ContactObject[["credit_limit"]] <-
          self$`credit_limit`
      }
      if (!is.null(self$`creditor_account_skr03`)) {
        ContactObject[["creditor_account_skr03"]] <-
          self$`creditor_account_skr03`
      }
      if (!is.null(self$`creditor_account_skr04`)) {
        ContactObject[["creditor_account_skr04"]] <-
          self$`creditor_account_skr04`
      }
      if (!is.null(self$`currency`)) {
        ContactObject[["currency"]] <-
          self$`currency`
      }
      if (!is.null(self$`customer_number`)) {
        ContactObject[["customer_number"]] <-
          self$`customer_number`
      }
      if (!is.null(self$`debitor_account_skr03`)) {
        ContactObject[["debitor_account_skr03"]] <-
          self$`debitor_account_skr03`
      }
      if (!is.null(self$`debitor_account_skr04`)) {
        ContactObject[["debitor_account_skr04"]] <-
          self$`debitor_account_skr04`
      }
      if (!is.null(self$`default_debitor_number`)) {
        ContactObject[["default_debitor_number"]] <-
          self$`default_debitor_number`
      }
      if (!is.null(self$`delivery_block`)) {
        ContactObject[["delivery_block"]] <-
          self$`delivery_block`
      }
      if (!is.null(self$`department`)) {
        ContactObject[["department"]] <-
          self$`department`
      }
      if (!is.null(self$`discount_days`)) {
        ContactObject[["discount_days"]] <-
          self$`discount_days`
      }
      if (!is.null(self$`discount_percentage`)) {
        ContactObject[["discount_percentage"]] <-
          self$`discount_percentage`
      }
      if (!is.null(self$`donation_receipt_eligible`)) {
        ContactObject[["donation_receipt_eligible"]] <-
          self$`donation_receipt_eligible`
      }
      if (!is.null(self$`email`)) {
        ContactObject[["email"]] <-
          self$`email`
      }
      if (!is.null(self$`external_id`)) {
        ContactObject[["external_id"]] <-
          self$`external_id`
      }
      if (!is.null(self$`fax`)) {
        ContactObject[["fax"]] <-
          self$`fax`
      }
      if (!is.null(self$`iban`)) {
        ContactObject[["iban"]] <-
          self$`iban`
      }
      if (!is.null(self$`industry`)) {
        ContactObject[["industry"]] <-
          self$`industry`
      }
      if (!is.null(self$`is_active`)) {
        ContactObject[["is_active"]] <-
          self$`is_active`
      }
      if (!is.null(self$`is_member`)) {
        ContactObject[["is_member"]] <-
          self$`is_member`
      }
      if (!is.null(self$`is_nonprofit`)) {
        ContactObject[["is_nonprofit"]] <-
          self$`is_nonprofit`
      }
      if (!is.null(self$`last_contact_date`)) {
        ContactObject[["last_contact_date"]] <-
          self$`last_contact_date`
      }
      if (!is.null(self$`last_purchase_date`)) {
        ContactObject[["last_purchase_date"]] <-
          self$`last_purchase_date`
      }
      if (!is.null(self$`leitweg_id`)) {
        ContactObject[["leitweg_id"]] <-
          self$`leitweg_id`
      }
      if (!is.null(self$`lifetime_value`)) {
        ContactObject[["lifetime_value"]] <-
          self$`lifetime_value`
      }
      if (!is.null(self$`mandate_date`)) {
        ContactObject[["mandate_date"]] <-
          self$`mandate_date`
      }
      if (!is.null(self$`mandate_reference`)) {
        ContactObject[["mandate_reference"]] <-
          self$`mandate_reference`
      }
      if (!is.null(self$`marketing_consent`)) {
        ContactObject[["marketing_consent"]] <-
          self$`marketing_consent`
      }
      if (!is.null(self$`marketing_consent_at`)) {
        ContactObject[["marketing_consent_at"]] <-
          self$`marketing_consent_at`
      }
      if (!is.null(self$`marketing_consent_source`)) {
        ContactObject[["marketing_consent_source"]] <-
          self$`marketing_consent_source`
      }
      if (!is.null(self$`mobile`)) {
        ContactObject[["mobile"]] <-
          self$`mobile`
      }
      if (!is.null(self$`name`)) {
        ContactObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`next_contact_date`)) {
        ContactObject[["next_contact_date"]] <-
          self$`next_contact_date`
      }
      if (!is.null(self$`notes`)) {
        ContactObject[["notes"]] <-
          self$`notes`
      }
      if (!is.null(self$`opening_balance`)) {
        ContactObject[["opening_balance"]] <-
          self$`opening_balance`
      }
      if (!is.null(self$`opening_balance_date`)) {
        ContactObject[["opening_balance_date"]] <-
          self$`opening_balance_date`
      }
      if (!is.null(self$`order_reference`)) {
        ContactObject[["order_reference"]] <-
          self$`order_reference`
      }
      if (!is.null(self$`payment_block`)) {
        ContactObject[["payment_block"]] <-
          self$`payment_block`
      }
      if (!is.null(self$`payment_grace_period_days`)) {
        ContactObject[["payment_grace_period_days"]] <-
          self$`payment_grace_period_days`
      }
      if (!is.null(self$`payment_methods`)) {
        ContactObject[["payment_methods"]] <-
          self$`payment_methods`
      }
      if (!is.null(self$`payment_terms`)) {
        ContactObject[["payment_terms"]] <-
          self$`payment_terms`
      }
      if (!is.null(self$`phone`)) {
        ContactObject[["phone"]] <-
          self$`phone`
      }
      if (!is.null(self$`rating`)) {
        ContactObject[["rating"]] <-
          self$`rating`
      }
      if (!is.null(self$`sales_representative`)) {
        ContactObject[["sales_representative"]] <-
          self$`sales_representative`
      }
      if (!is.null(self$`social_media`)) {
        ContactObject[["social_media"]] <-
          self$extractSimpleType(self$`social_media`)
      }
      if (!is.null(self$`source`)) {
        ContactObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`state`)) {
        ContactObject[["state"]] <-
          self$`state`
      }
      if (!is.null(self$`street`)) {
        ContactObject[["street"]] <-
          self$`street`
      }
      if (!is.null(self$`street_number`)) {
        ContactObject[["street_number"]] <-
          self$`street_number`
      }
      if (!is.null(self$`supplier_number`)) {
        ContactObject[["supplier_number"]] <-
          self$`supplier_number`
      }
      if (!is.null(self$`tags`)) {
        ContactObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`tax_country`)) {
        ContactObject[["tax_country"]] <-
          self$`tax_country`
      }
      if (!is.null(self$`tax_number`)) {
        ContactObject[["tax_number"]] <-
          self$`tax_number`
      }
      if (!is.null(self$`tax_office`)) {
        ContactObject[["tax_office"]] <-
          self$`tax_office`
      }
      if (!is.null(self$`total_invoices`)) {
        ContactObject[["total_invoices"]] <-
          self$`total_invoices`
      }
      if (!is.null(self$`total_revenue`)) {
        ContactObject[["total_revenue"]] <-
          self$`total_revenue`
      }
      if (!is.null(self$`updated_at`)) {
        ContactObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`vat_id`)) {
        ContactObject[["vat_id"]] <-
          self$`vat_id`
      }
      if (!is.null(self$`vat_id_validated`)) {
        ContactObject[["vat_id_validated"]] <-
          self$`vat_id_validated`
      }
      if (!is.null(self$`vat_id_validation_date`)) {
        ContactObject[["vat_id_validation_date"]] <-
          self$`vat_id_validation_date`
      }
      if (!is.null(self$`website`)) {
        ContactObject[["website"]] <-
          self$`website`
      }
      if (!is.null(self$`zip`)) {
        ContactObject[["zip"]] <-
          self$`zip`
      }
      return(ContactObject)
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
    #' Deserialize JSON string into an instance of Contact
    #'
    #' @param input_json the JSON input
    #' @return the instance of Contact
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`account_holder`)) {
        self$`account_holder` <- this_object$`account_holder`
      }
      if (!is.null(this_object$`acquisition_cost`)) {
        self$`acquisition_cost` <- this_object$`acquisition_cost`
      }
      if (!is.null(this_object$`address_supplement`)) {
        self$`address_supplement` <- this_object$`address_supplement`
      }
      if (!is.null(this_object$`attention`)) {
        self$`attention` <- this_object$`attention`
      }
      if (!is.null(this_object$`bank_name`)) {
        self$`bank_name` <- this_object$`bank_name`
      }
      if (!is.null(this_object$`bic`)) {
        self$`bic` <- this_object$`bic`
      }
      if (!is.null(this_object$`buyer_reference`)) {
        self$`buyer_reference` <- this_object$`buyer_reference`
      }
      if (!is.null(this_object$`category`)) {
        self$`category` <- this_object$`category`
      }
      if (!is.null(this_object$`certificate_authority`)) {
        self$`certificate_authority` <- this_object$`certificate_authority`
      }
      if (!is.null(this_object$`certificate_number`)) {
        self$`certificate_number` <- this_object$`certificate_number`
      }
      if (!is.null(this_object$`certificate_paragraph`)) {
        self$`certificate_paragraph` <- this_object$`certificate_paragraph`
      }
      if (!is.null(this_object$`certificate_valid_until`)) {
        self$`certificate_valid_until` <- this_object$`certificate_valid_until`
      }
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`company_name`)) {
        self$`company_name` <- this_object$`company_name`
      }
      if (!is.null(this_object$`contact_id`)) {
        self$`contact_id` <- this_object$`contact_id`
      }
      if (!is.null(this_object$`contact_persons`)) {
        `contact_persons_object` <- AnyType$new()
        `contact_persons_object`$fromJSON(jsonlite::toJSON(this_object$`contact_persons`, auto_unbox = TRUE, digits = NA))
        self$`contact_persons` <- `contact_persons_object`
      }
      if (!is.null(this_object$`contact_type`)) {
        self$`contact_type` <- this_object$`contact_type`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`credit_limit`)) {
        self$`credit_limit` <- this_object$`credit_limit`
      }
      if (!is.null(this_object$`creditor_account_skr03`)) {
        self$`creditor_account_skr03` <- this_object$`creditor_account_skr03`
      }
      if (!is.null(this_object$`creditor_account_skr04`)) {
        self$`creditor_account_skr04` <- this_object$`creditor_account_skr04`
      }
      if (!is.null(this_object$`currency`)) {
        self$`currency` <- this_object$`currency`
      }
      if (!is.null(this_object$`customer_number`)) {
        self$`customer_number` <- this_object$`customer_number`
      }
      if (!is.null(this_object$`debitor_account_skr03`)) {
        self$`debitor_account_skr03` <- this_object$`debitor_account_skr03`
      }
      if (!is.null(this_object$`debitor_account_skr04`)) {
        self$`debitor_account_skr04` <- this_object$`debitor_account_skr04`
      }
      if (!is.null(this_object$`default_debitor_number`)) {
        self$`default_debitor_number` <- this_object$`default_debitor_number`
      }
      if (!is.null(this_object$`delivery_block`)) {
        self$`delivery_block` <- this_object$`delivery_block`
      }
      if (!is.null(this_object$`department`)) {
        self$`department` <- this_object$`department`
      }
      if (!is.null(this_object$`discount_days`)) {
        self$`discount_days` <- this_object$`discount_days`
      }
      if (!is.null(this_object$`discount_percentage`)) {
        self$`discount_percentage` <- this_object$`discount_percentage`
      }
      if (!is.null(this_object$`donation_receipt_eligible`)) {
        self$`donation_receipt_eligible` <- this_object$`donation_receipt_eligible`
      }
      if (!is.null(this_object$`email`)) {
        self$`email` <- this_object$`email`
      }
      if (!is.null(this_object$`external_id`)) {
        self$`external_id` <- this_object$`external_id`
      }
      if (!is.null(this_object$`fax`)) {
        self$`fax` <- this_object$`fax`
      }
      if (!is.null(this_object$`iban`)) {
        self$`iban` <- this_object$`iban`
      }
      if (!is.null(this_object$`industry`)) {
        self$`industry` <- this_object$`industry`
      }
      if (!is.null(this_object$`is_active`)) {
        self$`is_active` <- this_object$`is_active`
      }
      if (!is.null(this_object$`is_member`)) {
        self$`is_member` <- this_object$`is_member`
      }
      if (!is.null(this_object$`is_nonprofit`)) {
        self$`is_nonprofit` <- this_object$`is_nonprofit`
      }
      if (!is.null(this_object$`last_contact_date`)) {
        self$`last_contact_date` <- this_object$`last_contact_date`
      }
      if (!is.null(this_object$`last_purchase_date`)) {
        self$`last_purchase_date` <- this_object$`last_purchase_date`
      }
      if (!is.null(this_object$`leitweg_id`)) {
        self$`leitweg_id` <- this_object$`leitweg_id`
      }
      if (!is.null(this_object$`lifetime_value`)) {
        self$`lifetime_value` <- this_object$`lifetime_value`
      }
      if (!is.null(this_object$`mandate_date`)) {
        self$`mandate_date` <- this_object$`mandate_date`
      }
      if (!is.null(this_object$`mandate_reference`)) {
        self$`mandate_reference` <- this_object$`mandate_reference`
      }
      if (!is.null(this_object$`marketing_consent`)) {
        self$`marketing_consent` <- this_object$`marketing_consent`
      }
      if (!is.null(this_object$`marketing_consent_at`)) {
        self$`marketing_consent_at` <- this_object$`marketing_consent_at`
      }
      if (!is.null(this_object$`marketing_consent_source`)) {
        self$`marketing_consent_source` <- this_object$`marketing_consent_source`
      }
      if (!is.null(this_object$`mobile`)) {
        self$`mobile` <- this_object$`mobile`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`next_contact_date`)) {
        self$`next_contact_date` <- this_object$`next_contact_date`
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- this_object$`notes`
      }
      if (!is.null(this_object$`opening_balance`)) {
        self$`opening_balance` <- this_object$`opening_balance`
      }
      if (!is.null(this_object$`opening_balance_date`)) {
        self$`opening_balance_date` <- this_object$`opening_balance_date`
      }
      if (!is.null(this_object$`order_reference`)) {
        self$`order_reference` <- this_object$`order_reference`
      }
      if (!is.null(this_object$`payment_block`)) {
        self$`payment_block` <- this_object$`payment_block`
      }
      if (!is.null(this_object$`payment_grace_period_days`)) {
        self$`payment_grace_period_days` <- this_object$`payment_grace_period_days`
      }
      if (!is.null(this_object$`payment_methods`)) {
        self$`payment_methods` <- ApiClient$new()$deserializeObj(this_object$`payment_methods`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`payment_terms`)) {
        self$`payment_terms` <- this_object$`payment_terms`
      }
      if (!is.null(this_object$`phone`)) {
        self$`phone` <- this_object$`phone`
      }
      if (!is.null(this_object$`rating`)) {
        self$`rating` <- this_object$`rating`
      }
      if (!is.null(this_object$`sales_representative`)) {
        self$`sales_representative` <- this_object$`sales_representative`
      }
      if (!is.null(this_object$`social_media`)) {
        `social_media_object` <- AnyType$new()
        `social_media_object`$fromJSON(jsonlite::toJSON(this_object$`social_media`, auto_unbox = TRUE, digits = NA))
        self$`social_media` <- `social_media_object`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`state`)) {
        self$`state` <- this_object$`state`
      }
      if (!is.null(this_object$`street`)) {
        self$`street` <- this_object$`street`
      }
      if (!is.null(this_object$`street_number`)) {
        self$`street_number` <- this_object$`street_number`
      }
      if (!is.null(this_object$`supplier_number`)) {
        self$`supplier_number` <- this_object$`supplier_number`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`tax_country`)) {
        self$`tax_country` <- this_object$`tax_country`
      }
      if (!is.null(this_object$`tax_number`)) {
        self$`tax_number` <- this_object$`tax_number`
      }
      if (!is.null(this_object$`tax_office`)) {
        self$`tax_office` <- this_object$`tax_office`
      }
      if (!is.null(this_object$`total_invoices`)) {
        self$`total_invoices` <- this_object$`total_invoices`
      }
      if (!is.null(this_object$`total_revenue`)) {
        self$`total_revenue` <- this_object$`total_revenue`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`vat_id`)) {
        self$`vat_id` <- this_object$`vat_id`
      }
      if (!is.null(this_object$`vat_id_validated`)) {
        self$`vat_id_validated` <- this_object$`vat_id_validated`
      }
      if (!is.null(this_object$`vat_id_validation_date`)) {
        self$`vat_id_validation_date` <- this_object$`vat_id_validation_date`
      }
      if (!is.null(this_object$`website`)) {
        self$`website` <- this_object$`website`
      }
      if (!is.null(this_object$`zip`)) {
        self$`zip` <- this_object$`zip`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Contact in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Contact
    #'
    #' @param input_json the JSON input
    #' @return the instance of Contact
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`account_holder` <- this_object$`account_holder`
      self$`acquisition_cost` <- this_object$`acquisition_cost`
      self$`address_supplement` <- this_object$`address_supplement`
      self$`attention` <- this_object$`attention`
      self$`bank_name` <- this_object$`bank_name`
      self$`bic` <- this_object$`bic`
      self$`buyer_reference` <- this_object$`buyer_reference`
      self$`category` <- this_object$`category`
      self$`certificate_authority` <- this_object$`certificate_authority`
      self$`certificate_number` <- this_object$`certificate_number`
      self$`certificate_paragraph` <- this_object$`certificate_paragraph`
      self$`certificate_valid_until` <- this_object$`certificate_valid_until`
      self$`city` <- this_object$`city`
      self$`company_name` <- this_object$`company_name`
      self$`contact_id` <- this_object$`contact_id`
      self$`contact_persons` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`contact_persons`, auto_unbox = TRUE, digits = NA))
      self$`contact_type` <- this_object$`contact_type`
      self$`country` <- this_object$`country`
      self$`created_at` <- this_object$`created_at`
      self$`credit_limit` <- this_object$`credit_limit`
      self$`creditor_account_skr03` <- this_object$`creditor_account_skr03`
      self$`creditor_account_skr04` <- this_object$`creditor_account_skr04`
      self$`currency` <- this_object$`currency`
      self$`customer_number` <- this_object$`customer_number`
      self$`debitor_account_skr03` <- this_object$`debitor_account_skr03`
      self$`debitor_account_skr04` <- this_object$`debitor_account_skr04`
      self$`default_debitor_number` <- this_object$`default_debitor_number`
      self$`delivery_block` <- this_object$`delivery_block`
      self$`department` <- this_object$`department`
      self$`discount_days` <- this_object$`discount_days`
      self$`discount_percentage` <- this_object$`discount_percentage`
      self$`donation_receipt_eligible` <- this_object$`donation_receipt_eligible`
      self$`email` <- this_object$`email`
      self$`external_id` <- this_object$`external_id`
      self$`fax` <- this_object$`fax`
      self$`iban` <- this_object$`iban`
      self$`industry` <- this_object$`industry`
      self$`is_active` <- this_object$`is_active`
      self$`is_member` <- this_object$`is_member`
      self$`is_nonprofit` <- this_object$`is_nonprofit`
      self$`last_contact_date` <- this_object$`last_contact_date`
      self$`last_purchase_date` <- this_object$`last_purchase_date`
      self$`leitweg_id` <- this_object$`leitweg_id`
      self$`lifetime_value` <- this_object$`lifetime_value`
      self$`mandate_date` <- this_object$`mandate_date`
      self$`mandate_reference` <- this_object$`mandate_reference`
      self$`marketing_consent` <- this_object$`marketing_consent`
      self$`marketing_consent_at` <- this_object$`marketing_consent_at`
      self$`marketing_consent_source` <- this_object$`marketing_consent_source`
      self$`mobile` <- this_object$`mobile`
      self$`name` <- this_object$`name`
      self$`next_contact_date` <- this_object$`next_contact_date`
      self$`notes` <- this_object$`notes`
      self$`opening_balance` <- this_object$`opening_balance`
      self$`opening_balance_date` <- this_object$`opening_balance_date`
      self$`order_reference` <- this_object$`order_reference`
      self$`payment_block` <- this_object$`payment_block`
      self$`payment_grace_period_days` <- this_object$`payment_grace_period_days`
      self$`payment_methods` <- ApiClient$new()$deserializeObj(this_object$`payment_methods`, "array[character]", loadNamespace("openapi"))
      self$`payment_terms` <- this_object$`payment_terms`
      self$`phone` <- this_object$`phone`
      self$`rating` <- this_object$`rating`
      self$`sales_representative` <- this_object$`sales_representative`
      self$`social_media` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`social_media`, auto_unbox = TRUE, digits = NA))
      self$`source` <- this_object$`source`
      self$`state` <- this_object$`state`
      self$`street` <- this_object$`street`
      self$`street_number` <- this_object$`street_number`
      self$`supplier_number` <- this_object$`supplier_number`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("openapi"))
      self$`tax_country` <- this_object$`tax_country`
      self$`tax_number` <- this_object$`tax_number`
      self$`tax_office` <- this_object$`tax_office`
      self$`total_invoices` <- this_object$`total_invoices`
      self$`total_revenue` <- this_object$`total_revenue`
      self$`updated_at` <- this_object$`updated_at`
      self$`vat_id` <- this_object$`vat_id`
      self$`vat_id_validated` <- this_object$`vat_id_validated`
      self$`vat_id_validation_date` <- this_object$`vat_id_validation_date`
      self$`website` <- this_object$`website`
      self$`zip` <- this_object$`zip`
      self
    },

    #' @description
    #' Validate JSON input with respect to Contact and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `contact_id`
      if (!is.null(input_json$`contact_id`)) {
        if (!(is.character(input_json$`contact_id`) && length(input_json$`contact_id`) == 1)) {
          stop(paste("Error! Invalid data for `contact_id`. Must be a string:", input_json$`contact_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `contact_id` is missing."))
      }
      # check the required field `contact_persons`
      if (!is.null(input_json$`contact_persons`)) {
        stopifnot(R6::is.R6(input_json$`contact_persons`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `contact_persons` is missing."))
      }
      # check the required field `contact_type`
      if (!is.null(input_json$`contact_type`)) {
        if (!(is.character(input_json$`contact_type`) && length(input_json$`contact_type`) == 1)) {
          stop(paste("Error! Invalid data for `contact_type`. Must be a string:", input_json$`contact_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `contact_type` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `created_at` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `name` is missing."))
      }
      # check the required field `social_media`
      if (!is.null(input_json$`social_media`)) {
        stopifnot(R6::is.R6(input_json$`social_media`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Contact: the required field `social_media` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Contact
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `contact_id` is null
      if (is.null(self$`contact_id`)) {
        return(FALSE)
      }

      # check if the required `contact_type` is null
      if (is.null(self$`contact_type`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `contact_id` is null
      if (is.null(self$`contact_id`)) {
        invalid_fields["contact_id"] <- "Non-nullable required field `contact_id` cannot be null."
      }

      # check if the required `contact_type` is null
      if (is.null(self$`contact_type`)) {
        invalid_fields["contact_type"] <- "Non-nullable required field `contact_type` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# Contact$unlock()
#
## Below is an example to define the print function
# Contact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Contact$lock()

