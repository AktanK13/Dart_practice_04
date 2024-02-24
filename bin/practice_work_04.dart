void main() {
//   Напишите программу, которая находит и выводит на экран наибольший элемент в данном массиве чисел, а также его индекс
  List<int> numbers = [12, 45, 7, 23, 56, 89, 32];
  print(searchBigerInt(numbers));

//  Напишите программу, которая проверяет, все ли элементы в массиве уникальны (не повторяются). если да, то необходимо вывести true
  List<int> numbersTwo = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(checkRepeatNumber(numbersTwo));

// Решите задачу о подсчете количества четных чисел в массиве.
  List<int> numbersThree = [3, 6, 8, 12, 9, 10, 11];
  print(evenAmountInList(numbersThree));

// Отсортируйте массив чисел по возрастанию, используя цикл for и условный оператор if-else.
  List<int> numbersFour = [3, 6, 8, 12, 9, 10, 11, 1, 12, 36, 2];
  print(sortMyList(numbersFour));

// Напишите программу, которая находит наибольшее четное число в массиве.
  List<int> numbersFive = [3, 6, 8, 12, 9, 10, 11];
  print(evenBigerInt(numbersFive));
}

int searchBigerInt(List<int> myList) {
  int result = 0;
  for (var element in myList) {
    if (element > result) {
      result = element;
    }
  }
  return result;
}

bool checkRepeatNumber(List<int> myList) {
  Set<int> mySet = <int>{};

  for (int element in myList) {
    if (mySet.contains(element)) {
      return false;
    } else {
      mySet.add(element);
    }
  }
  return true;
}

int evenAmountInList(List<int> myList) {
  int amount = 0;
  for (var element in myList) {
    if (element % 2 == 0) {
      amount++;
    }
  }
  return amount;
}

List<int> sortMyList(List<int> myList) {
  List<int> sortedList = myList;
  for (int i = 0; i < sortedList.length - 1; i++) {
    for (int k = i + 1; k < sortedList.length; k++) {
      if (sortedList[i] > sortedList[k]) {
        int acc = sortedList[i];
        sortedList[i] = sortedList[k];
        sortedList[k] = acc;
      }
    }
  }
  return sortedList;
}

int evenBigerInt(List<int> myList) {
  int biger = myList.first;
  for (var element in myList) {
    if (element % 2 == 0 && element > biger) {
      biger = element;
    }
  }
  return biger;
}
