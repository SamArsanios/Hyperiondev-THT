# rubocop:disable Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/CyclomaticComplexity, Lint/ShadowingOuterLocalVariable
def isbn13(str)
  arr = str.length == 10 ? [10, 9, 8, 7, 6, 5, 4, 3, 2, 1] : [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1]

  # split string values into separate values and convert them to integers
  split_values = str.split('')
  converted = split_values.map(&:to_i)

  # multiply isbn array with its respective array and sum their product
  result = converted.zip(arr).map { |x, y| x * y }
  sum = result.inject(0) { |sum, x| sum + x }

  # check for validity of isbn 10 and isbn13
  case str.length
  when 10
    if (sum % 11).zero?
      value = 'Valid'
      converted.unshift(978)
      converted[-1] += 1
      p converted.join('')
    else
      value = 'Invalid'
    end
    p value
  when 13
    value = (sum % 10).zero? ? 'Valid' : 'Invalid'
    p value
  end
  value
end

isbn13('0330301624')
# rubocop:enable Metrics/PerceivedComplexity, Metrics/MethodLength, Metrics/CyclomaticComplexity, Lint/ShadowingOuterLocalVariable
