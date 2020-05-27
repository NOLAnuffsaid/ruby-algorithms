# frozen_string_literal: true

module Algorithms
  module BinarySearch
    def binary_search(items, subject)
      low = 0
      high = items.length - 1

      while low <= high
        mid = (low + high) >> 1

        return items[mid] if items[mid] == subject

        low = mid + 1 if items[mid] < subject
        high = mid - 1 if items[mid] > subject
      end
    end

    def recur_binary_search(items, subject)
      low = 0
      high = items.length - 1
      mid = (low + high) >> 1

      return items[mid] if items[mid] == subject

      return recur_binary_search(items[(mid + 1)..items.length], subject) if items[mid] < subject

      recur_binary_search(items[0..(mid - 1)], subject)
    end
  end
end
