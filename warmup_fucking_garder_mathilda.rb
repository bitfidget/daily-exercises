class Garden
    def initialize(seeds)
        @seeds = seeds
        @students = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
        @student_seed_dictionary = create_student_seed_dictionary 
        find_student
    end

    def create_student_seed_dictionary
        student_seed_dictionary = {}
        seed = @seeds.split("\n")
        seed[0].split('').zip(seed[1].split('')).each_slice(2).with_index do |array_pair, i|
            plants_array = array_pair.flatten.map do |letter|
                plants[letter]
            end
            student_seed_dictionary[@students[i]] = plants_array
        end
        student_seed_dictionary 
    end

    def plants
        {
          'G' => :grass,
          'V' => :violets,
          'R' => :radishes,
          'C' => :clover
        }
    end
    # def alice 
    #     @student_seed_dictionary['Alice']
    # end

    def find_student
        @student_seed_dictionary.each do |key, value|
            instance_eval "def #{key.downcase}; #{value}; end"
        end
    end

end
garden = Garden.new("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
puts garden.fred