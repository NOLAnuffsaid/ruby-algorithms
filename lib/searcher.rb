module Algorithms
  class Searcher
    include Algorithms::BinarySearch

    def search(items, subject, type)
      case type
      when :binary
        binary_search(items, subject)
      when :binary_recur
        recur_binary_search(items, subject)
      end
    end
  end
end
