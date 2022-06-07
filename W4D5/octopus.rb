require "byebug"

fish_bag = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']

# sluggish octopus
def sluggish_octopus(fishes)
    fish_comparisons = []

    i = 0
    while i < fishes.length
        j = 1
        while j < fishes.length
            if fishes[i].length < fishes[j].length
                fish_comparisons << fishes[j]
            else
                fish_comparisons << fishes[i]
            end
            j += 1
        end
        i += 1
    end
    longest = fish_comparisons[0]
    fish_comparisons.each do |fish|
        if fish.length >= longest.length
            longest = fish
        end
    end
    longest
end

# sluggish_octopus(fish_bag)

# clever octopus 

def clever_octopus(fishes)
    longest = fishes[0]
    fishes.each do |fish|
        if fish.length >= longest.length
            longest = fish
        end
    end
    longest
end

p clever_octopus(fish_bag)