class Nmax
  def self.exec_sequence(size, stdin: $stdin)
    buffer = []
    number_buffer = []
    stdin.read.split('').each do |el|
      if el.to_i.to_s == el
        number_buffer << el
      else
        unless number_buffer.empty?
          if buffer.size == size.to_i
            if number_buffer.join.to_i > buffer.min.to_i
              buffer.delete_at(buffer.index(buffer.min.to_i))
              buffer << number_buffer.join.to_i
            end
          else
            buffer << number_buffer.join.to_i
          end
          number_buffer = []
        end
      end
    end

    unless number_buffer.empty?
      if buffer.size < size.to_i || (number_buffer.join.to_i > buffer.min.to_i)
        buffer << number_buffer.join.to_i
      end
    end
    buffer.join(',')
  end
end

