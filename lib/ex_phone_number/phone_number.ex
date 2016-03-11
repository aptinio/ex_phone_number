defmodule ExPhoneNumber.PhoneNumber do
  defstruct country_code: nil,                   # number
            national_number: nil,                # number
            extension: nil,                      # string
            italian_leading_zero: nil,           # boolean
            number_of_leading_zeros: nil,        # number
            raw_input: nil,                      # string
            country_code_source: nil,            # atom
            preferred_domestic_carrier_code: nil # string

  alias ExPhoneNumber.PhoneNumber
  alias ExPhoneNumber.PhoneNumber.CountryCodeSource

  def has_country_code?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.country_code)
  end

  def has_national_number?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.national_number)
  end

  def has_extension?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.extension)
  end

  def has_italian_leading_zero?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.italian_leading_zero)
  end

  @number_of_leading_zeros_default 1
  def get_number_of_leading_zeros_or_default(phone_number = %PhoneNumber{}) do
    if is_nil(phone_number.number_of_leading_zeros) do
      @number_of_leading_zeros_default
    else
      phone_number.number_of_leading_zeros
    end
  end

  def has_number_of_leading_zeros?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.number_of_leading_zeros)
  end

  def has_raw_input?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.raw_input)
  end

  @country_code_source_default CountryCodeSource.from_number_with_plus_sign()
  def get_country_code_source_or_default(phone_number = %PhoneNumber{}) do
    if is_nil(phone_number.country_code_source) do
      @country_code_source_default
    else
      phone_number.country_code_source
    end
  end

  def has_country_code_source?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.country_code_source)
  end

  def has_preferred_domestic_carrier_code?(phone_number = %PhoneNumber{}) do
    not is_nil(phone_number.preferred_domestic_carrier_code)
  end
end