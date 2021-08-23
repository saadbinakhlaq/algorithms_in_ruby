def bubble_sort(list)
  sl = list.clone
  sl.each_index do |i|
  ( sl.length - i - 1 ).times do |j| 
    if ( sl[j+1] < sl[j] )
      sl[j], sl[j+1] = sl[j+1], sl[j]
    end
    end
  end
end

list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p bubble_sort(list)



def selection_sort(list)
  sl = list.clone
  sl.each_index do |i|
    min = i
    (i..(sl.size-1)).each do |j|
      min = j  if sl[j] < sl[min]
    end
    sl[i], sl[min] = sl[min], sl[i]
  end
end
list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p selection_sort(list)

def insertion_sort(list)
  sl = list.clone
  sl.each_index do |i|
    j = i
    while j > 0 && sl[j] < sl[j-1]
      sl[j], sl[j-1]= sl[j-1], sl[j]
      j -= 1
    end
  end
end

list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p insertion_sort(list)


def counting_sort(list, max)
  counts = Array.new(max+1, 0)
  list.each do |i| 
    counts[i] += 1
  end

  sorted = []
  counts.each_index do |index| 
    counts[index].times { sorted << index } 
  end
  sorted
end

list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p counting_sort(list)

def heap_sort (list)
  sl = []
  heap = build_heap(list)
  heap.size.times do
    sl << heap.shift
    heap = heapify(heap, 0)
  end
  
  sl.reverse
end

def left(i); ((i+1)*2)-1; end
def right(i); (i+1)*2; end

def heapify(h, root)
  max = root
  l, r = left(root), right(root)
  if ( l < h.size && h[l] > h[max])
    max = l
  end
  
  if ( r < h.size && h[r] > h[max])
    max = r
  end

  if( root != max)
    h[root], h[max] = h[max], h[root]
    return heapify(h, max)
  else
    return h
  end
end

def build_heap(list)
  heap = list.clone
  (((heap.size)-1)/2).downto(0) do |e|
    heap = heapify(heap, e)
  end
  heap
end

list = [1, 3, 6, 7, 8, 11, 43, 2, 4, 5]
p list
p heap_sort(list)





