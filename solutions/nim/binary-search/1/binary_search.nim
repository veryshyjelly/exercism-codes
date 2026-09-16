proc binarySearch*(a: openArray[int], val: int): int =
  var
    l = 0
    r = a.len - 1
  while l <= r:
    let mid = l + (r - l) div 2
    if a[mid] == val:
      return mid
    elif a[mid] < val:
      l = mid + 1
    elif a[mid] > val:
      r = mid - 1
  -1
