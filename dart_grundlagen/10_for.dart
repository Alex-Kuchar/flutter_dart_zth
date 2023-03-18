void main() {
  List<int> nums = [3, 4, 5, 6, 7];
  List<int> nums2 = [];

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 3) {
      nums2.add(nums[i]);
    }

    print(i);
  }

  print(nums2);
}
